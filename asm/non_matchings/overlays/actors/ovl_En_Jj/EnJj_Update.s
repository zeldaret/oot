glabel EnJj_Update
/* 00750 80A87F50 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00754 80A87F54 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00758 80A87F58 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0075C 80A87F5C 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00760 80A87F60 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00764 80A87F64 51C00009 */  beql    $t6, $zero, .L80A87F8C     
/* 00768 80A87F68 8E1902FC */  lw      $t9, 0x02FC($s0)           ## 000002FC
/* 0076C 80A87F6C 8CAF1D94 */  lw      $t7, 0x1D94($a1)           ## 00001D94
/* 00770 80A87F70 51E00006 */  beql    $t7, $zero, .L80A87F8C     
/* 00774 80A87F74 8E1902FC */  lw      $t9, 0x02FC($s0)           ## 000002FC
/* 00778 80A87F78 0C2A1F65 */  jal     func_80A87D94              
/* 0077C 80A87F7C 00000000 */  nop
/* 00780 80A87F80 1000000F */  beq     $zero, $zero, .L80A87FC0   
/* 00784 80A87F84 00000000 */  nop
/* 00788 80A87F88 8E1902FC */  lw      $t9, 0x02FC($s0)           ## 000002FC
.L80A87F8C:
/* 0078C 80A87F8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00790 80A87F90 0320F809 */  jalr    $ra, $t9                   
/* 00794 80A87F94 00000000 */  nop
/* 00798 80A87F98 3C014224 */  lui     $at, 0x4224                ## $at = 42240000
/* 0079C 80A87F9C 44812000 */  mtc1    $at, $f4                   ## $f4 = 41.00
/* 007A0 80A87FA0 C606017C */  lwc1    $f6, 0x017C($s0)           ## 0000017C
/* 007A4 80A87FA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007A8 80A87FA8 46062032 */  c.eq.s  $f4, $f6                   
/* 007AC 80A87FAC 00000000 */  nop
/* 007B0 80A87FB0 45000003 */  bc1f    .L80A87FC0                 
/* 007B4 80A87FB4 00000000 */  nop
/* 007B8 80A87FB8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 007BC 80A87FBC 240528B6 */  addiu   $a1, $zero, 0x28B6         ## $a1 = 000028B6
.L80A87FC0:
/* 007C0 80A87FC0 0C2A1EC7 */  jal     func_80A87B1C              
/* 007C4 80A87FC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007C8 80A87FC8 0C02927F */  jal     SkelAnime_Update
              
/* 007CC 80A87FCC 26040164 */  addiu   $a0, $s0, 0x0164           ## $a0 = 00000164
/* 007D0 80A87FD0 3C053DB2 */  lui     $a1, 0x3DB2                ## $a1 = 3DB20000
/* 007D4 80A87FD4 34A52D0E */  ori     $a1, $a1, 0x2D0E           ## $a1 = 3DB22D0E
/* 007D8 80A87FD8 0C00B58B */  jal     Actor_SetScale
              
/* 007DC 80A87FDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007E0 80A87FE0 86180308 */  lh      $t8, 0x0308($s0)           ## 00000308
/* 007E4 80A87FE4 8E080184 */  lw      $t0, 0x0184($s0)           ## 00000184
/* 007E8 80A87FE8 A5180040 */  sh      $t8, 0x0040($t0)           ## 00000040
/* 007EC 80A87FEC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 007F0 80A87FF0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 007F4 80A87FF4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 007F8 80A87FF8 03E00008 */  jr      $ra                        
/* 007FC 80A87FFC 00000000 */  nop
