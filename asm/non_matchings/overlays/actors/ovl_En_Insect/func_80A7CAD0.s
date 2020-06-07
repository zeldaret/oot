.late_rodata
glabel D_80A7E004
    .float 0.01

glabel D_80A7E008
    .float 0.01

glabel D_80A7E00C
    .float 0.001

.text
glabel func_80A7CAD0
/* 00CB0 80A7CAD0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00CB4 80A7CAD4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CB8 80A7CAD8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00CBC 80A7CADC 8482031A */  lh      $v0, 0x031A($a0)           ## 0000031A
/* 00CC0 80A7CAE0 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 00CC4 80A7CAE4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00CC8 80A7CAE8 14410009 */  bne     $v0, $at, .L80A7CB10       
/* 00CCC 80A7CAEC 00000000 */  nop
/* 00CD0 80A7CAF0 948E0314 */  lhu     $t6, 0x0314($a0)           ## 00000314
/* 00CD4 80A7CAF4 3C1880A8 */  lui     $t8, %hi(EnInsect_Draw)    ## $t8 = 80A80000
/* 00CD8 80A7CAF8 2718DE48 */  addiu   $t8, $t8, %lo(EnInsect_Draw) ## $t8 = 80A7DE48
/* 00CDC 80A7CAFC 31CF0004 */  andi    $t7, $t6, 0x0004           ## $t7 = 00000000
/* 00CE0 80A7CB00 15E00003 */  bne     $t7, $zero, .L80A7CB10     
/* 00CE4 80A7CB04 00000000 */  nop
/* 00CE8 80A7CB08 1000002B */  beq     $zero, $zero, .L80A7CBB8   
/* 00CEC 80A7CB0C AC980134 */  sw      $t8, 0x0134($a0)           ## 00000134
.L80A7CB10:
/* 00CF0 80A7CB10 14400014 */  bne     $v0, $zero, .L80A7CB64     
/* 00CF4 80A7CB14 28410014 */  slti    $at, $v0, 0x0014           
/* 00CF8 80A7CB18 94D90314 */  lhu     $t9, 0x0314($a2)           ## 00000314
/* 00CFC 80A7CB1C 3C0180A8 */  lui     $at, %hi(D_80A7E004)       ## $at = 80A80000
/* 00D00 80A7CB20 33280004 */  andi    $t0, $t9, 0x0004           ## $t0 = 00000000
/* 00D04 80A7CB24 11000005 */  beq     $t0, $zero, .L80A7CB3C     
/* 00D08 80A7CB28 00000000 */  nop
/* 00D0C 80A7CB2C 0C00B55C */  jal     Actor_Kill
              
/* 00D10 80A7CB30 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00D14 80A7CB34 10000021 */  beq     $zero, $zero, .L80A7CBBC   
/* 00D18 80A7CB38 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A7CB3C:
/* 00D1C 80A7CB3C C42CE004 */  lwc1    $f12, %lo(D_80A7E004)($at) 
/* 00D20 80A7CB40 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00D24 80A7CB44 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00D28 80A7CB48 44056000 */  mfc1    $a1, $f12                  
/* 00D2C 80A7CB4C 0C00B58B */  jal     Actor_SetScale
              
/* 00D30 80A7CB50 00000000 */  nop
/* 00D34 80A7CB54 0C29F0E8 */  jal     func_80A7C3A0              
/* 00D38 80A7CB58 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00D3C 80A7CB5C 10000017 */  beq     $zero, $zero, .L80A7CBBC   
/* 00D40 80A7CB60 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A7CB64:
/* 00D44 80A7CB64 10200014 */  beq     $at, $zero, .L80A7CBB8     
/* 00D48 80A7CB68 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00D4C 80A7CB6C 3C0180A8 */  lui     $at, %hi(D_80A7E008)       ## $at = 80A80000
/* 00D50 80A7CB70 C42CE008 */  lwc1    $f12, %lo(D_80A7E008)($at) 
/* 00D54 80A7CB74 3C0180A8 */  lui     $at, %hi(D_80A7E00C)       ## $at = 80A80000
/* 00D58 80A7CB78 C426E00C */  lwc1    $f6, %lo(D_80A7E00C)($at)  
/* 00D5C 80A7CB7C C4C40050 */  lwc1    $f4, 0x0050($a2)           ## 00000050
/* 00D60 80A7CB80 46062000 */  add.s   $f0, $f4, $f6              
/* 00D64 80A7CB84 4600603C */  c.lt.s  $f12, $f0                  
/* 00D68 80A7CB88 00000000 */  nop
/* 00D6C 80A7CB8C 45020004 */  bc1fl   .L80A7CBA0                 
/* 00D70 80A7CB90 46000086 */  mov.s   $f2, $f0                   
/* 00D74 80A7CB94 10000002 */  beq     $zero, $zero, .L80A7CBA0   
/* 00D78 80A7CB98 46006086 */  mov.s   $f2, $f12                  
/* 00D7C 80A7CB9C 46000086 */  mov.s   $f2, $f0                   
.L80A7CBA0:
/* 00D80 80A7CBA0 44051000 */  mfc1    $a1, $f2                   
/* 00D84 80A7CBA4 0C00B58B */  jal     Actor_SetScale
              
/* 00D88 80A7CBA8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00D8C 80A7CBAC 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00D90 80A7CBB0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00D94 80A7CBB4 24C401AC */  addiu   $a0, $a2, 0x01AC           ## $a0 = 000001AC
.L80A7CBB8:
/* 00D98 80A7CBB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A7CBBC:
/* 00D9C 80A7CBBC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00DA0 80A7CBC0 03E00008 */  jr      $ra                        
/* 00DA4 80A7CBC4 00000000 */  nop
