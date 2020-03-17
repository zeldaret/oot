glabel func_809FB3AC
/* 003DC 809FB3AC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 003E0 809FB3B0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 003E4 809FB3B4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 003E8 809FB3B8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 003EC 809FB3BC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 003F0 809FB3C0 860601E6 */  lh      $a2, 0x01E6($s0)           ## 000001E6
/* 003F4 809FB3C4 8E0501E0 */  lw      $a1, 0x01E0($s0)           ## 000001E0
/* 003F8 809FB3C8 0C023948 */  jal     func_8008E520              
/* 003FC 809FB3CC 27A7002E */  addiu   $a3, $sp, 0x002E           ## $a3 = FFFFFFFE
/* 00400 809FB3D0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00404 809FB3D4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00408 809FB3D8 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 0040C 809FB3DC 87A5002E */  lh      $a1, 0x002E($sp)           
/* 00410 809FB3E0 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 00414 809FB3E4 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 00418 809FB3E8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0041C 809FB3EC E7A00028 */  swc1    $f0, 0x0028($sp)           
/* 00420 809FB3F0 C7A20028 */  lwc1    $f2, 0x0028($sp)           
/* 00424 809FB3F4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00428 809FB3F8 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 0042C 809FB3FC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00430 809FB400 4602203C */  c.lt.s  $f4, $f2                   
/* 00434 809FB404 00000000 */  nop
/* 00438 809FB408 4500000B */  bc1f    .L809FB438                 
/* 0043C 809FB40C 00000000 */  nop
/* 00440 809FB410 44813000 */  mtc1    $at, $f6                   ## $f6 = 1000.00
/* 00444 809FB414 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00448 809FB418 4606103C */  c.lt.s  $f2, $f6                   
/* 0044C 809FB41C 00000000 */  nop
/* 00450 809FB420 45000005 */  bc1f    .L809FB438                 
/* 00454 809FB424 00000000 */  nop
/* 00458 809FB428 0C27ECC8 */  jal     func_809FB320              
/* 0045C 809FB42C 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00460 809FB430 10000002 */  beq     $zero, $zero, .L809FB43C   
/* 00464 809FB434 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809FB438:
/* 00468 809FB438 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809FB43C:
/* 0046C 809FB43C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00470 809FB440 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00474 809FB444 03E00008 */  jr      $ra                        
/* 00478 809FB448 00000000 */  nop


