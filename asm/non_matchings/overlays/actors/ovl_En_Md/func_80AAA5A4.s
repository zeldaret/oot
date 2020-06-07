glabel func_80AAA5A4
/* 00354 80AAA5A4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00358 80AAA5A8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0035C 80AAA5AC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00360 80AAA5B0 9082020A */  lbu     $v0, 0x020A($a0)           ## 0000020A
/* 00364 80AAA5B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00368 80AAA5B8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0036C 80AAA5BC 10400006 */  beq     $v0, $zero, .L80AAA5D8     
/* 00370 80AAA5C0 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 00374 80AAA5C4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00378 80AAA5C8 5041000A */  beql    $v0, $at, .L80AAA5F4       
/* 0037C 80AAA5CC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00380 80AAA5D0 10000015 */  beq     $zero, $zero, .L80AAA628   
/* 00384 80AAA5D4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA5D8:
/* 00388 80AAA5D8 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 0038C 80AAA5DC 0C00D3B0 */  jal     func_80034EC0              
/* 00390 80AAA5E0 24060009 */  addiu   $a2, $zero, 0x0009         ## $a2 = 00000009
/* 00394 80AAA5E4 920E020A */  lbu     $t6, 0x020A($s0)           ## 0000020A
/* 00398 80AAA5E8 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 0039C 80AAA5EC A20F020A */  sb      $t7, 0x020A($s0)           ## 0000020A
/* 003A0 80AAA5F0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80AAA5F4:
/* 003A4 80AAA5F4 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 003A8 80AAA5F8 0C0295B2 */  jal     func_800A56C8              
/* 003AC 80AAA5FC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 003B0 80AAA600 10400008 */  beq     $v0, $zero, .L80AAA624     
/* 003B4 80AAA604 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 003B8 80AAA608 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 003BC 80AAA60C 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 003C0 80AAA610 0C00D3B0 */  jal     func_80034EC0              
/* 003C4 80AAA614 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 003C8 80AAA618 9218020A */  lbu     $t8, 0x020A($s0)           ## 0000020A
/* 003CC 80AAA61C 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 003D0 80AAA620 A219020A */  sb      $t9, 0x020A($s0)           ## 0000020A
.L80AAA624:
/* 003D4 80AAA624 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAA628:
/* 003D8 80AAA628 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 003DC 80AAA62C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 003E0 80AAA630 03E00008 */  jr      $ra                        
/* 003E4 80AAA634 00000000 */  nop
