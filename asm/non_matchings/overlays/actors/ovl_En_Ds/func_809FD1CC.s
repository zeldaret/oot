glabel func_809FD1CC
/* 0019C 809FD1CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001A0 809FD1D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001A4 809FD1D4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 001A8 809FD1D8 0C00BC65 */  jal     func_8002F194              
/* 001AC 809FD1DC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001B0 809FD1E0 10400005 */  beq     $v0, $zero, .L809FD1F8     
/* 001B4 809FD1E4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 001B8 809FD1E8 3C0E80A0 */  lui     $t6, %hi(func_809FD10C)    ## $t6 = 80A00000
/* 001BC 809FD1EC 25CED10C */  addiu   $t6, $t6, %lo(func_809FD10C) ## $t6 = 809FD10C
/* 001C0 809FD1F0 10000008 */  beq     $zero, $zero, .L809FD214   
/* 001C4 809FD1F4 AC8E01EC */  sw      $t6, 0x01EC($a0)           ## 000001EC
.L809FD1F8:
/* 001C8 809FD1F8 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 001CC 809FD1FC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 001D0 809FD200 3C06447A */  lui     $a2, 0x447A                ## $a2 = 447A0000
/* 001D4 809FD204 01E1C025 */  or      $t8, $t7, $at              ## $t8 = 00010000
/* 001D8 809FD208 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 001DC 809FD20C 0C00BCB3 */  jal     func_8002F2CC              
/* 001E0 809FD210 8FA5001C */  lw      $a1, 0x001C($sp)           
.L809FD214:
/* 001E4 809FD214 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001E8 809FD218 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001EC 809FD21C 03E00008 */  jr      $ra                        
/* 001F0 809FD220 00000000 */  nop


