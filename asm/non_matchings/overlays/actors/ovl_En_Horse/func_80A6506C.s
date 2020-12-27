glabel func_80A6506C
/* 09D7C 80A6506C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 09D80 80A65070 F7B40010 */  sdc1    $f20, 0x0010($sp)          
/* 09D84 80A65074 4485A000 */  mtc1    $a1, $f20                  ## $f20 = 0.00
/* 09D88 80A65078 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 09D8C 80A6507C AFA40028 */  sw      $a0, 0x0028($sp)           
/* 09D90 80A65080 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 09D94 80A65084 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 09D98 80A65088 4614A080 */  add.s   $f2, $f20, $f20            
/* 09D9C 80A6508C 8FAE0028 */  lw      $t6, 0x0028($sp)           
/* 09DA0 80A65090 8FAF0030 */  lw      $t7, 0x0030($sp)           
/* 09DA4 80A65094 46020102 */  mul.s   $f4, $f0, $f2              
/* 09DA8 80A65098 C5C60000 */  lwc1    $f6, 0x0000($t6)           ## 00000000
/* 09DAC 80A6509C 46062200 */  add.s   $f8, $f4, $f6              
/* 09DB0 80A650A0 46144281 */  sub.s   $f10, $f8, $f20            
/* 09DB4 80A650A4 E5EA0000 */  swc1    $f10, 0x0000($t7)          ## 00000000
/* 09DB8 80A650A8 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 09DBC 80A650AC E7A20024 */  swc1    $f2, 0x0024($sp)           
/* 09DC0 80A650B0 C7B00024 */  lwc1    $f16, 0x0024($sp)          
/* 09DC4 80A650B4 8FB80028 */  lw      $t8, 0x0028($sp)           
/* 09DC8 80A650B8 8FB90030 */  lw      $t9, 0x0030($sp)           
/* 09DCC 80A650BC 46100482 */  mul.s   $f18, $f0, $f16            
/* 09DD0 80A650C0 C7040004 */  lwc1    $f4, 0x0004($t8)           ## 00000004
/* 09DD4 80A650C4 46049180 */  add.s   $f6, $f18, $f4             
/* 09DD8 80A650C8 46143201 */  sub.s   $f8, $f6, $f20             
/* 09DDC 80A650CC 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 09DE0 80A650D0 E7280004 */  swc1    $f8, 0x0004($t9)           ## 00000004
/* 09DE4 80A650D4 C7AA0024 */  lwc1    $f10, 0x0024($sp)          
/* 09DE8 80A650D8 8FA80028 */  lw      $t0, 0x0028($sp)           
/* 09DEC 80A650DC 8FA90030 */  lw      $t1, 0x0030($sp)           
/* 09DF0 80A650E0 460A0402 */  mul.s   $f16, $f0, $f10            
/* 09DF4 80A650E4 C5120008 */  lwc1    $f18, 0x0008($t0)          ## 00000008
/* 09DF8 80A650E8 46128100 */  add.s   $f4, $f16, $f18            
/* 09DFC 80A650EC 46142181 */  sub.s   $f6, $f4, $f20             
/* 09E00 80A650F0 E5260008 */  swc1    $f6, 0x0008($t1)           ## 00000008
/* 09E04 80A650F4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 09E08 80A650F8 D7B40010 */  ldc1    $f20, 0x0010($sp)          
/* 09E0C 80A650FC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 09E10 80A65100 03E00008 */  jr      $ra                        
/* 09E14 80A65104 00000000 */  nop
