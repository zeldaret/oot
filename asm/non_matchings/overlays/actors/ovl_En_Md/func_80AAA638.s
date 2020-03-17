glabel func_80AAA638
/* 003E8 80AAA638 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 003EC 80AAA63C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 003F0 80AAA640 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 003F4 80AAA644 9082020A */  lbu     $v0, 0x020A($a0)           ## 0000020A
/* 003F8 80AAA648 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 003FC 80AAA64C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00400 80AAA650 10400006 */  beq     $v0, $zero, .L80AAA66C     
/* 00404 80AAA654 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 00408 80AAA658 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0040C 80AAA65C 5041000C */  beql    $v0, $at, .L80AAA690       
/* 00410 80AAA660 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00414 80AAA664 10000017 */  beq     $zero, $zero, .L80AAA6C4   
/* 00418 80AAA668 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA66C:
/* 0041C 80AAA66C 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 00420 80AAA670 0C00D3B0 */  jal     func_80034EC0              
/* 00424 80AAA674 24060009 */  addiu   $a2, $zero, 0x0009         ## $a2 = 00000009
/* 00428 80AAA678 0C2AA894 */  jal     func_80AAA250              
/* 0042C 80AAA67C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00430 80AAA680 920E020A */  lbu     $t6, 0x020A($s0)           ## 0000020A
/* 00434 80AAA684 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00438 80AAA688 A20F020A */  sb      $t7, 0x020A($s0)           ## 0000020A
/* 0043C 80AAA68C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80AAA690:
/* 00440 80AAA690 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 00444 80AAA694 0C0295B2 */  jal     func_800A56C8              
/* 00448 80AAA698 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0044C 80AAA69C 10400008 */  beq     $v0, $zero, .L80AAA6C0     
/* 00450 80AAA6A0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00454 80AAA6A4 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 00458 80AAA6A8 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 0045C 80AAA6AC 0C00D3B0 */  jal     func_80034EC0              
/* 00460 80AAA6B0 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 00464 80AAA6B4 9218020A */  lbu     $t8, 0x020A($s0)           ## 0000020A
/* 00468 80AAA6B8 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 0046C 80AAA6BC A219020A */  sb      $t9, 0x020A($s0)           ## 0000020A
.L80AAA6C0:
/* 00470 80AAA6C0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA6C4:
/* 00474 80AAA6C4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00478 80AAA6C8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0047C 80AAA6CC 03E00008 */  jr      $ra                        
/* 00480 80AAA6D0 00000000 */  nop


