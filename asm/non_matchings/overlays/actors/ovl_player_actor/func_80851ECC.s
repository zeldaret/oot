glabel func_80851ECC
/* 1FCBC 80851ECC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1FCC0 80851ED0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1FCC4 80851ED4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 1FCC8 80851ED8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 1FCCC 80851EDC AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1FCD0 80851EE0 0C028EF0 */  jal     func_800A3BC0              
/* 1FCD4 80851EE4 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 1FCD8 80851EE8 10400006 */  beq     $v0, $zero, .L80851F04     
/* 1FCDC 80851EEC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 1FCE0 80851EF0 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 1FCE4 80851EF4 24C62428 */  addiu   $a2, $a2, 0x2428           ## $a2 = 04002428
/* 1FCE8 80851EF8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 1FCEC 80851EFC 0C20CC3B */  jal     func_808330EC              
/* 1FCF0 80851F00 2407009C */  addiu   $a3, $zero, 0x009C         ## $a3 = 0000009C
.L80851F04:
/* 1FCF4 80851F04 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1FCF8 80851F08 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1FCFC 80851F0C 03E00008 */  jr      $ra                        
/* 1FD00 80851F10 00000000 */  nop


