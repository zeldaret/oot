glabel func_8086E7D0
/* 00000 8086E7D0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00004 8086E7D4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00008 8086E7D8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0000C 8086E7DC AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00010 8086E7E0 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00014 8086E7E4 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00018 8086E7E8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0001C 8086E7EC 3C040500 */  lui     $a0, 0x0500                ## $a0 = 05000000
/* 00020 8086E7F0 248441B0 */  addiu   $a0, $a0, 0x41B0           ## $a0 = 050041B0
/* 00024 8086E7F4 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00028 8086E7F8 27A5001C */  addiu   $a1, $sp, 0x001C           ## $a1 = FFFFFFF4
/* 0002C 8086E7FC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00030 8086E800 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00034 8086E804 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 00038 8086E808 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 0003C 8086E80C 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00040 8086E810 8FAE0028 */  lw      $t6, 0x0028($sp)           
/* 00044 8086E814 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 00048 8086E818 14410009 */  bne     $v0, $at, .L8086E840       
/* 0004C 8086E81C ADC2014C */  sw      $v0, 0x014C($t6)           ## 0000014C
/* 00050 8086E820 8FAF0028 */  lw      $t7, 0x0028($sp)           
/* 00054 8086E824 3C048087 */  lui     $a0, %hi(D_8086F040)       ## $a0 = 80870000
/* 00058 8086E828 3C058087 */  lui     $a1, %hi(D_8086F074)       ## $a1 = 80870000
/* 0005C 8086E82C 24A5F074 */  addiu   $a1, $a1, %lo(D_8086F074)  ## $a1 = 8086F074
/* 00060 8086E830 2484F040 */  addiu   $a0, $a0, %lo(D_8086F040)  ## $a0 = 8086F040
/* 00064 8086E834 240600F3 */  addiu   $a2, $zero, 0x00F3         ## $a2 = 000000F3
/* 00068 8086E838 0C00084C */  jal     osSyncPrintf
              
/* 0006C 8086E83C 85E7001C */  lh      $a3, 0x001C($t7)           ## 0000001C
.L8086E840:
/* 00070 8086E840 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00074 8086E844 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00078 8086E848 03E00008 */  jr      $ra                        
/* 0007C 8086E84C 00000000 */  nop


