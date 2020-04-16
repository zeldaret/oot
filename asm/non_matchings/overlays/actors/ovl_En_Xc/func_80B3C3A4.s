glabel func_80B3C3A4
/* 001C4 80B3C3A4 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 001C8 80B3C3A8 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 001CC 80B3C3AC AFA40050 */  sw      $a0, 0x0050($sp)           
/* 001D0 80B3C3B0 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 001D4 80B3C3B4 848400B6 */  lh      $a0, 0x00B6($a0)           ## 000000B6
/* 001D8 80B3C3B8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 001DC 80B3C3BC A7A40046 */  sh      $a0, 0x0046($sp)           
/* 001E0 80B3C3C0 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 001E4 80B3C3C4 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 001E8 80B3C3C8 8FA20050 */  lw      $v0, 0x0050($sp)           
/* 001EC 80B3C3CC 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 001F0 80B3C3D0 46040182 */  mul.s   $f6, $f0, $f4              
/* 001F4 80B3C3D4 C4480024 */  lwc1    $f8, 0x0024($v0)           ## 00000024
/* 001F8 80B3C3D8 44819000 */  mtc1    $at, $f18                  ## $f18 = 3.00
/* 001FC 80B3C3DC 24420024 */  addiu   $v0, $v0, 0x0024           ## $v0 = 00000024
/* 00200 80B3C3E0 87A40046 */  lh      $a0, 0x0046($sp)           
/* 00204 80B3C3E4 46083280 */  add.s   $f10, $f6, $f8             
/* 00208 80B3C3E8 E7AA0040 */  swc1    $f10, 0x0040($sp)          
/* 0020C 80B3C3EC C4500004 */  lwc1    $f16, 0x0004($v0)          ## 00000028
/* 00210 80B3C3F0 AFA20034 */  sw      $v0, 0x0034($sp)           
/* 00214 80B3C3F4 46128100 */  add.s   $f4, $f16, $f18            
/* 00218 80B3C3F8 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0021C 80B3C3FC E7A4003C */  swc1    $f4, 0x003C($sp)           
/* 00220 80B3C400 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00224 80B3C404 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 00228 80B3C408 8FA20034 */  lw      $v0, 0x0034($sp)           
/* 0022C 80B3C40C C7B0003C */  lwc1    $f16, 0x003C($sp)          
/* 00230 80B3C410 46060202 */  mul.s   $f8, $f0, $f6              
/* 00234 80B3C414 C44A0008 */  lwc1    $f10, 0x0008($v0)          ## 00000008
/* 00238 80B3C418 8FB80050 */  lw      $t8, 0x0050($sp)           
/* 0023C 80B3C41C 240F0FA0 */  addiu   $t7, $zero, 0x0FA0         ## $t7 = 00000FA0
/* 00240 80B3C420 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 00244 80B3C424 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 00248 80B3C428 8FA50054 */  lw      $a1, 0x0054($sp)           
/* 0024C 80B3C42C 460A4080 */  add.s   $f2, $f8, $f10             
/* 00250 80B3C430 2408FFF6 */  addiu   $t0, $zero, 0xFFF6         ## $t0 = FFFFFFF6
/* 00254 80B3C434 24060016 */  addiu   $a2, $zero, 0x0016         ## $a2 = 00000016
/* 00258 80B3C438 8FA70040 */  lw      $a3, 0x0040($sp)           
/* 0025C 80B3C43C E7A20014 */  swc1    $f2, 0x0014($sp)           
/* 00260 80B3C440 871900B6 */  lh      $t9, 0x00B6($t8)           ## 000000B6
/* 00264 80B3C444 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 00268 80B3C448 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 0026C 80B3C44C 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 00270 80B3C450 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00274 80B3C454 AFB9001C */  sw      $t9, 0x001C($sp)           
/* 00278 80B3C458 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0027C 80B3C45C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00280 80B3C460 03E00008 */  jr      $ra                        
/* 00284 80B3C464 00000000 */  nop
