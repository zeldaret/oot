glabel EnRiverSound_Update
/* 0058C 80AE6EBC 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00590 80AE6EC0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00594 80AE6EC4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00598 80AE6EC8 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 0059C 80AE6ECC 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 005A0 80AE6ED0 8FB8004C */  lw      $t8, 0x004C($sp)           
/* 005A4 80AE6ED4 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 005A8 80AE6ED8 AFAF003C */  sw      $t7, 0x003C($sp)           
/* 005AC 80AE6EDC 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 005B0 80AE6EE0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005B4 80AE6EE4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 005B8 80AE6EE8 10400005 */  beq     $v0, $zero, .L80AE6F00     
/* 005BC 80AE6EEC 0338C821 */  addu    $t9, $t9, $t8              
/* 005C0 80AE6EF0 10410003 */  beq     $v0, $at, .L80AE6F00       
/* 005C4 80AE6EF4 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 005C8 80AE6EF8 54410049 */  bnel    $v0, $at, .L80AE7020       
/* 005CC 80AE6EFC 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
.L80AE6F00:
/* 005D0 80AE6F00 8608014E */  lh      $t0, 0x014E($s0)           ## 0000014E
/* 005D4 80AE6F04 8F391E08 */  lw      $t9, 0x1E08($t9)           ## 00011E08
/* 005D8 80AE6F08 3C0D8016 */  lui     $t5, 0x8016                ## $t5 = 80160000
/* 005DC 80AE6F0C 000848C0 */  sll     $t1, $t0,  3               
/* 005E0 80AE6F10 03291021 */  addu    $v0, $t9, $t1              
/* 005E4 80AE6F14 8C430004 */  lw      $v1, 0x0004($v0)           ## 00000004
/* 005E8 80AE6F18 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 005EC 80AE6F1C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 005F0 80AE6F20 00035100 */  sll     $t2, $v1,  4               
/* 005F4 80AE6F24 000A5F02 */  srl     $t3, $t2, 28               
/* 005F8 80AE6F28 000B6080 */  sll     $t4, $t3,  2               
/* 005FC 80AE6F2C 01AC6821 */  addu    $t5, $t5, $t4              
/* 00600 80AE6F30 8DAD6FA8 */  lw      $t5, 0x6FA8($t5)           ## 80166FA8
/* 00604 80AE6F34 00617024 */  and     $t6, $v1, $at              
/* 00608 80AE6F38 8FA6003C */  lw      $a2, 0x003C($sp)           
/* 0060C 80AE6F3C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00610 80AE6F40 90450000 */  lbu     $a1, 0x0000($v0)           ## 00000000
/* 00614 80AE6F44 26070024 */  addiu   $a3, $s0, 0x0024           ## $a3 = 00000024
/* 00618 80AE6F48 01AE2021 */  addu    $a0, $t5, $t6              
/* 0061C 80AE6F4C 00812021 */  addu    $a0, $a0, $at              
/* 00620 80AE6F50 AFA70030 */  sw      $a3, 0x0030($sp)           
/* 00624 80AE6F54 0C2B9AF0 */  jal     func_80AE6BC0              
/* 00628 80AE6F58 24C60024 */  addiu   $a2, $a2, 0x0024           ## $a2 = 00000024
/* 0062C 80AE6F5C 10400045 */  beq     $v0, $zero, .L80AE7074     
/* 00630 80AE6F60 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00634 80AE6F64 8FAF0030 */  lw      $t7, 0x0030($sp)           
/* 00638 80AE6F68 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 0063C 80AE6F6C AFA4002C */  sw      $a0, 0x002C($sp)           
/* 00640 80AE6F70 26050078 */  addiu   $a1, $s0, 0x0078           ## $a1 = 00000078
/* 00644 80AE6F74 27A60034 */  addiu   $a2, $sp, 0x0034           ## $a2 = FFFFFFEC
/* 00648 80AE6F78 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 0064C 80AE6F7C 0C00F269 */  jal     func_8003C9A4              
/* 00650 80AE6F80 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00654 80AE6F84 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
/* 00658 80AE6F88 44812000 */  mtc1    $at, $f4                   ## $f4 = -32000.00
/* 0065C 80AE6F8C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00660 80AE6F90 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 00664 80AE6F94 46040032 */  c.eq.s  $f0, $f4                   
/* 00668 80AE6F98 00000000 */  nop
/* 0066C 80AE6F9C 45030006 */  bc1tl   .L80AE6FB8                 
/* 00670 80AE6FA0 A200014D */  sb      $zero, 0x014D($s0)         ## 0000014D
/* 00674 80AE6FA4 0C010830 */  jal     func_800420C0              
/* 00678 80AE6FA8 8E050078 */  lw      $a1, 0x0078($s0)           ## 00000078
/* 0067C 80AE6FAC 10000002 */  beq     $zero, $zero, .L80AE6FB8   
/* 00680 80AE6FB0 A202014D */  sb      $v0, 0x014D($s0)           ## 0000014D
/* 00684 80AE6FB4 A200014D */  sb      $zero, 0x014D($s0)         ## 0000014D
.L80AE6FB8:
/* 00688 80AE6FB8 9202014D */  lbu     $v0, 0x014D($s0)           ## 0000014D
/* 0068C 80AE6FBC 1440000E */  bne     $v0, $zero, .L80AE6FF8     
/* 00690 80AE6FC0 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 00694 80AE6FC4 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00698 80AE6FC8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0069C 80AE6FCC 14410003 */  bne     $v0, $at, .L80AE6FDC       
/* 006A0 80AE6FD0 00000000 */  nop
/* 006A4 80AE6FD4 10000027 */  beq     $zero, $zero, .L80AE7074   
/* 006A8 80AE6FD8 A200014D */  sb      $zero, 0x014D($s0)         ## 0000014D
.L80AE6FDC:
/* 006AC 80AE6FDC 14400004 */  bne     $v0, $zero, .L80AE6FF0     
/* 006B0 80AE6FE0 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 006B4 80AE6FE4 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 006B8 80AE6FE8 10000022 */  beq     $zero, $zero, .L80AE7074   
/* 006BC 80AE6FEC A218014D */  sb      $t8, 0x014D($s0)           ## 0000014D
.L80AE6FF0:
/* 006C0 80AE6FF0 10000020 */  beq     $zero, $zero, .L80AE7074   
/* 006C4 80AE6FF4 A208014D */  sb      $t0, 0x014D($s0)           ## 0000014D
.L80AE6FF8:
/* 006C8 80AE6FF8 332300FF */  andi    $v1, $t9, 0x00FF           ## $v1 = 000000FF
/* 006CC 80AE6FFC 28610003 */  slti    $at, $v1, 0x0003           
/* 006D0 80AE7000 14200004 */  bne     $at, $zero, .L80AE7014     
/* 006D4 80AE7004 A219014D */  sb      $t9, 0x014D($s0)           ## 0000014D
/* 006D8 80AE7008 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 006DC 80AE700C 10000019 */  beq     $zero, $zero, .L80AE7074   
/* 006E0 80AE7010 A209014D */  sb      $t1, 0x014D($s0)           ## 0000014D
.L80AE7014:
/* 006E4 80AE7014 10000017 */  beq     $zero, $zero, .L80AE7074   
/* 006E8 80AE7018 A203014D */  sb      $v1, 0x014D($s0)           ## 0000014D
/* 006EC 80AE701C 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
.L80AE7020:
/* 006F0 80AE7020 10410004 */  beq     $v0, $at, .L80AE7034       
/* 006F4 80AE7024 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 006F8 80AE7028 24010013 */  addiu   $at, $zero, 0x0013         ## $at = 00000013
/* 006FC 80AE702C 14410006 */  bne     $v0, $at, .L80AE7048       
/* 00700 80AE7030 8FAA004C */  lw      $t2, 0x004C($sp)           
.L80AE7034:
/* 00704 80AE7034 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 00708 80AE7038 0C00B6F4 */  jal     func_8002DBD0              
/* 0070C 80AE703C 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 00710 80AE7040 1000000D */  beq     $zero, $zero, .L80AE7078   
/* 00714 80AE7044 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE7048:
/* 00718 80AE7048 854B00A4 */  lh      $t3, 0x00A4($t2)           ## 000000A4
/* 0071C 80AE704C 24010012 */  addiu   $at, $zero, 0x0012         ## $at = 00000012
/* 00720 80AE7050 01402025 */  or      $a0, $t2, $zero            ## $a0 = 00000000
/* 00724 80AE7054 55610008 */  bnel    $t3, $at, .L80AE7078       
/* 00728 80AE7058 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0072C 80AE705C 0C00B337 */  jal     Flags_GetClear
              
/* 00730 80AE7060 82050003 */  lb      $a1, 0x0003($s0)           ## 00000003
/* 00734 80AE7064 50400004 */  beql    $v0, $zero, .L80AE7078     
/* 00738 80AE7068 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0073C 80AE706C 0C00B55C */  jal     Actor_Kill
              
/* 00740 80AE7070 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AE7074:
/* 00744 80AE7074 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE7078:
/* 00748 80AE7078 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0074C 80AE707C 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00750 80AE7080 03E00008 */  jr      $ra                        
/* 00754 80AE7084 00000000 */  nop


