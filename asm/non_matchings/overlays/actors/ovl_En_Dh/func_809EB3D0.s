glabel func_809EB3D0
/* 00690 809EB3D0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00694 809EB3D4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00698 809EB3D8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0069C 809EB3DC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 006A0 809EB3E0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 006A4 809EB3E4 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 006A8 809EB3E8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 006AC 809EB3EC 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 006B0 809EB3F0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 006B4 809EB3F4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 006B8 809EB3F8 240700FA */  addiu   $a3, $zero, 0x00FA         ## $a3 = 000000FA
/* 006BC 809EB3FC 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 006C0 809EB400 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 006C4 809EB404 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 006C8 809EB408 A60E0032 */  sh      $t6, 0x0032($s0)           ## 00000032
/* 006CC 809EB40C C6040164 */  lwc1    $f4, 0x0164($s0)           ## 00000164
/* 006D0 809EB410 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006D4 809EB414 4600218D */  trunc.w.s $f6, $f4                   
/* 006D8 809EB418 44183000 */  mfc1    $t8, $f6                   
/* 006DC 809EB41C 00000000 */  nop
/* 006E0 809EB420 33190007 */  andi    $t9, $t8, 0x0007           ## $t9 = 00000000
/* 006E4 809EB424 57200004 */  bnel    $t9, $zero, .L809EB438     
/* 006E8 809EB428 8FA8002C */  lw      $t0, 0x002C($sp)           
/* 006EC 809EB42C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 006F0 809EB430 24053901 */  addiu   $a1, $zero, 0x3901         ## $a1 = 00003901
/* 006F4 809EB434 8FA8002C */  lw      $t0, 0x002C($sp)           
.L809EB438:
/* 006F8 809EB438 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 006FC 809EB43C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00700 809EB440 01284821 */  addu    $t1, $t1, $t0              
/* 00704 809EB444 8D291DE4 */  lw      $t1, 0x1DE4($t1)           ## 00011DE4
/* 00708 809EB448 312A005F */  andi    $t2, $t1, 0x005F           ## $t2 = 00000000
/* 0070C 809EB44C 55400004 */  bnel    $t2, $zero, .L809EB460     
/* 00710 809EB450 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00714 809EB454 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00718 809EB458 240539A7 */  addiu   $a1, $zero, 0x39A7         ## $a1 = 000039A7
/* 0071C 809EB45C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
.L809EB460:
/* 00720 809EB460 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 00724 809EB464 C60A0090 */  lwc1    $f10, 0x0090($s0)          ## 00000090
/* 00728 809EB468 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0072C 809EB46C 4608503E */  c.le.s  $f10, $f8                  
/* 00730 809EB470 00000000 */  nop
/* 00734 809EB474 4502000C */  bc1fl   .L809EB4A8                 
/* 00738 809EB478 860B025C */  lh      $t3, 0x025C($s0)           ## 0000025C
/* 0073C 809EB47C 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 00740 809EB480 24052AAA */  addiu   $a1, $zero, 0x2AAA         ## $a1 = 00002AAA
/* 00744 809EB484 0C00B821 */  jal     func_8002E084              
/* 00748 809EB488 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
/* 0074C 809EB48C 5040000E */  beql    $v0, $zero, .L809EB4C8     
/* 00750 809EB490 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00754 809EB494 0C27AD71 */  jal     func_809EB5C4              
/* 00758 809EB498 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0075C 809EB49C 1000000A */  beq     $zero, $zero, .L809EB4C8   
/* 00760 809EB4A0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00764 809EB4A4 860B025C */  lh      $t3, 0x025C($s0)           ## 0000025C
.L809EB4A8:
/* 00768 809EB4A8 256CFFFF */  addiu   $t4, $t3, 0xFFFF           ## $t4 = FFFFFFFF
/* 0076C 809EB4AC A60C025C */  sh      $t4, 0x025C($s0)           ## 0000025C
/* 00770 809EB4B0 860D025C */  lh      $t5, 0x025C($s0)           ## 0000025C
/* 00774 809EB4B4 55A00004 */  bnel    $t5, $zero, .L809EB4C8     
/* 00778 809EB4B8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0077C 809EB4BC 0C27AE4D */  jal     func_809EB934              
/* 00780 809EB4C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00784 809EB4C4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809EB4C8:
/* 00788 809EB4C8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0078C 809EB4CC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00790 809EB4D0 03E00008 */  jr      $ra                        
/* 00794 809EB4D4 00000000 */  nop
