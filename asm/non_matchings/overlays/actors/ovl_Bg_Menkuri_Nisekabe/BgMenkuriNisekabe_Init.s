glabel BgMenkuriNisekabe_Init
/* 00000 8089C330 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 8089C334 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00008 8089C338 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0000C 8089C33C 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 00010 8089C340 0C00B58B */  jal     Actor_SetScale
              
/* 00014 8089C344 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 00018 8089C348 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0001C 8089C34C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00020 8089C350 03E00008 */  jr      $ra                        
/* 00024 8089C354 00000000 */  nop


