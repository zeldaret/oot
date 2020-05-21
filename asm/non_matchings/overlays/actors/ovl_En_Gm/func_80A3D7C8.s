glabel func_80A3D7C8
/* 000E8 80A3D7C8 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 000EC 80A3D7CC 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 000F0 80A3D7D0 8C6E0004 */  lw      $t6, 0x0004($v1)           ## 8015E664
/* 000F4 80A3D7D4 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 000F8 80A3D7D8 24020011 */  addiu   $v0, $zero, 0x0011         ## $v0 = 00000011
/* 000FC 80A3D7DC 11C00003 */  beq     $t6, $zero, .L80A3D7EC     
/* 00100 80A3D7E0 3C048012 */  lui     $a0, %hi(gBitFlags)
/* 00104 80A3D7E4 10000001 */  beq     $zero, $zero, .L80A3D7EC   
/* 00108 80A3D7E8 24020005 */  addiu   $v0, $zero, 0x0005         ## $v0 = 00000005
.L80A3D7EC:
/* 0010C 80A3D7EC 14410003 */  bne     $v0, $at, .L80A3D7FC       
/* 00110 80A3D7F0 24847120 */  addiu   $a0, %lo(gBitFlags)
/* 00114 80A3D7F4 03E00008 */  jr      $ra                        
/* 00118 80A3D7F8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A3D7FC:
/* 0011C 80A3D7FC 9462009C */  lhu     $v0, 0x009C($v1)           ## 8015E6FC
/* 00120 80A3D800 8C8F0008 */  lw      $t7, 0x0008($a0)           ## 80127128
/* 00124 80A3D804 01E2C024 */  and     $t8, $t7, $v0              
/* 00128 80A3D808 57000004 */  bnel    $t8, $zero, .L80A3D81C     
/* 0012C 80A3D80C 8C99000C */  lw      $t9, 0x000C($a0)           ## 8012712C
/* 00130 80A3D810 03E00008 */  jr      $ra                        
/* 00134 80A3D814 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3D818:
/* 00138 80A3D818 8C99000C */  lw      $t9, 0x000C($a0)           ## 8012712C
.L80A3D81C:
/* 0013C 80A3D81C 03224024 */  and     $t0, $t9, $v0              
/* 00140 80A3D820 11000003 */  beq     $t0, $zero, .L80A3D830     
/* 00144 80A3D824 24020003 */  addiu   $v0, $zero, 0x0003         ## $v0 = 00000003
/* 00148 80A3D828 03E00008 */  jr      $ra                        
/* 0014C 80A3D82C 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L80A3D830:
/* 00150 80A3D830 03E00008 */  jr      $ra                        
/* 00154 80A3D834 00000000 */  nop
