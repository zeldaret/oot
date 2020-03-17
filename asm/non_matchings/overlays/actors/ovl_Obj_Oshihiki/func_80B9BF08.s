glabel func_80B9BF08
/* 00D88 80B9BF08 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00D8C 80B9BF0C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D90 80B9BF10 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00D94 80B9BF14 0C2E6CC0 */  jal     func_80B9B300              
/* 00D98 80B9BF18 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00D9C 80B9BF1C 1040000F */  beq     $v0, $zero, .L80B9BF5C     
/* 00DA0 80B9BF20 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00DA4 80B9BF24 944E0168 */  lhu     $t6, 0x0168($v0)           ## 00000168
/* 00DA8 80B9BF28 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00DAC 80B9BF2C 31CF0020 */  andi    $t7, $t6, 0x0020           ## $t7 = 00000000
/* 00DB0 80B9BF30 51E0000B */  beql    $t7, $zero, .L80B9BF60     
/* 00DB4 80B9BF34 94F80168 */  lhu     $t8, 0x0168($a3)           ## 00000168
/* 00DB8 80B9BF38 84450158 */  lh      $a1, 0x0158($v0)           ## 00000158
/* 00DBC 80B9BF3C 8C46017C */  lw      $a2, 0x017C($v0)           ## 0000017C
/* 00DC0 80B9BF40 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00DC4 80B9BF44 0C2E6F2E */  jal     func_80B9BCB8              
/* 00DC8 80B9BF48 AFA20018 */  sw      $v0, 0x0018($sp)           
/* 00DCC 80B9BF4C 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 00DD0 80B9BF50 14400002 */  bne     $v0, $zero, .L80B9BF5C     
/* 00DD4 80B9BF54 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00DD8 80B9BF58 ACE301C0 */  sw      $v1, 0x01C0($a3)           ## 000001C0
.L80B9BF5C:
/* 00DDC 80B9BF5C 94F80168 */  lhu     $t8, 0x0168($a3)           ## 00000168
.L80B9BF60:
/* 00DE0 80B9BF60 33190100 */  andi    $t9, $t8, 0x0100           ## $t9 = 00000000
/* 00DE4 80B9BF64 53200020 */  beql    $t9, $zero, .L80B9BFE8     
/* 00DE8 80B9BF68 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00DEC 80B9BF6C 8CE201C0 */  lw      $v0, 0x01C0($a3)           ## 000001C0
/* 00DF0 80B9BF70 5040001D */  beql    $v0, $zero, .L80B9BFE8     
/* 00DF4 80B9BF74 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00DF8 80B9BF78 94430168 */  lhu     $v1, 0x0168($v0)           ## 00000168
/* 00DFC 80B9BF7C 30680010 */  andi    $t0, $v1, 0x0010           ## $t0 = 00000000
/* 00E00 80B9BF80 11000015 */  beq     $t0, $zero, .L80B9BFD8     
/* 00E04 80B9BF84 30690020 */  andi    $t1, $v1, 0x0020           ## $t1 = 00000000
/* 00E08 80B9BF88 C4440024 */  lwc1    $f4, 0x0024($v0)           ## 00000024
/* 00E0C 80B9BF8C C4460100 */  lwc1    $f6, 0x0100($v0)           ## 00000100
/* 00E10 80B9BF90 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00E14 80B9BF94 46062201 */  sub.s   $f8, $f4, $f6              
/* 00E18 80B9BF98 C4E40024 */  lwc1    $f4, 0x0024($a3)           ## 00000024
/* 00E1C 80B9BF9C E4E801C4 */  swc1    $f8, 0x01C4($a3)           ## 000001C4
/* 00E20 80B9BFA0 C4500108 */  lwc1    $f16, 0x0108($v0)          ## 00000108
/* 00E24 80B9BFA4 C44A002C */  lwc1    $f10, 0x002C($v0)          ## 0000002C
/* 00E28 80B9BFA8 C4E601C4 */  lwc1    $f6, 0x01C4($a3)           ## 000001C4
/* 00E2C 80B9BFAC 46105481 */  sub.s   $f18, $f10, $f16           
/* 00E30 80B9BFB0 C4EA002C */  lwc1    $f10, 0x002C($a3)          ## 0000002C
/* 00E34 80B9BFB4 46062200 */  add.s   $f8, $f4, $f6              
/* 00E38 80B9BFB8 E4F201C8 */  swc1    $f18, 0x01C8($a3)          ## 000001C8
/* 00E3C 80B9BFBC C4F001C8 */  lwc1    $f16, 0x01C8($a3)          ## 000001C8
/* 00E40 80B9BFC0 E4E80024 */  swc1    $f8, 0x0024($a3)           ## 00000024
/* 00E44 80B9BFC4 46105480 */  add.s   $f18, $f10, $f16           
/* 00E48 80B9BFC8 0C2E6CE3 */  jal     func_80B9B38C              
/* 00E4C 80B9BFCC E4F2002C */  swc1    $f18, 0x002C($a3)          ## 0000002C
/* 00E50 80B9BFD0 10000005 */  beq     $zero, $zero, .L80B9BFE8   
/* 00E54 80B9BFD4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B9BFD8:
/* 00E58 80B9BFD8 55200003 */  bnel    $t1, $zero, .L80B9BFE8     
/* 00E5C 80B9BFDC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00E60 80B9BFE0 ACE001C0 */  sw      $zero, 0x01C0($a3)         ## 000001C0
/* 00E64 80B9BFE4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B9BFE8:
/* 00E68 80B9BFE8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E6C 80B9BFEC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00E70 80B9BFF0 03E00008 */  jr      $ra                        
/* 00E74 80B9BFF4 00000000 */  nop


