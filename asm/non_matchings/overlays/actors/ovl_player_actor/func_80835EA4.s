glabel func_80835EA4
/* 03C94 80835EA4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03C98 80835EA8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 03C9C 80835EAC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 03CA0 80835EB0 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 03CA4 80835EB4 0C20D791 */  jal     func_80835E44              
/* 03CA8 80835EB8 24050038 */  addiu   $a1, $zero, 0x0038         ## $a1 = 00000038
/* 03CAC 80835EBC 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 03CB0 80835EC0 0C030129 */  jal     Gameplay_GetCamera              
/* 03CB4 80835EC4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 03CB8 80835EC8 8FAE002C */  lw      $t6, 0x002C($sp)           
/* 03CBC 80835ECC 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 03CC0 80835ED0 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 03CC4 80835ED4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 03CC8 80835ED8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 03CCC 80835EDC AFA00014 */  sw      $zero, 0x0014($sp)         
/* 03CD0 80835EE0 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 03CD4 80835EE4 0C016BF5 */  jal     Camera_SetCameraData
              ## setCameraData
/* 03CD8 80835EE8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 03CDC 80835EEC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03CE0 80835EF0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03CE4 80835EF4 03E00008 */  jr      $ra                        
/* 03CE8 80835EF8 00000000 */  nop
