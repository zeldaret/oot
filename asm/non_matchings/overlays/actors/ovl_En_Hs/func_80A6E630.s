glabel func_80A6E630
/* 00290 80A6E630 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00294 80A6E634 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00298 80A6E638 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0029C 80A6E63C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 002A0 80A6E640 0C042F6F */  jal     func_8010BDBC              
/* 002A4 80A6E644 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 002A8 80A6E648 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 002AC 80A6E64C 54410011 */  bnel    $v0, $at, .L80A6E694       
/* 002B0 80A6E650 8FB80018 */  lw      $t8, 0x0018($sp)           
/* 002B4 80A6E654 0C041AF2 */  jal     func_80106BC8              
/* 002B8 80A6E658 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 002BC 80A6E65C 5040000D */  beql    $v0, $zero, .L80A6E694     
/* 002C0 80A6E660 8FB80018 */  lw      $t8, 0x0018($sp)           
/* 002C4 80A6E664 0C0222A8 */  jal     func_80088AA0              
/* 002C8 80A6E668 240400B4 */  addiu   $a0, $zero, 0x00B4         ## $a0 = 000000B4
/* 002CC 80A6E66C 3C0580A7 */  lui     $a1, %hi(func_80A6E6B0)    ## $a1 = 80A70000
/* 002D0 80A6E670 24A5E6B0 */  addiu   $a1, $a1, %lo(func_80A6E6B0) ## $a1 = 80A6E6B0
/* 002D4 80A6E674 0C29B8E8 */  jal     func_80A6E3A0              
/* 002D8 80A6E678 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 002DC 80A6E67C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 002E0 80A6E680 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 002E4 80A6E684 944E13FC */  lhu     $t6, 0x13FC($v0)           ## 8015FA5C
/* 002E8 80A6E688 31CFFFFE */  andi    $t7, $t6, 0xFFFE           ## $t7 = 00000000
/* 002EC 80A6E68C A44F13FC */  sh      $t7, 0x13FC($v0)           ## 8015FA5C
/* 002F0 80A6E690 8FB80018 */  lw      $t8, 0x0018($sp)           
.L80A6E694:
/* 002F4 80A6E694 971902A8 */  lhu     $t9, 0x02A8($t8)           ## 000002A8
/* 002F8 80A6E698 37280001 */  ori     $t0, $t9, 0x0001           ## $t0 = 00000001
/* 002FC 80A6E69C A70802A8 */  sh      $t0, 0x02A8($t8)           ## 000002A8
/* 00300 80A6E6A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00304 80A6E6A4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00308 80A6E6A8 03E00008 */  jr      $ra                        
/* 0030C 80A6E6AC 00000000 */  nop
