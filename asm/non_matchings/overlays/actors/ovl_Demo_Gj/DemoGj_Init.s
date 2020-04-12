.rdata
glabel D_8097C120
    .asciz "[31mDemo_Gj_Actor_ct そんな引数は無い!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

.late_rodata
glabel jtbl_8097C234
.word L8097BC98
.word L8097BD48
.word L8097BD48
.word L8097BD48
.word L8097BCA8
.word L8097BCB8
.word L8097BCC8
.word L8097BCD8
.word L8097BCE8
.word L8097BCF8
.word L8097BD08
.word L8097BD48
.word L8097BD18
.word L8097BD28
.word L8097BD48
.word L8097BD48
.word L8097BD48
.word L8097BD48
.word L8097BD38

.text
glabel DemoGj_Init
/* 03328 8097BC58 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0332C 8097BC5C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03330 8097BC60 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03334 8097BC64 0C25E254 */  jal     func_80978950              
/* 03338 8097BC68 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0333C 8097BC6C 244EFFFC */  addiu   $t6, $v0, 0xFFFC           ## $t6 = FFFFFFFC
/* 03340 8097BC70 2DC10013 */  sltiu   $at, $t6, 0x0013           
/* 03344 8097BC74 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 03348 8097BC78 10200033 */  beq     $at, $zero, .L8097BD48     
/* 0334C 8097BC7C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 03350 8097BC80 000E7080 */  sll     $t6, $t6,  2               
/* 03354 8097BC84 3C018098 */  lui     $at, %hi(jtbl_8097C234)       ## $at = 80980000
/* 03358 8097BC88 002E0821 */  addu    $at, $at, $t6              
/* 0335C 8097BC8C 8C2EC234 */  lw      $t6, %lo(jtbl_8097C234)($at)  
/* 03360 8097BC90 01C00008 */  jr      $t6                        
/* 03364 8097BC94 00000000 */  nop
glabel L8097BC98
/* 03368 8097BC98 0C25EB70 */  jal     func_8097ADC0              
/* 0336C 8097BC9C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 03370 8097BCA0 10000030 */  beq     $zero, $zero, .L8097BD64   
/* 03374 8097BCA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L8097BCA8
/* 03378 8097BCA8 0C25E7F4 */  jal     func_80979FD0              
/* 0337C 8097BCAC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 03380 8097BCB0 1000002C */  beq     $zero, $zero, .L8097BD64   
/* 03384 8097BCB4 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L8097BCB8
/* 03388 8097BCB8 0C25E882 */  jal     func_8097A208              
/* 0338C 8097BCBC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 03390 8097BCC0 10000028 */  beq     $zero, $zero, .L8097BD64   
/* 03394 8097BCC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L8097BCC8
/* 03398 8097BCC8 0C25E911 */  jal     func_8097A444              
/* 0339C 8097BCCC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 033A0 8097BCD0 10000024 */  beq     $zero, $zero, .L8097BD64   
/* 033A4 8097BCD4 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L8097BCD8
/* 033A8 8097BCD8 0C25E985 */  jal     func_8097A614              
/* 033AC 8097BCDC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 033B0 8097BCE0 10000020 */  beq     $zero, $zero, .L8097BD64   
/* 033B4 8097BCE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L8097BCE8
/* 033B8 8097BCE8 0C25E9F9 */  jal     func_8097A7E4              
/* 033BC 8097BCEC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 033C0 8097BCF0 1000001C */  beq     $zero, $zero, .L8097BD64   
/* 033C4 8097BCF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L8097BCF8
/* 033C8 8097BCF8 0C25EA6D */  jal     func_8097A9B4              
/* 033CC 8097BCFC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 033D0 8097BD00 10000018 */  beq     $zero, $zero, .L8097BD64   
/* 033D4 8097BD04 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L8097BD08
/* 033D8 8097BD08 0C25EAE1 */  jal     func_8097AB84              
/* 033DC 8097BD0C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 033E0 8097BD10 10000014 */  beq     $zero, $zero, .L8097BD64   
/* 033E4 8097BD14 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L8097BD18
/* 033E8 8097BD18 0C25EB97 */  jal     func_8097AE5C              
/* 033EC 8097BD1C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 033F0 8097BD20 10000010 */  beq     $zero, $zero, .L8097BD64   
/* 033F4 8097BD24 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L8097BD28
/* 033F8 8097BD28 0C25ECF1 */  jal     func_8097B3C4              
/* 033FC 8097BD2C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 03400 8097BD30 1000000C */  beq     $zero, $zero, .L8097BD64   
/* 03404 8097BD34 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L8097BD38
/* 03408 8097BD38 0C25EE3A */  jal     func_8097B8E8              
/* 0340C 8097BD3C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 03410 8097BD40 10000008 */  beq     $zero, $zero, .L8097BD64   
/* 03414 8097BD44 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L8097BD48
.L8097BD48:
/* 03418 8097BD48 3C048098 */  lui     $a0, %hi(D_8097C120)       ## $a0 = 80980000
/* 0341C 8097BD4C 2484C120 */  addiu   $a0, $a0, %lo(D_8097C120)  ## $a0 = 8097C120
/* 03420 8097BD50 0C00084C */  jal     osSyncPrintf
              
/* 03424 8097BD54 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 03428 8097BD58 0C00B55C */  jal     Actor_Kill
              
/* 0342C 8097BD5C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03430 8097BD60 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8097BD64:
/* 03434 8097BD64 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03438 8097BD68 03E00008 */  jr      $ra                        
/* 0343C 8097BD6C 00000000 */  nop
