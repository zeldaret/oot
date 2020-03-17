glabel func_80AAA39C
/* 0014C 80AAA39C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00150 80AAA3A0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00154 80AAA3A4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00158 80AAA3A8 9082020A */  lbu     $v0, 0x020A($a0)           ## 0000020A
/* 0015C 80AAA3AC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00160 80AAA3B0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00164 80AAA3B4 10400008 */  beq     $v0, $zero, .L80AAA3D8     
/* 00168 80AAA3B8 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 0016C 80AAA3BC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00170 80AAA3C0 1041000D */  beq     $v0, $at, .L80AAA3F8       
/* 00174 80AAA3C4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00178 80AAA3C8 50410019 */  beql    $v0, $at, .L80AAA430       
/* 0017C 80AAA3CC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00180 80AAA3D0 10000024 */  beq     $zero, $zero, .L80AAA464   
/* 00184 80AAA3D4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA3D8:
/* 00188 80AAA3D8 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 0018C 80AAA3DC 0C00D3B0 */  jal     func_80034EC0              
/* 00190 80AAA3E0 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00194 80AAA3E4 0C2AA894 */  jal     func_80AAA250              
/* 00198 80AAA3E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0019C 80AAA3EC 920E020A */  lbu     $t6, 0x020A($s0)           ## 0000020A
/* 001A0 80AAA3F0 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 001A4 80AAA3F4 A20F020A */  sb      $t7, 0x020A($s0)           ## 0000020A
.L80AAA3F8:
/* 001A8 80AAA3F8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 001AC 80AAA3FC 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 001B0 80AAA400 0C0295B2 */  jal     func_800A56C8              
/* 001B4 80AAA404 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 001B8 80AAA408 10400015 */  beq     $v0, $zero, .L80AAA460     
/* 001BC 80AAA40C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 001C0 80AAA410 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 001C4 80AAA414 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 001C8 80AAA418 0C00D3B0 */  jal     func_80034EC0              
/* 001CC 80AAA41C 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 001D0 80AAA420 9218020A */  lbu     $t8, 0x020A($s0)           ## 0000020A
/* 001D4 80AAA424 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 001D8 80AAA428 A219020A */  sb      $t9, 0x020A($s0)           ## 0000020A
/* 001DC 80AAA42C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80AAA430:
/* 001E0 80AAA430 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 001E4 80AAA434 0C0295B2 */  jal     func_800A56C8              
/* 001E8 80AAA438 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 001EC 80AAA43C 10400008 */  beq     $v0, $zero, .L80AAA460     
/* 001F0 80AAA440 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 001F4 80AAA444 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 001F8 80AAA448 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 001FC 80AAA44C 0C00D3B0 */  jal     func_80034EC0              
/* 00200 80AAA450 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 00204 80AAA454 9208020A */  lbu     $t0, 0x020A($s0)           ## 0000020A
/* 00208 80AAA458 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 0020C 80AAA45C A209020A */  sb      $t1, 0x020A($s0)           ## 0000020A
.L80AAA460:
/* 00210 80AAA460 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA464:
/* 00214 80AAA464 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00218 80AAA468 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0021C 80AAA46C 03E00008 */  jr      $ra                        
/* 00220 80AAA470 00000000 */  nop


