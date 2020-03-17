glabel func_8089A130
/* 00000 8089A130 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00004 8089A134 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00008 8089A138 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0000C 8089A13C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00010 8089A140 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00014 8089A144 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00018 8089A148 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 0001C 8089A14C 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00020 8089A150 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00024 8089A154 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00028 8089A158 27A50018 */  addiu   $a1, $sp, 0x0018           ## $a1 = FFFFFFF8
/* 0002C 8089A15C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00030 8089A160 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00034 8089A164 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00038 8089A168 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 0003C 8089A16C 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00040 8089A170 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 00044 8089A174 ADC2014C */  sw      $v0, 0x014C($t6)           ## 0000014C
/* 00048 8089A178 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0004C 8089A17C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00050 8089A180 03E00008 */  jr      $ra                        
/* 00054 8089A184 00000000 */  nop


