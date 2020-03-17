glabel EnTite_Destroy
/* 0015C 80B18BDC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00160 80B18BE0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00164 80B18BE4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00168 80B18BE8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0016C 80B18BEC 8C830118 */  lw      $v1, 0x0118($a0)           ## 00000118
/* 00170 80B18BF0 50600013 */  beql    $v1, $zero, .L80B18C40     
/* 00174 80B18BF4 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00178 80B18BF8 84640152 */  lh      $a0, 0x0152($v1)           ## 00000152
/* 0017C 80B18BFC 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 00180 80B18C00 18800002 */  blez    $a0, .L80B18C0C            
/* 00184 80B18C04 248FFFFF */  addiu   $t7, $a0, 0xFFFF           ## $t7 = FFFFFFFF
/* 00188 80B18C08 A46F0152 */  sh      $t7, 0x0152($v1)           ## 00000152
.L80B18C0C:
/* 0018C 80B18C0C 3C0480B2 */  lui     $a0, %hi(D_80B1B6F0)       ## $a0 = 80B20000
/* 00190 80B18C10 2484B6F0 */  addiu   $a0, $a0, %lo(D_80B1B6F0)  ## $a0 = 80B1B6F0
/* 00194 80B18C14 0C00084C */  jal     osSyncPrintf
              
/* 00198 80B18C18 AFA20018 */  sw      $v0, 0x0018($sp)           
/* 0019C 80B18C1C 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 001A0 80B18C20 3C0480B2 */  lui     $a0, %hi(D_80B1B6F4)       ## $a0 = 80B20000
/* 001A4 80B18C24 2484B6F4 */  addiu   $a0, $a0, %lo(D_80B1B6F4)  ## $a0 = 80B1B6F4
/* 001A8 80B18C28 0C00084C */  jal     osSyncPrintf
              
/* 001AC 80B18C2C 84450152 */  lh      $a1, 0x0152($v0)           ## 00000152
/* 001B0 80B18C30 3C0480B2 */  lui     $a0, %hi(D_80B1B720)       ## $a0 = 80B20000
/* 001B4 80B18C34 0C00084C */  jal     osSyncPrintf
              
/* 001B8 80B18C38 2484B720 */  addiu   $a0, $a0, %lo(D_80B1B720)  ## $a0 = 80B1B720
/* 001BC 80B18C3C 8FA50020 */  lw      $a1, 0x0020($sp)           
.L80B18C40:
/* 001C0 80B18C40 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 001C4 80B18C44 0C016F32 */  jal     func_8005BCC8              
/* 001C8 80B18C48 24A502E8 */  addiu   $a1, $a1, 0x02E8           ## $a1 = 000002E8
/* 001CC 80B18C4C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001D0 80B18C50 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 001D4 80B18C54 03E00008 */  jr      $ra                        
/* 001D8 80B18C58 00000000 */  nop


