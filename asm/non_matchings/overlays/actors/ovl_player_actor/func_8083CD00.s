glabel func_8083CD00
/* 0AAF0 8083CD00 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0AAF4 8083CD04 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0AAF8 8083CD08 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0AAFC 8083CD0C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0AB00 8083CD10 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0AB04 8083CD14 3C068084 */  lui     $a2, %hi(func_8084251C)    ## $a2 = 80840000
/* 0AB08 8083CD18 24C6251C */  addiu   $a2, $a2, %lo(func_8084251C) ## $a2 = 8084251C
/* 0AB0C 8083CD1C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0AB10 8083CD20 0C20D716 */  jal     func_80835C58              
/* 0AB14 8083CD24 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0AB18 8083CD28 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0AB1C 8083CD2C 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 0AB20 8083CD30 24C624E8 */  addiu   $a2, $a2, 0x24E8           ## $a2 = 040024E8
/* 0AB24 8083CD34 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0AB28 8083CD38 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 0AB2C 8083CD3C 0C029037 */  jal     func_800A40DC              
/* 0AB30 8083CD40 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 0AB34 8083CD44 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0AB38 8083CD48 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0AB3C 8083CD4C 03E00008 */  jr      $ra                        
/* 0AB40 8083CD50 00000000 */  nop


