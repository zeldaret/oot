glabel func_80851688
/* 1F478 80851688 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1F47C 8085168C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1F480 80851690 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 1F484 80851694 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 1F488 80851698 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 1F48C 8085169C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 1F490 808516A0 0C212CF3 */  jal     func_8084B3CC              
/* 1F494 808516A4 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 1F498 808516A8 54400025 */  bnel    $v0, $zero, .L80851740     
/* 1F49C 808516AC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1F4A0 808516B0 920E0444 */  lbu     $t6, 0x0444($s0)           ## 00000444
/* 1F4A4 808516B4 24010031 */  addiu   $at, $zero, 0x0031         ## $at = 00000031
/* 1F4A8 808516B8 15C1000A */  bne     $t6, $at, .L808516E4       
/* 1F4AC 808516BC 00000000 */  nop
/* 1F4B0 808516C0 922F1D6C */  lbu     $t7, 0x1D6C($s1)           ## 00001D6C
/* 1F4B4 808516C4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1F4B8 808516C8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 1F4BC 808516CC 15E00005 */  bne     $t7, $zero, .L808516E4     
/* 1F4C0 808516D0 00000000 */  nop
/* 1F4C4 808516D4 0C00B7D5 */  jal     func_8002DF54              
/* 1F4C8 808516D8 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 1F4CC 808516DC 10000018 */  beq     $zero, $zero, .L80851740   
/* 1F4D0 808516E0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808516E4:
/* 1F4D4 808516E4 0C20CCAE */  jal     func_808332B8              
/* 1F4D8 808516E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1F4DC 808516EC 10400007 */  beq     $v0, $zero, .L8085170C     
/* 1F4E0 808516F0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1F4E4 808516F4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 1F4E8 808516F8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1F4EC 808516FC 0C2144EF */  jal     func_808513BC              
/* 1F4F0 80851700 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 1F4F4 80851704 1000000E */  beq     $zero, $zero, .L80851740   
/* 1F4F8 80851708 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8085170C:
/* 1F4FC 8085170C 0C028EF0 */  jal     func_800A3BC0              
/* 1F500 80851710 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 1F504 80851714 0C023C4A */  jal     func_8008F128              
/* 1F508 80851718 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1F50C 8085171C 14400005 */  bne     $v0, $zero, .L80851734     
/* 1F510 80851720 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1F514 80851724 8E18067C */  lw      $t8, 0x067C($s0)           ## 0000067C
/* 1F518 80851728 33190800 */  andi    $t9, $t8, 0x0800           ## $t9 = 00000000
/* 1F51C 8085172C 53200004 */  beql    $t9, $zero, .L80851740     
/* 1F520 80851730 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80851734:
/* 1F524 80851734 0C20D99C */  jal     func_80836670              
/* 1F528 80851738 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 1F52C 8085173C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80851740:
/* 1F530 80851740 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 1F534 80851744 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 1F538 80851748 03E00008 */  jr      $ra                        
/* 1F53C 8085174C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
