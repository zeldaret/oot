glabel EnHeishi2_Destroy
/* 002EC 80A5318C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002F0 80A53190 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002F4 80A53194 848E03D8 */  lh      $t6, 0x03D8($a0)           ## 000003D8
/* 002F8 80A53198 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 002FC 80A5319C 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00300 80A531A0 15C00004 */  bne     $t6, $zero, .L80A531B4     
/* 00304 80A531A4 24C50398 */  addiu   $a1, $a2, 0x0398           ## $a1 = 00000398
/* 00308 80A531A8 848F03DA */  lh      $t7, 0x03DA($a0)           ## 000003DA
/* 0030C 80A531AC 51E00004 */  beql    $t7, $zero, .L80A531C0     
/* 00310 80A531B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A531B4:
/* 00314 80A531B4 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 00318 80A531B8 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 0031C 80A531BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A531C0:
/* 00320 80A531C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00324 80A531C4 03E00008 */  jr      $ra                        
/* 00328 80A531C8 00000000 */  nop
