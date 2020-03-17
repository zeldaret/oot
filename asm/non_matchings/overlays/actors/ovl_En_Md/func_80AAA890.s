glabel func_80AAA890
/* 00640 80AAA890 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00644 80AAA894 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00648 80AAA898 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0064C 80AAA89C 9082020A */  lbu     $v0, 0x020A($a0)           ## 0000020A
/* 00650 80AAA8A0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00654 80AAA8A4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00658 80AAA8A8 10400006 */  beq     $v0, $zero, .L80AAA8C4     
/* 0065C 80AAA8AC 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 00660 80AAA8B0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00664 80AAA8B4 5041000C */  beql    $v0, $at, .L80AAA8E8       
/* 00668 80AAA8B8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0066C 80AAA8BC 10000017 */  beq     $zero, $zero, .L80AAA91C   
/* 00670 80AAA8C0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA8C4:
/* 00674 80AAA8C4 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 00678 80AAA8C8 0C00D3B0 */  jal     func_80034EC0              
/* 0067C 80AAA8CC 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00680 80AAA8D0 0C2AA894 */  jal     func_80AAA250              
/* 00684 80AAA8D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00688 80AAA8D8 920E020A */  lbu     $t6, 0x020A($s0)           ## 0000020A
/* 0068C 80AAA8DC 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00690 80AAA8E0 A20F020A */  sb      $t7, 0x020A($s0)           ## 0000020A
/* 00694 80AAA8E4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80AAA8E8:
/* 00698 80AAA8E8 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 0069C 80AAA8EC 0C0295B2 */  jal     func_800A56C8              
/* 006A0 80AAA8F0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 006A4 80AAA8F4 10400008 */  beq     $v0, $zero, .L80AAA918     
/* 006A8 80AAA8F8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 006AC 80AAA8FC 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 006B0 80AAA900 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 006B4 80AAA904 0C00D3B0 */  jal     func_80034EC0              
/* 006B8 80AAA908 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 006BC 80AAA90C 9218020A */  lbu     $t8, 0x020A($s0)           ## 0000020A
/* 006C0 80AAA910 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 006C4 80AAA914 A219020A */  sb      $t9, 0x020A($s0)           ## 0000020A
.L80AAA918:
/* 006C8 80AAA918 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA91C:
/* 006CC 80AAA91C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 006D0 80AAA920 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 006D4 80AAA924 03E00008 */  jr      $ra                        
/* 006D8 80AAA928 00000000 */  nop


