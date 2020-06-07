glabel func_80899BA0
/* 00000 80899BA0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00004 80899BA4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00008 80899BA8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0000C 80899BAC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00010 80899BB0 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00014 80899BB4 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00018 80899BB8 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 0001C 80899BBC 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00020 80899BC0 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00024 80899BC4 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00028 80899BC8 27A50018 */  addiu   $a1, $sp, 0x0018           ## $a1 = FFFFFFF8
/* 0002C 80899BCC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00030 80899BD0 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00034 80899BD4 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00038 80899BD8 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 0003C 80899BDC 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00040 80899BE0 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 00044 80899BE4 ADC2014C */  sw      $v0, 0x014C($t6)           ## 0000014C
/* 00048 80899BE8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0004C 80899BEC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00050 80899BF0 03E00008 */  jr      $ra                        
/* 00054 80899BF4 00000000 */  nop
