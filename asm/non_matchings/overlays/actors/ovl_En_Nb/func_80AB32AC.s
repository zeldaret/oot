glabel func_80AB32AC
/* 0251C 80AB32AC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02520 80AB32B0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02524 80AB32B4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02528 80AB32B8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0252C 80AB32BC 24A55CA4 */  addiu   $a1, $a1, 0x5CA4           ## $a1 = 06005CA4
/* 02530 80AB32C0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02534 80AB32C4 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 02538 80AB32C8 0C2AC528 */  jal     func_80AB14A0              
/* 0253C 80AB32CC 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 02540 80AB32D0 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 02544 80AB32D4 240E0017 */  addiu   $t6, $zero, 0x0017         ## $t6 = 00000017
/* 02548 80AB32D8 ADEE0278 */  sw      $t6, 0x0278($t7)           ## 00000278
/* 0254C 80AB32DC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02550 80AB32E0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02554 80AB32E4 03E00008 */  jr      $ra                        
/* 02558 80AB32E8 00000000 */  nop


