.rdata
glabel D_80A0B460
    .asciz "\x1b[32m☆☆☆☆☆ そ、そんなばかな！エラー！！！！！ ☆☆☆☆☆ \n\x1b[m"
    .balign 4

glabel D_80A0B4A4
    .asciz "\x1b[32m☆☆☆☆☆ バカめ！ ☆☆☆☆☆ \n\x1b[m"
    .balign 4

.text
glabel func_80A0AF24
/* 00B14 80A0AF24 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00B18 80A0AF28 3C0F80A1 */  lui     $t7, %hi(D_80A0B3A0)       ## $t7 = 80A10000
/* 00B1C 80A0AF2C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00B20 80A0AF30 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00B24 80A0AF34 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 00B28 80A0AF38 25EFB3A0 */  addiu   $t7, $t7, %lo(D_80A0B3A0)  ## $t7 = 80A0B3A0
/* 00B2C 80A0AF3C 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A0B3A0
/* 00B30 80A0AF40 27AE0040 */  addiu   $t6, $sp, 0x0040           ## $t6 = FFFFFFF0
/* 00B34 80A0AF44 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80A0B3A4
/* 00B38 80A0AF48 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF0
/* 00B3C 80A0AF4C 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80A0B3A8
/* 00B40 80A0AF50 3C0980A1 */  lui     $t1, %hi(D_80A0B3AC)       ## $t1 = 80A10000
/* 00B44 80A0AF54 2529B3AC */  addiu   $t1, $t1, %lo(D_80A0B3AC)  ## $t1 = 80A0B3AC
/* 00B48 80A0AF58 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF4
/* 00B4C 80A0AF5C ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF8
/* 00B50 80A0AF60 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80A0B3AC
/* 00B54 80A0AF64 27A80034 */  addiu   $t0, $sp, 0x0034           ## $t0 = FFFFFFE4
/* 00B58 80A0AF68 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80A0B3B0
/* 00B5C 80A0AF6C AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE4
/* 00B60 80A0AF70 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80A0B3B4
/* 00B64 80A0AF74 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFE8
/* 00B68 80A0AF78 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00B6C 80A0AF7C AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFEC
/* 00B70 80A0AF80 848C0152 */  lh      $t4, 0x0152($a0)           ## 00000152
/* 00B74 80A0AF84 44810000 */  mtc1    $at, $f0                   ## $f0 = 50.00
/* 00B78 80A0AF88 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00B7C 80A0AF8C 15810004 */  bne     $t4, $at, .L80A0AFA0       
/* 00B80 80A0AF90 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B84 80A0AF94 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00B88 80A0AF98 44810000 */  mtc1    $at, $f0                   ## $f0 = 30.00
/* 00B8C 80A0AF9C 00000000 */  nop
.L80A0AFA0:
/* 00B90 80A0AFA0 46000182 */  mul.s   $f6, $f0, $f0              
/* 00B94 80A0AFA4 C604008C */  lwc1    $f4, 0x008C($s0)           ## 0000008C
/* 00B98 80A0AFA8 4606203C */  c.lt.s  $f4, $f6                   
/* 00B9C 80A0AFAC 00000000 */  nop
/* 00BA0 80A0AFB0 4502002B */  bc1fl   .L80A0B060                 
/* 00BA4 80A0AFB4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00BA8 80A0AFB8 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
/* 00BAC 80A0AFBC 3C0480A1 */  lui     $a0, %hi(D_80A0B460)       ## $a0 = 80A10000
/* 00BB0 80A0AFC0 10400007 */  beq     $v0, $zero, .L80A0AFE0     
/* 00BB4 80A0AFC4 00000000 */  nop
/* 00BB8 80A0AFC8 8C4D0130 */  lw      $t5, 0x0130($v0)           ## 00000130
/* 00BBC 80A0AFCC 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00BC0 80A0AFD0 11A00005 */  beq     $t5, $zero, .L80A0AFE8     
/* 00BC4 80A0AFD4 00000000 */  nop
/* 00BC8 80A0AFD8 10000003 */  beq     $zero, $zero, .L80A0AFE8   
/* 00BCC 80A0AFDC A44E0266 */  sh      $t6, 0x0266($v0)           ## 00000266
.L80A0AFE0:
/* 00BD0 80A0AFE0 0C00084C */  jal     osSyncPrintf
              
/* 00BD4 80A0AFE4 2484B460 */  addiu   $a0, $a0, %lo(D_80A0B460)  ## $a0 = 80A0B460
.L80A0AFE8:
/* 00BD8 80A0AFE8 3C0480A1 */  lui     $a0, %hi(D_80A0B4A4)       ## $a0 = 80A10000
/* 00BDC 80A0AFEC 0C00084C */  jal     osSyncPrintf
              
/* 00BE0 80A0AFF0 2484B4A4 */  addiu   $a0, $a0, %lo(D_80A0B4A4)  ## $a0 = 80A0B4A4
/* 00BE4 80A0AFF4 860F0152 */  lh      $t7, 0x0152($s0)           ## 00000152
/* 00BE8 80A0AFF8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00BEC 80A0AFFC 24020064 */  addiu   $v0, $zero, 0x0064         ## $v0 = 00000064
/* 00BF0 80A0B000 15E10003 */  bne     $t7, $at, .L80A0B010       
/* 00BF4 80A0B004 2403001E */  addiu   $v1, $zero, 0x001E         ## $v1 = 0000001E
/* 00BF8 80A0B008 24020014 */  addiu   $v0, $zero, 0x0014         ## $v0 = 00000014
/* 00BFC 80A0B00C 24030006 */  addiu   $v1, $zero, 0x0006         ## $v1 = 00000006
.L80A0B010:
/* 00C00 80A0B010 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00C04 80A0B014 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00C08 80A0B018 27A60034 */  addiu   $a2, $sp, 0x0034           ## $a2 = FFFFFFE4
/* 00C0C 80A0B01C 27A70040 */  addiu   $a3, $sp, 0x0040           ## $a3 = FFFFFFF0
/* 00C10 80A0B020 AFA20010 */  sw      $v0, 0x0010($sp)           
/* 00C14 80A0B024 0C00A3A1 */  jal     func_80028E84              
/* 00C18 80A0B028 AFA30014 */  sw      $v1, 0x0014($sp)           
/* 00C1C 80A0B02C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00C20 80A0B030 8607008A */  lh      $a3, 0x008A($s0)           ## 0000008A
/* 00C24 80A0B034 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00C28 80A0B038 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00C2C 80A0B03C 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 00C30 80A0B040 0C00BDC7 */  jal     func_8002F71C              
/* 00C34 80A0B044 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 00C38 80A0B048 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C3C 80A0B04C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00C40 80A0B050 2405180E */  addiu   $a1, $zero, 0x180E         ## $a1 = 0000180E
/* 00C44 80A0B054 0C00B55C */  jal     Actor_Kill
              
/* 00C48 80A0B058 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C4C 80A0B05C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A0B060:
/* 00C50 80A0B060 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00C54 80A0B064 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00C58 80A0B068 03E00008 */  jr      $ra                        
/* 00C5C 80A0B06C 00000000 */  nop
