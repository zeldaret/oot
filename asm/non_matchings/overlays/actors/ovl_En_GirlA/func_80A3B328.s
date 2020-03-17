glabel func_80A3B328
/* 00BD8 80A3B328 3C0E8012 */  lui     $t6, 0x8012                ## $t6 = 80120000
/* 00BDC 80A3B32C 91CE746D */  lbu     $t6, 0x746D($t6)           ## 8012746D
/* 00BE0 80A3B330 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00BE4 80A3B334 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00BE8 80A3B338 004E7821 */  addu    $t7, $v0, $t6              
/* 00BEC 80A3B33C 81F8008C */  lb      $t8, 0x008C($t7)           ## 0000008C
/* 00BF0 80A3B340 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00BF4 80A3B344 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00BF8 80A3B348 2B010032 */  slti    $at, $t8, 0x0032           
/* 00BFC 80A3B34C 14200003 */  bne     $at, $zero, .L80A3B35C     
/* 00C00 80A3B350 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00C04 80A3B354 10000010 */  beq     $zero, $zero, .L80A3B398   
/* 00C08 80A3B358 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L80A3B35C:
/* 00C0C 80A3B35C 84590034 */  lh      $t9, 0x0034($v0)           ## 00000036
/* 00C10 80A3B360 84A801C8 */  lh      $t0, 0x01C8($a1)           ## 000001C8
/* 00C14 80A3B364 0328082A */  slt     $at, $t9, $t0              
/* 00C18 80A3B368 10200003 */  beq     $at, $zero, .L80A3B378     
/* 00C1C 80A3B36C 00000000 */  nop
/* 00C20 80A3B370 10000009 */  beq     $zero, $zero, .L80A3B398   
/* 00C24 80A3B374 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A3B378:
/* 00C28 80A3B378 0C0218E2 */  jal     Item_CheckObtainability              
/* 00C2C 80A3B37C 24040009 */  addiu   $a0, $zero, 0x0009         ## $a0 = 00000009
/* 00C30 80A3B380 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00C34 80A3B384 54410004 */  bnel    $v0, $at, .L80A3B398       
/* 00C38 80A3B388 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00C3C 80A3B38C 10000002 */  beq     $zero, $zero, .L80A3B398   
/* 00C40 80A3B390 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00C44 80A3B394 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3B398:
/* 00C48 80A3B398 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C4C 80A3B39C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C50 80A3B3A0 03E00008 */  jr      $ra                        
/* 00C54 80A3B3A4 00000000 */  nop


