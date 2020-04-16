glabel func_80B56090
/* 02CE0 80B56090 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02CE4 80B56094 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02CE8 80B56098 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02CEC 80B5609C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02CF0 80B560A0 0C2D4E5B */  jal     func_80B5396C              
/* 02CF4 80B560A4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02CF8 80B560A8 8E0E02F0 */  lw      $t6, 0x02F0($s0)           ## 000002F0
/* 02CFC 80B560AC 8FAF002C */  lw      $t7, 0x002C($sp)           
/* 02D00 80B560B0 544E0011 */  bnel    $v0, $t6, .L80B560F8       
/* 02D04 80B560B4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02D08 80B560B8 11E0000E */  beq     $t7, $zero, .L80B560F4     
/* 02D0C 80B560BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02D10 80B560C0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02D14 80B560C4 24A53FF8 */  addiu   $a1, $a1, 0x3FF8           ## $a1 = 06003FF8
/* 02D18 80B560C8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02D1C 80B560CC 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02D20 80B560D0 0C2D5385 */  jal     func_80B54E14              
/* 02D24 80B560D4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02D28 80B560D8 24180010 */  addiu   $t8, $zero, 0x0010         ## $t8 = 00000010
/* 02D2C 80B560DC AE18024C */  sw      $t8, 0x024C($s0)           ## 0000024C
/* 02D30 80B560E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02D34 80B560E4 0C2D4E5D */  jal     func_80B53974              
/* 02D38 80B560E8 24050007 */  addiu   $a1, $zero, 0x0007         ## $a1 = 00000007
/* 02D3C 80B560EC 24190007 */  addiu   $t9, $zero, 0x0007         ## $t9 = 00000007
/* 02D40 80B560F0 AE1902F0 */  sw      $t9, 0x02F0($s0)           ## 000002F0
.L80B560F4:
/* 02D44 80B560F4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B560F8:
/* 02D48 80B560F8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02D4C 80B560FC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02D50 80B56100 03E00008 */  jr      $ra                        
/* 02D54 80B56104 00000000 */  nop
