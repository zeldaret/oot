glabel func_8089A41C
/* 002EC 8089A41C 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 002F0 8089A420 AFB60044 */  sw      $s6, 0x0044($sp)           
/* 002F4 8089A424 AFB4003C */  sw      $s4, 0x003C($sp)           
/* 002F8 8089A428 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 002FC 8089A42C F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 00300 8089A430 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00304 8089A434 AFB70048 */  sw      $s7, 0x0048($sp)           
/* 00308 8089A438 AFB50040 */  sw      $s5, 0x0040($sp)           
/* 0030C 8089A43C AFB30038 */  sw      $s3, 0x0038($sp)           
/* 00310 8089A440 AFB20034 */  sw      $s2, 0x0034($sp)           
/* 00314 8089A444 AFB10030 */  sw      $s1, 0x0030($sp)           
/* 00318 8089A448 AFB0002C */  sw      $s0, 0x002C($sp)           
/* 0031C 8089A44C 3C14808A */  lui     $s4, %hi(D_8089B014)       ## $s4 = 808A0000
/* 00320 8089A450 3C16808A */  lui     $s6, %hi(D_8089B184)       ## $s6 = 808A0000
/* 00324 8089A454 4486A000 */  mtc1    $a2, $f20                  ## $f20 = 0.00
/* 00328 8089A458 4481B000 */  mtc1    $at, $f22                  ## $f22 = 15.00
/* 0032C 8089A45C 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00330 8089A460 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 00334 8089A464 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 00338 8089A468 26D6B184 */  addiu   $s6, $s6, %lo(D_8089B184)  ## $s6 = 8089B184
/* 0033C 8089A46C 2694B014 */  addiu   $s4, $s4, %lo(D_8089B014)  ## $s4 = 8089B014
/* 00340 8089A470 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00344 8089A474 27B10050 */  addiu   $s1, $sp, 0x0050           ## $s1 = FFFFFFF0
/* 00348 8089A478 24150018 */  addiu   $s5, $zero, 0x0018         ## $s5 = 00000018
/* 0034C 8089A47C 2417000D */  addiu   $s7, $zero, 0x000D         ## $s7 = 0000000D
.L8089A480:
/* 00350 8089A480 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00354 8089A484 00000000 */  nop
/* 00358 8089A488 4614003C */  c.lt.s  $f0, $f20                  
/* 0035C 8089A48C 00000000 */  nop
/* 00360 8089A490 45020012 */  bc1fl   .L8089A4DC                 
/* 00364 8089A494 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00368 8089A498 02150019 */  multu   $s0, $s5                   
/* 0036C 8089A49C 26440024 */  addiu   $a0, $s2, 0x0024           ## $a0 = 00000024
/* 00370 8089A4A0 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFFF0
/* 00374 8089A4A4 00007012 */  mflo    $t6                        
/* 00378 8089A4A8 028E2821 */  addu    $a1, $s4, $t6              
/* 0037C 8089A4AC 0C01DFA7 */  jal     Math_Vec3f_Sum
              ## Vec3f_Add
/* 00380 8089A4B0 00000000 */  nop
/* 00384 8089A4B4 C7A40058 */  lwc1    $f4, 0x0058($sp)           
/* 00388 8089A4B8 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 0038C 8089A4BC 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFF0
/* 00390 8089A4C0 46162180 */  add.s   $f6, $f4, $f22             
/* 00394 8089A4C4 02C03025 */  or      $a2, $s6, $zero            ## $a2 = 8089B184
/* 00398 8089A4C8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0039C 8089A4CC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 003A0 8089A4D0 0C226877 */  jal     func_8089A1DC              
/* 003A4 8089A4D4 E7A60058 */  swc1    $f6, 0x0058($sp)           
/* 003A8 8089A4D8 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000002
.L8089A4DC:
/* 003AC 8089A4DC 1617FFE8 */  bne     $s0, $s7, .L8089A480       
/* 003B0 8089A4E0 00000000 */  nop
/* 003B4 8089A4E4 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 003B8 8089A4E8 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 003BC 8089A4EC D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 003C0 8089A4F0 8FB0002C */  lw      $s0, 0x002C($sp)           
/* 003C4 8089A4F4 8FB10030 */  lw      $s1, 0x0030($sp)           
/* 003C8 8089A4F8 8FB20034 */  lw      $s2, 0x0034($sp)           
/* 003CC 8089A4FC 8FB30038 */  lw      $s3, 0x0038($sp)           
/* 003D0 8089A500 8FB4003C */  lw      $s4, 0x003C($sp)           
/* 003D4 8089A504 8FB50040 */  lw      $s5, 0x0040($sp)           
/* 003D8 8089A508 8FB60044 */  lw      $s6, 0x0044($sp)           
/* 003DC 8089A50C 8FB70048 */  lw      $s7, 0x0048($sp)           
/* 003E0 8089A510 03E00008 */  jr      $ra                        
/* 003E4 8089A514 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
