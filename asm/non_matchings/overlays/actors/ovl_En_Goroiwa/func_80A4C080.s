glabel func_80A4C080
/* 003E0 80A4C080 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 003E4 80A4C084 848301CE */  lh      $v1, 0x01CE($a0)           ## 000001CE
/* 003E8 80A4C088 00021203 */  sra     $v0, $v0,  8               
/* 003EC 80A4C08C 30420003 */  andi    $v0, $v0, 0x0003           ## $v0 = 00000000
/* 003F0 80A4C090 00021400 */  sll     $v0, $v0, 16               
/* 003F4 80A4C094 04610012 */  bgez    $v1, .L80A4C0E0            
/* 003F8 80A4C098 00021403 */  sra     $v0, $v0, 16               
/* 003FC 80A4C09C 10400003 */  beq     $v0, $zero, .L80A4C0AC     
/* 00400 80A4C0A0 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00404 80A4C0A4 14430008 */  bne     $v0, $v1, .L80A4C0C8       
/* 00408 80A4C0A8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
.L80A4C0AC:
/* 0040C 80A4C0AC 848501CA */  lh      $a1, 0x01CA($a0)           ## 000001CA
/* 00410 80A4C0B0 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 00414 80A4C0B4 A48F01D0 */  sh      $t7, 0x01D0($a0)           ## 000001D0
/* 00418 80A4C0B8 24AEFFFF */  addiu   $t6, $a1, 0xFFFF           ## $t6 = FFFFFFFF
/* 0041C 80A4C0BC A48E01CE */  sh      $t6, 0x01CE($a0)           ## 000001CE
/* 00420 80A4C0C0 03E00008 */  jr      $ra                        
/* 00424 80A4C0C4 A48501CC */  sh      $a1, 0x01CC($a0)           ## 000001CC
.L80A4C0C8:
/* 00428 80A4C0C8 14410018 */  bne     $v0, $at, .L80A4C12C       
/* 0042C 80A4C0CC 00000000 */  nop
/* 00430 80A4C0D0 A48001CC */  sh      $zero, 0x01CC($a0)         ## 000001CC
/* 00434 80A4C0D4 A48301CE */  sh      $v1, 0x01CE($a0)           ## 000001CE
/* 00438 80A4C0D8 03E00008 */  jr      $ra                        
/* 0043C 80A4C0DC A48301D0 */  sh      $v1, 0x01D0($a0)           ## 000001D0
.L80A4C0E0:
/* 00440 80A4C0E0 848501CA */  lh      $a1, 0x01CA($a0)           ## 000001CA
/* 00444 80A4C0E4 00A3082A */  slt     $at, $a1, $v1              
/* 00448 80A4C0E8 10200010 */  beq     $at, $zero, .L80A4C12C     
/* 0044C 80A4C0EC 00000000 */  nop
/* 00450 80A4C0F0 10400003 */  beq     $v0, $zero, .L80A4C100     
/* 00454 80A4C0F4 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00458 80A4C0F8 14430006 */  bne     $v0, $v1, .L80A4C114       
/* 0045C 80A4C0FC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
.L80A4C100:
/* 00460 80A4C100 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00464 80A4C104 A48001CC */  sh      $zero, 0x01CC($a0)         ## 000001CC
/* 00468 80A4C108 A48301CE */  sh      $v1, 0x01CE($a0)           ## 000001CE
/* 0046C 80A4C10C 03E00008 */  jr      $ra                        
/* 00470 80A4C110 A48301D0 */  sh      $v1, 0x01D0($a0)           ## 000001D0
.L80A4C114:
/* 00474 80A4C114 14410005 */  bne     $v0, $at, .L80A4C12C       
/* 00478 80A4C118 24B8FFFF */  addiu   $t8, $a1, 0xFFFF           ## $t8 = FFFFFFFF
/* 0047C 80A4C11C 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 00480 80A4C120 A48501CC */  sh      $a1, 0x01CC($a0)           ## 000001CC
/* 00484 80A4C124 A49801CE */  sh      $t8, 0x01CE($a0)           ## 000001CE
/* 00488 80A4C128 A49901D0 */  sh      $t9, 0x01D0($a0)           ## 000001D0
.L80A4C12C:
/* 0048C 80A4C12C 03E00008 */  jr      $ra                        
/* 00490 80A4C130 00000000 */  nop
