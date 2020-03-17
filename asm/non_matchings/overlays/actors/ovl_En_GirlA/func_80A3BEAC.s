glabel func_80A3BEAC
/* 0175C 80A3BEAC AFA40000 */  sw      $a0, 0x0000($sp)           
/* 01760 80A3BEB0 84A2001C */  lh      $v0, 0x001C($a1)           ## 0000001C
/* 01764 80A3BEB4 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01768 80A3BEB8 A4AE01A8 */  sh      $t6, 0x01A8($a1)           ## 000001A8
/* 0176C 80A3BEBC 2841001E */  slti    $at, $v0, 0x001E           
/* 01770 80A3BEC0 14200005 */  bne     $at, $zero, .L80A3BED8     
/* 01774 80A3BEC4 ACA00134 */  sw      $zero, 0x0134($a1)         ## 00000134
/* 01778 80A3BEC8 28410026 */  slti    $at, $v0, 0x0026           
/* 0177C 80A3BECC 10200002 */  beq     $at, $zero, .L80A3BED8     
/* 01780 80A3BED0 240F00BD */  addiu   $t7, $zero, 0x00BD         ## $t7 = 000000BD
/* 01784 80A3BED4 A4AF010E */  sh      $t7, 0x010E($a1)           ## 0000010E
.L80A3BED8:
/* 01788 80A3BED8 03E00008 */  jr      $ra                        
/* 0178C 80A3BEDC 00000000 */  nop


