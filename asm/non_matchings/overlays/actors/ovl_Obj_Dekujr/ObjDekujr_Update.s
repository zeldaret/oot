glabel ObjDekujr_Update
/* 00348 80B92768 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0034C 80B9276C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00350 80B92770 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00354 80B92774 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00358 80B92778 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0035C 80B9277C 2606014C */  addiu   $a2, $s0, 0x014C           ## $a2 = 0000014C
/* 00360 80B92780 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000014C
/* 00364 80B92784 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 00368 80B92788 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 0036C 80B9278C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00370 80B92790 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00374 80B92794 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00378 80B92798 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 0037C 80B9279C 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 00380 80B927A0 00812821 */  addu    $a1, $a0, $at              
/* 00384 80B927A4 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00388 80B927A8 8DCEE668 */  lw      $t6, -0x1998($t6)          ## 8015E668
/* 0038C 80B927AC 3401FFF0 */  ori     $at, $zero, 0xFFF0         ## $at = 0000FFF0
/* 00390 80B927B0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00394 80B927B4 01C1082A */  slt     $at, $t6, $at              
/* 00398 80B927B8 14200007 */  bne     $at, $zero, .L80B927D8     
/* 0039C 80B927BC 2406000F */  addiu   $a2, $zero, 0x000F         ## $a2 = 0000000F
/* 003A0 80B927C0 920F019B */  lbu     $t7, 0x019B($s0)           ## 0000019B
/* 003A4 80B927C4 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 003A8 80B927C8 55E00004 */  bnel    $t7, $zero, .L80B927DC     
/* 003AC 80B927CC 9219019B */  lbu     $t9, 0x019B($s0)           ## 0000019B
/* 003B0 80B927D0 A200019C */  sb      $zero, 0x019C($s0)         ## 0000019C
/* 003B4 80B927D4 A218019B */  sb      $t8, 0x019B($s0)           ## 0000019B
.L80B927D8:
/* 003B8 80B927D8 9219019B */  lbu     $t9, 0x019B($s0)           ## 0000019B
.L80B927DC:
/* 003BC 80B927DC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 003C0 80B927E0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 003C4 80B927E4 17210011 */  bne     $t9, $at, .L80B9282C       
/* 003C8 80B927E8 00000000 */  nop
/* 003CC 80B927EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003D0 80B927F0 0C2E496E */  jal     func_80B925B8              
/* 003D4 80B927F4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 003D8 80B927F8 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 003DC 80B927FC C606005C */  lwc1    $f6, 0x005C($s0)           ## 0000005C
/* 003E0 80B92800 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 003E4 80B92804 C6100060 */  lwc1    $f16, 0x0060($s0)          ## 00000060
/* 003E8 80B92808 46062200 */  add.s   $f8, $f4, $f6              
/* 003EC 80B9280C C6060064 */  lwc1    $f6, 0x0064($s0)           ## 00000064
/* 003F0 80B92810 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 003F4 80B92814 46105480 */  add.s   $f18, $f10, $f16           
/* 003F8 80B92818 E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
/* 003FC 80B9281C 46062200 */  add.s   $f8, $f4, $f6              
/* 00400 80B92820 E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
/* 00404 80B92824 10000006 */  beq     $zero, $zero, .L80B92840   
/* 00408 80B92828 E608002C */  swc1    $f8, 0x002C($s0)           ## 0000002C
.L80B9282C:
/* 0040C 80B9282C 0C00DF66 */  jal     func_80037D98              
/* 00410 80B92830 260701A0 */  addiu   $a3, $s0, 0x01A0           ## $a3 = 000001A0
/* 00414 80B92834 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00418 80B92838 0C00B56E */  jal     Actor_SetHeight
              
/* 0041C 80B9283C 3C054220 */  lui     $a1, 0x4220                ## $a1 = 42200000
.L80B92840:
/* 00420 80B92840 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00424 80B92844 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00428 80B92848 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0042C 80B9284C 03E00008 */  jr      $ra                        
/* 00430 80B92850 00000000 */  nop
