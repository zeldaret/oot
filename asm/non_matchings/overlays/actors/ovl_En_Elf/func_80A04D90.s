glabel func_80A04D90
/* 03160 80A04D90 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 03164 80A04D94 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 03168 80A04D98 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0316C 80A04D9C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 03170 80A04DA0 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 03174 80A04DA4 260F0024 */  addiu   $t7, $s0, 0x0024           ## $t7 = 00000024
/* 03178 80A04DA8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0317C 80A04DAC 24A507C0 */  addiu   $a1, $a1, 0x07C0           ## $a1 = 000007C0
/* 03180 80A04DB0 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 03184 80A04DB4 26060078 */  addiu   $a2, $s0, 0x0078           ## $a2 = 00000078
/* 03188 80A04DB8 AFB00010 */  sw      $s0, 0x0010($sp)           
/* 0318C 80A04DBC 0C00F283 */  jal     BgCheck_EntityRaycastFloor5              
/* 03190 80A04DC0 27A70028 */  addiu   $a3, $sp, 0x0028           ## $a3 = FFFFFFF8
/* 03194 80A04DC4 24180032 */  addiu   $t8, $zero, 0x0032         ## $t8 = 00000032
/* 03198 80A04DC8 E6000080 */  swc1    $f0, 0x0080($s0)           ## 00000080
/* 0319C 80A04DCC A21800C8 */  sb      $t8, 0x00C8($s0)           ## 000000C8
/* 031A0 80A04DD0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 031A4 80A04DD4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 031A8 80A04DD8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 031AC 80A04DDC 03E00008 */  jr      $ra                        
/* 031B0 80A04DE0 00000000 */  nop
