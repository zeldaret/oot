glabel func_80ACC5CC
/* 026AC 80ACC5CC 948203FC */  lhu     $v0, 0x03FC($a0)           ## 000003FC
/* 026B0 80ACC5D0 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 026B4 80ACC5D4 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 026B8 80ACC5D8 11C00003 */  beq     $t6, $zero, .L80ACC5E8     
/* 026BC 80ACC5DC 30580020 */  andi    $t8, $v0, 0x0020           ## $t8 = 00000000
/* 026C0 80ACC5E0 10000001 */  beq     $zero, $zero, .L80ACC5E8   
/* 026C4 80ACC5E4 24030020 */  addiu   $v1, $zero, 0x0020         ## $v1 = 00000020
.L80ACC5E8:
/* 026C8 80ACC5E8 848503EE */  lh      $a1, 0x03EE($a0)           ## 000003EE
/* 026CC 80ACC5EC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 026D0 80ACC5F0 30AF003F */  andi    $t7, $a1, 0x003F           ## $t7 = 00000000
/* 026D4 80ACC5F4 146F0003 */  bne     $v1, $t7, .L80ACC604       
/* 026D8 80ACC5F8 00000000 */  nop
/* 026DC 80ACC5FC 03E00008 */  jr      $ra                        
/* 026E0 80ACC600 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80ACC604:
/* 026E4 80ACC604 13000004 */  beq     $t8, $zero, .L80ACC618     
/* 026E8 80ACC608 24A8FFFC */  addiu   $t0, $a1, 0xFFFC           ## $t0 = FFFFFFFC
/* 026EC 80ACC60C 24B90004 */  addiu   $t9, $a1, 0x0004           ## $t9 = 00000004
/* 026F0 80ACC610 10000002 */  beq     $zero, $zero, .L80ACC61C   
/* 026F4 80ACC614 A49903EE */  sh      $t9, 0x03EE($a0)           ## 000003EE
.L80ACC618:
/* 026F8 80ACC618 A48803EE */  sh      $t0, 0x03EE($a0)           ## 000003EE
.L80ACC61C:
/* 026FC 80ACC61C 03E00008 */  jr      $ra                        
/* 02700 80ACC620 00000000 */  nop


