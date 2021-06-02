glabel func_808FFAC8
/* 02B88 808FFAC8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02B8C 808FFACC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02B90 808FFAD0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02B94 808FFAD4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02B98 808FFAD8 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 02B9C 808FFADC 908E0313 */  lbu     $t6, 0x0313($a0)           ## 00000313
/* 02BA0 808FFAE0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02BA4 808FFAE4 30C600FF */  andi    $a2, $a2, 0x00FF           ## $a2 = 00000000
/* 02BA8 808FFAE8 15C00003 */  bne     $t6, $zero, .L808FFAF8     
/* 02BAC 808FFAEC 2604031A */  addiu   $a0, $s0, 0x031A           ## $a0 = 0000031A
/* 02BB0 808FFAF0 50C00011 */  beql    $a2, $zero, .L808FFB38     
/* 02BB4 808FFAF4 8619019C */  lh      $t9, 0x019C($s0)           ## 0000019C
.L808FFAF8:
/* 02BB8 808FFAF8 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 02BBC 808FFAFC 8618008A */  lh      $t8, 0x008A($s0)           ## 0000008A
/* 02BC0 808FFB00 01F82823 */  subu    $a1, $t7, $t8              
/* 02BC4 808FFB04 00052C00 */  sll     $a1, $a1, 16               
/* 02BC8 808FFB08 00052C03 */  sra     $a1, $a1, 16               
/* 02BCC 808FFB0C 28A13001 */  slti    $at, $a1, 0x3001           
/* 02BD0 808FFB10 54200004 */  bnel    $at, $zero, .L808FFB24     
/* 02BD4 808FFB14 28A1D000 */  slti    $at, $a1, 0xD000           
/* 02BD8 808FFB18 1000000D */  beq     $zero, $zero, .L808FFB50   
/* 02BDC 808FFB1C 24053000 */  addiu   $a1, $zero, 0x3000         ## $a1 = 00003000
/* 02BE0 808FFB20 28A1D000 */  slti    $at, $a1, 0xD000           
.L808FFB24:
/* 02BE4 808FFB24 5020000B */  beql    $at, $zero, .L808FFB54     
/* 02BE8 808FFB28 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 02BEC 808FFB2C 10000008 */  beq     $zero, $zero, .L808FFB50   
/* 02BF0 808FFB30 2405D000 */  addiu   $a1, $zero, 0xD000         ## $a1 = FFFFD000
/* 02BF4 808FFB34 8619019C */  lh      $t9, 0x019C($s0)           ## 0000019C
.L808FFB38:
/* 02BF8 808FFB38 2405D000 */  addiu   $a1, $zero, 0xD000         ## $a1 = FFFFD000
/* 02BFC 808FFB3C 33280020 */  andi    $t0, $t9, 0x0020           ## $t0 = 00000000
/* 02C00 808FFB40 11000003 */  beq     $t0, $zero, .L808FFB50     
/* 02C04 808FFB44 00000000 */  nop
/* 02C08 808FFB48 10000001 */  beq     $zero, $zero, .L808FFB50   
/* 02C0C 808FFB4C 24053000 */  addiu   $a1, $zero, 0x3000         ## $a1 = 00003000
.L808FFB50:
/* 02C10 808FFB50 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
.L808FFB54:
/* 02C14 808FFB54 0C01E1EF */  jal     Math_ApproachS
              
/* 02C18 808FFB58 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 02C1C 808FFB5C 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 02C20 808FFB60 44817000 */  mtc1    $at, $f14                  ## $f14 = 150.00
/* 02C24 808FFB64 0C034199 */  jal     Math_Atan2S
              
/* 02C28 808FFB68 C60C0090 */  lwc1    $f12, 0x0090($s0)          ## 00000090
/* 02C2C 808FFB6C 2443F448 */  addiu   $v1, $v0, 0xF448           ## $v1 = FFFFF448
/* 02C30 808FFB70 00034C00 */  sll     $t1, $v1, 16               
/* 02C34 808FFB74 00095403 */  sra     $t2, $t1, 16               
/* 02C38 808FFB78 00032C00 */  sll     $a1, $v1, 16               
/* 02C3C 808FFB7C 29411B59 */  slti    $at, $t2, 0x1B59           
/* 02C40 808FFB80 14200002 */  bne     $at, $zero, .L808FFB8C     
/* 02C44 808FFB84 00052C03 */  sra     $a1, $a1, 16               
/* 02C48 808FFB88 24051B58 */  addiu   $a1, $zero, 0x1B58         ## $a1 = 00001B58
.L808FFB8C:
/* 02C4C 808FFB8C 28A1E4A8 */  slti    $at, $a1, 0xE4A8           
/* 02C50 808FFB90 10200002 */  beq     $at, $zero, .L808FFB9C     
/* 02C54 808FFB94 2604031C */  addiu   $a0, $s0, 0x031C           ## $a0 = 0000031C
/* 02C58 808FFB98 2405E4A8 */  addiu   $a1, $zero, 0xE4A8         ## $a1 = FFFFE4A8
.L808FFB9C:
/* 02C5C 808FFB9C 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 02C60 808FFBA0 0C01E1EF */  jal     Math_ApproachS
              
/* 02C64 808FFBA4 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 02C68 808FFBA8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02C6C 808FFBAC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02C70 808FFBB0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02C74 808FFBB4 03E00008 */  jr      $ra                        
/* 02C78 808FFBB8 00000000 */  nop
