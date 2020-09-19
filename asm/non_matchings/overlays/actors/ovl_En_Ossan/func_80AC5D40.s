glabel func_80AC5D40
/* 030A0 80AC5D40 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 030A4 80AC5D44 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 030A8 80AC5D48 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 030AC 80AC5D4C AFA60028 */  sw      $a2, 0x0028($sp)           
/* 030B0 80AC5D50 0C00BD04 */  jal     Actor_HasParent              
/* 030B4 80AC5D54 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 030B8 80AC5D58 10400005 */  beq     $v0, $zero, .L80AC5D70     
/* 030BC 80AC5D5C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 030C0 80AC5D60 240E0010 */  addiu   $t6, $zero, 0x0010         ## $t6 = 00000010
/* 030C4 80AC5D64 AC800118 */  sw      $zero, 0x0118($a0)         ## 00000118
/* 030C8 80AC5D68 1000000C */  beq     $zero, $zero, .L80AC5D9C   
/* 030CC 80AC5D6C A48E01FC */  sh      $t6, 0x01FC($a0)           ## 000001FC
.L80AC5D70:
/* 030D0 80AC5D70 908F0252 */  lbu     $t7, 0x0252($a0)           ## 00000252
/* 030D4 80AC5D74 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 030D8 80AC5D78 44810000 */  mtc1    $at, $f0                   ## $f0 = 120.00
/* 030DC 80AC5D7C 000FC080 */  sll     $t8, $t7,  2               
/* 030E0 80AC5D80 0098C821 */  addu    $t9, $a0, $t8              
/* 030E4 80AC5D84 8F280200 */  lw      $t0, 0x0200($t9)           ## 00000200
/* 030E8 80AC5D88 44070000 */  mfc1    $a3, $f0                   
/* 030EC 80AC5D8C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 030F0 80AC5D90 8D0601A4 */  lw      $a2, 0x01A4($t0)           ## 000001A4
/* 030F4 80AC5D94 0C00BD0D */  jal     func_8002F434              
/* 030F8 80AC5D98 E7A00010 */  swc1    $f0, 0x0010($sp)           
.L80AC5D9C:
/* 030FC 80AC5D9C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03100 80AC5DA0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03104 80AC5DA4 03E00008 */  jr      $ra                        
/* 03108 80AC5DA8 00000000 */  nop
