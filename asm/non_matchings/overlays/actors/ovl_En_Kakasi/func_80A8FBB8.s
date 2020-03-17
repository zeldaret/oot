glabel func_80A8FBB8
/* 00A48 80A8FBB8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A4C 80A8FBBC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A50 80A8FBC0 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00A54 80A8FBC4 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00A58 80A8FBC8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00A5C 80A8FBCC 0C2A3CA3 */  jal     func_80A8F28C              
/* 00A60 80A8FBD0 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00A64 80A8FBD4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00A68 80A8FBD8 26240150 */  addiu   $a0, $s1, 0x0150           ## $a0 = 00000150
/* 00A6C 80A8FBDC 0C042F6F */  jal     func_8010BDBC              
/* 00A70 80A8FBE0 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 00A74 80A8FBE4 862E0196 */  lh      $t6, 0x0196($s1)           ## 00000196
/* 00A78 80A8FBE8 55C20014 */  bnel    $t6, $v0, .L80A8FC3C       
/* 00A7C 80A8FBEC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A80 80A8FBF0 0C041AF2 */  jal     func_80106BC8              
/* 00A84 80A8FBF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A88 80A8FBF8 50400010 */  beql    $v0, $zero, .L80A8FC3C     
/* 00A8C 80A8FBFC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A90 80A8FC00 862F0208 */  lh      $t7, 0x0208($s1)           ## 00000208
/* 00A94 80A8FC04 000FC080 */  sll     $t8, $t7,  2               
/* 00A98 80A8FC08 0218C821 */  addu    $t9, $s0, $t8              
/* 00A9C 80A8FC0C 0C016C69 */  jal     func_8005B1A4              
/* 00AA0 80A8FC10 8F240790 */  lw      $a0, 0x0790($t9)           ## 00000790
/* 00AA4 80A8FC14 0C041B33 */  jal     func_80106CCC              
/* 00AA8 80A8FC18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AAC 80A8FC1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AB0 80A8FC20 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00AB4 80A8FC24 0C00B7D5 */  jal     func_8002DF54              
/* 00AB8 80A8FC28 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00ABC 80A8FC2C 3C0880A9 */  lui     $t0, %hi(func_80A8F660)    ## $t0 = 80A90000
/* 00AC0 80A8FC30 2508F660 */  addiu   $t0, $t0, %lo(func_80A8F660) ## $t0 = 80A8F660
/* 00AC4 80A8FC34 AE28014C */  sw      $t0, 0x014C($s1)           ## 0000014C
/* 00AC8 80A8FC38 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A8FC3C:
/* 00ACC 80A8FC3C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00AD0 80A8FC40 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00AD4 80A8FC44 03E00008 */  jr      $ra                        
/* 00AD8 80A8FC48 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


