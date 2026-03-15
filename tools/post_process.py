from shared import *

# post-conversion automatic patches, allowing not to change the asm file by hand



process_main = 1
process_banks = 1
process_sub = 1

def f_handle_bank0_line(address,lines,i):
    line = lines[i]
    ### specific file patches
    if address in {0x420A,0x5bc9,0x5bd5,0x6a61,0x6a6e,0x6e71,0x6e78} and "GET_REG_ADDRESS" in line:
        # okay to pshu/pulu in all cases (except fake instructions so thanks review flags!!!)
        lines[i-1] = remove_error(lines[i-1])
    elif address == 0x420C and "GET_REG_ADDRESS" in line:
        # okay to pshu
        lines[i-1] = ""  # useless MAKE_D
        lines[i-2] = remove_error(lines[i-2])
    elif address == 0x4375:
        lines[i-1],line = line,lines[i-1]  # swap lines so carry is correct
        lines[i+2] = remove_error(lines[i+2])
    elif address == 0x497f:
        lines[i+1] += "\tscs\td6  | save carry as d6\n"
    elif address == 0x4983:
        line = "\ttst.b\td6\n"+change_instruction("jeq\tlb0_4987",lines,i)
        lines[i+1] = remove_error(lines[i+1])

    # fix imbricated Z and C test (could have missed that one!!)
    elif address == 0x62ae:
        line = "\tscs\td6\n"+line
    elif address == 0x62b4:
        line = "\ttst.b\td6\n"+change_instruction("jne\tlb0_633a",lines,i)
    elif address == 0x62ba:
        line = "\ttst.b\td6\n"+change_instruction("jeq\tlb0_633a",lines,i)
        lines[i+1] = remove_error(lines[i+1])
    elif address == 0x6d91:
        # routine takes carry as input (returned in previous funcall)
        lines[i+1] = remove_error(lines[i+1])
    elif address == 0x42ff:
        line = "\ttst.b\td6\n"+change_instruction("jeq\tlb0_430e",lines,i)
        lines[i+1] = remove_error(lines[i+1])
    elif address == 0x42f8:
        lines[i+2] += "\tscs\td6  | save carry as d6\n"
    elif address == 0x41df:
        line += "\tjbsr\tosd_clear_fg_screen\n"
    elif address == 0x41ec:
        line += "\tjbsr\tosd_clear_bg_screen\n"
    elif address == 0x4A47:
        line = "\tjbsr\tosd_set_flash_color\n"+line
    ### replace current line
    lines[i] = line

def f_handle_bank1_line(address,lines,i):
    line = lines[i]
    # specific file patches
    if address in {0x5301} and "GET_REG_ADDRESS" in line:
        # okay to pshu/pulu in all cases (except fake instructions so thanks review flags!!!)
        lines[i-1] = remove_error(lines[i-1])
    elif address == 0x5bb3:
        lines[i+1] = remove_error(lines[i+1])
    elif address == 0x60fc and "GET_REG_ADDRESS" in line:
        # okay to pshu
        lines[i-1] = ""  # useless MAKE_D
        lines[i-2] = remove_error(lines[i-2])
    elif address == 0x6ccf:
        # jcs => jra as jcc was handled above and C is not supposed to change
        line = change_instruction("jra\tlb1_6d15",lines,i)
        lines[i+1] = remove_error(lines[i+1])
    elif address == 0x6113:
        lines[i+2] = remove_error(lines[i+2])
        # swap lines to preserve comparison result
        lines[i+1],lines[i+3] = lines[i+3],lines[i+1]
    elif address == 0x5ba0:
        lines[i+2] = remove_error(lines[i+2])
    elif address == 0x4201:
        # remove wait for subcpu (subcpu should be called here, we'll see laer'")
        line = remove_instruction(lines,i)
    lines[i] = line


def f_handle_bank3_line(address,lines,i):
    line = lines[i]
    if address == 0x6c9a:
        line = remove_instruction(lines,i)  # useless cmp
        lines[i+2] = remove_error(lines[i+2])
        # we removed the cmp, and optimizer removed the load for  $47,x
        # make up for this and gain a few cycles
        lines[i+3] = change_instruction("move.b\td0,(2,a0)",lines,i+3)
    lines[i] = line

