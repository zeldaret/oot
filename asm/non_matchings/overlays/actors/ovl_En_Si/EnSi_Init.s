glabel EnSi_Init
/* 00000 80AFB690 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00004 80AFB694 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00008 80AFB698 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0000C 80AFB69C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00010 80AFB6A0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00014 80AFB6A4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00018 80AFB6A8 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 0001C 80AFB6AC 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00020 80AFB6B0 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00024 80AFB6B4 3C0780B0 */  lui     $a3, %hi(D_80AFBAB0)       ## $a3 = 80B00000
/* 00028 80AFB6B8 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 0002C 80AFB6BC 24E7BAB0 */  addiu   $a3, $a3, %lo(D_80AFBAB0)  ## $a3 = 80AFBAB0
/* 00030 80AFB6C0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00034 80AFB6C4 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00038 80AFB6C8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0003C 80AFB6CC 3C0680B0 */  lui     $a2, %hi(D_80AFBADC)       ## $a2 = 80B00000
/* 00040 80AFB6D0 24C6BADC */  addiu   $a2, $a2, %lo(D_80AFBADC)  ## $a2 = 80AFBADC
/* 00044 80AFB6D4 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00048 80AFB6D8 0C0187BF */  jal     func_80061EFC              
/* 0004C 80AFB6DC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00050 80AFB6E0 3C053CCC */  lui     $a1, 0x3CCC                ## $a1 = 3CCC0000
/* 00054 80AFB6E4 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3CCCCCCD
/* 00058 80AFB6E8 0C00B58B */  jal     Actor_SetScale
              
/* 0005C 80AFB6EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00060 80AFB6F0 3C014228 */  lui     $at, 0x4228                ## $at = 42280000
/* 00064 80AFB6F4 44812000 */  mtc1    $at, $f4                   ## $f4 = 42.00
/* 00068 80AFB6F8 3C0E80B0 */  lui     $t6, %hi(func_80AFB768)    ## $t6 = 80B00000
/* 0006C 80AFB6FC 25CEB768 */  addiu   $t6, $t6, %lo(func_80AFB768) ## $t6 = 80AFB768
/* 00070 80AFB700 A200019C */  sb      $zero, 0x019C($s0)         ## 0000019C
/* 00074 80AFB704 AE0E014C */  sw      $t6, 0x014C($s0)           ## 0000014C
/* 00078 80AFB708 E60400BC */  swc1    $f4, 0x00BC($s0)           ## 000000BC
/* 0007C 80AFB70C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00080 80AFB710 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00084 80AFB714 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00088 80AFB718 03E00008 */  jr      $ra                        
/* 0008C 80AFB71C 00000000 */  nop
