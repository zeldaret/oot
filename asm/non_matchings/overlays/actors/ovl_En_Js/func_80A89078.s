glabel func_80A89078
/* 00268 80A89078 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0026C 80A8907C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00270 80A89080 0C00BCCD */  jal     func_8002F334              
/* 00274 80A89084 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00278 80A89088 5040000A */  beql    $v0, $zero, .L80A890B4     
/* 0027C 80A8908C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00280 80A89090 0C2A2402 */  jal     func_80A89008              
/* 00284 80A89094 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00288 80A89098 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 0028C 80A8909C 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 00290 80A890A0 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 00294 80A890A4 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 00000004
/* 00298 80A890A8 01E1C024 */  and     $t8, $t7, $at              
/* 0029C 80A890AC ADD80004 */  sw      $t8, 0x0004($t6)           ## 00000004
/* 002A0 80A890B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A890B4:
/* 002A4 80A890B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002A8 80A890B8 03E00008 */  jr      $ra                        
/* 002AC 80A890BC 00000000 */  nop


