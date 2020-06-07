glabel func_80AC31A0
/* 00500 80AC31A0 3C0E8016 */  lui     $t6, %hi(gSaveContext+4)
/* 00504 80AC31A4 8DCEE664 */  lw      $t6, %lo(gSaveContext+4)($t6)
/* 00508 80AC31A8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0050C 80AC31AC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00510 80AC31B0 11C00003 */  beq     $t6, $zero, .L80AC31C0     
/* 00514 80AC31B4 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00518 80AC31B8 10000002 */  beq     $zero, $zero, .L80AC31C4   
/* 0051C 80AC31BC 24020005 */  addiu   $v0, $zero, 0x0005         ## $v0 = 00000005
.L80AC31C0:
/* 00520 80AC31C0 24020011 */  addiu   $v0, $zero, 0x0011         ## $v0 = 00000011
.L80AC31C4:
/* 00524 80AC31C4 14410005 */  bne     $v0, $at, .L80AC31DC       
/* 00528 80AC31C8 00000000 */  nop
/* 0052C 80AC31CC 0C042DC8 */  jal     func_8010B720              
/* 00530 80AC31D0 2405403A */  addiu   $a1, $zero, 0x403A         ## $a1 = 0000403A
/* 00534 80AC31D4 10000004 */  beq     $zero, $zero, .L80AC31E8   
/* 00538 80AC31D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AC31DC:
/* 0053C 80AC31DC 0C042DC8 */  jal     func_8010B720              
/* 00540 80AC31E0 2405403B */  addiu   $a1, $zero, 0x403B         ## $a1 = 0000403B
/* 00544 80AC31E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AC31E8:
/* 00548 80AC31E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0054C 80AC31EC 03E00008 */  jr      $ra                        
/* 00550 80AC31F0 00000000 */  nop
