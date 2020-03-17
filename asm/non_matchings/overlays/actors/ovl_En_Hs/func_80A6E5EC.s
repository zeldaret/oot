glabel func_80A6E5EC
/* 0024C 80A6E5EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00250 80A6E5F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00254 80A6E5F4 0C00BCCD */  jal     func_8002F334              
/* 00258 80A6E5F8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0025C 80A6E5FC 10400004 */  beq     $v0, $zero, .L80A6E610     
/* 00260 80A6E600 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00264 80A6E604 3C0580A7 */  lui     $a1, %hi(func_80A6E6B0)    ## $a1 = 80A70000
/* 00268 80A6E608 0C29B8E8 */  jal     func_80A6E3A0              
/* 0026C 80A6E60C 24A5E6B0 */  addiu   $a1, $a1, %lo(func_80A6E6B0) ## $a1 = 80A6E6B0
.L80A6E610:
/* 00270 80A6E610 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00274 80A6E614 95CF02A8 */  lhu     $t7, 0x02A8($t6)           ## 000002A8
/* 00278 80A6E618 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 0027C 80A6E61C A5D802A8 */  sh      $t8, 0x02A8($t6)           ## 000002A8
/* 00280 80A6E620 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00284 80A6E624 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00288 80A6E628 03E00008 */  jr      $ra                        
/* 0028C 80A6E62C 00000000 */  nop


