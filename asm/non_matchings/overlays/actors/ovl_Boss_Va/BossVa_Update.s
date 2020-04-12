.late_rodata
glabel jtbl_8095C7C0
.word L80957DA8
.word L80957F50
.word L80957F50
.word L80957F50
.word L80957F50
.word L80957F50
.word L80957F50
.word L80957E74
.word L80957E74
.word L80957E74
.word L80957E74
.word L80957E74
.word L80957E74
.word L80957E74
.word L80957E74
.word L80957E74
.word L80957E74
.word L80957E74
.word L80957E74
.word L80957E74
.word L80957F50
glabel D_8095C814
 .word 0x3E75C28F
glabel D_8095C818
 .word 0x3F428F5C
glabel D_8095C81C
    .float 0.2

.text
glabel BossVa_Update
/* 08A9C 80957D5C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 08AA0 80957D60 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 08AA4 80957D64 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 08AA8 80957D68 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 08AAC 80957D6C 8C990190 */  lw      $t9, 0x0190($a0)           ## 00000190
/* 08AB0 80957D70 0320F809 */  jalr    $ra, $t9                   
/* 08AB4 80957D74 00000000 */  nop
/* 08AB8 80957D78 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 08ABC 80957D7C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 08AC0 80957D80 84CE001C */  lh      $t6, 0x001C($a2)           ## 0000001C
/* 08AC4 80957D84 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 08AC8 80957D88 2DE10015 */  sltiu   $at, $t7, 0x0015           
/* 08ACC 80957D8C 10200039 */  beq     $at, $zero, .L80957E74     
/* 08AD0 80957D90 000F7880 */  sll     $t7, $t7,  2               
/* 08AD4 80957D94 3C018096 */  lui     $at, %hi(jtbl_8095C7C0)       ## $at = 80960000
/* 08AD8 80957D98 002F0821 */  addu    $at, $at, $t7              
/* 08ADC 80957D9C 8C2FC7C0 */  lw      $t7, %lo(jtbl_8095C7C0)($at)  
/* 08AE0 80957DA0 01E00008 */  jr      $t7                        
/* 08AE4 80957DA4 00000000 */  nop
glabel L80957DA8
/* 08AE8 80957DA8 90C2029D */  lbu     $v0, 0x029D($a2)           ## 0000029D
/* 08AEC 80957DAC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 08AF0 80957DB0 30580002 */  andi    $t8, $v0, 0x0002           ## $t8 = 00000000
/* 08AF4 80957DB4 5300000A */  beql    $t8, $zero, .L80957DE0     
/* 08AF8 80957DB8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 08AFC 80957DBC 8CC30294 */  lw      $v1, 0x0294($a2)           ## 00000294
/* 08B00 80957DC0 3048FFFD */  andi    $t0, $v0, 0xFFFD           ## $t0 = 00000000
/* 08B04 80957DC4 A0C8029D */  sb      $t0, 0x029D($a2)           ## 0000029D
/* 08B08 80957DC8 84690000 */  lh      $t1, 0x0000($v1)           ## 00000000
/* 08B0C 80957DCC 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 08B10 80957DD0 55210003 */  bnel    $t1, $at, .L80957DE0       
/* 08B14 80957DD4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 08B18 80957DD8 A06001D4 */  sb      $zero, 0x01D4($v1)         ## 000001D4
/* 08B1C 80957DDC AFA5001C */  sw      $a1, 0x001C($sp)           
.L80957DE0:
/* 08B20 80957DE0 0C2565FD */  jal     func_809597F4              
/* 08B24 80957DE4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 08B28 80957DE8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 08B2C 80957DEC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 08B30 80957DF0 34210004 */  ori     $at, $at, 0x0004           ## $at = 00010004
/* 08B34 80957DF4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 08B38 80957DF8 24040004 */  addiu   $a0, $zero, 0x0004         ## $a0 = 00000004
/* 08B3C 80957DFC 00A11021 */  addu    $v0, $a1, $at              
.L80957E00:
/* 08B40 80957E00 84430AB0 */  lh      $v1, 0x0AB0($v0)           ## 00000AB0
/* 08B44 80957E04 2484FFFE */  addiu   $a0, $a0, 0xFFFE           ## $a0 = 00000002
/* 08B48 80957E08 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = FFFFFFFF
/* 08B4C 80957E0C 58600004 */  blezl   $v1, .L80957E20            
/* 08B50 80957E10 A4400AB0 */  sh      $zero, 0x0AB0($v0)         ## 00000AB0
/* 08B54 80957E14 10000002 */  beq     $zero, $zero, .L80957E20   
/* 08B58 80957E18 A4430AB0 */  sh      $v1, 0x0AB0($v0)           ## 00000AB0
/* 08B5C 80957E1C A4400AB0 */  sh      $zero, 0x0AB0($v0)         ## 00000AB0
.L80957E20:
/* 08B60 80957E20 84430AB6 */  lh      $v1, 0x0AB6($v0)           ## 00000AB6
/* 08B64 80957E24 2463FFF6 */  addiu   $v1, $v1, 0xFFF6           ## $v1 = FFFFFFF5
/* 08B68 80957E28 58600004 */  blezl   $v1, .L80957E3C            
/* 08B6C 80957E2C A4400AB6 */  sh      $zero, 0x0AB6($v0)         ## 00000AB6
/* 08B70 80957E30 10000002 */  beq     $zero, $zero, .L80957E3C   
/* 08B74 80957E34 A4430AB6 */  sh      $v1, 0x0AB6($v0)           ## 00000AB6
/* 08B78 80957E38 A4400AB6 */  sh      $zero, 0x0AB6($v0)         ## 00000AB6
.L80957E3C:
/* 08B7C 80957E3C 84430ABC */  lh      $v1, 0x0ABC($v0)           ## 00000ABC
/* 08B80 80957E40 2463FFF6 */  addiu   $v1, $v1, 0xFFF6           ## $v1 = FFFFFFEB
/* 08B84 80957E44 58600004 */  blezl   $v1, .L80957E58            
/* 08B88 80957E48 A4400ABC */  sh      $zero, 0x0ABC($v0)         ## 00000ABC
/* 08B8C 80957E4C 10000002 */  beq     $zero, $zero, .L80957E58   
/* 08B90 80957E50 A4430ABC */  sh      $v1, 0x0ABC($v0)           ## 00000ABC
/* 08B94 80957E54 A4400ABC */  sh      $zero, 0x0ABC($v0)         ## 00000ABC
.L80957E58:
/* 08B98 80957E58 0481FFE9 */  bgez    $a0, .L80957E00            
/* 08B9C 80957E5C 2442FFFE */  addiu   $v0, $v0, 0xFFFE           ## $v0 = FFFFFFFE
/* 08BA0 80957E60 90C20194 */  lbu     $v0, 0x0194($a2)           ## 00000194
/* 08BA4 80957E64 1840003A */  blez    $v0, .L80957F50            
/* 08BA8 80957E68 244AFFFF */  addiu   $t2, $v0, 0xFFFF           ## $t2 = FFFFFFFD
/* 08BAC 80957E6C 10000038 */  beq     $zero, $zero, .L80957F50   
/* 08BB0 80957E70 A0CA0194 */  sb      $t2, 0x0194($a2)           ## 00000194
glabel L80957E74
.L80957E74:
/* 08BB4 80957E74 84CB019C */  lh      $t3, 0x019C($a2)           ## 0000019C
/* 08BB8 80957E78 8CCD0028 */  lw      $t5, 0x0028($a2)           ## 00000028
/* 08BBC 80957E7C 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 08BC0 80957E80 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 08BC4 80957E84 A4CC019C */  sh      $t4, 0x019C($a2)           ## 0000019C
/* 08BC8 80957E88 84C4019C */  lh      $a0, 0x019C($a2)           ## 0000019C
/* 08BCC 80957E8C 44813000 */  mtc1    $at, $f6                   ## $f6 = 45.00
/* 08BD0 80957E90 ACCD003C */  sw      $t5, 0x003C($a2)           ## 0000003C
/* 08BD4 80957E94 00800821 */  addu    $at, $a0, $zero            
/* 08BD8 80957E98 8CD90024 */  lw      $t9, 0x0024($a2)           ## 00000024
/* 08BDC 80957E9C C4C4003C */  lwc1    $f4, 0x003C($a2)           ## 0000003C
/* 08BE0 80957EA0 00042140 */  sll     $a0, $a0,  5               
/* 08BE4 80957EA4 00812023 */  subu    $a0, $a0, $at              
/* 08BE8 80957EA8 00042080 */  sll     $a0, $a0,  2               
/* 08BEC 80957EAC 46062200 */  add.s   $f8, $f4, $f6              
/* 08BF0 80957EB0 00812021 */  addu    $a0, $a0, $at              
/* 08BF4 80957EB4 ACD90038 */  sw      $t9, 0x0038($a2)           ## 00000038
/* 08BF8 80957EB8 8CD9002C */  lw      $t9, 0x002C($a2)           ## 0000002C
/* 08BFC 80957EBC 000420C0 */  sll     $a0, $a0,  3               
/* 08C00 80957EC0 00812021 */  addu    $a0, $a0, $at              
/* 08C04 80957EC4 00042080 */  sll     $a0, $a0,  2               
/* 08C08 80957EC8 E4C8003C */  swc1    $f8, 0x003C($a2)           ## 0000003C
/* 08C0C 80957ECC 00042400 */  sll     $a0, $a0, 16               
/* 08C10 80957ED0 ACD90040 */  sw      $t9, 0x0040($a2)           ## 00000040
/* 08C14 80957ED4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 08C18 80957ED8 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 08C1C 80957EDC 00042403 */  sra     $a0, $a0, 16               
/* 08C20 80957EE0 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 08C24 80957EE4 3C018096 */  lui     $at, %hi(D_8095C814)       ## $at = 80960000
/* 08C28 80957EE8 C42AC814 */  lwc1    $f10, %lo(D_8095C814)($at) 
/* 08C2C 80957EEC 84C4019C */  lh      $a0, 0x019C($a2)           ## 0000019C
/* 08C30 80957EF0 3C018096 */  lui     $at, %hi(D_8095C818)       ## $at = 80960000
/* 08C34 80957EF4 460A0402 */  mul.s   $f16, $f0, $f10            
/* 08C38 80957EF8 C432C818 */  lwc1    $f18, %lo(D_8095C818)($at) 
/* 08C3C 80957EFC 00800821 */  addu    $at, $a0, $zero            
/* 08C40 80957F00 00042140 */  sll     $a0, $a0,  5               
/* 08C44 80957F04 00812023 */  subu    $a0, $a0, $at              
/* 08C48 80957F08 00042080 */  sll     $a0, $a0,  2               
/* 08C4C 80957F0C 00812021 */  addu    $a0, $a0, $at              
/* 08C50 80957F10 000420C0 */  sll     $a0, $a0,  3               
/* 08C54 80957F14 46128100 */  add.s   $f4, $f16, $f18            
/* 08C58 80957F18 00812021 */  addu    $a0, $a0, $at              
/* 08C5C 80957F1C 00042080 */  sll     $a0, $a0,  2               
/* 08C60 80957F20 00042400 */  sll     $a0, $a0, 16               
/* 08C64 80957F24 00042403 */  sra     $a0, $a0, 16               
/* 08C68 80957F28 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 08C6C 80957F2C E4C401DC */  swc1    $f4, 0x01DC($a2)           ## 000001DC
/* 08C70 80957F30 3C018096 */  lui     $at, %hi(D_8095C81C)       ## $at = 80960000
/* 08C74 80957F34 C426C81C */  lwc1    $f6, %lo(D_8095C81C)($at)  
/* 08C78 80957F38 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 08C7C 80957F3C 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 08C80 80957F40 46060202 */  mul.s   $f8, $f0, $f6              
/* 08C84 80957F44 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 08C88 80957F48 460A4400 */  add.s   $f16, $f8, $f10            
/* 08C8C 80957F4C E4D001D8 */  swc1    $f16, 0x01D8($a2)          ## 000001D8
glabel L80957F50
.L80957F50:
/* 08C90 80957F50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 08C94 80957F54 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 08C98 80957F58 03E00008 */  jr      $ra                        
/* 08C9C 80957F5C 00000000 */  nop
