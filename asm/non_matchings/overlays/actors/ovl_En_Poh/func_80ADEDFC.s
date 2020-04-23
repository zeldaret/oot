glabel func_80ADEDFC
/* 010AC 80ADEDFC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 010B0 80ADEE00 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 010B4 80ADEE04 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 010B8 80ADEE08 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 010BC 80ADEE0C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 010C0 80ADEE10 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 010C4 80ADEE14 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 010C8 80ADEE18 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 010CC 80ADEE1C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 010D0 80ADEE20 0C0295B2 */  jal     func_800A56C8              
/* 010D4 80ADEE24 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 010D8 80ADEE28 10400007 */  beq     $v0, $zero, .L80ADEE48     
/* 010DC 80ADEE2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 010E0 80ADEE30 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 010E4 80ADEE34 24053870 */  addiu   $a1, $zero, 0x3870         ## $a1 = 00003870
/* 010E8 80ADEE38 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
/* 010EC 80ADEE3C 10400002 */  beq     $v0, $zero, .L80ADEE48     
/* 010F0 80ADEE40 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 010F4 80ADEE44 A60E0198 */  sh      $t6, 0x0198($s0)           ## 00000198
.L80ADEE48:
/* 010F8 80ADEE48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 010FC 80ADEE4C 0C2B7A73 */  jal     func_80ADE9CC              
/* 01100 80ADEE50 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01104 80ADEE54 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
/* 01108 80ADEE58 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 0110C 80ADEE5C 24060E38 */  addiu   $a2, $zero, 0x0E38         ## $a2 = 00000E38
/* 01110 80ADEE60 2841000A */  slti    $at, $v0, 0x000A           
/* 01114 80ADEE64 54200006 */  bnel    $at, $zero, .L80ADEE80     
/* 01118 80ADEE68 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 0111C 80ADEE6C 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01120 80ADEE70 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 01124 80ADEE74 10000011 */  beq     $zero, $zero, .L80ADEEBC   
/* 01128 80ADEE78 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0112C 80ADEE7C 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
.L80ADEE80:
/* 01130 80ADEE80 14410007 */  bne     $v0, $at, .L80ADEEA0       
/* 01134 80ADEE84 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01138 80ADEE88 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 0113C 80ADEE8C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01140 80ADEE90 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.00
/* 01144 80ADEE94 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 01148 80ADEE98 10000007 */  beq     $zero, $zero, .L80ADEEB8   
/* 0114C 80ADEE9C E6060168 */  swc1    $f6, 0x0168($s0)           ## 00000168
.L80ADEEA0:
/* 01150 80ADEEA0 54400006 */  bnel    $v0, $zero, .L80ADEEBC     
/* 01154 80ADEEA4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01158 80ADEEA8 0C2B785B */  jal     func_80ADE16C              
/* 0115C 80ADEEAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01160 80ADEEB0 240F0017 */  addiu   $t7, $zero, 0x0017         ## $t7 = 00000017
/* 01164 80ADEEB4 A60F0198 */  sh      $t7, 0x0198($s0)           ## 00000198
.L80ADEEB8:
/* 01168 80ADEEB8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ADEEBC:
/* 0116C 80ADEEBC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01170 80ADEEC0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01174 80ADEEC4 03E00008 */  jr      $ra                        
/* 01178 80ADEEC8 00000000 */  nop
