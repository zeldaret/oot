glabel BgVbSima_Init
/* 00000 808BDD60 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00004 808BDD64 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00008 808BDD68 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0000C 808BDD6C 3C05808C */  lui     $a1, %hi(D_808BE410)       ## $a1 = 808C0000
/* 00010 808BDD70 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00014 808BDD74 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00018 808BDD78 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0001C 808BDD7C 24A5E410 */  addiu   $a1, $a1, %lo(D_808BE410)  ## $a1 = 808BE410
/* 00020 808BDD80 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00024 808BDD84 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00028 808BDD88 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0002C 808BDD8C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00030 808BDD90 24840D68 */  addiu   $a0, $a0, 0x0D68           ## $a0 = 06000D68
/* 00034 808BDD94 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00038 808BDD98 27A5001C */  addiu   $a1, $sp, 0x001C           ## $a1 = FFFFFFF4
/* 0003C 808BDD9C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00040 808BDDA0 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00044 808BDDA4 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 00048 808BDDA8 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 0004C 808BDDAC 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00050 808BDDB0 8FAE0028 */  lw      $t6, 0x0028($sp)           
/* 00054 808BDDB4 ADC2014C */  sw      $v0, 0x014C($t6)           ## 0000014C
/* 00058 808BDDB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0005C 808BDDBC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00060 808BDDC0 03E00008 */  jr      $ra                        
/* 00064 808BDDC4 00000000 */  nop
