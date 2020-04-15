glabel func_80A3B3A8
/* 00C58 80A3B3A8 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00C5C 80A3B3AC 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00C60 80A3B3B0 3C088012 */  lui     $t0, 0x8012                ## $t0 = 80120000
/* 00C64 80A3B3B4 8D0871C4 */  lw      $t0, 0x71C4($t0)           ## 801271C4
/* 00C68 80A3B3B8 8C5900A0 */  lw      $t9, 0x00A0($v0)           ## 8015E700
/* 00C6C 80A3B3BC 3C0A8012 */  lui     $t2, 0x8012                ## $t2 = 80120000
/* 00C70 80A3B3C0 914A71F9 */  lbu     $t2, 0x71F9($t2)           ## 801271F9
/* 00C74 80A3B3C4 3C0E8012 */  lui     $t6, 0x8012                ## $t6 = 80120000
/* 00C78 80A3B3C8 91CE746A */  lbu     $t6, 0x746A($t6)           ## 8012746A
/* 00C7C 80A3B3CC 03284824 */  and     $t1, $t9, $t0              
/* 00C80 80A3B3D0 01495807 */  srav    $t3, $t1, $t2              
/* 00C84 80A3B3D4 000B6040 */  sll     $t4, $t3,  1               
/* 00C88 80A3B3D8 3C0D8012 */  lui     $t5, 0x8012                ## $t5 = 80120000
/* 00C8C 80A3B3DC 01AC6821 */  addu    $t5, $t5, $t4              
/* 00C90 80A3B3E0 004E7821 */  addu    $t7, $v0, $t6              
/* 00C94 80A3B3E4 81F8008C */  lb      $t8, 0x008C($t7)           ## 0000008C
/* 00C98 80A3B3E8 95AD7224 */  lhu     $t5, 0x7224($t5)           ## 80127224
/* 00C9C 80A3B3EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00CA0 80A3B3F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CA4 80A3B3F4 030D082A */  slt     $at, $t8, $t5              
/* 00CA8 80A3B3F8 14200003 */  bne     $at, $zero, .L80A3B408     
/* 00CAC 80A3B3FC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00CB0 80A3B400 10000010 */  beq     $zero, $zero, .L80A3B444   
/* 00CB4 80A3B404 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L80A3B408:
/* 00CB8 80A3B408 844E0034 */  lh      $t6, 0x0034($v0)           ## 00000036
/* 00CBC 80A3B40C 84AF01C8 */  lh      $t7, 0x01C8($a1)           ## 000001C8
/* 00CC0 80A3B410 01CF082A */  slt     $at, $t6, $t7              
/* 00CC4 80A3B414 10200003 */  beq     $at, $zero, .L80A3B424     
/* 00CC8 80A3B418 00000000 */  nop
/* 00CCC 80A3B41C 10000009 */  beq     $zero, $zero, .L80A3B444   
/* 00CD0 80A3B420 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A3B424:
/* 00CD4 80A3B424 0C0218E2 */  jal     Item_CheckObtainability              
/* 00CD8 80A3B428 24040058 */  addiu   $a0, $zero, 0x0058         ## $a0 = 00000058
/* 00CDC 80A3B42C 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00CE0 80A3B430 54410004 */  bnel    $v0, $at, .L80A3B444       
/* 00CE4 80A3B434 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00CE8 80A3B438 10000002 */  beq     $zero, $zero, .L80A3B444   
/* 00CEC 80A3B43C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00CF0 80A3B440 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3B444:
/* 00CF4 80A3B444 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00CF8 80A3B448 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CFC 80A3B44C 03E00008 */  jr      $ra                        
/* 00D00 80A3B450 00000000 */  nop
