glabel func_80A3A8D0
/* 00180 80A3A8D0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00184 80A3A8D4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00188 80A3A8D8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0018C 80A3A8DC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00190 80A3A8E0 8486001C */  lh      $a2, 0x001C($a0)           ## 0000001C
/* 00194 80A3A8E4 3C0F80A4 */  lui     $t7, %hi(D_80A3C590)       ## $t7 = 80A40000
/* 00198 80A3A8E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0019C 80A3A8EC 25EFC590 */  addiu   $t7, $t7, %lo(D_80A3C590)  ## $t7 = 80A3C590
/* 001A0 80A3A8F0 00067080 */  sll     $t6, $a2,  2               
/* 001A4 80A3A8F4 01CF1021 */  addu    $v0, $t6, $t7              
/* 001A8 80A3A8F8 3C0480A4 */  lui     $a0, %hi(D_80A3CFF0)       ## $a0 = 80A40000
/* 001AC 80A3A8FC 2484CFF0 */  addiu   $a0, $a0, %lo(D_80A3CFF0)  ## $a0 = 80A3CFF0
/* 001B0 80A3A900 8C450000 */  lw      $a1, 0x0000($v0)           ## 00000000
/* 001B4 80A3A904 AFA20020 */  sw      $v0, 0x0020($sp)           
/* 001B8 80A3A908 0C00084C */  jal     osSyncPrintf
              
/* 001BC 80A3A90C A7A60026 */  sh      $a2, 0x0026($sp)           
/* 001C0 80A3A910 87A60026 */  lh      $a2, 0x0026($sp)           
/* 001C4 80A3A914 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 001C8 80A3A918 3C0580A4 */  lui     $a1, %hi(D_80A3C674)       ## $a1 = 80A40000
/* 001CC 80A3A91C 28C10032 */  slti    $at, $a2, 0x0032           
/* 001D0 80A3A920 14200017 */  bne     $at, $zero, .L80A3A980     
/* 001D4 80A3A924 0006C140 */  sll     $t8, $a2,  5               
/* 001D8 80A3A928 04C30016 */  bgezl   $a2, .L80A3A984            
/* 001DC 80A3A92C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 001E0 80A3A930 0C00B55C */  jal     Actor_Kill
              
/* 001E4 80A3A934 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001E8 80A3A938 3C0480A4 */  lui     $a0, %hi(D_80A3D004)       ## $a0 = 80A40000
/* 001EC 80A3A93C 0C00084C */  jal     osSyncPrintf
              
/* 001F0 80A3A940 2484D004 */  addiu   $a0, $a0, %lo(D_80A3D004)  ## $a0 = 80A3D004
/* 001F4 80A3A944 3C0480A4 */  lui     $a0, %hi(D_80A3D010)       ## $a0 = 80A40000
/* 001F8 80A3A948 2484D010 */  addiu   $a0, $a0, %lo(D_80A3D010)  ## $a0 = 80A3D010
/* 001FC 80A3A94C 0C00084C */  jal     osSyncPrintf
              
/* 00200 80A3A950 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00204 80A3A954 3C0480A4 */  lui     $a0, %hi(D_80A3D034)       ## $a0 = 80A40000
/* 00208 80A3A958 0C00084C */  jal     osSyncPrintf
              
/* 0020C 80A3A95C 2484D034 */  addiu   $a0, $a0, %lo(D_80A3D034)  ## $a0 = 80A3D034
/* 00210 80A3A960 3C0480A4 */  lui     $a0, %hi(D_80A3D038)       ## $a0 = 80A40000
/* 00214 80A3A964 3C0580A4 */  lui     $a1, %hi(D_80A3D03C)       ## $a1 = 80A40000
/* 00218 80A3A968 24A5D03C */  addiu   $a1, $a1, %lo(D_80A3D03C)  ## $a1 = 80A3D03C
/* 0021C 80A3A96C 2484D038 */  addiu   $a0, $a0, %lo(D_80A3D038)  ## $a0 = 80A3D038
/* 00220 80A3A970 0C0007FC */  jal     __assert
              
