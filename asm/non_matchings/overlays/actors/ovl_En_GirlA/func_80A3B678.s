glabel func_80A3B678
/* 00F28 80A3B678 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F2C 80A3B67C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F30 80A3B680 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00F34 80A3B684 84A201CA */  lh      $v0, 0x01CA($a1)           ## 000001CA
/* 00F38 80A3B688 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00F3C 80A3B68C 10410009 */  beq     $v0, $at, .L80A3B6B4       
/* 00F40 80A3B690 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 00F44 80A3B694 1041000B */  beq     $v0, $at, .L80A3B6C4       
/* 00F48 80A3B698 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 00F4C 80A3B69C 1041000D */  beq     $v0, $at, .L80A3B6D4       
/* 00F50 80A3B6A0 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 00F54 80A3B6A4 1041000F */  beq     $v0, $at, .L80A3B6E4       
/* 00F58 80A3B6A8 00000000 */  nop
/* 00F5C 80A3B6AC 10000010 */  beq     $zero, $zero, .L80A3B6F0   
/* 00F60 80A3B6B0 8FAF001C */  lw      $t7, 0x001C($sp)           
.L80A3B6B4:
/* 00F64 80A3B6B4 0C021344 */  jal     Item_Give              
/* 00F68 80A3B6B8 2405008E */  addiu   $a1, $zero, 0x008E         ## $a1 = 0000008E
/* 00F6C 80A3B6BC 1000000C */  beq     $zero, $zero, .L80A3B6F0   
/* 00F70 80A3B6C0 8FAF001C */  lw      $t7, 0x001C($sp)           
.L80A3B6C4:
/* 00F74 80A3B6C4 0C021344 */  jal     Item_Give              
/* 00F78 80A3B6C8 2405008F */  addiu   $a1, $zero, 0x008F         ## $a1 = 0000008F
/* 00F7C 80A3B6CC 10000008 */  beq     $zero, $zero, .L80A3B6F0   
/* 00F80 80A3B6D0 8FAF001C */  lw      $t7, 0x001C($sp)           
.L80A3B6D4:
/* 00F84 80A3B6D4 0C021344 */  jal     Item_Give              
/* 00F88 80A3B6D8 24050090 */  addiu   $a1, $zero, 0x0090         ## $a1 = 00000090
/* 00F8C 80A3B6DC 10000004 */  beq     $zero, $zero, .L80A3B6F0   
/* 00F90 80A3B6E0 8FAF001C */  lw      $t7, 0x001C($sp)           
.L80A3B6E4:
/* 00F94 80A3B6E4 0C021344 */  jal     Item_Give              
/* 00F98 80A3B6E8 24050091 */  addiu   $a1, $zero, 0x0091         ## $a1 = 00000091
/* 00F9C 80A3B6EC 8FAF001C */  lw      $t7, 0x001C($sp)           
.L80A3B6F0:
/* 00FA0 80A3B6F0 85E401C8 */  lh      $a0, 0x01C8($t7)           ## 000001C8
/* 00FA4 80A3B6F4 00042023 */  subu    $a0, $zero, $a0            
/* 00FA8 80A3B6F8 00042400 */  sll     $a0, $a0, 16               
/* 00FAC 80A3B6FC 0C021CC3 */  jal     Rupees_ChangeBy              
/* 00FB0 80A3B700 00042403 */  sra     $a0, $a0, 16               
/* 00FB4 80A3B704 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00FB8 80A3B708 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00FBC 80A3B70C 03E00008 */  jr      $ra                        
/* 00FC0 80A3B710 00000000 */  nop
