.late_rodata
glabel D_808554FC
    .float 0.8

glabel D_80855500
    .float 0.02

glabel D_80855504
    .float 0.05

.text
glabel func_8084AEEC
/* 18CDC 8084AEEC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 18CE0 8084AEF0 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 18CE4 8084AEF4 8DEFFA90 */  lw      $t7, -0x0570($t7)          ## 8015FA90
/* 18CE8 8084AEF8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 18CEC 8084AEFC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 18CF0 8084AF00 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 18CF4 8084AF04 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 18CF8 8084AF08 85F8006E */  lh      $t8, 0x006E($t7)           ## 8016006E
/* 18CFC 8084AF0C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 18D00 8084AF10 44818000 */  mtc1    $at, $f16                  ## $f16 = 10.00
/* 18D04 8084AF14 44983000 */  mtc1    $t8, $f6                   ## $f6 = 0.00
/* 18D08 8084AF18 3C018085 */  lui     $at, %hi(D_808554FC)       ## $at = 80850000
/* 18D0C 8084AF1C C43254FC */  lwc1    $f18, %lo(D_808554FC)($at) 
/* 18D10 8084AF20 46803220 */  cvt.s.w $f8, $f6                   
/* 18D14 8084AF24 C48401CC */  lwc1    $f4, 0x01CC($a0)           ## 000001CC
/* 18D18 8084AF28 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 18D1C 8084AF2C 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 18D20 8084AF30 C4AC0000 */  lwc1    $f12, 0x0000($a1)          ## 00000000
/* 18D24 8084AF34 46102081 */  sub.s   $f2, $f4, $f16             
/* 18D28 8084AF38 44867000 */  mtc1    $a2, $f14                  ## $f14 = 0.00
/* 18D2C 8084AF3C 460A4103 */  div.s   $f4, $f8, $f10             
/* 18D30 8084AF40 46122002 */  mul.s   $f0, $f4, $f18             
/* 18D34 8084AF44 460C003C */  c.lt.s  $f0, $f12                  
/* 18D38 8084AF48 00000000 */  nop
/* 18D3C 8084AF4C 45020005 */  bc1fl   .L8084AF64                 
/* 18D40 8084AF50 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 18D44 8084AF54 E4A00000 */  swc1    $f0, 0x0000($a1)           ## 00000000
/* 18D48 8084AF58 8FA8001C */  lw      $t0, 0x001C($sp)           
/* 18D4C 8084AF5C C50C0000 */  lwc1    $f12, 0x0000($t0)          ## 00000000
/* 18D50 8084AF60 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L8084AF64:
/* 18D54 8084AF64 00000000 */  nop
/* 18D58 8084AF68 4602003C */  c.lt.s  $f0, $f2                   
/* 18D5C 8084AF6C 00000000 */  nop
/* 18D60 8084AF70 4502000B */  bc1fl   .L8084AFA0                 
/* 18D64 8084AF74 46000086 */  mov.s   $f2, $f0                   
/* 18D68 8084AF78 4610103C */  c.lt.s  $f2, $f16                  
/* 18D6C 8084AF7C 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 18D70 8084AF80 45020007 */  bc1fl   .L8084AFA0                 
/* 18D74 8084AF84 46000086 */  mov.s   $f2, $f0                   
/* 18D78 8084AF88 44813000 */  mtc1    $at, $f6                   ## $f6 = 6.00
/* 18D7C 8084AF8C 00000000 */  nop
/* 18D80 8084AF90 46061082 */  mul.s   $f2, $f2, $f6              
/* 18D84 8084AF94 10000003 */  beq     $zero, $zero, .L8084AFA4   
/* 18D88 8084AF98 00000000 */  nop
/* 18D8C 8084AF9C 46000086 */  mov.s   $f2, $f0                   
.L8084AFA0:
/* 18D90 8084AFA0 46000386 */  mov.s   $f14, $f0                  
.L8084AFA4:
/* 18D94 8084AFA4 3C018085 */  lui     $at, %hi(D_80855500)       ## $at = 80850000
/* 18D98 8084AFA8 46127202 */  mul.s   $f8, $f14, $f18            
/* 18D9C 8084AFAC C42A5500 */  lwc1    $f10, %lo(D_80855500)($at) 
/* 18DA0 8084AFB0 46006005 */  abs.s   $f0, $f12                  
/* 18DA4 8084AFB4 3C018085 */  lui     $at, %hi(D_80855504)       ## $at = 80850000
/* 18DA8 8084AFB8 460A0102 */  mul.s   $f4, $f0, $f10             
/* 18DAC 8084AFBC C4265504 */  lwc1    $f6, %lo(D_80855504)($at)  
/* 18DB0 8084AFC0 44061000 */  mfc1    $a2, $f2                   
/* 18DB4 8084AFC4 44054000 */  mfc1    $a1, $f8                   
/* 18DB8 8084AFC8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 18DBC 8084AFCC 46062200 */  add.s   $f8, $f4, $f6              
/* 18DC0 8084AFD0 44074000 */  mfc1    $a3, $f8                   
/* 18DC4 8084AFD4 0C01DF1B */  jal     func_80077C6C              
/* 18DC8 8084AFD8 00000000 */  nop
/* 18DCC 8084AFDC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 18DD0 8084AFE0 87A50026 */  lh      $a1, 0x0026($sp)           
/* 18DD4 8084AFE4 24060640 */  addiu   $a2, $zero, 0x0640         ## $a2 = 00000640
/* 18DD8 8084AFE8 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 18DDC 8084AFEC 2484083C */  addiu   $a0, $a0, 0x083C           ## $a0 = 0000083C
/* 18DE0 8084AFF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 18DE4 8084AFF4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 18DE8 8084AFF8 03E00008 */  jr      $ra                        
/* 18DEC 8084AFFC 00000000 */  nop
