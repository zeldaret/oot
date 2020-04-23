glabel EnBubble_Init
/* 00C8C 809CC88C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00C90 809CC890 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00C94 809CC894 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C98 809CC898 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00C9C 809CC89C AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00CA0 809CC8A0 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00CA4 809CC8A4 3C073E4C */  lui     $a3, 0x3E4C                ## $a3 = 3E4C0000
/* 00CA8 809CC8A8 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3E4CCCCD
/* 00CAC 809CC8AC 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 00CB0 809CC8B0 3C054180 */  lui     $a1, 0x4180                ## $a1 = 41800000
/* 00CB4 809CC8B4 0C00AC78 */  jal     ActorShape_Init
              
/* 00CB8 809CC8B8 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 00CBC 809CC8BC 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 00CC0 809CC8C0 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 00CC4 809CC8C4 0C016EFE */  jal     func_8005BBF8              
/* 00CC8 809CC8C8 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00CCC 809CC8CC 3C07809D */  lui     $a3, %hi(D_809CCE78)       ## $a3 = 809D0000
/* 00CD0 809CC8D0 260E0170 */  addiu   $t6, $s0, 0x0170           ## $t6 = 00000170
/* 00CD4 809CC8D4 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00CD8 809CC8D8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00CDC 809CC8DC 24E7CE78 */  addiu   $a3, $a3, %lo(D_809CCE78)  ## $a3 = 809CCE78
/* 00CE0 809CC8E0 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00CE4 809CC8E4 0C017014 */  jal     func_8005C050              
/* 00CE8 809CC8E8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00CEC 809CC8EC 0C016C80 */  jal     CollisionBtlTbl_Get
              
/* 00CF0 809CC8F0 24040009 */  addiu   $a0, $zero, 0x0009         ## $a0 = 00000009
/* 00CF4 809CC8F4 3C06809D */  lui     $a2, %hi(D_809CCE88)       ## $a2 = 809D0000
/* 00CF8 809CC8F8 24C6CE88 */  addiu   $a2, $a2, %lo(D_809CCE88)  ## $a2 = 809CCE88
/* 00CFC 809CC8FC 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00D00 809CC900 0C0187BF */  jal     func_80061EFC              
/* 00D04 809CC904 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 00D08 809CC908 240F0016 */  addiu   $t7, $zero, 0x0016         ## $t7 = 00000016
/* 00D0C 809CC90C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00D10 809CC910 A20F0117 */  sb      $t7, 0x0117($s0)           ## 00000117
/* 00D14 809CC914 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00D18 809CC918 E600022C */  swc1    $f0, 0x022C($s0)           ## 0000022C
/* 00D1C 809CC91C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00D20 809CC920 E6000230 */  swc1    $f0, 0x0230($s0)           ## 00000230
/* 00D24 809CC924 E6000234 */  swc1    $f0, 0x0234($s0)           ## 00000234
/* 00D28 809CC928 0C27303F */  jal     func_809CC0FC              
/* 00D2C 809CC92C 2604022C */  addiu   $a0, $s0, 0x022C           ## $a0 = 0000022C
/* 00D30 809CC930 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00D34 809CC934 44810000 */  mtc1    $at, $f0                   ## $f0 = 3.00
/* 00D38 809CC938 C604022C */  lwc1    $f4, 0x022C($s0)           ## 0000022C
/* 00D3C 809CC93C C6080230 */  lwc1    $f8, 0x0230($s0)           ## 00000230
/* 00D40 809CC940 C6100234 */  lwc1    $f16, 0x0234($s0)          ## 00000234
/* 00D44 809CC944 46002182 */  mul.s   $f6, $f4, $f0              
/* 00D48 809CC948 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D4C 809CC94C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00D50 809CC950 46004282 */  mul.s   $f10, $f8, $f0             
/* 00D54 809CC954 00000000 */  nop
/* 00D58 809CC958 46008482 */  mul.s   $f18, $f16, $f0            
/* 00D5C 809CC95C E6060238 */  swc1    $f6, 0x0238($s0)           ## 00000238
/* 00D60 809CC960 E60A023C */  swc1    $f10, 0x023C($s0)          ## 0000023C
/* 00D64 809CC964 0C272F00 */  jal     func_809CBC00              
/* 00D68 809CC968 E6120240 */  swc1    $f18, 0x0240($s0)          ## 00000240
/* 00D6C 809CC96C 3C18809D */  lui     $t8, %hi(func_809CC9B4)    ## $t8 = 809D0000
/* 00D70 809CC970 2718C9B4 */  addiu   $t8, $t8, %lo(func_809CC9B4) ## $t8 = 809CC9B4
/* 00D74 809CC974 AE18014C */  sw      $t8, 0x014C($s0)           ## 0000014C
/* 00D78 809CC978 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00D7C 809CC97C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00D80 809CC980 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00D84 809CC984 03E00008 */  jr      $ra                        
/* 00D88 809CC988 00000000 */  nop
