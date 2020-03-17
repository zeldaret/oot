glabel func_80A6F790
/* 001E0 80A6F790 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 001E4 80A6F794 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001E8 80A6F798 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 001EC 80A6F79C 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 001F0 80A6F7A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001F4 80A6F7A4 00A12021 */  addu    $a0, $a1, $at              
/* 001F8 80A6F7A8 0C026062 */  jal     Object_IsLoaded
              
/* 001FC 80A6F7AC 80E50199 */  lb      $a1, 0x0199($a3)           ## 00000199
/* 00200 80A6F7B0 14400003 */  bne     $v0, $zero, .L80A6F7C0     
/* 00204 80A6F7B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00208 80A6F7B8 10000002 */  beq     $zero, $zero, .L80A6F7C4   
/* 0020C 80A6F7BC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A6F7C0:
/* 00210 80A6F7C0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A6F7C4:
/* 00214 80A6F7C4 03E00008 */  jr      $ra                        
/* 00218 80A6F7C8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


