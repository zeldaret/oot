glabel func_80A4D5E0
/* 01940 80A4D5E0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01944 80A4D5E4 3C0E80A5 */  lui     $t6, %hi(func_80A4D624)    ## $t6 = 80A50000
/* 01948 80A4D5E8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0194C 80A4D5EC 25CED624 */  addiu   $t6, $t6, %lo(func_80A4D624) ## $t6 = 80A4D624
/* 01950 80A4D5F0 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 01954 80A4D5F4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01958 80A4D5F8 0C292F5C */  jal     func_80A4BD70              
/* 0195C 80A4D5FC 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01960 80A4D600 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01964 80A4D604 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01968 80A4D608 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 0196C 80A4D60C 00000000 */  nop
/* 01970 80A4D610 E48401C0 */  swc1    $f4, 0x01C0($a0)           ## 000001C0
/* 01974 80A4D614 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01978 80A4D618 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0197C 80A4D61C 03E00008 */  jr      $ra                        
/* 01980 80A4D620 00000000 */  nop


