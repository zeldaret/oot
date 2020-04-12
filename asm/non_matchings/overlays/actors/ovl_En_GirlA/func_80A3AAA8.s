glabel func_80A3AAA8
/* 00358 80A3AAA8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0035C 80A3AAAC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00360 80A3AAB0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00364 80A3AAB4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00368 80A3AAB8 0C0218E2 */  jal     Item_CheckObtainability              
/* 0036C 80A3AABC 24040003 */  addiu   $a0, $zero, 0x0003         ## $a0 = 00000003
/* 00370 80A3AAC0 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00374 80A3AAC4 14410003 */  bne     $v0, $at, .L80A3AAD4       
/* 00378 80A3AAC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0037C 80A3AACC 10000020 */  beq     $zero, $zero, .L80A3AB50   
/* 00380 80A3AAD0 24020005 */  addiu   $v0, $zero, 0x0005         ## $v0 = 00000005
.L80A3AAD4:
/* 00384 80A3AAD4 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00388 80A3AAD8 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 0038C 80A3AADC 3C088012 */  lui     $t0, 0x8012                ## $t0 = 80120000
/* 00390 80A3AAE0 8D0871B0 */  lw      $t0, 0x71B0($t0)           ## 801271B0
/* 00394 80A3AAE4 8C5900A0 */  lw      $t9, 0x00A0($v0)           ## 8015E700
/* 00398 80A3AAE8 3C0A8012 */  lui     $t2, 0x8012                ## $t2 = 80120000
/* 0039C 80A3AAEC 914A71F4 */  lbu     $t2, 0x71F4($t2)           ## 801271F4
/* 003A0 80A3AAF0 3C0E8012 */  lui     $t6, 0x8012                ## $t6 = 80120000
/* 003A4 80A3AAF4 91CE7467 */  lbu     $t6, 0x7467($t6)           ## 80127467
/* 003A8 80A3AAF8 03284824 */  and     $t1, $t9, $t0              
/* 003AC 80A3AAFC 01495807 */  srav    $t3, $t1, $t2              
/* 003B0 80A3AB00 000B6040 */  sll     $t4, $t3,  1               
/* 003B4 80A3AB04 3C0D8012 */  lui     $t5, 0x8012                ## $t5 = 80120000
/* 003B8 80A3AB08 01AC6821 */  addu    $t5, $t5, $t4              
/* 003BC 80A3AB0C 004E7821 */  addu    $t7, $v0, $t6              
/* 003C0 80A3AB10 81F8008C */  lb      $t8, 0x008C($t7)           ## 0000008C
/* 003C4 80A3AB14 95AD71FC */  lhu     $t5, 0x71FC($t5)           ## 801271FC
/* 003C8 80A3AB18 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 003CC 80A3AB1C 030D082A */  slt     $at, $t8, $t5              
/* 003D0 80A3AB20 54200004 */  bnel    $at, $zero, .L80A3AB34     
/* 003D4 80A3AB24 844E0034 */  lh      $t6, 0x0034($v0)           ## 8015E694
/* 003D8 80A3AB28 10000009 */  beq     $zero, $zero, .L80A3AB50   
/* 003DC 80A3AB2C 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
/* 003E0 80A3AB30 844E0034 */  lh      $t6, 0x0034($v0)           ## 00000036
.L80A3AB34:
/* 003E4 80A3AB34 85F901C8 */  lh      $t9, 0x01C8($t7)           ## 000001C8
/* 003E8 80A3AB38 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 003EC 80A3AB3C 01D9082A */  slt     $at, $t6, $t9              
/* 003F0 80A3AB40 10200003 */  beq     $at, $zero, .L80A3AB50     
/* 003F4 80A3AB44 00000000 */  nop
/* 003F8 80A3AB48 10000001 */  beq     $zero, $zero, .L80A3AB50   
/* 003FC 80A3AB4C 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A3AB50:
/* 00400 80A3AB50 03E00008 */  jr      $ra                        
/* 00404 80A3AB54 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
