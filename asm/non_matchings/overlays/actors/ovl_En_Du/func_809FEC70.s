glabel func_809FEC70
/* 01040 809FEC70 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01044 809FEC74 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01048 809FEC78 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0104C 809FEC7C 0C00BD04 */  jal     func_8002F410              
/* 01050 809FEC80 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01054 809FEC84 10400007 */  beq     $v0, $zero, .L809FECA4     
/* 01058 809FEC88 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0105C 809FEC8C 3C0580A0 */  lui     $a1, %hi(func_809FECE4)    ## $a1 = 80A00000
/* 01060 809FEC90 AC800118 */  sw      $zero, 0x0118($a0)         ## 00000118
/* 01064 809FEC94 0C27F70C */  jal     func_809FDC30              
/* 01068 809FEC98 24A5ECE4 */  addiu   $a1, $a1, %lo(func_809FECE4) ## $a1 = 809FECE4
/* 0106C 809FEC9C 1000000E */  beq     $zero, $zero, .L809FECD8   
/* 01070 809FECA0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809FECA4:
/* 01074 809FECA4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01078 809FECA8 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 0107C 809FECAC C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 01080 809FECB0 C4800094 */  lwc1    $f0, 0x0094($a0)           ## 00000094
/* 01084 809FECB4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01088 809FECB8 460C2080 */  add.s   $f2, $f4, $f12             
/* 0108C 809FECBC 24060054 */  addiu   $a2, $zero, 0x0054         ## $a2 = 00000054
/* 01090 809FECC0 46000005 */  abs.s   $f0, $f0                   
/* 01094 809FECC4 44071000 */  mfc1    $a3, $f2                   
/* 01098 809FECC8 460C0180 */  add.s   $f6, $f0, $f12             
/* 0109C 809FECCC 0C00BD0D */  jal     func_8002F434              
/* 010A0 809FECD0 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 010A4 809FECD4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809FECD8:
/* 010A8 809FECD8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 010AC 809FECDC 03E00008 */  jr      $ra                        
/* 010B0 809FECE0 00000000 */  nop
