glabel func_80AAA474
/* 00224 80AAA474 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00228 80AAA478 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0022C 80AAA47C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00230 80AAA480 9082020A */  lbu     $v0, 0x020A($a0)           ## 0000020A
/* 00234 80AAA484 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00238 80AAA488 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0023C 80AAA48C 10400006 */  beq     $v0, $zero, .L80AAA4A8     
/* 00240 80AAA490 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 00244 80AAA494 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00248 80AAA498 5041000A */  beql    $v0, $at, .L80AAA4C4       
/* 0024C 80AAA49C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00250 80AAA4A0 10000015 */  beq     $zero, $zero, .L80AAA4F8   
/* 00254 80AAA4A4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA4A8:
/* 00258 80AAA4A8 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 0025C 80AAA4AC 0C00D3B0 */  jal     func_80034EC0              
/* 00260 80AAA4B0 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00264 80AAA4B4 920E020A */  lbu     $t6, 0x020A($s0)           ## 0000020A
/* 00268 80AAA4B8 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 0026C 80AAA4BC A20F020A */  sb      $t7, 0x020A($s0)           ## 0000020A
/* 00270 80AAA4C0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80AAA4C4:
/* 00274 80AAA4C4 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 00278 80AAA4C8 0C0295B2 */  jal     func_800A56C8              
/* 0027C 80AAA4CC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00280 80AAA4D0 10400008 */  beq     $v0, $zero, .L80AAA4F4     
/* 00284 80AAA4D4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00288 80AAA4D8 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 0028C 80AAA4DC 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 00290 80AAA4E0 0C00D3B0 */  jal     func_80034EC0              
/* 00294 80AAA4E4 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 00298 80AAA4E8 9218020A */  lbu     $t8, 0x020A($s0)           ## 0000020A
/* 0029C 80AAA4EC 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 002A0 80AAA4F0 A219020A */  sb      $t9, 0x020A($s0)           ## 0000020A
.L80AAA4F4:
/* 002A4 80AAA4F4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA4F8:
/* 002A8 80AAA4F8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 002AC 80AAA4FC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 002B0 80AAA500 03E00008 */  jr      $ra                        
/* 002B4 80AAA504 00000000 */  nop
