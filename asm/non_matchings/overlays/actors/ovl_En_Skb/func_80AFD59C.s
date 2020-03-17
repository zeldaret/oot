glabel func_80AFD59C
/* 00BFC 80AFD59C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C00 80AFD5A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C04 80AFD5A4 94820088 */  lhu     $v0, 0x0088($a0)           ## 00000088
/* 00C08 80AFD5A8 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 00C0C 80AFD5AC 51C00005 */  beql    $t6, $zero, .L80AFD5C4     
/* 00C10 80AFD5B0 304F0001 */  andi    $t7, $v0, 0x0001           ## $t7 = 00000000
/* 00C14 80AFD5B4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00C18 80AFD5B8 94820088 */  lhu     $v0, 0x0088($a0)           ## 00000088
/* 00C1C 80AFD5BC E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 00C20 80AFD5C0 304F0001 */  andi    $t7, $v0, 0x0001           ## $t7 = 00000000
.L80AFD5C4:
/* 00C24 80AFD5C4 51E0000C */  beql    $t7, $zero, .L80AFD5F8     
/* 00C28 80AFD5C8 90980114 */  lbu     $t8, 0x0114($a0)           ## 00000114
/* 00C2C 80AFD5CC C4800068 */  lwc1    $f0, 0x0068($a0)           ## 00000068
/* 00C30 80AFD5D0 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00C34 80AFD5D4 3C0180B0 */  lui     $at, %hi(D_80AFE114)       ## $at = 80B00000
/* 00C38 80AFD5D8 4606003C */  c.lt.s  $f0, $f6                   
/* 00C3C 80AFD5DC 00000000 */  nop
/* 00C40 80AFD5E0 45020005 */  bc1fl   .L80AFD5F8                 
/* 00C44 80AFD5E4 90980114 */  lbu     $t8, 0x0114($a0)           ## 00000114
/* 00C48 80AFD5E8 C428E114 */  lwc1    $f8, %lo(D_80AFE114)($at)  
/* 00C4C 80AFD5EC 46080280 */  add.s   $f10, $f0, $f8             
/* 00C50 80AFD5F0 E48A0068 */  swc1    $f10, 0x0068($a0)          ## 00000068
/* 00C54 80AFD5F4 90980114 */  lbu     $t8, 0x0114($a0)           ## 00000114
.L80AFD5F8:
/* 00C58 80AFD5F8 5700000F */  bnel    $t8, $zero, .L80AFD638     
/* 00C5C 80AFD5FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C60 80AFD600 94990088 */  lhu     $t9, 0x0088($a0)           ## 00000088
/* 00C64 80AFD604 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 00C68 80AFD608 5100000B */  beql    $t0, $zero, .L80AFD638     
/* 00C6C 80AFD60C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C70 80AFD610 908900AF */  lbu     $t1, 0x00AF($a0)           ## 000000AF
/* 00C74 80AFD614 15200005 */  bne     $t1, $zero, .L80AFD62C     
/* 00C78 80AFD618 00000000 */  nop
/* 00C7C 80AFD61C 0C2BF5ED */  jal     func_80AFD7B4              
/* 00C80 80AFD620 00000000 */  nop
/* 00C84 80AFD624 10000004 */  beq     $zero, $zero, .L80AFD638   
/* 00C88 80AFD628 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFD62C:
/* 00C8C 80AFD62C 0C2BF358 */  jal     func_80AFCD60              
/* 00C90 80AFD630 00000000 */  nop
/* 00C94 80AFD634 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFD638:
/* 00C98 80AFD638 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C9C 80AFD63C 03E00008 */  jr      $ra                        
/* 00CA0 80AFD640 00000000 */  nop


