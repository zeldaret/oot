glabel func_80840BC8
/* 0E9B8 80840BC8 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 0E9BC 80840BCC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0E9C0 80840BD0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0E9C4 80840BD4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0E9C8 80840BD8 0C20CCD4 */  jal     func_80833350              
/* 0E9CC 80840BDC AFA5004C */  sw      $a1, 0x004C($sp)           
/* 0E9D0 80840BE0 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 0E9D4 80840BE4 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 0E9D8 80840BE8 0C028EF0 */  jal     func_800A3BC0              
/* 0E9DC 80840BEC AFA20044 */  sw      $v0, 0x0044($sp)           
/* 0E9E0 80840BF0 8FA30044 */  lw      $v1, 0x0044($sp)           
/* 0E9E4 80840BF4 00403025 */  or      $a2, $v0, $zero            ## $a2 = 00000000
/* 0E9E8 80840BF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0E9EC 80840BFC 18600004 */  blez    $v1, .L80840C10            
/* 0E9F0 80840C00 2465FFFF */  addiu   $a1, $v1, 0xFFFF           ## $a1 = FFFFFFFF
/* 0E9F4 80840C04 0C20CCFF */  jal     func_808333FC              
/* 0E9F8 80840C08 AFA20040 */  sw      $v0, 0x0040($sp)           
/* 0E9FC 80840C0C 8FA60040 */  lw      $a2, 0x0040($sp)           
.L80840C10:
/* 0EA00 80840C10 10C00021 */  beq     $a2, $zero, .L80840C98     
/* 0EA04 80840C14 00000000 */  nop
/* 0EA08 80840C18 86030850 */  lh      $v1, 0x0850($s0)           ## 00000850
/* 0EA0C 80840C1C 10600019 */  beq     $v1, $zero, .L80840C84     
/* 0EA10 80840C20 00000000 */  nop
/* 0EA14 80840C24 14600003 */  bne     $v1, $zero, .L80840C34     
/* 0EA18 80840C28 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 0EA1C 80840C2C 10000004 */  beq     $zero, $zero, .L80840C40   
/* 0EA20 80840C30 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80840C34:
/* 0EA24 80840C34 A60E0850 */  sh      $t6, 0x0850($s0)           ## 00000850
/* 0EA28 80840C38 86030850 */  lh      $v1, 0x0850($s0)           ## 00000850
/* 0EA2C 80840C3C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80840C40:
/* 0EA30 80840C40 14400006 */  bne     $v0, $zero, .L80840C5C     
/* 0EA34 80840C44 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0EA38 80840C48 C60401C8 */  lwc1    $f4, 0x01C8($s0)           ## 000001C8
/* 0EA3C 80840C4C 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 0EA40 80840C50 86030850 */  lh      $v1, 0x0850($s0)           ## 00000850
/* 0EA44 80840C54 46062201 */  sub.s   $f8, $f4, $f6              
/* 0EA48 80840C58 E60801C4 */  swc1    $f8, 0x01C4($s0)           ## 000001C4
.L80840C5C:
/* 0EA4C 80840C5C 8E0201D4 */  lw      $v0, 0x01D4($s0)           ## 000001D4
/* 0EA50 80840C60 30780001 */  andi    $t8, $v1, 0x0001           ## $t8 = 00000000
/* 0EA54 80840C64 0018C880 */  sll     $t9, $t8,  2               
/* 0EA58 80840C68 844F0002 */  lh      $t7, 0x0002($v0)           ## 00000002
/* 0EA5C 80840C6C 0338C821 */  addu    $t9, $t9, $t8              
/* 0EA60 80840C70 0019C900 */  sll     $t9, $t9,  4               
/* 0EA64 80840C74 01F94021 */  addu    $t0, $t7, $t9              
/* 0EA68 80840C78 2509FFD8 */  addiu   $t1, $t0, 0xFFD8           ## $t1 = FFFFFFD8
/* 0EA6C 80840C7C 10000006 */  beq     $zero, $zero, .L80840C98   
/* 0EA70 80840C80 A4490002 */  sh      $t1, 0x0002($v0)           ## 00000002
.L80840C84:
/* 0EA74 80840C84 0C20CB6F */  jal     func_80832DBC              
/* 0EA78 80840C88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0EA7C 80840C8C 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 0EA80 80840C90 0C210273 */  jal     func_808409CC              
/* 0EA84 80840C94 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
.L80840C98:
/* 0EA88 80840C98 0C20DC87 */  jal     func_8083721C              
/* 0EA8C 80840C9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0EA90 80840CA0 860A0850 */  lh      $t2, 0x0850($s0)           ## 00000850
/* 0EA94 80840CA4 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 0EA98 80840CA8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0EA9C 80840CAC 15400048 */  bne     $t2, $zero, .L80840DD0     
/* 0EAA0 80840CB0 3C068085 */  lui     $a2, %hi(D_80854418)       ## $a2 = 80850000
/* 0EAA4 80840CB4 24C64418 */  addiu   $a2, $a2, %lo(D_80854418)  ## $a2 = 80854418
/* 0EAA8 80840CB8 0C20DCD2 */  jal     func_80837348              
/* 0EAAC 80840CBC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0EAB0 80840CC0 54400044 */  bnel    $v0, $zero, .L80840DD4     
/* 0EAB4 80840CC4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0EAB8 80840CC8 0C20CED5 */  jal     func_80833B54              
/* 0EABC 80840CCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0EAC0 80840CD0 10400005 */  beq     $v0, $zero, .L80840CE8     
/* 0EAC4 80840CD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0EAC8 80840CD8 0C20F3AB */  jal     func_8083CEAC              
/* 0EACC 80840CDC 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 0EAD0 80840CE0 1000003C */  beq     $zero, $zero, .L80840DD4   
/* 0EAD4 80840CE4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80840CE8:
/* 0EAD8 80840CE8 0C20CECB */  jal     func_80833B2C              
/* 0EADC 80840CEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0EAE0 80840CF0 10400006 */  beq     $v0, $zero, .L80840D0C     
/* 0EAE4 80840CF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0EAE8 80840CF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0EAEC 80840CFC 0C20E7CC */  jal     func_80839F30              
/* 0EAF0 80840D00 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 0EAF4 80840D04 10000033 */  beq     $zero, $zero, .L80840DD4   
/* 0EAF8 80840D08 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80840D0C:
/* 0EAFC 80840D0C 8FAB004C */  lw      $t3, 0x004C($sp)           
/* 0EB00 80840D10 3C073C93 */  lui     $a3, 0x3C93                ## $a3 = 3C930000
/* 0EB04 80840D14 34E774BC */  ori     $a3, $a3, 0x74BC           ## $a3 = 3C9374BC
/* 0EB08 80840D18 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFF4
/* 0EB0C 80840D1C 27A6003A */  addiu   $a2, $sp, 0x003A           ## $a2 = FFFFFFF2
/* 0EB10 80840D20 0C20DC9A */  jal     func_80837268              
/* 0EB14 80840D24 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 0EB18 80840D28 C7AA003C */  lwc1    $f10, 0x003C($sp)          
/* 0EB1C 80840D2C 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 0EB20 80840D30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0EB24 80840D34 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 0EB28 80840D38 46105032 */  c.eq.s  $f10, $f16                 
/* 0EB2C 80840D3C 87AC003A */  lh      $t4, 0x003A($sp)           
/* 0EB30 80840D40 45030006 */  bc1tl   .L80840D5C                 
/* 0EB34 80840D44 860D00B6 */  lh      $t5, 0x00B6($s0)           ## 000000B6
/* 0EB38 80840D48 0C20F237 */  jal     func_8083C8DC              
/* 0EB3C 80840D4C 87A6003A */  lh      $a2, 0x003A($sp)           
/* 0EB40 80840D50 10000020 */  beq     $zero, $zero, .L80840DD4   
/* 0EB44 80840D54 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0EB48 80840D58 860D00B6 */  lh      $t5, 0x00B6($s0)           ## 000000B6
.L80840D5C:
/* 0EB4C 80840D5C 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 0EB50 80840D60 87A5003A */  lh      $a1, 0x003A($sp)           
/* 0EB54 80840D64 018D1823 */  subu    $v1, $t4, $t5              
/* 0EB58 80840D68 00031C00 */  sll     $v1, $v1, 16               
/* 0EB5C 80840D6C 00031C03 */  sra     $v1, $v1, 16               
/* 0EB60 80840D70 04600003 */  bltz    $v1, .L80840D80            
/* 0EB64 80840D74 00031023 */  subu    $v0, $zero, $v1            
/* 0EB68 80840D78 10000001 */  beq     $zero, $zero, .L80840D80   
/* 0EB6C 80840D7C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80840D80:
/* 0EB70 80840D80 28410321 */  slti    $at, $v0, 0x0321           
/* 0EB74 80840D84 14200006 */  bne     $at, $zero, .L80840DA0     
/* 0EB78 80840D88 87A6003A */  lh      $a2, 0x003A($sp)           
/* 0EB7C 80840D8C 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 0EB80 80840D90 0C20F355 */  jal     func_8083CD54              
/* 0EB84 80840D94 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0EB88 80840D98 1000000E */  beq     $zero, $zero, .L80840DD4   
/* 0EB8C 80840D9C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80840DA0:
/* 0EB90 80840DA0 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 0EB94 80840DA4 240604B0 */  addiu   $a2, $zero, 0x04B0         ## $a2 = 000004B0
/* 0EB98 80840DA8 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 0EB9C 80840DAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0EBA0 80840DB0 0C20CCCE */  jal     func_80833338              
/* 0EBA4 80840DB4 A60E083C */  sh      $t6, 0x083C($s0)           ## 0000083C
/* 0EBA8 80840DB8 8E1801BC */  lw      $t8, 0x01BC($s0)           ## 000001BC
/* 0EBAC 80840DBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0EBB0 80840DC0 54580004 */  bnel    $v0, $t8, .L80840DD4       
/* 0EBB4 80840DC4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0EBB8 80840DC8 0C20F715 */  jal     func_8083DC54              
/* 0EBBC 80840DCC 8FA5004C */  lw      $a1, 0x004C($sp)           
.L80840DD0:
/* 0EBC0 80840DD0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80840DD4:
/* 0EBC4 80840DD4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0EBC8 80840DD8 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 0EBCC 80840DDC 03E00008 */  jr      $ra                        
/* 0EBD0 80840DE0 00000000 */  nop