/* 00224 80A3A974 2406058D */  addiu   $a2, $zero, 0x058D         ## $a2 = 0000058D
/* 00228 80A3A978 10000027 */  beq     $zero, $zero, .L80A3AA18   
/* 0022C 80A3A97C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A3A980:
/* 00230 80A3A980 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80A3A984:
/* 00234 80A3A984 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00238 80A3A988 00B82821 */  addu    $a1, $a1, $t8              
/* 0023C 80A3A98C 84A5C674 */  lh      $a1, %lo(D_80A3C674)($a1)  
/* 00240 80A3A990 00812021 */  addu    $a0, $a0, $at              
/* 00244 80A3A994 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00248 80A3A998 A7A60026 */  sh      $a2, 0x0026($sp)           
/* 0024C 80A3A99C 87A60026 */  lh      $a2, 0x0026($sp)           
/* 00250 80A3A9A0 A2020194 */  sb      $v0, 0x0194($s0)           ## 00000194
/* 00254 80A3A9A4 82190194 */  lb      $t9, 0x0194($s0)           ## 00000194
/* 00258 80A3A9A8 3C0980A4 */  lui     $t1, %hi(func_80A3BFE4)    ## $t1 = 80A40000
/* 0025C 80A3A9AC 2529BFE4 */  addiu   $t1, $t1, %lo(func_80A3BFE4) ## $t1 = 80A3BFE4
/* 00260 80A3A9B0 07230017 */  bgezl   $t9, .L80A3AA10            
/* 00264 80A3A9B4 A606001C */  sh      $a2, 0x001C($s0)           ## 0000001C
/* 00268 80A3A9B8 0C00B55C */  jal     Actor_Kill
              
/* 0026C 80A3A9BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00270 80A3A9C0 3C0480A4 */  lui     $a0, %hi(D_80A3D04C)       ## $a0 = 80A40000
/* 00274 80A3A9C4 0C00084C */  jal     osSyncPrintf
              
/* 00278 80A3A9C8 2484D04C */  addiu   $a0, $a0, %lo(D_80A3D04C)  ## $a0 = 80A3D04C
/* 0027C 80A3A9CC 8FA80020 */  lw      $t0, 0x0020($sp)           
/* 00280 80A3A9D0 3C0480A4 */  lui     $a0, %hi(D_80A3D058)       ## $a0 = 80A40000
/* 00284 80A3A9D4 2484D058 */  addiu   $a0, $a0, %lo(D_80A3D058)  ## $a0 = 80A3D058
/* 00288 80A3A9D8 0C00084C */  jal     osSyncPrintf
              
/* 0028C 80A3A9DC 8D050000 */  lw      $a1, 0x0000($t0)           ## 00000000
/* 00290 80A3A9E0 3C0480A4 */  lui     $a0, %hi(D_80A3D070)       ## $a0 = 80A40000
/* 00294 80A3A9E4 0C00084C */  jal     osSyncPrintf
              
/* 00298 80A3A9E8 2484D070 */  addiu   $a0, $a0, %lo(D_80A3D070)  ## $a0 = 80A3D070
/* 0029C 80A3A9EC 3C0480A4 */  lui     $a0, %hi(D_80A3D074)       ## $a0 = 80A40000
/* 002A0 80A3A9F0 3C0580A4 */  lui     $a1, %hi(D_80A3D078)       ## $a1 = 80A40000
/* 002A4 80A3A9F4 24A5D078 */  addiu   $a1, $a1, %lo(D_80A3D078)  ## $a1 = 80A3D078
/* 002A8 80A3A9F8 2484D074 */  addiu   $a0, $a0, %lo(D_80A3D074)  ## $a0 = 80A3D074
/* 002AC 80A3A9FC 0C0007FC */  jal     __assert
              
/* 002B0 80A3AA00 2406059A */  addiu   $a2, $zero, 0x059A         ## $a2 = 0000059A
/* 002B4 80A3AA04 10000004 */  beq     $zero, $zero, .L80A3AA18   
/* 002B8 80A3AA08 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 002BC 80A3AA0C A606001C */  sh      $a2, 0x001C($s0)           ## 0000001C
.L80A3AA10:
/* 002C0 80A3AA10 AE090198 */  sw      $t1, 0x0198($s0)           ## 00000198
/* 002C4 80A3AA14 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A3AA18:
/* 002C8 80A3AA18 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 002CC 80A3AA1C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 002D0 80A3AA20 03E00008 */  jr      $ra                        
/* 002D4 80A3AA24 00000000 */  nop


