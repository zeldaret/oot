glabel func_80B01134
/* 02E84 80B01134 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02E88 80B01138 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02E8C 80B0113C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02E90 80B01140 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02E94 80B01144 0C042F6F */  jal     func_8010BDBC              
/* 02E98 80B01148 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 02E9C 80B0114C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 02EA0 80B01150 5441001B */  bnel    $v0, $at, .L80B011C0       
/* 02EA4 80B01154 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02EA8 80B01158 0C041AF2 */  jal     func_80106BC8              
/* 02EAC 80B0115C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 02EB0 80B01160 10400016 */  beq     $v0, $zero, .L80B011BC     
/* 02EB4 80B01164 3C048016 */  lui     $a0, %hi(gSaveContext)
/* 02EB8 80B01168 2484E660 */  addiu   $a0, %lo(gSaveContext)
/* 02EBC 80B0116C 9083003F */  lbu     $v1, 0x003F($a0)           ## 8015E69F
/* 02EC0 80B01170 3C1980B0 */  lui     $t9, %hi(func_80B011CC)    ## $t9 = 80B00000
/* 02EC4 80B01174 28610003 */  slti    $at, $v1, 0x0003           
/* 02EC8 80B01178 10200003 */  beq     $at, $zero, .L80B01188     
/* 02ECC 80B0117C 00602825 */  or      $a1, $v1, $zero            ## $a1 = 00000000
/* 02ED0 80B01180 246E0001 */  addiu   $t6, $v1, 0x0001           ## $t6 = 00000001
/* 02ED4 80B01184 A08E003F */  sb      $t6, 0x003F($a0)           ## 8015E69F
.L80B01188:
/* 02ED8 80B01188 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02EDC 80B0118C 54A10009 */  bnel    $a1, $at, .L80B011B4       
/* 02EE0 80B01190 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02EE4 80B01194 948F0EF2 */  lhu     $t7, 0x0EF2($a0)           ## 8015F552
/* 02EE8 80B01198 8FA80018 */  lw      $t0, 0x0018($sp)           
/* 02EEC 80B0119C 273911CC */  addiu   $t9, $t9, %lo(func_80B011CC) ## $t9 = 80B011CC
/* 02EF0 80B011A0 35F80080 */  ori     $t8, $t7, 0x0080           ## $t8 = 00000080
/* 02EF4 80B011A4 A4980EF2 */  sh      $t8, 0x0EF2($a0)           ## 8015F552
/* 02EF8 80B011A8 10000004 */  beq     $zero, $zero, .L80B011BC   
/* 02EFC 80B011AC AD190274 */  sw      $t9, 0x0274($t0)           ## 00000274
/* 02F00 80B011B0 8FA40018 */  lw      $a0, 0x0018($sp)           
.L80B011B4:
/* 02F04 80B011B4 0C2C03CB */  jal     func_80B00F2C              
/* 02F08 80B011B8 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80B011BC:
/* 02F0C 80B011BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B011C0:
/* 02F10 80B011C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02F14 80B011C4 03E00008 */  jr      $ra                        
/* 02F18 80B011C8 00000000 */  nop