def f_handle_bank4_line(address,lines,i):
    line = lines[i]
    # specific file patches
    if address == 0x4361:
        # fix abusive alternate direct jump
        line = change_instruction("jra\tlb4_4470",lines,i)
    elif address == 0X435e:
        # fix abusive alternate direct jump
        line = change_instruction("jra\tlb4_442f",lines,i)

    elif address in [0x446e,0x442d]:
        # remove useless jra to next instruction
        line = remove_instruction(lines,i)
    elif address == 0x452b:
        # temp illegal
        line = '\tBREAKPOINT "figure it out!!"\n'
    lines[i] = line

def f_handle_bank5_line(address,lines,i):
    line = lines[i]
    if "review pshu instruction" in line or "review pulu instruction" in line:
        # remove the errors. this is to save variables in alt stack while S is used
        # but on 68000 we use native stack for this, and target stack for S variables
        line = ""
    if address == 0x6cd1:
        # jcc has been handled above
        line = change_instruction("jra\tlb5_6d17",lines,i)
        lines[i+1] = remove_error(lines[i+1])
    lines[i] = line

def f_handle_sub_line(address,lines,i):
    line = lines[i]

    toks = line.split()
    if "GET_ADDRESS" in line:
        try:
            offset = int(toks[1],16)
        except ValueError:
            offset = toks[1].split("_")[-1]
            offset = int(offset,16)
        if 0x8000 <= offset < 0x8200:
            line = line.replace("GET_ADDRESS","GET_SHARED_ADDRESS")

    if "GET_REG_ADDRESS" in line:
        if "[rom]" in line:
            line = line.replace("GET_REG_ADDRESS","GET_ROM_REG_ADDRESS")
        elif "[zero_page]" in line:
            line = line.replace("GET_REG_ADDRESS","GET_ZP_REG_ADDRESS")
        elif "[select_address]" in line:
            line = line.replace("GET_REG_ADDRESS","GET_SELECT_REG_ADDRESS")

    if "unsupported instruction rti" in line:
        if address == 0xC057:
            line = change_instruction("rts",lines,i)
        else:
            line = remove_error(line)
    if address == 0xC02B:
        # replace infinite loop after init by rts
        line = change_instruction("rts",lines,i)
    elif address == 0xc009:
        # no need for explicit stack pointer here, cpu isn't able/doesn't use S
        line = remove_instruction(lines,i)
    if "unsupported instruction tap" in line:
        line = remove_instruction(lines,i)
    if ".long" in line:
        # remove tables, they're informative but useless as native format
        line = ""

    lines[i] = line

