glabel func_80A9BBB0
/* 00C10 80A9BBB0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C14 80A9BBB4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C18 80A9BBB8 3C0580AA */  lui     $a1, %hi(func_80A9BC1C)    ## $a1 = 80AA0000
/* 00C1C 80A9BBBC 0C2A6BE8 */  jal     func_80A9AFA0              
/* 00C20 80A9BBC0 24A5BC1C */  addiu   $a1, $a1, %lo(func_80A9BC1C) ## $a1 = 80A9BC1C
/* 00C24 80A9BBC4 240EF448 */  addiu   $t6, $zero, 0xF448         ## $t6 = FFFFF448
/* 00C28 80A9BBC8 3C0180AA */  lui     $at, %hi(D_80A9C1D0)       ## $at = 80AA0000
/* 00C2C 80A9BBCC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00C30 80A9BBD0 A42EC1D0 */  sh      $t6, %lo(D_80A9C1D0)($at)  
/* 00C34 80A9BBD4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00C38 80A9BBD8 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00C3C 80A9BBDC 3C0144C8 */  lui     $at, 0x44C8                ## $at = 44C80000
/* 00C40 80A9BBE0 44814000 */  mtc1    $at, $f8                   ## $f8 = 1600.00
/* 00C44 80A9BBE4 46040181 */  sub.s   $f6, $f0, $f4              
/* 00C48 80A9BBE8 3C0180AA */  lui     $at, %hi(D_80A9C1D8)       ## $at = 80AA0000
/* 00C4C 80A9BBEC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C50 80A9BBF0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C54 80A9BBF4 46083282 */  mul.s   $f10, $f6, $f8             
/* 00C58 80A9BBF8 4600540D */  trunc.w.s $f16, $f10                 
/* 00C5C 80A9BBFC 44188000 */  mfc1    $t8, $f16                  
/* 00C60 80A9BC00 00000000 */  nop
/* 00C64 80A9BC04 A438C1D8 */  sh      $t8, %lo(D_80A9C1D8)($at)  
/* 00C68 80A9BC08 3C0180AA */  lui     $at, %hi(D_80A9C1D4)       ## $at = 80AA0000
/* 00C6C 80A9BC0C A420C1D4 */  sh      $zero, %lo(D_80A9C1D4)($at) 
/* 00C70 80A9BC10 3C0180AA */  lui     $at, %hi(D_80A9C1DC)       ## $at = 80AA0000
/* 00C74 80A9BC14 03E00008 */  jr      $ra                        
/* 00C78 80A9BC18 A420C1DC */  sh      $zero, %lo(D_80A9C1DC)($at) 


