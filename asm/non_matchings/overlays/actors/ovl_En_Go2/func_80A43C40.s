glabel func_80A43C40
/* 00F10 80A43C40 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F14 80A43C44 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F18 80A43C48 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00F1C 80A43C4C 0C042F6F */  jal     func_8010BDBC              
/* 00F20 80A43C50 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 00F24 80A43C54 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00F28 80A43C58 1441000B */  bne     $v0, $at, .L80A43C88       
/* 00F2C 80A43C5C 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 00F30 80A43C60 95CF010E */  lhu     $t7, 0x010E($t6)           ## 0000010E
/* 00F34 80A43C64 24013018 */  addiu   $at, $zero, 0x3018         ## $at = 00003018
/* 00F38 80A43C68 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00F3C 80A43C6C 15E10004 */  bne     $t7, $at, .L80A43C80       
/* 00F40 80A43C70 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00F44 80A43C74 94580F16 */  lhu     $t8, 0x0F16($v0)           ## 8015F576
/* 00F48 80A43C78 37190100 */  ori     $t9, $t8, 0x0100           ## $t9 = 00000100
/* 00F4C 80A43C7C A4590F16 */  sh      $t9, 0x0F16($v0)           ## 8015F576
.L80A43C80:
/* 00F50 80A43C80 10000002 */  beq     $zero, $zero, .L80A43C8C   
/* 00F54 80A43C84 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A43C88:
/* 00F58 80A43C88 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A43C8C:
/* 00F5C 80A43C8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F60 80A43C90 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F64 80A43C94 03E00008 */  jr      $ra                        
/* 00F68 80A43C98 00000000 */  nop
