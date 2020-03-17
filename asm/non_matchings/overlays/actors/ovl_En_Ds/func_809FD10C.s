glabel func_809FD10C
/* 000DC 809FD10C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000E0 809FD110 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000E4 809FD114 0C00BCCD */  jal     func_8002F334              
/* 000E8 809FD118 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000EC 809FD11C 10400009 */  beq     $v0, $zero, .L809FD144     
/* 000F0 809FD120 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 000F4 809FD124 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 000F8 809FD128 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 000FC 809FD12C 3C0E80A0 */  lui     $t6, %hi(func_809FD7B4)    ## $t6 = 80A00000
/* 00100 809FD130 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 00104 809FD134 25CED7B4 */  addiu   $t6, $t6, %lo(func_809FD7B4) ## $t6 = 809FD7B4
/* 00108 809FD138 01E1C024 */  and     $t8, $t7, $at              
/* 0010C 809FD13C AC8E01EC */  sw      $t6, 0x01EC($a0)           ## 000001EC
/* 00110 809FD140 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
.L809FD144:
/* 00114 809FD144 949901E8 */  lhu     $t9, 0x01E8($a0)           ## 000001E8
/* 00118 809FD148 37280001 */  ori     $t0, $t9, 0x0001           ## $t0 = 00000001
/* 0011C 809FD14C A48801E8 */  sh      $t0, 0x01E8($a0)           ## 000001E8
/* 00120 809FD150 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00124 809FD154 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00128 809FD158 03E00008 */  jr      $ra                        
/* 0012C 809FD15C 00000000 */  nop


