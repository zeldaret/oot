glabel func_80AECEB4
/* 022A4 80AECEB4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 022A8 80AECEB8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 022AC 80AECEBC AFA40038 */  sw      $a0, 0x0038($sp)           
/* 022B0 80AECEC0 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 022B4 80AECEC4 AFAE0030 */  sw      $t6, 0x0030($sp)           
/* 022B8 80AECEC8 848400B6 */  lh      $a0, 0x00B6($a0)           ## 000000B6
/* 022BC 80AECECC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 022C0 80AECED0 A7A40026 */  sh      $a0, 0x0026($sp)           
/* 022C4 80AECED4 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 022C8 80AECED8 8F18FA90 */  lw      $t8, -0x0570($t8)          ## 8015FA90
/* 022CC 80AECEDC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 022D0 80AECEE0 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 022D4 80AECEE4 87191458 */  lh      $t9, 0x1458($t8)           ## 80161458
/* 022D8 80AECEE8 8FA30038 */  lw      $v1, 0x0038($sp)           
/* 022DC 80AECEEC 8FA20030 */  lw      $v0, 0x0030($sp)           
/* 022E0 80AECEF0 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 022E4 80AECEF4 C4720024 */  lwc1    $f18, 0x0024($v1)          ## 00000024
/* 022E8 80AECEF8 87A40026 */  lh      $a0, 0x0026($sp)           
/* 022EC 80AECEFC 468021A0 */  cvt.s.w $f6, $f4                   
/* 022F0 80AECF00 24630024 */  addiu   $v1, $v1, 0x0024           ## $v1 = 00000024
/* 022F4 80AECF04 24420450 */  addiu   $v0, $v0, 0x0450           ## $v0 = 00000450
/* 022F8 80AECF08 46083280 */  add.s   $f10, $f6, $f8             
/* 022FC 80AECF0C 460A0402 */  mul.s   $f16, $f0, $f10            
/* 02300 80AECF10 46128100 */  add.s   $f4, $f16, $f18            
/* 02304 80AECF14 E4440000 */  swc1    $f4, 0x0000($v0)           ## 00000450
/* 02308 80AECF18 AFA3001C */  sw      $v1, 0x001C($sp)           
/* 0230C 80AECF1C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 02310 80AECF20 AFA20020 */  sw      $v0, 0x0020($sp)           
/* 02314 80AECF24 3C088016 */  lui     $t0, 0x8016                ## $t0 = 80160000
/* 02318 80AECF28 8D08FA90 */  lw      $t0, -0x0570($t0)          ## 8015FA90
/* 0231C 80AECF2C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 02320 80AECF30 44815000 */  mtc1    $at, $f10                  ## $f10 = 30.00
/* 02324 80AECF34 85091458 */  lh      $t1, 0x1458($t0)           ## 80161458
/* 02328 80AECF38 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 0232C 80AECF3C 8FA20020 */  lw      $v0, 0x0020($sp)           
/* 02330 80AECF40 44893000 */  mtc1    $t1, $f6                   ## $f6 = 0.00
/* 02334 80AECF44 C4640008 */  lwc1    $f4, 0x0008($v1)           ## 00000008
/* 02338 80AECF48 46803220 */  cvt.s.w $f8, $f6                   
/* 0233C 80AECF4C 460A4400 */  add.s   $f16, $f8, $f10            
/* 02340 80AECF50 46100482 */  mul.s   $f18, $f0, $f16            
/* 02344 80AECF54 46049180 */  add.s   $f6, $f18, $f4             
/* 02348 80AECF58 E4460008 */  swc1    $f6, 0x0008($v0)           ## 00000008
/* 0234C 80AECF5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02350 80AECF60 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 02354 80AECF64 03E00008 */  jr      $ra                        
/* 02358 80AECF68 00000000 */  nop


