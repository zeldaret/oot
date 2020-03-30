glabel func_808429B4
/* 107A4 808429B4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 107A8 808429B8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 107AC 808429BC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 107B0 808429C0 AFA60038 */  sw      $a2, 0x0038($sp)           
/* 107B4 808429C4 AFA7003C */  sw      $a3, 0x003C($sp)           
/* 107B8 808429C8 0C030129 */  jal     func_800C04A4              
/* 107BC 808429CC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 107C0 808429D0 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 107C4 808429D4 0C024BE2 */  jal     Quake_Add              
/* 107C8 808429D8 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 107CC 808429DC 00022400 */  sll     $a0, $v0, 16               
/* 107D0 808429E0 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 107D4 808429E4 00042403 */  sra     $a0, $a0, 16               
/* 107D8 808429E8 0C024B6B */  jal     Quake_SetSpeed              
/* 107DC 808429EC 87A50036 */  lh      $a1, 0x0036($sp)           
/* 107E0 808429F0 87A4002E */  lh      $a0, 0x002E($sp)           
/* 107E4 808429F4 87A5003A */  lh      $a1, 0x003A($sp)           
/* 107E8 808429F8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 107EC 808429FC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 107F0 80842A00 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 107F4 80842A04 0C024B9C */  jal     Quake_SetQuakeValues              
/* 107F8 80842A08 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 107FC 80842A0C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 10800 80842A10 0C024B7C */  jal     Quake_SetCountdown              
/* 10804 80842A14 87A5003E */  lh      $a1, 0x003E($sp)           
/* 10808 80842A18 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1080C 80842A1C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 10810 80842A20 03E00008 */  jr      $ra                        
/* 10814 80842A24 00000000 */  nop


