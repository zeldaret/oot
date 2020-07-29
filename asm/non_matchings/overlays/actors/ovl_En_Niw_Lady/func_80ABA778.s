.rdata
glabel D_80ABB67C
    .asciz "\x1b[32m☆☆☆☆☆ アダルトメッセージチェック ☆☆☆☆☆ \n\x1b[m"
    .balign 4

.text
glabel func_80ABA778
/* 00B38 80ABA778 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B3C 80ABA77C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00B40 80ABA780 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00B44 80ABA784 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B48 80ABA788 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B4C 80ABA78C 3C0480AC */  lui     $a0, %hi(D_80ABB67C)       ## $a0 = 80AC0000
/* 00B50 80ABA790 2484B67C */  addiu   $a0, $a0, %lo(D_80ABB67C)  ## $a0 = 80ABB67C
/* 00B54 80ABA794 0C00084C */  jal     osSyncPrintf
              
/* 00B58 80ABA798 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 00B5C 80ABA79C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00B60 80ABA7A0 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00B64 80ABA7A4 240E0006 */  addiu   $t6, $zero, 0x0006         ## $t6 = 00000006
/* 00B68 80ABA7A8 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00B6C 80ABA7AC A4AE0262 */  sh      $t6, 0x0262($a1)           ## 00000262
/* 00B70 80ABA7B0 A0A00273 */  sb      $zero, 0x0273($a1)         ## 00000273
/* 00B74 80ABA7B4 944F0EF4 */  lhu     $t7, 0x0EF4($v0)           ## 8015F554
/* 00B78 80ABA7B8 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00B7C 80ABA7BC 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 00B80 80ABA7C0 31F81000 */  andi    $t8, $t7, 0x1000           ## $t8 = 00000000
/* 00B84 80ABA7C4 1700000B */  bne     $t8, $zero, .L80ABA7F4     
/* 00B88 80ABA7C8 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 00B8C 80ABA7CC 90B90274 */  lbu     $t9, 0x0274($a1)           ## 00000274
/* 00B90 80ABA7D0 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00B94 80ABA7D4 53200004 */  beql    $t9, $zero, .L80ABA7E8     
/* 00B98 80ABA7D8 A4A0027A */  sh      $zero, 0x027A($a1)         ## 0000027A
/* 00B9C 80ABA7DC 10000002 */  beq     $zero, $zero, .L80ABA7E8   
/* 00BA0 80ABA7E0 A4A8027A */  sh      $t0, 0x027A($a1)           ## 0000027A
/* 00BA4 80ABA7E4 A4A0027A */  sh      $zero, 0x027A($a1)         ## 0000027A
.L80ABA7E8:
/* 00BA8 80ABA7E8 A0A90273 */  sb      $t1, 0x0273($a1)           ## 00000273
/* 00BAC 80ABA7EC 10000015 */  beq     $zero, $zero, .L80ABA844   
/* 00BB0 80ABA7F0 A4AA0262 */  sh      $t2, 0x0262($a1)           ## 00000262
.L80ABA7F4:
/* 00BB4 80ABA7F4 A4AB027A */  sh      $t3, 0x027A($a1)           ## 0000027A
/* 00BB8 80ABA7F8 944C0EF4 */  lhu     $t4, 0x0EF4($v0)           ## 8015F554
/* 00BBC 80ABA7FC 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 00BC0 80ABA800 318D4000 */  andi    $t5, $t4, 0x4000           ## $t5 = 00000000
/* 00BC4 80ABA804 55A00010 */  bnel    $t5, $zero, .L80ABA848     
/* 00BC8 80ABA808 84AB027A */  lh      $t3, 0x027A($a1)           ## 0000027A
/* 00BCC 80ABA80C A4AE027A */  sh      $t6, 0x027A($a1)           ## 0000027A
/* 00BD0 80ABA810 944F0EE0 */  lhu     $t7, 0x0EE0($v0)           ## 8015F540
/* 00BD4 80ABA814 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 00BD8 80ABA818 31F80400 */  andi    $t8, $t7, 0x0400           ## $t8 = 00000000
/* 00BDC 80ABA81C 53000009 */  beql    $t8, $zero, .L80ABA844     
/* 00BE0 80ABA820 A4AA027A */  sh      $t2, 0x027A($a1)           ## 0000027A
/* 00BE4 80ABA824 90A80277 */  lbu     $t0, 0x0277($a1)           ## 00000277
/* 00BE8 80ABA828 24190009 */  addiu   $t9, $zero, 0x0009         ## $t9 = 00000009
/* 00BEC 80ABA82C A4B9027A */  sh      $t9, 0x027A($a1)           ## 0000027A
/* 00BF0 80ABA830 11000004 */  beq     $t0, $zero, .L80ABA844     
/* 00BF4 80ABA834 2409000A */  addiu   $t1, $zero, 0x000A         ## $t1 = 0000000A
/* 00BF8 80ABA838 10000002 */  beq     $zero, $zero, .L80ABA844   
/* 00BFC 80ABA83C A4A9027A */  sh      $t1, 0x027A($a1)           ## 0000027A
/* 00C00 80ABA840 A4AA027A */  sh      $t2, 0x027A($a1)           ## 0000027A
.L80ABA844:
/* 00C04 80ABA844 84AB027A */  lh      $t3, 0x027A($a1)           ## 0000027A
.L80ABA848:
/* 00C08 80ABA848 3C0D80AC */  lui     $t5, %hi(D_80ABB3F0)       ## $t5 = 80AC0000
/* 00C0C 80ABA84C 3C0E80AC */  lui     $t6, %hi(func_80ABA878)    ## $t6 = 80AC0000
/* 00C10 80ABA850 000B6040 */  sll     $t4, $t3,  1               
/* 00C14 80ABA854 01AC6821 */  addu    $t5, $t5, $t4              
/* 00C18 80ABA858 85ADB3F0 */  lh      $t5, %lo(D_80ABB3F0)($t5)  
/* 00C1C 80ABA85C 25CEA878 */  addiu   $t6, $t6, %lo(func_80ABA878) ## $t6 = 80ABA878
/* 00C20 80ABA860 ACAE0250 */  sw      $t6, 0x0250($a1)           ## 00000250
/* 00C24 80ABA864 A4AD010E */  sh      $t5, 0x010E($a1)           ## 0000010E
/* 00C28 80ABA868 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C2C 80ABA86C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C30 80ABA870 03E00008 */  jr      $ra                        
/* 00C34 80ABA874 00000000 */  nop
