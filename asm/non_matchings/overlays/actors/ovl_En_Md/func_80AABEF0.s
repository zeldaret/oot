glabel func_80AABEF0
/* 01CA0 80AABEF0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01CA4 80AABEF4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01CA8 80AABEF8 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 01CAC 80AABEFC 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01CB0 80AABF00 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01CB4 80AABF04 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 01CB8 80AABF08 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 01CBC 80AABF0C 14A1002D */  bne     $a1, $at, .L80AABFC4       
/* 01CC0 80AABF10 AFA70044 */  sw      $a3, 0x0044($sp)           
/* 01CC4 80AABF14 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 01CC8 80AABF18 3C014496 */  lui     $at, 0x4496                ## $at = 44960000
/* 01CCC 80AABF1C 44816000 */  mtc1    $at, $f12                  ## $f12 = 1200.00
/* 01CD0 80AABF20 44067000 */  mfc1    $a2, $f14                  
/* 01CD4 80AABF24 0C034261 */  jal     Matrix_Translate              
/* 01CD8 80AABF28 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01CDC 80AABF2C 8FAF004C */  lw      $t7, 0x004C($sp)           
/* 01CE0 80AABF30 27AE002C */  addiu   $t6, $sp, 0x002C           ## $t6 = FFFFFFF4
/* 01CE4 80AABF34 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 01CE8 80AABF38 89F901E8 */  lwl     $t9, 0x01E8($t7)           ## 000001E8
/* 01CEC 80AABF3C 99F901EB */  lwr     $t9, 0x01EB($t7)           ## 000001EB
/* 01CF0 80AABF40 44814000 */  mtc1    $at, $f8                   ## $f8 = 32768.00
/* 01CF4 80AABF44 3C0180AB */  lui     $at, %hi(D_80AAC58C)       ## $at = 80AB0000
/* 01CF8 80AABF48 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 01CFC 80AABF4C 95F901EC */  lhu     $t9, 0x01EC($t7)           ## 000001EC
/* 01D00 80AABF50 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01D04 80AABF54 A5D90004 */  sh      $t9, 0x0004($t6)           ## FFFFFFF8
/* 01D08 80AABF58 87A8002E */  lh      $t0, 0x002E($sp)           
/* 01D0C 80AABF5C C430C58C */  lwc1    $f16, %lo(D_80AAC58C)($at) 
/* 01D10 80AABF60 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 01D14 80AABF64 00000000 */  nop
/* 01D18 80AABF68 468021A0 */  cvt.s.w $f6, $f4                   
/* 01D1C 80AABF6C 46083283 */  div.s   $f10, $f6, $f8             
/* 01D20 80AABF70 46105302 */  mul.s   $f12, $f10, $f16           
/* 01D24 80AABF74 0C0342DC */  jal     Matrix_RotateX              
/* 01D28 80AABF78 00000000 */  nop
/* 01D2C 80AABF7C 87A9002C */  lh      $t1, 0x002C($sp)           
/* 01D30 80AABF80 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 01D34 80AABF84 44813000 */  mtc1    $at, $f6                   ## $f6 = 32768.00
/* 01D38 80AABF88 44899000 */  mtc1    $t1, $f18                  ## $f18 = 0.00
/* 01D3C 80AABF8C 3C0180AB */  lui     $at, %hi(D_80AAC590)       ## $at = 80AB0000
/* 01D40 80AABF90 C42AC590 */  lwc1    $f10, %lo(D_80AAC590)($at) 
/* 01D44 80AABF94 46809120 */  cvt.s.w $f4, $f18                  
/* 01D48 80AABF98 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01D4C 80AABF9C 46062203 */  div.s   $f8, $f4, $f6              
/* 01D50 80AABFA0 460A4302 */  mul.s   $f12, $f8, $f10            
/* 01D54 80AABFA4 0C0343B5 */  jal     Matrix_RotateZ              
/* 01D58 80AABFA8 00000000 */  nop
/* 01D5C 80AABFAC 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 01D60 80AABFB0 3C01C496 */  lui     $at, 0xC496                ## $at = C4960000
/* 01D64 80AABFB4 44816000 */  mtc1    $at, $f12                  ## $f12 = -1200.00
/* 01D68 80AABFB8 44067000 */  mfc1    $a2, $f14                  
/* 01D6C 80AABFBC 0C034261 */  jal     Matrix_Translate              
/* 01D70 80AABFC0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
.L80AABFC4:
/* 01D74 80AABFC4 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 01D78 80AABFC8 16010020 */  bne     $s0, $at, .L80AAC04C       
/* 01D7C 80AABFCC 8FAB004C */  lw      $t3, 0x004C($sp)           
/* 01D80 80AABFD0 896D01EE */  lwl     $t5, 0x01EE($t3)           ## 000001EE
/* 01D84 80AABFD4 996D01F1 */  lwr     $t5, 0x01F1($t3)           ## 000001F1
/* 01D88 80AABFD8 27AA002C */  addiu   $t2, $sp, 0x002C           ## $t2 = FFFFFFF4
/* 01D8C 80AABFDC 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 01D90 80AABFE0 AD4D0000 */  sw      $t5, 0x0000($t2)           ## FFFFFFF4
/* 01D94 80AABFE4 956D01F2 */  lhu     $t5, 0x01F2($t3)           ## 000001F2
/* 01D98 80AABFE8 44812000 */  mtc1    $at, $f4                   ## $f4 = 32768.00
/* 01D9C 80AABFEC 3C0180AB */  lui     $at, %hi(D_80AAC594)       ## $at = 80AB0000
/* 01DA0 80AABFF0 A54D0004 */  sh      $t5, 0x0004($t2)           ## FFFFFFF8
/* 01DA4 80AABFF4 87AE002C */  lh      $t6, 0x002C($sp)           
/* 01DA8 80AABFF8 C428C594 */  lwc1    $f8, %lo(D_80AAC594)($at)  
/* 01DAC 80AABFFC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01DB0 80AAC000 448E8000 */  mtc1    $t6, $f16                  ## $f16 = 0.00
/* 01DB4 80AAC004 00000000 */  nop
/* 01DB8 80AAC008 468084A0 */  cvt.s.w $f18, $f16                 
/* 01DBC 80AAC00C 46049183 */  div.s   $f6, $f18, $f4             
/* 01DC0 80AAC010 46083302 */  mul.s   $f12, $f6, $f8             
/* 01DC4 80AAC014 0C0342DC */  jal     Matrix_RotateX              
/* 01DC8 80AAC018 00000000 */  nop
/* 01DCC 80AAC01C 87AF002E */  lh      $t7, 0x002E($sp)           
/* 01DD0 80AAC020 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 01DD4 80AAC024 44819000 */  mtc1    $at, $f18                  ## $f18 = 32768.00
/* 01DD8 80AAC028 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 01DDC 80AAC02C 3C0180AB */  lui     $at, %hi(D_80AAC598)       ## $at = 80AB0000
/* 01DE0 80AAC030 C426C598 */  lwc1    $f6, %lo(D_80AAC598)($at)  
/* 01DE4 80AAC034 46805420 */  cvt.s.w $f16, $f10                 
/* 01DE8 80AAC038 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01DEC 80AAC03C 46128103 */  div.s   $f4, $f16, $f18            
/* 01DF0 80AAC040 46062302 */  mul.s   $f12, $f4, $f6             
/* 01DF4 80AAC044 0C034348 */  jal     Matrix_RotateY              
/* 01DF8 80AAC048 00000000 */  nop
.L80AAC04C:
/* 01DFC 80AAC04C 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 01E00 80AAC050 12010005 */  beq     $s0, $at, .L80AAC068       
/* 01E04 80AAC054 8FB8004C */  lw      $t8, 0x004C($sp)           
/* 01E08 80AAC058 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 01E0C 80AAC05C 12010002 */  beq     $s0, $at, .L80AAC068       
/* 01E10 80AAC060 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 01E14 80AAC064 16010022 */  bne     $s0, $at, .L80AAC0F0       
.L80AAC068:
/* 01E18 80AAC068 0010C840 */  sll     $t9, $s0,  1               
/* 01E1C 80AAC06C 03191821 */  addu    $v1, $t8, $t9              
/* 01E20 80AAC070 84640214 */  lh      $a0, 0x0214($v1)           ## 00000214
/* 01E24 80AAC074 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01E28 80AAC078 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 01E2C 80AAC07C 8FA20048 */  lw      $v0, 0x0048($sp)           
/* 01E30 80AAC080 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 01E34 80AAC084 44818000 */  mtc1    $at, $f16                  ## $f16 = 200.00
/* 01E38 80AAC088 84480002 */  lh      $t0, 0x0002($v0)           ## 00000002
/* 01E3C 80AAC08C 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 01E40 80AAC090 46100482 */  mul.s   $f18, $f0, $f16            
/* 01E44 80AAC094 44884000 */  mtc1    $t0, $f8                   ## $f8 = 0.00
/* 01E48 80AAC098 00000000 */  nop
/* 01E4C 80AAC09C 468042A0 */  cvt.s.w $f10, $f8                  
/* 01E50 80AAC0A0 46125100 */  add.s   $f4, $f10, $f18            
/* 01E54 80AAC0A4 4600218D */  trunc.w.s $f6, $f4                   
/* 01E58 80AAC0A8 440A3000 */  mfc1    $t2, $f6                   
/* 01E5C 80AAC0AC 00000000 */  nop
/* 01E60 80AAC0B0 A44A0002 */  sh      $t2, 0x0002($v0)           ## 00000002
/* 01E64 80AAC0B4 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01E68 80AAC0B8 84640236 */  lh      $a0, 0x0236($v1)           ## 00000236
/* 01E6C 80AAC0BC 8FA20048 */  lw      $v0, 0x0048($sp)           
/* 01E70 80AAC0C0 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 01E74 80AAC0C4 44815000 */  mtc1    $at, $f10                  ## $f10 = 200.00
/* 01E78 80AAC0C8 844B0004 */  lh      $t3, 0x0004($v0)           ## 00000004
/* 01E7C 80AAC0CC 460A0482 */  mul.s   $f18, $f0, $f10            
/* 01E80 80AAC0D0 448B4000 */  mtc1    $t3, $f8                   ## $f8 = 0.00
/* 01E84 80AAC0D4 00000000 */  nop
/* 01E88 80AAC0D8 46804420 */  cvt.s.w $f16, $f8                  
/* 01E8C 80AAC0DC 46128100 */  add.s   $f4, $f16, $f18            
/* 01E90 80AAC0E0 4600218D */  trunc.w.s $f6, $f4                   
/* 01E94 80AAC0E4 440D3000 */  mfc1    $t5, $f6                   
/* 01E98 80AAC0E8 00000000 */  nop
/* 01E9C 80AAC0EC A44D0004 */  sh      $t5, 0x0004($v0)           ## 00000004
.L80AAC0F0:
/* 01EA0 80AAC0F0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01EA4 80AAC0F4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01EA8 80AAC0F8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01EAC 80AAC0FC 03E00008 */  jr      $ra                        
/* 01EB0 80AAC100 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000


