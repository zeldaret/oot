glabel func_8092E830
/* 02260 8092E830 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02264 8092E834 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02268 8092E838 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0226C 8092E83C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02270 8092E840 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02274 8092E844 0C02927F */  jal     Animation_Update
              
/* 02278 8092E848 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0227C 8092E84C 3C048094 */  lui     $a0, %hi(D_80938CB0)       ## $a0 = 80940000
/* 02280 8092E850 24848CB0 */  addiu   $a0, $a0, %lo(D_80938CB0)  ## $a0 = 80938CB0
/* 02284 8092E854 3C054416 */  lui     $a1, 0x4416                ## $a1 = 44160000
/* 02288 8092E858 0C01DE80 */  jal     Math_ApproxF
              
/* 0228C 8092E85C 3C0641A0 */  lui     $a2, 0x41A0                ## $a2 = 41A00000
/* 02290 8092E860 3C048094 */  lui     $a0, %hi(D_80938CBC)       ## $a0 = 80940000
/* 02294 8092E864 24848CBC */  addiu   $a0, $a0, %lo(D_80938CBC)  ## $a0 = 80938CBC
/* 02298 8092E868 3C054416 */  lui     $a1, 0x4416                ## $a1 = 44160000
/* 0229C 8092E86C 0C01DE80 */  jal     Math_ApproxF
              
/* 022A0 8092E870 3C0641A0 */  lui     $a2, 0x41A0                ## $a2 = 41A00000
/* 022A4 8092E874 3C048094 */  lui     $a0, %hi(D_80938CA8)       ## $a0 = 80940000
/* 022A8 8092E878 24848CA8 */  addiu   $a0, $a0, %lo(D_80938CA8)  ## $a0 = 80938CA8
/* 022AC 8092E87C 3C054348 */  lui     $a1, 0x4348                ## $a1 = 43480000
/* 022B0 8092E880 0C01DE80 */  jal     Math_ApproxF
              
/* 022B4 8092E884 3C0641A0 */  lui     $a2, 0x41A0                ## $a2 = 41A00000
/* 022B8 8092E888 3C048094 */  lui     $a0, %hi(D_80938CB4)       ## $a0 = 80940000
/* 022BC 8092E88C 24848CB4 */  addiu   $a0, $a0, %lo(D_80938CB4)  ## $a0 = 80938CB4
/* 022C0 8092E890 3C05C348 */  lui     $a1, 0xC348                ## $a1 = C3480000
/* 022C4 8092E894 0C01DE80 */  jal     Math_ApproxF
              
/* 022C8 8092E898 3C0641A0 */  lui     $a2, 0x41A0                ## $a2 = 41A00000
/* 022CC 8092E89C 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 022D0 8092E8A0 24012000 */  addiu   $at, $zero, 0x2000         ## $at = 00002000
/* 022D4 8092E8A4 31CF2000 */  andi    $t7, $t6, 0x2000           ## $t7 = 00000000
/* 022D8 8092E8A8 55E1000E */  bnel    $t7, $at, .L8092E8E4       
/* 022DC 8092E8AC 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
/* 022E0 8092E8B0 86180198 */  lh      $t8, 0x0198($s0)           ## 00000198
/* 022E4 8092E8B4 24080032 */  addiu   $t0, $zero, 0x0032         ## $t0 = 00000032
/* 022E8 8092E8B8 27190002 */  addiu   $t9, $t8, 0x0002           ## $t9 = 00000002
/* 022EC 8092E8BC A6190198 */  sh      $t9, 0x0198($s0)           ## 00000198
/* 022F0 8092E8C0 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
/* 022F4 8092E8C4 28410033 */  slti    $at, $v0, 0x0033           
/* 022F8 8092E8C8 14200003 */  bne     $at, $zero, .L8092E8D8     
/* 022FC 8092E8CC 00000000 */  nop
/* 02300 8092E8D0 10000012 */  beq     $zero, $zero, .L8092E91C   
/* 02304 8092E8D4 A6080198 */  sh      $t0, 0x0198($s0)           ## 00000198
.L8092E8D8:
/* 02308 8092E8D8 10000010 */  beq     $zero, $zero, .L8092E91C   
/* 0230C 8092E8DC A6020198 */  sh      $v0, 0x0198($s0)           ## 00000198
/* 02310 8092E8E0 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
.L8092E8E4:
/* 02314 8092E8E4 3C048094 */  lui     $a0, %hi(D_80938C98)       ## $a0 = 80940000
/* 02318 8092E8E8 10400003 */  beq     $v0, $zero, .L8092E8F8     
/* 0231C 8092E8EC 2449FFFF */  addiu   $t1, $v0, 0xFFFF           ## $t1 = FFFFFFFF
/* 02320 8092E8F0 A6090198 */  sh      $t1, 0x0198($s0)           ## 00000198
/* 02324 8092E8F4 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
.L8092E8F8:
/* 02328 8092E8F8 54400009 */  bnel    $v0, $zero, .L8092E920     
/* 0232C 8092E8FC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02330 8092E900 0C24CC8F */  jal     func_8093323C              
/* 02334 8092E904 8C848C98 */  lw      $a0, %lo(D_80938C98)($a0)  
/* 02338 8092E908 3C048094 */  lui     $a0, %hi(D_80938C9C)       ## $a0 = 80940000
/* 0233C 8092E90C 0C24CC8F */  jal     func_8093323C              
/* 02340 8092E910 8C848C9C */  lw      $a0, %lo(D_80938C9C)($a0)  
/* 02344 8092E914 0C24BA94 */  jal     func_8092EA50              
/* 02348 8092E918 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8092E91C:
/* 0234C 8092E91C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8092E920:
/* 02350 8092E920 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02354 8092E924 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02358 8092E928 03E00008 */  jr      $ra                        
/* 0235C 8092E92C 00000000 */  nop
