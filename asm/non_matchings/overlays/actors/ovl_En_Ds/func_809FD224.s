glabel func_809FD224
/* 001F4 809FD224 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001F8 809FD228 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001FC 809FD22C 0C00BCCD */  jal     func_8002F334              
/* 00200 809FD230 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00204 809FD234 1040000F */  beq     $v0, $zero, .L809FD274     
/* 00208 809FD238 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0020C 809FD23C 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 00210 809FD240 3C0F80A0 */  lui     $t7, %hi(func_809FD1CC)    ## $t7 = 80A00000
/* 00214 809FD244 2401FEFF */  addiu   $at, $zero, 0xFEFF         ## $at = FFFFFEFF
/* 00218 809FD248 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0021C 809FD24C 240E504F */  addiu   $t6, $zero, 0x504F         ## $t6 = 0000504F
/* 00220 809FD250 25EFD1CC */  addiu   $t7, $t7, %lo(func_809FD1CC) ## $t7 = 809FD1CC
/* 00224 809FD254 0301C824 */  and     $t9, $t8, $at              
/* 00228 809FD258 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 0022C 809FD25C A48E010E */  sh      $t6, 0x010E($a0)           ## 0000010E
/* 00230 809FD260 AC8F01EC */  sw      $t7, 0x01EC($a0)           ## 000001EC
/* 00234 809FD264 AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 00238 809FD268 94480EF6 */  lhu     $t0, 0x0EF6($v0)           ## 8015F556
/* 0023C 809FD26C 35090001 */  ori     $t1, $t0, 0x0001           ## $t1 = 00000001
/* 00240 809FD270 A4490EF6 */  sh      $t1, 0x0EF6($v0)           ## 8015F556
.L809FD274:
/* 00244 809FD274 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00248 809FD278 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0024C 809FD27C 03E00008 */  jr      $ra                        
/* 00250 809FD280 00000000 */  nop


