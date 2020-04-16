glabel func_808B8DDC
/* 004CC 808B8DDC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 004D0 808B8DE0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 004D4 808B8DE4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 004D8 808B8DE8 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 004DC 808B8DEC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 004E0 808B8DF0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 004E4 808B8DF4 240E001C */  addiu   $t6, $zero, 0x001C         ## $t6 = 0000001C
/* 004E8 808B8DF8 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 004EC 808B8DFC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 004F0 808B8E00 3C0641A0 */  lui     $a2, 0x41A0                ## $a2 = 41A00000
/* 004F4 808B8E04 3C074238 */  lui     $a3, 0x4238                ## $a3 = 42380000
/* 004F8 808B8E08 0C00B92D */  jal     func_8002E4B4              
/* 004FC 808B8E0C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00500 808B8E10 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00504 808B8E14 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00508 808B8E18 03E00008 */  jr      $ra                        
/* 0050C 808B8E1C 00000000 */  nop
