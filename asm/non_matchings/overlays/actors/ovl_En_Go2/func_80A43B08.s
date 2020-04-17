glabel func_80A43B08
/* 00DD8 80A43B08 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00DDC 80A43B0C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00DE0 80A43B10 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00DE4 80A43B14 0C042F6F */  jal     func_8010BDBC              
/* 00DE8 80A43B18 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 00DEC 80A43B1C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00DF0 80A43B20 1441000B */  bne     $v0, $at, .L80A43B50       
/* 00DF4 80A43B24 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 00DF8 80A43B28 95CF010E */  lhu     $t7, 0x010E($t6)           ## 0000010E
/* 00DFC 80A43B2C 24013016 */  addiu   $at, $zero, 0x3016         ## $at = 00003016
/* 00E00 80A43B30 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00E04 80A43B34 15E10004 */  bne     $t7, $at, .L80A43B48       
/* 00E08 80A43B38 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00E0C 80A43B3C 94580F16 */  lhu     $t8, 0x0F16($v0)           ## 8015F576
/* 00E10 80A43B40 37190010 */  ori     $t9, $t8, 0x0010           ## $t9 = 00000010
/* 00E14 80A43B44 A4590F16 */  sh      $t9, 0x0F16($v0)           ## 8015F576
.L80A43B48:
/* 00E18 80A43B48 10000002 */  beq     $zero, $zero, .L80A43B54   
/* 00E1C 80A43B4C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A43B50:
/* 00E20 80A43B50 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A43B54:
/* 00E24 80A43B54 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E28 80A43B58 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E2C 80A43B5C 03E00008 */  jr      $ra                        
/* 00E30 80A43B60 00000000 */  nop
