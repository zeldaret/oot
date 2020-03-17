glabel func_80AAA274
/* 00024 80AAA274 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00028 80AAA278 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0002C 80AAA27C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00030 80AAA280 9082020A */  lbu     $v0, 0x020A($a0)           ## 0000020A
/* 00034 80AAA284 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00038 80AAA288 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0003C 80AAA28C 10400006 */  beq     $v0, $zero, .L80AAA2A8     
/* 00040 80AAA290 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 00044 80AAA294 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00048 80AAA298 5041000A */  beql    $v0, $at, .L80AAA2C4       
/* 0004C 80AAA29C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00050 80AAA2A0 10000015 */  beq     $zero, $zero, .L80AAA2F8   
/* 00054 80AAA2A4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA2A8:
/* 00058 80AAA2A8 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 0005C 80AAA2AC 0C00D3B0 */  jal     func_80034EC0              
/* 00060 80AAA2B0 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00064 80AAA2B4 920E020A */  lbu     $t6, 0x020A($s0)           ## 0000020A
/* 00068 80AAA2B8 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 0006C 80AAA2BC A20F020A */  sb      $t7, 0x020A($s0)           ## 0000020A
/* 00070 80AAA2C0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80AAA2C4:
/* 00074 80AAA2C4 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 00078 80AAA2C8 0C0295B2 */  jal     func_800A56C8              
/* 0007C 80AAA2CC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00080 80AAA2D0 10400008 */  beq     $v0, $zero, .L80AAA2F4     
/* 00084 80AAA2D4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00088 80AAA2D8 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 0008C 80AAA2DC 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 00090 80AAA2E0 0C00D3B0 */  jal     func_80034EC0              
/* 00094 80AAA2E4 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 00098 80AAA2E8 9218020A */  lbu     $t8, 0x020A($s0)           ## 0000020A
/* 0009C 80AAA2EC 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 000A0 80AAA2F0 A219020A */  sb      $t9, 0x020A($s0)           ## 0000020A
.L80AAA2F4:
/* 000A4 80AAA2F4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA2F8:
/* 000A8 80AAA2F8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 000AC 80AAA2FC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 000B0 80AAA300 03E00008 */  jr      $ra                        
/* 000B4 80AAA304 00000000 */  nop


