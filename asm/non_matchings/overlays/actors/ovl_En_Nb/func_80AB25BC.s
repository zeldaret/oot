glabel func_80AB25BC
/* 0182C 80AB25BC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01830 80AB25C0 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 01834 80AB25C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01838 80AB25C8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0183C 80AB25CC AFA4001C */  sw      $a0, 0x001C($sp)           
/* 01840 80AB25D0 0C0295B2 */  jal     func_800A56C8              
/* 01844 80AB25D4 3C054110 */  lui     $a1, 0x4110                ## $a1 = 41100000
/* 01848 80AB25D8 14400005 */  bne     $v0, $zero, .L80AB25F0     
/* 0184C 80AB25DC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01850 80AB25E0 0C0295B2 */  jal     func_800A56C8              
/* 01854 80AB25E4 3C054150 */  lui     $a1, 0x4150                ## $a1 = 41500000
/* 01858 80AB25E8 50400006 */  beql    $v0, $zero, .L80AB2604     
/* 0185C 80AB25EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AB25F0:
/* 01860 80AB25F0 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01864 80AB25F4 24050802 */  addiu   $a1, $zero, 0x0802         ## $a1 = 00000802
/* 01868 80AB25F8 0C01E245 */  jal     func_80078914              
/* 0186C 80AB25FC 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 01870 80AB2600 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AB2604:
/* 01874 80AB2604 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01878 80AB2608 03E00008 */  jr      $ra                        
/* 0187C 80AB260C 00000000 */  nop


