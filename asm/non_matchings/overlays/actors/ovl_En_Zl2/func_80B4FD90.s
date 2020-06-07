glabel func_80B4FD90
/* 01400 80B4FD90 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01404 80B4FD94 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01408 80B4FD98 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0140C 80B4FD9C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01410 80B4FDA0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01414 80B4FDA4 24A5B5FC */  addiu   $a1, $a1, 0xB5FC           ## $a1 = 0600B5FC
/* 01418 80B4FDA8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0141C 80B4FDAC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01420 80B4FDB0 0C2D3F40 */  jal     func_80B4FD00              
/* 01424 80B4FDB4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01428 80B4FDB8 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 0142C 80B4FDBC 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01430 80B4FDC0 ADEE019C */  sw      $t6, 0x019C($t7)           ## 0000019C
/* 01434 80B4FDC4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01438 80B4FDC8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0143C 80B4FDCC 03E00008 */  jr      $ra                        
/* 01440 80B4FDD0 00000000 */  nop