def f_handle_main_line(address,lines,i):
    line = lines[i]
    if "review pshu instruction" in line or "review pulu instruction" in line:
        # remove the errors. this is to save variables in alt stack while S is used
        # but on 68000 we use native stack for this, and target stack for S variables
        line = ""

    if address in {0xa583}:
        lines[i+1] = remove_error(lines[i+1])

    if "review stray bcc/bcs test" in line:
        # check if it's not jbsr+jcc
        if "jbsr" in lines[i-2]:
            line = remove_error(line)       # jbsr+jcc test


    if address == 0xe65e:
        line = "\tPUSH_SR\n"+line
    elif address == 0xe660:
        line = "\tPOP_SR\n"+line
        lines[i+1] = remove_error(lines[i+1])
    elif address in {0xB8AC,0xB89C}:
        # remove subcpu sync shit
        line = remove_instruction(lines,i)

    elif address == 0x8AB5:
        # replace subcpu wait for irq reply by irq call
        line = change_instruction("jbsr\tosd_call_sub_irq",lines,i)
    elif address == 0xA91D:
        # fix double jump table
        line = change_instruction("lea\ttable_of_jump_tables_a92d,a3",lines,i)
    elif address in {0xA921,0xafd5}:
        line = "\tand.w\t#0xFF,d0\n\tadd.w\td0,d0\n"+change_instruction("move.l\t(a3,d0.w),a3",lines,i)
    elif address == 0xafd1:
        # fix double jump table
        line = change_instruction("lea\ttable_of_jump_tables_afe1,a3",lines,i)
    elif address == 0x91fa:
        line = remove_instruction(lines,i)
        lines[i+1] = remove_error(lines[i+1])
    elif address in {0x8051,0x8A65}:
        # remove CC stuff (interrupt)
        line = remove_error(lines[i])
    elif address in {0xe1ab,0xe3a6}:
        # push to U => push to stack
        line = change_instruction("move.w\td2,-(sp)",lines,i)
    elif address in {0xe1b7,0xe3bc}:
        # pull from U => pull from stack
        line = change_instruction("move.w\t(sp)+,d2",lines,i)
    elif address == 0xb775:
        line = change_instruction("rts",lines,i)  # do nothing
    elif address == 0xb76d:
        line = """    GET_ADDRESS    extra_3802                     | [$b76d: ldb    extra_3802]
    bset.b    #3,(a0)     | start not set (high)
    * now wait for vbl to clear the bit
0:
    btst.b    #3,(a0)
    jne    0b                       | [$b772: bne    wait_vbl_on_b76d]
    rts                                        | [$b774: rts]
"""
    elif address in {0x89b7,0x8A20,0x8A50}:
        # removing safety checks when inserting coins
        line = remove_instruction(lines,i)
    elif address in {0X8547}:
        # removing interrupt ack shit (again)
        line = remove_instruction(lines,i)
    elif address == 0x89C0:
        # skip coin debounce shit
        line = change_instruction("jra\tl_89ea",lines,i)
    elif address == 0xeeb0:
        line = change_instruction("jbsr\tosd_wait_vblank_interrupt",lines,i)
        lines[i+1] = remove_instruction(lines,i+1)
        lines[i+2] = remove_instruction(lines,i+2)
        lines[i+3] = remove_instruction(lines,i+3)
    if "dsw1_1683" in line and "lda" in line:
        line = change_instruction("jbsr\tosd_read_dsw_1",lines,i)
    elif "dsw2_1600" in line and "lda" in line:
        line = change_instruction("jbsr\tosd_read_dsw_2",lines,i)
    elif address == 0xeed3:
        line = "\tjbsr\tosd_palette_updated\n"+line

    if "multiply_ab" in line and "MAKE_D" in lines[i+1]:
        lines[i+1] = ""
##        if "tfr" in line and "POP_SR" in lines[i+1] and "PUSH_SR" in lines[i-1]:
##            # we don't need to save SR in this game when a TFR is done
##            lines[i-1] = ""
##            lines[i+1] = ""
##        if "rox" in line and "POP_SR" in lines[i-1] and "PUSH_SR" in lines[i-3]:
##            # we don't need to save SR as roxx uses X flag
##            lines[i-3] = ""
##            lines[i-1] = ""




    elif "flip_screen_set_1080" in line:
        line = remove_instruction(lines,i)
        remove_continuing_lines(lines,i)

    elif "irq_mask_w_1487" in line:
        # check next line
        next_line = lines[i+1]
        if "clr" in next_line:
            line = change_instruction("jbsr\tosd_disable_interrupts",lines,i)
        else:
            line = change_instruction("jbsr\tosd_enable_interrupts",lines,i)
            lines[i-1] = remove_instruction(lines,i-1)




    elif "unsupported instruction rti" in line:
        line = change_instruction("rts",lines,i)

    lines[i] = line

bankfuncs = [f_handle_bank0_line,f_handle_bank1_line,None,f_handle_bank3_line,f_handle_bank4_line,f_handle_bank5_line]

main_globals = set()

def process_bank_file(bankno,global_symbols=[],out_header=""):
    main_globals.update(process_file(f"conv_bank_{bankno}",f"maincpu_bank{bankno}_code_4000",
                        bankfuncs[bankno],global_symbols,out_header,is_bank=True))

# various dirty but at least automatic patches applying on the specific DD code

if process_banks:
    process_bank_file(0)

if process_banks:
    process_bank_file(1)

if process_banks:
    process_bank_file(3)

if process_banks:
    process_bank_file(4)

if process_banks:
    process_bank_file(5)

if process_sub:
    process_file("conv_sub","subcpu_c000",f_handle_sub_line,out_header="")

if process_main:
    out_header = "l_0000:\nillegal\n"
    process_file("conv","maincpu_8000",f_handle_main_line,sorted(main_globals),out_header=out_header)


with open(source_dir / "data.inc","w") as fw:
    fw.writelines(sorted(equates))
