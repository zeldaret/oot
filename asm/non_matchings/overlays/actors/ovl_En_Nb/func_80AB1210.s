glabel func_80AB1210
/* 00480 80AB1210 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00484 80AB1214 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00488 80AB1218 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 0048C 80AB121C 3C0F80AB */  lui     $t7, %hi(D_80AB4318)       ## $t7 = 80AB0000
/* 00490 80AB1220 3C1980AB */  lui     $t9, %hi(D_80AB4318)       ## $t9 = 80AB0000
/* 00494 80AB1224 15C0000D */  bne     $t6, $zero, .L80AB125C     
/* 00498 80AB1228 00000000 */  nop
/* 0049C 80AB122C 8DEF4318 */  lw      $t7, %lo(D_80AB4318)($t7)  
/* 004A0 80AB1230 51E00011 */  beql    $t7, $zero, .L80AB1278     
/* 004A4 80AB1234 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004A8 80AB1238 8498001C */  lh      $t8, 0x001C($a0)           ## 0000001C
/* 004AC 80AB123C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 004B0 80AB1240 17010003 */  bne     $t8, $at, .L80AB1250       
/* 004B4 80AB1244 00000000 */  nop
/* 004B8 80AB1248 0C2AC47B */  jal     func_80AB11EC              
/* 004BC 80AB124C 00000000 */  nop
.L80AB1250:
/* 004C0 80AB1250 3C0180AB */  lui     $at, %hi(D_80AB4318)       ## $at = 80AB0000
/* 004C4 80AB1254 10000007 */  beq     $zero, $zero, .L80AB1274   
/* 004C8 80AB1258 AC204318 */  sw      $zero, %lo(D_80AB4318)($at) 
.L80AB125C:
/* 004CC 80AB125C 8F394318 */  lw      $t9, %lo(D_80AB4318)($t9)  
/* 004D0 80AB1260 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 004D4 80AB1264 3C0180AB */  lui     $at, %hi(D_80AB4318)       ## $at = 80AB0000
/* 004D8 80AB1268 57200003 */  bnel    $t9, $zero, .L80AB1278     
/* 004DC 80AB126C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004E0 80AB1270 AC284318 */  sw      $t0, %lo(D_80AB4318)($at)  
.L80AB1274:
/* 004E4 80AB1274 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AB1278:
/* 004E8 80AB1278 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004EC 80AB127C 03E00008 */  jr      $ra                        
/* 004F0 80AB1280 00000000 */  nop
