.late_rodata
glabel D_80ACD844
    .float 6000.0

glabel D_80ACD848
    .float 0.4

glabel D_80ACD84C
    .float 0.2

.text
glabel func_80ACBC0C
/* 01CEC 80ACBC0C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01CF0 80ACBC10 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01CF4 80ACBC14 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01CF8 80ACBC18 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01CFC 80ACBC1C 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 01D00 80ACBC20 3C0180AD */  lui     $at, %hi(D_80ACD844)       ## $at = 80AD0000
/* 01D04 80ACBC24 C4860090 */  lwc1    $f6, 0x0090($a0)           ## 00000090
/* 01D08 80ACBC28 35CF0020 */  ori     $t7, $t6, 0x0020           ## $t7 = 00000020
/* 01D0C 80ACBC2C AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 01D10 80ACBC30 C424D844 */  lwc1    $f4, %lo(D_80ACD844)($at)  
/* 01D14 80ACBC34 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01D18 80ACBC38 4606203C */  c.lt.s  $f4, $f6                   
/* 01D1C 80ACBC3C 00000000 */  nop
/* 01D20 80ACBC40 45020008 */  bc1fl   .L80ACBC64                 
/* 01D24 80ACBC44 86050400 */  lh      $a1, 0x0400($s0)           ## 00000400
/* 01D28 80ACBC48 949803FC */  lhu     $t8, 0x03FC($a0)           ## 000003FC
/* 01D2C 80ACBC4C 33190080 */  andi    $t9, $t8, 0x0080           ## $t9 = 00000000
/* 01D30 80ACBC50 57200004 */  bnel    $t9, $zero, .L80ACBC64     
/* 01D34 80ACBC54 86050400 */  lh      $a1, 0x0400($s0)           ## 00000400
/* 01D38 80ACBC58 0C00B55C */  jal     Actor_Kill
              
/* 01D3C 80ACBC5C 00000000 */  nop
/* 01D40 80ACBC60 86050400 */  lh      $a1, 0x0400($s0)           ## 00000400
.L80ACBC64:
/* 01D44 80ACBC64 24080040 */  addiu   $t0, $zero, 0x0040         ## $t0 = 00000040
/* 01D48 80ACBC68 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 01D4C 80ACBC6C 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 01D50 80ACBC70 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01D54 80ACBC74 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 01D58 80ACBC78 24070080 */  addiu   $a3, $zero, 0x0080         ## $a3 = 00000080
/* 01D5C 80ACBC7C 3C014180 */  lui     $at, 0x4180                ## $at = 41800000
/* 01D60 80ACBC80 44814000 */  mtc1    $at, $f8                   ## $f8 = 16.00
/* 01D64 80ACBC84 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 01D68 80ACBC88 86090032 */  lh      $t1, 0x0032($s0)           ## 00000032
/* 01D6C 80ACBC8C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01D70 80ACBC90 4608003C */  c.lt.s  $f0, $f8                   
/* 01D74 80ACBC94 A60900B6 */  sh      $t1, 0x00B6($s0)           ## 000000B6
/* 01D78 80ACBC98 45020006 */  bc1fl   .L80ACBCB4                 
/* 01D7C 80ACBC9C 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 01D80 80ACBCA0 44815000 */  mtc1    $at, $f10                  ## $f10 = 1000.00
/* 01D84 80ACBCA4 00000000 */  nop
/* 01D88 80ACBCA8 460A0400 */  add.s   $f16, $f0, $f10            
/* 01D8C 80ACBCAC E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
/* 01D90 80ACBCB0 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
.L80ACBCB4:
/* 01D94 80ACBCB4 44812000 */  mtc1    $at, $f4                   ## $f4 = 1000.00
/* 01D98 80ACBCB8 C61203F8 */  lwc1    $f18, 0x03F8($s0)          ## 000003F8
/* 01D9C 80ACBCBC C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 01DA0 80ACBCC0 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 01DA4 80ACBCC4 46049180 */  add.s   $f6, $f18, $f4             
/* 01DA8 80ACBCC8 4608303C */  c.lt.s  $f6, $f8                   
/* 01DAC 80ACBCCC 00000000 */  nop
/* 01DB0 80ACBCD0 4502000D */  bc1fl   .L80ACBD08                 
/* 01DB4 80ACBCD4 C6000060 */  lwc1    $f0, 0x0060($s0)           ## 00000060
/* 01DB8 80ACBCD8 C6000060 */  lwc1    $f0, 0x0060($s0)           ## 00000060
/* 01DBC 80ACBCDC 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 01DC0 80ACBCE0 3C0180AD */  lui     $at, %hi(D_80ACD848)       ## $at = 80AD0000
/* 01DC4 80ACBCE4 4600503C */  c.lt.s  $f10, $f0                  
/* 01DC8 80ACBCE8 00000000 */  nop
/* 01DCC 80ACBCEC 45020010 */  bc1fl   .L80ACBD30                 
/* 01DD0 80ACBCF0 960A03FC */  lhu     $t2, 0x03FC($s0)           ## 000003FC
/* 01DD4 80ACBCF4 C430D848 */  lwc1    $f16, %lo(D_80ACD848)($at) 
/* 01DD8 80ACBCF8 46100481 */  sub.s   $f18, $f0, $f16            
/* 01DDC 80ACBCFC 1000000B */  beq     $zero, $zero, .L80ACBD2C   
/* 01DE0 80ACBD00 E6120060 */  swc1    $f18, 0x0060($s0)          ## 00000060
/* 01DE4 80ACBD04 C6000060 */  lwc1    $f0, 0x0060($s0)           ## 00000060
.L80ACBD08:
/* 01DE8 80ACBD08 44812000 */  mtc1    $at, $f4                   ## $f4 = -0.00
/* 01DEC 80ACBD0C 3C0180AD */  lui     $at, %hi(D_80ACD84C)       ## $at = 80AD0000
/* 01DF0 80ACBD10 4604003C */  c.lt.s  $f0, $f4                   
/* 01DF4 80ACBD14 00000000 */  nop
/* 01DF8 80ACBD18 45020005 */  bc1fl   .L80ACBD30                 
/* 01DFC 80ACBD1C 960A03FC */  lhu     $t2, 0x03FC($s0)           ## 000003FC
/* 01E00 80ACBD20 C426D84C */  lwc1    $f6, %lo(D_80ACD84C)($at)  
/* 01E04 80ACBD24 46060200 */  add.s   $f8, $f0, $f6              
/* 01E08 80ACBD28 E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
.L80ACBD2C:
/* 01E0C 80ACBD2C 960A03FC */  lhu     $t2, 0x03FC($s0)           ## 000003FC
.L80ACBD30:
/* 01E10 80ACBD30 354B0008 */  ori     $t3, $t2, 0x0008           ## $t3 = 00000008
/* 01E14 80ACBD34 A60B03FC */  sh      $t3, 0x03FC($s0)           ## 000003FC
/* 01E18 80ACBD38 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01E1C 80ACBD3C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01E20 80ACBD40 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01E24 80ACBD44 03E00008 */  jr      $ra                        
/* 01E28 80ACBD48 00000000 */  nop
