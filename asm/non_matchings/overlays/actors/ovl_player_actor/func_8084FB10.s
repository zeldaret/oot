glabel func_8084FB10
/* 1D900 8084FB10 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1D904 8084FB14 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1D908 8084FB18 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 1D90C 8084FB1C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 1D910 8084FB20 8082084F */  lb      $v0, 0x084F($a0)           ## 0000084F
/* 1D914 8084FB24 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 1D918 8084FB28 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 1D91C 8084FB2C 04400023 */  bltz    $v0, .L8084FBBC            
/* 1D920 8084FB30 28410006 */  slti    $at, $v0, 0x0006           
/* 1D924 8084FB34 10200003 */  beq     $at, $zero, .L8084FB44     
/* 1D928 8084FB38 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 1D92C 8084FB3C 244E0001 */  addiu   $t6, $v0, 0x0001           ## $t6 = 00000001
/* 1D930 8084FB40 A08E084F */  sb      $t6, 0x084F($a0)           ## 0000084F
.L8084FB44:
/* 1D934 8084FB44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1D938 8084FB48 0C20C965 */  jal     func_80832594              
/* 1D93C 8084FB4C 24060064 */  addiu   $a2, $zero, 0x0064         ## $a2 = 00000064
/* 1D940 8084FB50 1040000B */  beq     $v0, $zero, .L8084FB80     
/* 1D944 8084FB54 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 1D948 8084FB58 A20F084F */  sb      $t7, 0x084F($s0)           ## 0000084F
/* 1D94C 8084FB5C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 1D950 8084FB60 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 1D954 8084FB64 0C00A7EB */  jal     func_80029FAC              
/* 1D958 8084FB68 8E060050 */  lw      $a2, 0x0050($s0)           ## 00000050
/* 1D95C 8084FB6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1D960 8084FB70 0C00BDF7 */  jal     func_8002F7DC              
/* 1D964 8084FB74 24050875 */  addiu   $a1, $zero, 0x0875         ## $a1 = 00000875
/* 1D968 8084FB78 10000005 */  beq     $zero, $zero, .L8084FB90   
/* 1D96C 8084FB7C 8FA80024 */  lw      $t0, 0x0024($sp)           
.L8084FB80:
/* 1D970 8084FB80 8E180680 */  lw      $t8, 0x0680($s0)           ## 00000680
/* 1D974 8084FB84 37194000 */  ori     $t9, $t8, 0x4000           ## $t9 = 00004000
/* 1D978 8084FB88 AE190680 */  sw      $t9, 0x0680($s0)           ## 00000680
/* 1D97C 8084FB8C 8FA80024 */  lw      $t0, 0x0024($sp)           
.L8084FB90:
/* 1D980 8084FB90 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 1D984 8084FB94 01284821 */  addu    $t1, $t1, $t0              
/* 1D988 8084FB98 8D291DE4 */  lw      $t1, 0x1DE4($t1)           ## 00011DE4
/* 1D98C 8084FB9C 01002025 */  or      $a0, $t0, $zero            ## $a0 = 00000000
/* 1D990 8084FBA0 312A0003 */  andi    $t2, $t1, 0x0003           ## $t2 = 00000000
/* 1D994 8084FBA4 5540000F */  bnel    $t2, $zero, .L8084FBE4     
/* 1D998 8084FBA8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1D99C 8084FBAC 0C214C38 */  jal     func_808530E0              
/* 1D9A0 8084FBB0 2405FFFF */  addiu   $a1, $zero, 0xFFFF         ## $a1 = FFFFFFFF
/* 1D9A4 8084FBB4 1000000B */  beq     $zero, $zero, .L8084FBE4   
/* 1D9A8 8084FBB8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8084FBBC:
/* 1D9AC 8084FBBC 0C028EF0 */  jal     func_800A3BC0              
/* 1D9B0 8084FBC0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 1D9B4 8084FBC4 10400006 */  beq     $v0, $zero, .L8084FBE0     
/* 1D9B8 8084FBC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1D9BC 8084FBCC 0C20E7E4 */  jal     func_80839F90              
/* 1D9C0 8084FBD0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 1D9C4 8084FBD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1D9C8 8084FBD8 0C20DEBF */  jal     func_80837AFC              
/* 1D9CC 8084FBDC 2405FFEC */  addiu   $a1, $zero, 0xFFEC         ## $a1 = FFFFFFEC
.L8084FBE0:
/* 1D9D0 8084FBE0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8084FBE4:
/* 1D9D4 8084FBE4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 1D9D8 8084FBE8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 1D9DC 8084FBEC 03E00008 */  jr      $ra                        
/* 1D9E0 8084FBF0 00000000 */  nop


