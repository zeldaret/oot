glabel func_80A0B6C0
/* 00000 80A0B6C0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 80A0B6C4 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00008 80A0B6C8 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 0000C 80A0B6CC 848E04C2 */  lh      $t6, 0x04C2($a0)           ## 000004C2
/* 00010 80A0B6D0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00014 80A0B6D4 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 00018 80A0B6D8 51C00004 */  beql    $t6, $zero, .L80A0B6EC     
/* 0001C 80A0B6DC C60404D0 */  lwc1    $f4, 0x04D0($s0)           ## 000004D0
/* 00020 80A0B6E0 10000030 */  beq     $zero, $zero, .L80A0B7A4   
/* 00024 80A0B6E4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00028 80A0B6E8 C60404D0 */  lwc1    $f4, 0x04D0($s0)           ## 000004D0
.L80A0B6EC:
/* 0002C 80A0B6EC 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 00030 80A0B6F0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00034 80A0B6F4 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00038 80A0B6F8 C60604D4 */  lwc1    $f6, 0x04D4($s0)           ## 000004D4
/* 0003C 80A0B6FC 240700AB */  addiu   $a3, $zero, 0x00AB         ## $a3 = 000000AB
/* 00040 80A0B700 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00044 80A0B704 C60804D8 */  lwc1    $f8, 0x04D8($s0)           ## 000004D8
/* 00048 80A0B708 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 0004C 80A0B70C E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 00050 80A0B710 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 00054 80A0B714 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00058 80A0B718 AFAF0020 */  sw      $t7, 0x0020($sp)           
/* 0005C 80A0B71C 861804BA */  lh      $t8, 0x04BA($s0)           ## 000004BA
/* 00060 80A0B720 AFA60044 */  sw      $a2, 0x0044($sp)           
/* 00064 80A0B724 0C00C916 */  jal     Actor_SpawnAsChild
              
/* 00068 80A0B728 AFB80028 */  sw      $t8, 0x0028($sp)           
/* 0006C 80A0B72C 54400004 */  bnel    $v0, $zero, .L80A0B740     
/* 00070 80A0B730 921900AF */  lbu     $t9, 0x00AF($s0)           ## 000000AF
/* 00074 80A0B734 1000001B */  beq     $zero, $zero, .L80A0B7A4   
/* 00078 80A0B738 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0007C 80A0B73C 921900AF */  lbu     $t9, 0x00AF($s0)           ## 000000AF
.L80A0B740:
/* 00080 80A0B740 8E09011C */  lw      $t1, 0x011C($s0)           ## 0000011C
/* 00084 80A0B744 240B0008 */  addiu   $t3, $zero, 0x0008         ## $t3 = 00000008
/* 00088 80A0B748 07210004 */  bgez    $t9, .L80A0B75C            
/* 0008C 80A0B74C 33280007 */  andi    $t0, $t9, 0x0007           ## $t0 = 00000000
/* 00090 80A0B750 11000002 */  beq     $t0, $zero, .L80A0B75C     
/* 00094 80A0B754 00000000 */  nop
/* 00098 80A0B758 2508FFF8 */  addiu   $t0, $t0, 0xFFF8           ## $t0 = FFFFFFF8
.L80A0B75C:
/* 0009C 80A0B75C A12800AF */  sb      $t0, 0x00AF($t1)           ## 000000AF
/* 000A0 80A0B760 8E02011C */  lw      $v0, 0x011C($s0)           ## 0000011C
/* 000A4 80A0B764 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 000A8 80A0B768 904A00AF */  lbu     $t2, 0x00AF($v0)           ## 000000AF
/* 000AC 80A0B76C 55400003 */  bnel    $t2, $zero, .L80A0B77C     
/* 000B0 80A0B770 8E0C0004 */  lw      $t4, 0x0004($s0)           ## 00000004
/* 000B4 80A0B774 A04B00AF */  sb      $t3, 0x00AF($v0)           ## 000000AF
/* 000B8 80A0B778 8E0C0004 */  lw      $t4, 0x0004($s0)           ## 00000004
.L80A0B77C:
/* 000BC 80A0B77C 24012000 */  addiu   $at, $zero, 0x2000         ## $at = 00002000
/* 000C0 80A0B780 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 000C4 80A0B784 318D2000 */  andi    $t5, $t4, 0x2000           ## $t5 = 00000000
/* 000C8 80A0B788 55A10004 */  bnel    $t5, $at, .L80A0B79C       
/* 000CC 80A0B78C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 000D0 80A0B790 0C00B781 */  jal     func_8002DE04              
/* 000D4 80A0B794 8E06011C */  lw      $a2, 0x011C($s0)           ## 0000011C
/* 000D8 80A0B798 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
.L80A0B79C:
/* 000DC 80A0B79C A20E04B4 */  sb      $t6, 0x04B4($s0)           ## 000004B4
/* 000E0 80A0B7A0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A0B7A4:
/* 000E4 80A0B7A4 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 000E8 80A0B7A8 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 000EC 80A0B7AC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 000F0 80A0B7B0 03E00008 */  jr      $ra                        
/* 000F4 80A0B7B4 00000000 */  nop
