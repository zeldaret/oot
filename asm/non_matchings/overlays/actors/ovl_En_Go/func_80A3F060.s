glabel func_80A3F060
/* 00AF0 80A3F060 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00AF4 80A3F064 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AF8 80A3F068 8C820190 */  lw      $v0, 0x0190($a0)           ## 00000190
/* 00AFC 80A3F06C 3C0E80A4 */  lui     $t6, %hi(func_80A406E0)    ## $t6 = 80A40000
/* 00B00 80A3F070 25CE06E0 */  addiu   $t6, $t6, %lo(func_80A406E0) ## $t6 = 80A406E0
/* 00B04 80A3F074 11C20009 */  beq     $t6, $v0, .L80A3F09C       
/* 00B08 80A3F078 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 00B0C 80A3F07C 3C0F80A4 */  lui     $t7, %hi(func_80A4020C)    ## $t7 = 80A40000
/* 00B10 80A3F080 25EF020C */  addiu   $t7, $t7, %lo(func_80A4020C) ## $t7 = 80A4020C
/* 00B14 80A3F084 11E20005 */  beq     $t7, $v0, .L80A3F09C       
/* 00B18 80A3F088 3C1880A4 */  lui     $t8, %hi(func_80A40B1C)    ## $t8 = 80A40000
/* 00B1C 80A3F08C 27180B1C */  addiu   $t8, $t8, %lo(func_80A40B1C) ## $t8 = 80A40B1C
/* 00B20 80A3F090 13020002 */  beq     $t8, $v0, .L80A3F09C       
/* 00B24 80A3F094 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00B28 80A3F098 A7B9001A */  sh      $t9, 0x001A($sp)           
.L80A3F09C:
/* 00B2C 80A3F09C 8C690024 */  lw      $t1, 0x0024($v1)           ## 00000024
/* 00B30 80A3F0A0 AC8901F8 */  sw      $t1, 0x01F8($a0)           ## 000001F8
/* 00B34 80A3F0A4 8C680028 */  lw      $t0, 0x0028($v1)           ## 00000028
/* 00B38 80A3F0A8 AC8801FC */  sw      $t0, 0x01FC($a0)           ## 000001FC
/* 00B3C 80A3F0AC 8C69002C */  lw      $t1, 0x002C($v1)           ## 0000002C
/* 00B40 80A3F0B0 AC890200 */  sw      $t1, 0x0200($a0)           ## 00000200
/* 00B44 80A3F0B4 0C28FBFA */  jal     func_80A3EFE8              
/* 00B48 80A3F0B8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00B4C 80A3F0BC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00B50 80A3F0C0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00B54 80A3F0C4 E48001F4 */  swc1    $f0, 0x01F4($a0)           ## 000001F4
/* 00B58 80A3F0C8 87A7001A */  lh      $a3, 0x001A($sp)           
/* 00B5C 80A3F0CC 0C00D285 */  jal     func_80034A14              
/* 00B60 80A3F0D0 248501E0 */  addiu   $a1, $a0, 0x01E0           ## $a1 = 000001E0
/* 00B64 80A3F0D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B68 80A3F0D8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00B6C 80A3F0DC 03E00008 */  jr      $ra                        
/* 00B70 80A3F0E0 00000000 */  nop
