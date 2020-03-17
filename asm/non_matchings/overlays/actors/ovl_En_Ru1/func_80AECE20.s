glabel func_80AECE20
/* 02210 80AECE20 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 02214 80AECE24 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 02218 80AECE28 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0221C 80AECE2C 8CA61C44 */  lw      $a2, 0x1C44($a1)           ## 00001C44
/* 02220 80AECE30 8FAE0040 */  lw      $t6, 0x0040($sp)           
/* 02224 80AECE34 84C400B6 */  lh      $a0, 0x00B6($a2)           ## 000000B6
/* 02228 80AECE38 C5C4027C */  lwc1    $f4, 0x027C($t6)           ## 0000027C
/* 0222C 80AECE3C AFA60038 */  sw      $a2, 0x0038($sp)           
/* 02230 80AECE40 A7A40032 */  sh      $a0, 0x0032($sp)           
/* 02234 80AECE44 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02238 80AECE48 E7A40028 */  swc1    $f4, 0x0028($sp)           
/* 0223C 80AECE4C C7A60028 */  lwc1    $f6, 0x0028($sp)           
/* 02240 80AECE50 8FA60038 */  lw      $a2, 0x0038($sp)           
/* 02244 80AECE54 8FA30040 */  lw      $v1, 0x0040($sp)           
/* 02248 80AECE58 46060202 */  mul.s   $f8, $f0, $f6              
/* 0224C 80AECE5C 24C20024 */  addiu   $v0, $a2, 0x0024           ## $v0 = 00000024
/* 02250 80AECE60 C44A0000 */  lwc1    $f10, 0x0000($v0)          ## 00000024
/* 02254 80AECE64 87A40032 */  lh      $a0, 0x0032($sp)           
/* 02258 80AECE68 24630024 */  addiu   $v1, $v1, 0x0024           ## $v1 = 00000024
/* 0225C 80AECE6C 460A4400 */  add.s   $f16, $f8, $f10            
/* 02260 80AECE70 E4700000 */  swc1    $f16, 0x0000($v1)          ## 00000024
/* 02264 80AECE74 C4520004 */  lwc1    $f18, 0x0004($v0)          ## 00000028
/* 02268 80AECE78 E4720004 */  swc1    $f18, 0x0004($v1)          ## 00000028
/* 0226C 80AECE7C AFA3001C */  sw      $v1, 0x001C($sp)           
/* 02270 80AECE80 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 02274 80AECE84 AFA20020 */  sw      $v0, 0x0020($sp)           
/* 02278 80AECE88 C7A40028 */  lwc1    $f4, 0x0028($sp)           
/* 0227C 80AECE8C 8FA20020 */  lw      $v0, 0x0020($sp)           
/* 02280 80AECE90 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 02284 80AECE94 46040182 */  mul.s   $f6, $f0, $f4              
/* 02288 80AECE98 C4480008 */  lwc1    $f8, 0x0008($v0)           ## 00000008
/* 0228C 80AECE9C 46083280 */  add.s   $f10, $f6, $f8             
/* 02290 80AECEA0 E46A0008 */  swc1    $f10, 0x0008($v1)          ## 00000008
/* 02294 80AECEA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02298 80AECEA8 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0229C 80AECEAC 03E00008 */  jr      $ra                        
/* 022A0 80AECEB0 00000000 */  nop


