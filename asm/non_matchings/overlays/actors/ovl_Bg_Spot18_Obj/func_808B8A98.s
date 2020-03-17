glabel func_808B8A98
/* 00188 808B8A98 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0018C 808B8A9C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00190 808B8AA0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00194 808B8AA4 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00198 808B8AA8 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 0019C 808B8AAC 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 001A0 808B8AB0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 001A4 808B8AB4 8FAE0028 */  lw      $t6, 0x0028($sp)           
/* 001A8 808B8AB8 3C04808C */  lui     $a0, %hi(D_808B90FC)       ## $a0 = 808C0000
/* 001AC 808B8ABC 27A5001C */  addiu   $a1, $sp, 0x001C           ## $a1 = FFFFFFF4
/* 001B0 808B8AC0 85CF001C */  lh      $t7, 0x001C($t6)           ## 0000001C
/* 001B4 808B8AC4 31F8000F */  andi    $t8, $t7, 0x000F           ## $t8 = 00000000
/* 001B8 808B8AC8 0018C880 */  sll     $t9, $t8,  2               
/* 001BC 808B8ACC 00992021 */  addu    $a0, $a0, $t9              
/* 001C0 808B8AD0 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 001C4 808B8AD4 8C8490FC */  lw      $a0, %lo(D_808B90FC)($a0)  
/* 001C8 808B8AD8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 001CC 808B8ADC 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 001D0 808B8AE0 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 001D4 808B8AE4 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 001D8 808B8AE8 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 001DC 808B8AEC 8FA80028 */  lw      $t0, 0x0028($sp)           
/* 001E0 808B8AF0 AD02014C */  sw      $v0, 0x014C($t0)           ## 0000014C
/* 001E4 808B8AF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001E8 808B8AF8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 001EC 808B8AFC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 001F0 808B8B00 03E00008 */  jr      $ra                        
/* 001F4 808B8B04 00000000 */  nop


