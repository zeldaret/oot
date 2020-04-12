.late_rodata
glabel D_80A171F0
    .float 0.01

glabel D_80A171F4
    .float 0.01

glabel D_80A171F8
    .float 0.001

.text
glabel func_80A16DEC
/* 01B6C 80A16DEC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01B70 80A16DF0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01B74 80A16DF4 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 01B78 80A16DF8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01B7C 80A16DFC 55C10006 */  bnel    $t6, $at, .L80A16E18       
/* 01B80 80A16E00 8C82011C */  lw      $v0, 0x011C($a0)           ## 0000011C
/* 01B84 80A16E04 0C00B55C */  jal     Actor_Kill
              
/* 01B88 80A16E08 00000000 */  nop
/* 01B8C 80A16E0C 10000039 */  beq     $zero, $zero, .L80A16EF4   
/* 01B90 80A16E10 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01B94 80A16E14 8C82011C */  lw      $v0, 0x011C($a0)           ## 0000011C
.L80A16E18:
/* 01B98 80A16E18 50400008 */  beql    $v0, $zero, .L80A16E3C     
/* 01B9C 80A16E1C 8C820244 */  lw      $v0, 0x0244($a0)           ## 00000244
/* 01BA0 80A16E20 8C4F0130 */  lw      $t7, 0x0130($v0)           ## 00000130
/* 01BA4 80A16E24 55E00005 */  bnel    $t7, $zero, .L80A16E3C     
/* 01BA8 80A16E28 8C820244 */  lw      $v0, 0x0244($a0)           ## 00000244
/* 01BAC 80A16E2C 50820003 */  beql    $a0, $v0, .L80A16E3C       
/* 01BB0 80A16E30 8C820244 */  lw      $v0, 0x0244($a0)           ## 00000244
/* 01BB4 80A16E34 AC80011C */  sw      $zero, 0x011C($a0)         ## 0000011C
/* 01BB8 80A16E38 8C820244 */  lw      $v0, 0x0244($a0)           ## 00000244
.L80A16E3C:
/* 01BBC 80A16E3C 10400007 */  beq     $v0, $zero, .L80A16E5C     
/* 01BC0 80A16E40 00000000 */  nop
/* 01BC4 80A16E44 0040F809 */  jalr    $ra, $v0                   
/* 01BC8 80A16E48 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01BCC 80A16E4C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01BD0 80A16E50 8C980130 */  lw      $t8, 0x0130($a0)           ## 00000130
/* 01BD4 80A16E54 53000027 */  beql    $t8, $zero, .L80A16EF4     
/* 01BD8 80A16E58 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A16E5C:
/* 01BDC 80A16E5C 0C00B638 */  jal     Actor_MoveForward
              
/* 01BE0 80A16E60 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01BE4 80A16E64 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01BE8 80A16E68 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 01BEC 80A16E6C 3C1980A1 */  lui     $t9, %hi(EnFish_Draw)    ## $t9 = 80A10000
/* 01BF0 80A16E70 8482024A */  lh      $v0, 0x024A($a0)           ## 0000024A
/* 01BF4 80A16E74 27396FAC */  addiu   $t9, $t9, %lo(EnFish_Draw) ## $t9 = 80A16FAC
/* 01BF8 80A16E78 14410003 */  bne     $v0, $at, .L80A16E88       
/* 01BFC 80A16E7C 00000000 */  nop
/* 01C00 80A16E80 1000001B */  beq     $zero, $zero, .L80A16EF0   
/* 01C04 80A16E84 AC990134 */  sw      $t9, 0x0134($a0)           ## 00000134
.L80A16E88:
/* 01C08 80A16E88 14400008 */  bne     $v0, $zero, .L80A16EAC     
/* 01C0C 80A16E8C 28410014 */  slti    $at, $v0, 0x0014           
/* 01C10 80A16E90 3C0180A1 */  lui     $at, %hi(D_80A171F0)       ## $at = 80A10000
/* 01C14 80A16E94 C42C71F0 */  lwc1    $f12, %lo(D_80A171F0)($at) 
/* 01C18 80A16E98 44056000 */  mfc1    $a1, $f12                  
/* 01C1C 80A16E9C 0C00B58B */  jal     Actor_SetScale
              
/* 01C20 80A16EA0 00000000 */  nop
/* 01C24 80A16EA4 10000013 */  beq     $zero, $zero, .L80A16EF4   
/* 01C28 80A16EA8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A16EAC:
/* 01C2C 80A16EAC 10200010 */  beq     $at, $zero, .L80A16EF0     
/* 01C30 80A16EB0 3C0180A1 */  lui     $at, %hi(D_80A171F4)       ## $at = 80A10000
/* 01C34 80A16EB4 C42C71F4 */  lwc1    $f12, %lo(D_80A171F4)($at) 
/* 01C38 80A16EB8 3C0180A1 */  lui     $at, %hi(D_80A171F8)       ## $at = 80A10000
/* 01C3C 80A16EBC C42671F8 */  lwc1    $f6, %lo(D_80A171F8)($at)  
/* 01C40 80A16EC0 C4840050 */  lwc1    $f4, 0x0050($a0)           ## 00000050
/* 01C44 80A16EC4 46062000 */  add.s   $f0, $f4, $f6              
/* 01C48 80A16EC8 4600603C */  c.lt.s  $f12, $f0                  
/* 01C4C 80A16ECC 00000000 */  nop
/* 01C50 80A16ED0 45020004 */  bc1fl   .L80A16EE4                 
/* 01C54 80A16ED4 46000086 */  mov.s   $f2, $f0                   
/* 01C58 80A16ED8 10000002 */  beq     $zero, $zero, .L80A16EE4   
/* 01C5C 80A16EDC 46006086 */  mov.s   $f2, $f12                  
/* 01C60 80A16EE0 46000086 */  mov.s   $f2, $f0                   
.L80A16EE4:
/* 01C64 80A16EE4 44051000 */  mfc1    $a1, $f2                   
/* 01C68 80A16EE8 0C00B58B */  jal     Actor_SetScale
              
/* 01C6C 80A16EEC 00000000 */  nop
.L80A16EF0:
/* 01C70 80A16EF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A16EF4:
/* 01C74 80A16EF4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01C78 80A16EF8 03E00008 */  jr      $ra                        
/* 01C7C 80A16EFC 00000000 */  nop
