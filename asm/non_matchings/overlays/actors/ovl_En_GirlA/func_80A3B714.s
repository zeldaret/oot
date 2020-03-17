glabel func_80A3B714
/* 00FC4 80A3B714 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00FC8 80A3B718 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00FCC 80A3B71C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00FD0 80A3B720 84A201CA */  lh      $v0, 0x01CA($a1)           ## 000001CA
/* 00FD4 80A3B724 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00FD8 80A3B728 10410005 */  beq     $v0, $at, .L80A3B740       
/* 00FDC 80A3B72C 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 00FE0 80A3B730 10410007 */  beq     $v0, $at, .L80A3B750       
/* 00FE4 80A3B734 00000000 */  nop
/* 00FE8 80A3B738 10000008 */  beq     $zero, $zero, .L80A3B75C   
/* 00FEC 80A3B73C 8FAF001C */  lw      $t7, 0x001C($sp)           
.L80A3B740:
/* 00FF0 80A3B740 0C021344 */  jal     Item_Give              
/* 00FF4 80A3B744 2405008C */  addiu   $a1, $zero, 0x008C         ## $a1 = 0000008C
/* 00FF8 80A3B748 10000004 */  beq     $zero, $zero, .L80A3B75C   
/* 00FFC 80A3B74C 8FAF001C */  lw      $t7, 0x001C($sp)           
.L80A3B750:
/* 01000 80A3B750 0C021344 */  jal     Item_Give              
/* 01004 80A3B754 2405008D */  addiu   $a1, $zero, 0x008D         ## $a1 = 0000008D
/* 01008 80A3B758 8FAF001C */  lw      $t7, 0x001C($sp)           
.L80A3B75C:
/* 0100C 80A3B75C 85E401C8 */  lh      $a0, 0x01C8($t7)           ## 000001C8
/* 01010 80A3B760 00042023 */  subu    $a0, $zero, $a0            
/* 01014 80A3B764 00042400 */  sll     $a0, $a0, 16               
/* 01018 80A3B768 0C021CC3 */  jal     Rupees_ChangeBy              
/* 0101C 80A3B76C 00042403 */  sra     $a0, $a0, 16               
/* 01020 80A3B770 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01024 80A3B774 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01028 80A3B778 03E00008 */  jr      $ra                        
/* 0102C 80A3B77C 00000000 */  nop


