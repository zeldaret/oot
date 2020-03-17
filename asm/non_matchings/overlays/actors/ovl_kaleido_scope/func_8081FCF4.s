glabel func_8081FCF4
/* 0C4D4 8081FCF4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0C4D8 8081FCF8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0C4DC 8081FCFC 948E01D6 */  lhu     $t6, 0x01D6($a0)           ## 000001D6
/* 0C4E0 8081FD00 55C0000A */  bnel    $t6, $zero, .L8081FD2C     
/* 0C4E4 8081FD04 94A2000C */  lhu     $v0, 0x000C($a1)           ## 0000000C
/* 0C4E8 8081FD08 94AF000C */  lhu     $t7, 0x000C($a1)           ## 0000000C
/* 0C4EC 8081FD0C 2401FFDF */  addiu   $at, $zero, 0xFFDF         ## $at = FFFFFFDF
/* 0C4F0 8081FD10 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 0C4F4 8081FD14 01E1C027 */  nor     $t8, $t7, $at              
/* 0C4F8 8081FD18 57000004 */  bnel    $t8, $zero, .L8081FD2C     
/* 0C4FC 8081FD1C 94A2000C */  lhu     $v0, 0x000C($a1)           ## 0000000C
/* 0C500 8081FD20 1000003F */  beq     $zero, $zero, .L8081FE20   
/* 0C504 8081FD24 A49901D6 */  sh      $t9, 0x01D6($a0)           ## 000001D6
/* 0C508 8081FD28 94A2000C */  lhu     $v0, 0x000C($a1)           ## 0000000C
.L8081FD2C:
/* 0C50C 8081FD2C 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 0C510 8081FD30 00414027 */  nor     $t0, $v0, $at              
/* 0C514 8081FD34 15000005 */  bne     $t0, $zero, .L8081FD4C     
/* 0C518 8081FD38 2401DFFF */  addiu   $at, $zero, 0xDFFF         ## $at = FFFFDFFF
/* 0C51C 8081FD3C 0C207EDF */  jal     func_8081FB7C              
/* 0C520 8081FD40 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 0C524 8081FD44 10000037 */  beq     $zero, $zero, .L8081FE24   
/* 0C528 8081FD48 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8081FD4C:
/* 0C52C 8081FD4C 00414827 */  nor     $t1, $v0, $at              
/* 0C530 8081FD50 55200006 */  bnel    $t1, $zero, .L8081FD6C     
/* 0C534 8081FD54 84820238 */  lh      $v0, 0x0238($a0)           ## 00000238
/* 0C538 8081FD58 0C207EDF */  jal     func_8081FB7C              
/* 0C53C 8081FD5C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0C540 8081FD60 10000030 */  beq     $zero, $zero, .L8081FE24   
/* 0C544 8081FD64 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0C548 8081FD68 84820238 */  lh      $v0, 0x0238($a0)           ## 00000238
.L8081FD6C:
/* 0C54C 8081FD6C 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 0C550 8081FD70 54410016 */  bnel    $v0, $at, .L8081FDCC       
/* 0C554 8081FD74 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 0C558 8081FD78 848A0214 */  lh      $t2, 0x0214($a0)           ## 00000214
/* 0C55C 8081FD7C 240DFFFF */  addiu   $t5, $zero, 0xFFFF         ## $t5 = FFFFFFFF
/* 0C560 8081FD80 2941FFE2 */  slti    $at, $t2, 0xFFE2           
/* 0C564 8081FD84 1020000E */  beq     $at, $zero, .L8081FDC0     
/* 0C568 8081FD88 00000000 */  nop
/* 0C56C 8081FD8C 848B023A */  lh      $t3, 0x023A($a0)           ## 0000023A
/* 0C570 8081FD90 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 0C574 8081FD94 A48C023A */  sh      $t4, 0x023A($a0)           ## 0000023A
/* 0C578 8081FD98 8482023A */  lh      $v0, 0x023A($a0)           ## 0000023A
/* 0C57C 8081FD9C 2841000A */  slti    $at, $v0, 0x000A           
/* 0C580 8081FDA0 10200003 */  beq     $at, $zero, .L8081FDB0     
/* 0C584 8081FDA4 00000000 */  nop
/* 0C588 8081FDA8 5440001E */  bnel    $v0, $zero, .L8081FE24     
/* 0C58C 8081FDAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8081FDB0:
/* 0C590 8081FDB0 0C207EDF */  jal     func_8081FB7C              
/* 0C594 8081FDB4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0C598 8081FDB8 1000001A */  beq     $zero, $zero, .L8081FE24   
/* 0C59C 8081FDBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8081FDC0:
/* 0C5A0 8081FDC0 10000017 */  beq     $zero, $zero, .L8081FE20   
/* 0C5A4 8081FDC4 A48D023A */  sh      $t5, 0x023A($a0)           ## 0000023A
/* 0C5A8 8081FDC8 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
.L8081FDCC:
/* 0C5AC 8081FDCC 54410015 */  bnel    $v0, $at, .L8081FE24       
/* 0C5B0 8081FDD0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0C5B4 8081FDD4 848E0214 */  lh      $t6, 0x0214($a0)           ## 00000214
/* 0C5B8 8081FDD8 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 0C5BC 8081FDDC 29C1001F */  slti    $at, $t6, 0x001F           
/* 0C5C0 8081FDE0 5420000F */  bnel    $at, $zero, .L8081FE20     
/* 0C5C4 8081FDE4 A499023A */  sh      $t9, 0x023A($a0)           ## 0000023A
/* 0C5C8 8081FDE8 848F023A */  lh      $t7, 0x023A($a0)           ## 0000023A
/* 0C5CC 8081FDEC 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 0C5D0 8081FDF0 A498023A */  sh      $t8, 0x023A($a0)           ## 0000023A
/* 0C5D4 8081FDF4 8482023A */  lh      $v0, 0x023A($a0)           ## 0000023A
/* 0C5D8 8081FDF8 2841000A */  slti    $at, $v0, 0x000A           
/* 0C5DC 8081FDFC 10200003 */  beq     $at, $zero, .L8081FE0C     
/* 0C5E0 8081FE00 00000000 */  nop
/* 0C5E4 8081FE04 54400007 */  bnel    $v0, $zero, .L8081FE24     
/* 0C5E8 8081FE08 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8081FE0C:
/* 0C5EC 8081FE0C 0C207EDF */  jal     func_8081FB7C              
/* 0C5F0 8081FE10 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 0C5F4 8081FE14 10000003 */  beq     $zero, $zero, .L8081FE24   
/* 0C5F8 8081FE18 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0C5FC 8081FE1C A499023A */  sh      $t9, 0x023A($a0)           ## 0000023A
.L8081FE20:
/* 0C600 8081FE20 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8081FE24:
/* 0C604 8081FE24 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0C608 8081FE28 03E00008 */  jr      $ra                        
/* 0C60C 8081FE2C 00000000 */  nop


