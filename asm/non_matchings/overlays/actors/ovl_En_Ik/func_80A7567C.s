glabel func_80A7567C
/* 0136C 80A7567C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01370 80A75680 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01374 80A75684 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01378 80A75688 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0137C 80A7568C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01380 80A75690 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01384 80A75694 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01388 80A75698 00A12821 */  addu    $a1, $a1, $at              
/* 0138C 80A7569C 24E603EC */  addiu   $a2, $a3, 0x03EC           ## $a2 = 000003EC
/* 01390 80A756A0 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01394 80A756A4 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 01398 80A756A8 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 0139C 80A756AC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 013A0 80A756B0 24E4014C */  addiu   $a0, $a3, 0x014C           ## $a0 = 0000014C
/* 013A4 80A756B4 10400032 */  beq     $v0, $zero, .L80A75780     
/* 013A8 80A756B8 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 013AC 80A756BC 84EF008A */  lh      $t7, 0x008A($a3)           ## 0000008A
/* 013B0 80A756C0 84F800B6 */  lh      $t8, 0x00B6($a3)           ## 000000B6
/* 013B4 80A756C4 01F81023 */  subu    $v0, $t7, $t8              
/* 013B8 80A756C8 00021400 */  sll     $v0, $v0, 16               
/* 013BC 80A756CC 00021403 */  sra     $v0, $v0, 16               
/* 013C0 80A756D0 04400003 */  bltz    $v0, .L80A756E0            
/* 013C4 80A756D4 00021823 */  subu    $v1, $zero, $v0            
/* 013C8 80A756D8 10000001 */  beq     $zero, $zero, .L80A756E0   
/* 013CC 80A756DC 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80A756E0:
/* 013D0 80A756E0 28614001 */  slti    $at, $v1, 0x4001           
/* 013D4 80A756E4 10200024 */  beq     $at, $zero, .L80A75778     
/* 013D8 80A756E8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 013DC 80A756EC 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 013E0 80A756F0 C4E40090 */  lwc1    $f4, 0x0090($a3)           ## 00000090
/* 013E4 80A756F4 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 013E8 80A756F8 4606203C */  c.lt.s  $f4, $f6                   
/* 013EC 80A756FC 00000000 */  nop
/* 013F0 80A75700 4500001D */  bc1f    .L80A75778                 
/* 013F4 80A75704 00000000 */  nop
/* 013F8 80A75708 C4E00094 */  lwc1    $f0, 0x0094($a3)           ## 00000094
/* 013FC 80A7570C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01400 80A75710 8FB9001C */  lw      $t9, 0x001C($sp)           
/* 01404 80A75714 44815000 */  mtc1    $at, $f10                  ## $f10 = 150.00
/* 01408 80A75718 4600403E */  c.le.s  $f8, $f0                   
/* 0140C 80A7571C 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 01410 80A75720 01194021 */  addu    $t0, $t0, $t9              
/* 01414 80A75724 45020004 */  bc1fl   .L80A75738                 
/* 01418 80A75728 46000087 */  neg.s   $f2, $f0                   
/* 0141C 80A7572C 10000002 */  beq     $zero, $zero, .L80A75738   
/* 01420 80A75730 46000086 */  mov.s   $f2, $f0                   
/* 01424 80A75734 46000087 */  neg.s   $f2, $f0                   
.L80A75738:
/* 01428 80A75738 460A103C */  c.lt.s  $f2, $f10                  
/* 0142C 80A7573C 00000000 */  nop
/* 01430 80A75740 4500000D */  bc1f    .L80A75778                 
/* 01434 80A75744 00000000 */  nop
/* 01438 80A75748 8D081DE4 */  lw      $t0, 0x1DE4($t0)           ## 00011DE4
/* 0143C 80A7574C 31090001 */  andi    $t1, $t0, 0x0001           ## $t1 = 00000000
/* 01440 80A75750 11200005 */  beq     $t1, $zero, .L80A75768     
/* 01444 80A75754 00000000 */  nop
/* 01448 80A75758 0C29D38B */  jal     func_80A74E2C              
/* 0144C 80A7575C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01450 80A75760 10000008 */  beq     $zero, $zero, .L80A75784   
/* 01454 80A75764 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A75768:
/* 01458 80A75768 0C29D472 */  jal     func_80A751C8              
/* 0145C 80A7576C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01460 80A75770 10000004 */  beq     $zero, $zero, .L80A75784   
/* 01464 80A75774 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A75778:
/* 01468 80A75778 0C29D227 */  jal     func_80A7489C              
/* 0146C 80A7577C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
.L80A75780:
/* 01470 80A75780 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A75784:
/* 01474 80A75784 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01478 80A75788 03E00008 */  jr      $ra                        
/* 0147C 80A7578C 00000000 */  nop
