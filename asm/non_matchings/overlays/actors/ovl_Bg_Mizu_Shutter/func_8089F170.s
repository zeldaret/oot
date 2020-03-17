glabel func_8089F170
/* 00320 8089F170 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00324 8089F174 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00328 8089F178 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0032C 8089F17C 8C820168 */  lw      $v0, 0x0168($a0)           ## 00000168
/* 00330 8089F180 24052859 */  addiu   $a1, $zero, 0x2859         ## $a1 = 00002859
/* 00334 8089F184 2C430001 */  sltiu   $v1, $v0, 0x0001           
/* 00338 8089F188 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 0033C 8089F18C 10600007 */  beq     $v1, $zero, .L8089F1AC     
/* 00340 8089F190 AC8E0168 */  sw      $t6, 0x0168($a0)           ## 00000168
/* 00344 8089F194 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00348 8089F198 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0034C 8089F19C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00350 8089F1A0 3C0F808A */  lui     $t7, %hi(func_8089F1BC)    ## $t7 = 808A0000
/* 00354 8089F1A4 25EFF1BC */  addiu   $t7, $t7, %lo(func_8089F1BC) ## $t7 = 8089F1BC
/* 00358 8089F1A8 AC8F0164 */  sw      $t7, 0x0164($a0)           ## 00000164
.L8089F1AC:
/* 0035C 8089F1AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00360 8089F1B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00364 8089F1B4 03E00008 */  jr      $ra                        
/* 00368 8089F1B8 00000000 */  nop


