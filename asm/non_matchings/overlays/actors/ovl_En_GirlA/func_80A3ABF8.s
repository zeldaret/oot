glabel func_80A3ABF8
/* 004A8 80A3ABF8 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 004AC 80A3ABFC 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 004B0 80A3AC00 3C0F8012 */  lui     $t7, 0x8012                ## $t7 = 80120000
/* 004B4 80A3AC04 8DEF71CC */  lw      $t7, 0x71CC($t7)           ## 801271CC
/* 004B8 80A3AC08 8C6E00A0 */  lw      $t6, 0x00A0($v1)           ## 8015E700
/* 004BC 80A3AC0C 3C198012 */  lui     $t9, 0x8012                ## $t9 = 80120000
/* 004C0 80A3AC10 933971FB */  lbu     $t9, 0x71FB($t9)           ## 801271FB
/* 004C4 80A3AC14 01CFC024 */  and     $t8, $t6, $t7              
/* 004C8 80A3AC18 3C028012 */  lui     $v0, 0x8012                ## $v0 = 80120000
/* 004CC 80A3AC1C 03384007 */  srav    $t0, $t8, $t9              
/* 004D0 80A3AC20 00084840 */  sll     $t1, $t0,  1               
/* 004D4 80A3AC24 00491021 */  addu    $v0, $v0, $t1              
/* 004D8 80A3AC28 94427234 */  lhu     $v0, 0x7234($v0)           ## 80127234
/* 004DC 80A3AC2C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004E0 80A3AC30 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004E4 80A3AC34 1040000A */  beq     $v0, $zero, .L80A3AC60     
/* 004E8 80A3AC38 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 004EC 80A3AC3C 3C0A8012 */  lui     $t2, 0x8012                ## $t2 = 80120000
/* 004F0 80A3AC40 914A7465 */  lbu     $t2, 0x7465($t2)           ## 80127465
/* 004F4 80A3AC44 006A5821 */  addu    $t3, $v1, $t2              
/* 004F8 80A3AC48 816C008C */  lb      $t4, 0x008C($t3)           ## 0000008C
/* 004FC 80A3AC4C 0182082A */  slt     $at, $t4, $v0              
/* 00500 80A3AC50 54200004 */  bnel    $at, $zero, .L80A3AC64     
/* 00504 80A3AC54 846D0034 */  lh      $t5, 0x0034($v1)           ## 8015E694
/* 00508 80A3AC58 10000010 */  beq     $zero, $zero, .L80A3AC9C   
/* 0050C 80A3AC5C 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L80A3AC60:
/* 00510 80A3AC60 846D0034 */  lh      $t5, 0x0034($v1)           ## 8015E694
.L80A3AC64:
/* 00514 80A3AC64 84AE01C8 */  lh      $t6, 0x01C8($a1)           ## 000001C8
/* 00518 80A3AC68 01AE082A */  slt     $at, $t5, $t6              
/* 0051C 80A3AC6C 10200003 */  beq     $at, $zero, .L80A3AC7C     
/* 00520 80A3AC70 00000000 */  nop
/* 00524 80A3AC74 10000009 */  beq     $zero, $zero, .L80A3AC9C   
/* 00528 80A3AC78 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A3AC7C:
/* 0052C 80A3AC7C 0C0218E2 */  jal     Item_CheckObtainability              
/* 00530 80A3AC80 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 00534 80A3AC84 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00538 80A3AC88 54410004 */  bnel    $v0, $at, .L80A3AC9C       
/* 0053C 80A3AC8C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00540 80A3AC90 10000002 */  beq     $zero, $zero, .L80A3AC9C   
/* 00544 80A3AC94 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00548 80A3AC98 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3AC9C:
/* 0054C 80A3AC9C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00550 80A3ACA0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00554 80A3ACA4 03E00008 */  jr      $ra                        
/* 00558 80A3ACA8 00000000 */  nop
