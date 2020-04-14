glabel func_80B076B0
/* 00170 80B076B0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00174 80B076B4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00178 80B076B8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0017C 80B076BC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00180 80B076C0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00184 80B076C4 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00188 80B076C8 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 0018C 80B076CC 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00190 80B076D0 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 00194 80B076D4 0C00AC78 */  jal     ActorShape_Init
              
/* 00198 80B076D8 3C074210 */  lui     $a3, 0x4210                ## $a3 = 42100000
/* 0019C 80B076DC 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 001A0 80B076E0 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 001A4 80B076E4 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 001A8 80B076E8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 001AC 80B076EC 3C0780B1 */  lui     $a3, %hi(D_80B0B404)       ## $a3 = 80B10000
/* 001B0 80B076F0 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 001B4 80B076F4 24E7B404 */  addiu   $a3, $a3, %lo(D_80B0B404)  ## $a3 = 80B0B404
/* 001B8 80B076F8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 001BC 80B076FC 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 001C0 80B07700 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 001C4 80B07704 8E1802A0 */  lw      $t8, 0x02A0($s0)           ## 000002A0
/* 001C8 80B07708 3C0F80B0 */  lui     $t7, %hi(func_80B07EE0)    ## $t7 = 80B00000
/* 001CC 80B0770C 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 001D0 80B07710 25EF7EE0 */  addiu   $t7, $t7, %lo(func_80B07EE0) ## $t7 = 80B07EE0
/* 001D4 80B07714 A20E00AE */  sb      $t6, 0x00AE($s0)           ## 000000AE
/* 001D8 80B07718 AE0F0130 */  sw      $t7, 0x0130($s0)           ## 00000130
/* 001DC 80B0771C AE180134 */  sw      $t8, 0x0134($s0)           ## 00000134
/* 001E0 80B07720 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 001E4 80B07724 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 001E8 80B07728 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 001EC 80B0772C 03E00008 */  jr      $ra                        
/* 001F0 80B07730 00000000 */  nop
