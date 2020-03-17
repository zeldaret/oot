glabel func_80A541FC
/* 0135C 80A541FC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01360 80A54200 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01364 80A54204 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01368 80A54208 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0136C 80A5420C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01370 80A54210 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01374 80A54214 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01378 80A54218 0C042F6F */  jal     func_8010BDBC              
/* 0137C 80A5421C 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 01380 80A54220 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01384 80A54224 54410012 */  bnel    $v0, $at, .L80A54270       
/* 01388 80A54228 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0138C 80A5422C 0C041AF2 */  jal     func_80106BC8              
/* 01390 80A54230 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01394 80A54234 1040000D */  beq     $v0, $zero, .L80A5426C     
/* 01398 80A54238 240E2021 */  addiu   $t6, $zero, 0x2021         ## $t6 = 00002021
/* 0139C 80A5423C 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 013A0 80A54240 2404000F */  addiu   $a0, $zero, 0x000F         ## $a0 = 0000000F
/* 013A4 80A54244 0C021CC3 */  jal     Rupees_ChangeBy              
/* 013A8 80A54248 A5EE010E */  sh      $t6, 0x010E($t7)           ## 0000010E
/* 013AC 80A5424C 8FB80018 */  lw      $t8, 0x0018($sp)           
/* 013B0 80A54250 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 013B4 80A54254 0C042DC8 */  jal     func_8010B720              
/* 013B8 80A54258 9705010E */  lhu     $a1, 0x010E($t8)           ## 0000010E
/* 013BC 80A5425C 8FA80018 */  lw      $t0, 0x0018($sp)           
/* 013C0 80A54260 3C1980A5 */  lui     $t9, %hi(func_80A5427C)    ## $t9 = 80A50000
/* 013C4 80A54264 2739427C */  addiu   $t9, $t9, %lo(func_80A5427C) ## $t9 = 80A5427C
/* 013C8 80A54268 AD19025C */  sw      $t9, 0x025C($t0)           ## 0000025C
.L80A5426C:
/* 013CC 80A5426C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A54270:
/* 013D0 80A54270 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 013D4 80A54274 03E00008 */  jr      $ra                        
/* 013D8 80A54278 00000000 */  nop


