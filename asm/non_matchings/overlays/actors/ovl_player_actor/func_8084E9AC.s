glabel func_8084E9AC
/* 1C79C 8084E9AC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1C7A0 8084E9B0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 1C7A4 8084E9B4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1C7A8 8084E9B8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 1C7AC 8084E9BC 24C701B4 */  addiu   $a3, $a2, 0x01B4           ## $a3 = 000001B4
/* 1C7B0 8084E9C0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 1C7B4 8084E9C4 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 000001B4
/* 1C7B8 8084E9C8 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 1C7BC 8084E9CC 0C028EF0 */  jal     func_800A3BC0              
/* 1C7C0 8084E9D0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1C7C4 8084E9D4 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 1C7C8 8084E9D8 1040001A */  beq     $v0, $zero, .L8084EA44     
/* 1C7CC 8084E9DC 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 1C7D0 8084E9E0 80CE084F */  lb      $t6, 0x084F($a2)           ## 0000084F
/* 1C7D4 8084E9E4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 1C7D8 8084E9E8 15C00012 */  bne     $t6, $zero, .L8084EA34     
/* 1C7DC 8084E9EC 00000000 */  nop
/* 1C7E0 8084E9F0 84C20850 */  lh      $v0, 0x0850($a2)           ## 00000850
/* 1C7E4 8084E9F4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 1C7E8 8084E9F8 14400003 */  bne     $v0, $zero, .L8084EA08     
/* 1C7EC 8084E9FC 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 1C7F0 8084EA00 10000003 */  beq     $zero, $zero, .L8084EA10   
/* 1C7F4 8084EA04 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8084EA08:
/* 1C7F8 8084EA08 A4CF0850 */  sh      $t7, 0x0850($a2)           ## 00000850
/* 1C7FC 8084EA0C 84C30850 */  lh      $v1, 0x0850($a2)           ## 00000850
.L8084EA10:
/* 1C800 8084EA10 54600028 */  bnel    $v1, $zero, .L8084EAB4     
/* 1C804 8084EA14 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1C808 8084EA18 C4C401C8 */  lwc1    $f4, 0x01C8($a2)           ## 000001C8
/* 1C80C 8084EA1C 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 1C810 8084EA20 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 1C814 8084EA24 A0D8084F */  sb      $t8, 0x084F($a2)           ## 0000084F
/* 1C818 8084EA28 46062201 */  sub.s   $f8, $f4, $f6              
/* 1C81C 8084EA2C 10000020 */  beq     $zero, $zero, .L8084EAB0   
/* 1C820 8084EA30 E4C801C4 */  swc1    $f8, 0x01C4($a2)           ## 000001C4
.L8084EA34:
/* 1C824 8084EA34 0C20F03A */  jal     func_8083C0E8              
/* 1C828 8084EA38 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 1C82C 8084EA3C 1000001D */  beq     $zero, $zero, .L8084EAB4   
/* 1C830 8084EA40 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8084EA44:
/* 1C834 8084EA44 3C198016 */  lui     $t9, %hi(gSaveContext+4)
/* 1C838 8084EA48 8F39E664 */  lw      $t9, %lo(gSaveContext+4)($t9)
/* 1C83C 8084EA4C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 1C840 8084EA50 3C05431E */  lui     $a1, 0x431E                ## $a1 = 431E0000
/* 1C844 8084EA54 1720000A */  bne     $t9, $zero, .L8084EA80     
/* 1C848 8084EA58 00000000 */  nop
/* 1C84C 8084EA5C 0C02914C */  jal     func_800A4530              
/* 1C850 8084EA60 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1C854 8084EA64 10400006 */  beq     $v0, $zero, .L8084EA80     
/* 1C858 8084EA68 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 1C85C 8084EA6C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 1C860 8084EA70 0C20C9A6 */  jal     func_80832698              
/* 1C864 8084EA74 24056800 */  addiu   $a1, $zero, 0x6800         ## $a1 = 00006800
/* 1C868 8084EA78 1000000E */  beq     $zero, $zero, .L8084EAB4   
/* 1C86C 8084EA7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8084EA80:
/* 1C870 8084EA80 3C088016 */  lui     $t0, %hi(gSaveContext+4)
/* 1C874 8084EA84 8D08E664 */  lw      $t0, %lo(gSaveContext+4)($t0)
/* 1C878 8084EA88 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 1C87C 8084EA8C 3C058085 */  lui     $a1, %hi(D_808549F4)       ## $a1 = 80850000
/* 1C880 8084EA90 11000005 */  beq     $t0, $zero, .L8084EAA8     
/* 1C884 8084EA94 00000000 */  nop
/* 1C888 8084EA98 0C20CA49 */  jal     func_80832924              
/* 1C88C 8084EA9C 24A549F4 */  addiu   $a1, $a1, %lo(D_808549F4)  ## $a1 = 808549F4
/* 1C890 8084EAA0 10000004 */  beq     $zero, $zero, .L8084EAB4   
/* 1C894 8084EAA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8084EAA8:
/* 1C898 8084EAA8 0C213A62 */  jal     func_8084E988              
/* 1C89C 8084EAAC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
.L8084EAB0:
/* 1C8A0 8084EAB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8084EAB4:
/* 1C8A4 8084EAB4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 1C8A8 8084EAB8 03E00008 */  jr      $ra                        
/* 1C8AC 8084EABC 00000000 */  nop
