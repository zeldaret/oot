glabel BgRelayObjects_Destroy
/* 0023C 808A908C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00240 808A9090 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00244 808A9094 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00248 808A9098 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0024C 808A909C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00250 808A90A0 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00254 808A90A4 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00258 808A90A8 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 0025C 808A90AC 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00260 808A90B0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00264 808A90B4 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00268 808A90B8 85F8001C */  lh      $t8, 0x001C($t7)           ## 0000001C
/* 0026C 808A90BC 5700000A */  bnel    $t8, $zero, .L808A90E8     
/* 00270 808A90C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00274 808A90C4 8C590008 */  lw      $t9, 0x0008($v0)           ## 8015E668
/* 00278 808A90C8 3401FFF0 */  ori     $at, $zero, 0xFFF0         ## $at = 0000FFF0
/* 0027C 808A90CC 0321082A */  slt     $at, $t9, $at              
/* 00280 808A90D0 50200005 */  beql    $at, $zero, .L808A90E8     
/* 00284 808A90D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00288 808A90D8 94480EE0 */  lhu     $t0, 0x0EE0($v0)           ## 8015F540
/* 0028C 808A90DC 3109FFDF */  andi    $t1, $t0, 0xFFDF           ## $t1 = 00000000
/* 00290 808A90E0 A4490EE0 */  sh      $t1, 0x0EE0($v0)           ## 8015F540
/* 00294 808A90E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808A90E8:
/* 00298 808A90E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0029C 808A90EC 03E00008 */  jr      $ra                        
/* 002A0 808A90F0 00000000 */  nop


