glabel BgSstFloor_Init
/* 00000 808B9910 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00004 808B9914 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00008 808B9918 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0000C 808B991C 3C05808C */  lui     $a1, %hi(D_808B9E3C)       ## $a1 = 808C0000
/* 00010 808B9920 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00014 808B9924 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00018 808B9928 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0001C 808B992C 24A59E3C */  addiu   $a1, $a1, %lo(D_808B9E3C)  ## $a1 = 808B9E3C
/* 00020 808B9930 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00024 808B9934 0C010D20 */  jal     DynaPolyActor_Init
              
/* 00028 808B9938 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0002C 808B993C 3C040602 */  lui     $a0, 0x0602                ## $a0 = 06020000
/* 00030 808B9940 248494F8 */  addiu   $a0, $a0, 0x94F8           ## $a0 = 060194F8
/* 00034 808B9944 0C010620 */  jal     CollisionHeader_GetVirtual
              
/* 00038 808B9948 27A5001C */  addiu   $a1, $sp, 0x001C           ## $a1 = FFFFFFF4
/* 0003C 808B994C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00040 808B9950 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00044 808B9954 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 00048 808B9958 0C00FA9D */  jal     DynaPoly_SetBgActor
              ## DynaPoly_SetBgActor
/* 0004C 808B995C 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00050 808B9960 8FAE0028 */  lw      $t6, 0x0028($sp)           
/* 00054 808B9964 ADC2014C */  sw      $v0, 0x014C($t6)           ## 0000014C
/* 00058 808B9968 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0005C 808B996C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00060 808B9970 03E00008 */  jr      $ra                        
/* 00064 808B9974 00000000 */  nop
