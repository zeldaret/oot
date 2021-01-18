glabel EnPeehat_Draw
/* 03188 80AD2628 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0318C 80AD262C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 03190 80AD2630 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03194 80AD2634 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 03198 80AD2638 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 0319C 80AD263C 0C024F46 */  jal     func_80093D18              
/* 031A0 80AD2640 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 031A4 80AD2644 3C0F80AD */  lui     $t7, %hi(func_80AD2438)    ## $t7 = 80AD0000
/* 031A8 80AD2648 25EF2438 */  addiu   $t7, $t7, %lo(func_80AD2438) ## $t7 = 80AD2438
/* 031AC 80AD264C 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 031B0 80AD2650 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 031B4 80AD2654 3C0780AD */  lui     $a3, %hi(func_80AD2224)    ## $a3 = 80AD0000
/* 031B8 80AD2658 24E72224 */  addiu   $a3, $a3, %lo(func_80AD2224) ## $a3 = 80AD2224
/* 031BC 80AD265C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 031C0 80AD2660 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 031C4 80AD2664 0C028572 */  jal     SkelAnime_DrawOpa
              
/* 031C8 80AD2668 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 031CC 80AD266C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 031D0 80AD2670 C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 031D4 80AD2674 3C0480AD */  lui     $a0, %hi(D_80AD285C)       ## $a0 = 80AD0000
/* 031D8 80AD2678 2484285C */  addiu   $a0, $a0, %lo(D_80AD285C)  ## $a0 = 80AD285C
/* 031DC 80AD267C 46040032 */  c.eq.s  $f0, $f4                   
/* 031E0 80AD2680 260503F8 */  addiu   $a1, $s0, 0x03F8           ## $a1 = 000003F8
/* 031E4 80AD2684 45000006 */  bc1f    .L80AD26A0                 
/* 031E8 80AD2688 00000000 */  nop
/* 031EC 80AD268C C6060060 */  lwc1    $f6, 0x0060($s0)           ## 00000060
/* 031F0 80AD2690 46060032 */  c.eq.s  $f0, $f6                   
/* 031F4 80AD2694 00000000 */  nop
/* 031F8 80AD2698 4503001B */  bc1tl   .L80AD2708                 
/* 031FC 80AD269C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AD26A0:
/* 03200 80AD26A0 0C0346BD */  jal     Matrix_MultVec3f              
/* 03204 80AD26A4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 03208 80AD26A8 3C0480AD */  lui     $a0, %hi(D_80AD2868)       ## $a0 = 80AD0000
/* 0320C 80AD26AC 260503EC */  addiu   $a1, $s0, 0x03EC           ## $a1 = 000003EC
/* 03210 80AD26B0 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 03214 80AD26B4 0C0346BD */  jal     Matrix_MultVec3f              
/* 03218 80AD26B8 24842868 */  addiu   $a0, $a0, %lo(D_80AD2868)  ## $a0 = 80AD2868
/* 0321C 80AD26BC 3C0480AD */  lui     $a0, %hi(D_80AD2874)       ## $a0 = 80AD0000
/* 03220 80AD26C0 26050410 */  addiu   $a1, $s0, 0x0410           ## $a1 = 00000410
/* 03224 80AD26C4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 03228 80AD26C8 0C0346BD */  jal     Matrix_MultVec3f              
/* 0322C 80AD26CC 24842874 */  addiu   $a0, $a0, %lo(D_80AD2874)  ## $a0 = 80AD2874
/* 03230 80AD26D0 3C0480AD */  lui     $a0, %hi(D_80AD2880)       ## $a0 = 80AD0000
/* 03234 80AD26D4 26070404 */  addiu   $a3, $s0, 0x0404           ## $a3 = 00000404
/* 03238 80AD26D8 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000404
/* 0323C 80AD26DC AFA70030 */  sw      $a3, 0x0030($sp)           
/* 03240 80AD26E0 0C0346BD */  jal     Matrix_MultVec3f              
/* 03244 80AD26E4 24842880 */  addiu   $a0, $a0, %lo(D_80AD2880)  ## $a0 = 80AD2880
/* 03248 80AD26E8 8FB8002C */  lw      $t8, 0x002C($sp)           
/* 0324C 80AD26EC 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 03250 80AD26F0 260403AC */  addiu   $a0, $s0, 0x03AC           ## $a0 = 000003AC
/* 03254 80AD26F4 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 03258 80AD26F8 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 0325C 80AD26FC 0C0189CD */  jal     Collider_SetQuadVertices              
/* 03260 80AD2700 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 03264 80AD2704 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AD2708:
/* 03268 80AD2708 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0326C 80AD270C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 03270 80AD2710 03E00008 */  jr      $ra                        
/* 03274 80AD2714 00000000 */  nop
/* 03278 80AD2718 00000000 */  nop
/* 0327C 80AD271C 00000000 */  nop
