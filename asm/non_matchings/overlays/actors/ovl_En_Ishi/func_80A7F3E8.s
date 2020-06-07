glabel func_80A7F3E8
/* 00F88 80A7F3E8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00F8C 80A7F3EC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00F90 80A7F3F0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F94 80A7F3F4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00F98 80A7F3F8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00F9C 80A7F3FC 84840032 */  lh      $a0, 0x0032($a0)           ## 00000032
/* 00FA0 80A7F400 C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 00FA4 80A7F404 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 00FA8 80A7F408 46040182 */  mul.s   $f6, $f0, $f4              
/* 00FAC 80A7F40C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00FB0 80A7F410 E606005C */  swc1    $f6, 0x005C($s0)           ## 0000005C
/* 00FB4 80A7F414 C6080068 */  lwc1    $f8, 0x0068($s0)           ## 00000068
/* 00FB8 80A7F418 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00FBC 80A7F41C 46080282 */  mul.s   $f10, $f0, $f8             
/* 00FC0 80A7F420 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00FC4 80A7F424 15E00019 */  bne     $t7, $zero, .L80A7F48C     
/* 00FC8 80A7F428 E60A0064 */  swc1    $f10, 0x0064($s0)          ## 00000064
/* 00FCC 80A7F42C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00FD0 80A7F430 00000000 */  nop
/* 00FD4 80A7F434 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00FD8 80A7F438 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 00FDC 80A7F43C 3C01467A */  lui     $at, 0x467A                ## $at = 467A0000
/* 00FE0 80A7F440 44812000 */  mtc1    $at, $f4                   ## $f4 = 16000.00
/* 00FE4 80A7F444 46100481 */  sub.s   $f18, $f0, $f16            
/* 00FE8 80A7F448 3C0180A8 */  lui     $at, %hi(D_80A7F9F0)       ## $at = 80A80000
/* 00FEC 80A7F44C 46049182 */  mul.s   $f6, $f18, $f4             
/* 00FF0 80A7F450 4600320D */  trunc.w.s $f8, $f6                   
/* 00FF4 80A7F454 44194000 */  mfc1    $t9, $f8                   
/* 00FF8 80A7F458 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00FFC 80A7F45C A439F9F0 */  sh      $t9, %lo(D_80A7F9F0)($at)  
/* 01000 80A7F460 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01004 80A7F464 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 01008 80A7F468 3C014516 */  lui     $at, 0x4516                ## $at = 45160000
/* 0100C 80A7F46C 44819000 */  mtc1    $at, $f18                  ## $f18 = 2400.00
/* 01010 80A7F470 460A0401 */  sub.s   $f16, $f0, $f10            
/* 01014 80A7F474 3C0180A8 */  lui     $at, %hi(D_80A7F9F4)       ## $at = 80A80000
/* 01018 80A7F478 46128102 */  mul.s   $f4, $f16, $f18            
/* 0101C 80A7F47C 4600218D */  trunc.w.s $f6, $f4                   
/* 01020 80A7F480 44093000 */  mfc1    $t1, $f6                   
/* 01024 80A7F484 10000019 */  beq     $zero, $zero, .L80A7F4EC   
/* 01028 80A7F488 A429F9F4 */  sh      $t1, %lo(D_80A7F9F4)($at)  
.L80A7F48C:
/* 0102C 80A7F48C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01030 80A7F490 00000000 */  nop
/* 01034 80A7F494 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01038 80A7F498 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 0103C 80A7F49C 3C0145FA */  lui     $at, 0x45FA                ## $at = 45FA0000
/* 01040 80A7F4A0 44818000 */  mtc1    $at, $f16                  ## $f16 = 8000.00
/* 01044 80A7F4A4 46080281 */  sub.s   $f10, $f0, $f8             
/* 01048 80A7F4A8 3C0180A8 */  lui     $at, %hi(D_80A7F9F0)       ## $at = 80A80000
/* 0104C 80A7F4AC 46105482 */  mul.s   $f18, $f10, $f16           
/* 01050 80A7F4B0 4600910D */  trunc.w.s $f4, $f18                  
/* 01054 80A7F4B4 440B2000 */  mfc1    $t3, $f4                   
/* 01058 80A7F4B8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0105C 80A7F4BC A42BF9F0 */  sh      $t3, %lo(D_80A7F9F0)($at)  
/* 01060 80A7F4C0 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01064 80A7F4C4 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 01068 80A7F4C8 3C0144C8 */  lui     $at, 0x44C8                ## $at = 44C80000
/* 0106C 80A7F4CC 44815000 */  mtc1    $at, $f10                  ## $f10 = 1600.00
/* 01070 80A7F4D0 46060201 */  sub.s   $f8, $f0, $f6              
/* 01074 80A7F4D4 3C0180A8 */  lui     $at, %hi(D_80A7F9F4)       ## $at = 80A80000
/* 01078 80A7F4D8 460A4402 */  mul.s   $f16, $f8, $f10            
/* 0107C 80A7F4DC 4600848D */  trunc.w.s $f18, $f16                 
/* 01080 80A7F4E0 440D9000 */  mfc1    $t5, $f18                  
/* 01084 80A7F4E4 00000000 */  nop
/* 01088 80A7F4E8 A42DF9F4 */  sh      $t5, %lo(D_80A7F9F4)($at)  
.L80A7F4EC:
/* 0108C 80A7F4EC 3C0F80A8 */  lui     $t7, %hi(func_80A7F514)    ## $t7 = 80A80000
/* 01090 80A7F4F0 240E00F0 */  addiu   $t6, $zero, 0x00F0         ## $t6 = 000000F0
/* 01094 80A7F4F4 25EFF514 */  addiu   $t7, $t7, %lo(func_80A7F514) ## $t7 = 80A7F514
/* 01098 80A7F4F8 A20E00AE */  sb      $t6, 0x00AE($s0)           ## 000000AE
/* 0109C 80A7F4FC AE0F014C */  sw      $t7, 0x014C($s0)           ## 0000014C
/* 010A0 80A7F500 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 010A4 80A7F504 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 010A8 80A7F508 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 010AC 80A7F50C 03E00008 */  jr      $ra                        
/* 010B0 80A7F510 00000000 */  nop
