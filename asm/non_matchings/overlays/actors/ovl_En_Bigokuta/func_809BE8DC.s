glabel func_809BE8DC
/* 01C7C 809BE8DC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01C80 809BE8E0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01C84 809BE8E4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01C88 809BE8E8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01C8C 809BE8EC 9083029D */  lbu     $v1, 0x029D($a0)           ## 0000029D
/* 01C90 809BE8F0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01C94 809BE8F4 306E0002 */  andi    $t6, $v1, 0x0002           ## $t6 = 00000000
/* 01C98 809BE8F8 51C00030 */  beql    $t6, $zero, .L809BE9BC     
/* 01C9C 809BE8FC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01CA0 809BE900 908200B1 */  lbu     $v0, 0x00B1($a0)           ## 000000B1
/* 01CA4 809BE904 306FFFFD */  andi    $t7, $v1, 0xFFFD           ## $t7 = 00000000
/* 01CA8 809BE908 A08F029D */  sb      $t7, 0x029D($a0)           ## 0000029D
/* 01CAC 809BE90C 14400004 */  bne     $v0, $zero, .L809BE920     
/* 01CB0 809BE910 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01CB4 809BE914 909800B0 */  lbu     $t8, 0x00B0($a0)           ## 000000B0
/* 01CB8 809BE918 53000028 */  beql    $t8, $zero, .L809BE9BC     
/* 01CBC 809BE91C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809BE920:
/* 01CC0 809BE920 5441000B */  bnel    $v0, $at, .L809BE950       
/* 01CC4 809BE924 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 01CC8 809BE928 8E080190 */  lw      $t0, 0x0190($s0)           ## 00000190
/* 01CCC 809BE92C 3C19809C */  lui     $t9, %hi(func_809BE058)    ## $t9 = 809C0000
/* 01CD0 809BE930 2739E058 */  addiu   $t9, $t9, %lo(func_809BE058) ## $t9 = 809BE058
/* 01CD4 809BE934 53280021 */  beql    $t9, $t0, .L809BE9BC       
/* 01CD8 809BE938 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01CDC 809BE93C 0C26F549 */  jal     func_809BD524              
/* 01CE0 809BE940 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CE4 809BE944 1000001D */  beq     $zero, $zero, .L809BE9BC   
/* 01CE8 809BE948 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01CEC 809BE94C 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
.L809BE950:
/* 01CF0 809BE950 14410005 */  bne     $v0, $at, .L809BE968       
/* 01CF4 809BE954 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CF8 809BE958 0C26F51F */  jal     func_809BD47C              
/* 01CFC 809BE95C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D00 809BE960 10000016 */  beq     $zero, $zero, .L809BE9BC   
/* 01D04 809BE964 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809BE968:
/* 01D08 809BE968 0C00B821 */  jal     func_8002E084              
/* 01D0C 809BE96C 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 01D10 809BE970 54400012 */  bnel    $v0, $zero, .L809BE9BC     
/* 01D14 809BE974 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01D18 809BE978 0C00D58A */  jal     Actor_ApplyDamage
              
/* 01D1C 809BE97C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D20 809BE980 14400009 */  bne     $v0, $zero, .L809BE9A8     
/* 01D24 809BE984 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D28 809BE988 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D2C 809BE98C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01D30 809BE990 24053909 */  addiu   $a1, $zero, 0x3909         ## $a1 = 00003909
/* 01D34 809BE994 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01D38 809BE998 0C00CB1F */  jal     func_80032C7C              
/* 01D3C 809BE99C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01D40 809BE9A0 10000003 */  beq     $zero, $zero, .L809BE9B0   
/* 01D44 809BE9A4 00000000 */  nop
.L809BE9A8:
/* 01D48 809BE9A8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01D4C 809BE9AC 24053907 */  addiu   $a1, $zero, 0x3907         ## $a1 = 00003907
.L809BE9B0:
/* 01D50 809BE9B0 0C26F578 */  jal     func_809BD5E0              
/* 01D54 809BE9B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D58 809BE9B8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809BE9BC:
/* 01D5C 809BE9BC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01D60 809BE9C0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01D64 809BE9C4 03E00008 */  jr      $ra                        
/* 01D68 809BE9C8 00000000 */  nop
