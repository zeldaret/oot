.late_rodata
glabel D_80A7E05C
 .word 0x477FFF80
glabel D_80A7E060
    .float 1500.0

glabel D_80A7E064
 .word 0x477FFF80

.text
glabel func_80A7D39C
/* 0157C 80A7D39C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01580 80A7D3A0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01584 80A7D3A4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01588 80A7D3A8 0C29EFD6 */  jal     func_80A7BF58              
/* 0158C 80A7D3AC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01590 80A7D3B0 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 01594 80A7D3B4 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.50
/* 01598 80A7D3B8 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 0159C 80A7D3BC A60E031A */  sh      $t6, 0x031A($s0)           ## 0000031A
/* 015A0 80A7D3C0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 015A4 80A7D3C4 E6040324 */  swc1    $f4, 0x0324($s0)           ## 00000324
/* 015A8 80A7D3C8 3C0180A8 */  lui     $at, %hi(D_80A7E05C)       ## $at = 80A80000
/* 015AC 80A7D3CC C426E05C */  lwc1    $f6, %lo(D_80A7E05C)($at)  
/* 015B0 80A7D3D0 46060202 */  mul.s   $f8, $f0, $f6              
/* 015B4 80A7D3D4 4600428D */  trunc.w.s $f10, $f8                  
/* 015B8 80A7D3D8 44185000 */  mfc1    $t8, $f10                  
/* 015BC 80A7D3DC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 015C0 80A7D3E0 A6180328 */  sh      $t8, 0x0328($s0)           ## 00000328
/* 015C4 80A7D3E4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 015C8 80A7D3E8 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 015CC 80A7D3EC 3C0180A8 */  lui     $at, %hi(D_80A7E060)       ## $at = 80A80000
/* 015D0 80A7D3F0 C424E060 */  lwc1    $f4, %lo(D_80A7E060)($at)  
/* 015D4 80A7D3F4 46100481 */  sub.s   $f18, $f0, $f16            
/* 015D8 80A7D3F8 46049182 */  mul.s   $f6, $f18, $f4             
/* 015DC 80A7D3FC 4600320D */  trunc.w.s $f8, $f6                   
/* 015E0 80A7D400 44084000 */  mfc1    $t0, $f8                   
/* 015E4 80A7D404 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 015E8 80A7D408 A6080316 */  sh      $t0, 0x0316($s0)           ## 00000316
/* 015EC 80A7D40C 3C0180A8 */  lui     $at, %hi(D_80A7E064)       ## $at = 80A80000
/* 015F0 80A7D410 C42AE064 */  lwc1    $f10, %lo(D_80A7E064)($at) 
/* 015F4 80A7D414 3C053B44 */  lui     $a1, 0x3B44                ## $a1 = 3B440000
/* 015F8 80A7D418 34A59BA6 */  ori     $a1, $a1, 0x9BA6           ## $a1 = 3B449BA6
/* 015FC 80A7D41C 460A0402 */  mul.s   $f16, $f0, $f10            
/* 01600 80A7D420 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01604 80A7D424 4600848D */  trunc.w.s $f18, $f16                 
/* 01608 80A7D428 440A9000 */  mfc1    $t2, $f18                  
/* 0160C 80A7D42C 0C00B58B */  jal     Actor_SetScale
              
/* 01610 80A7D430 A60A0032 */  sh      $t2, 0x0032($s0)           ## 00000032
/* 01614 80A7D434 960C0314 */  lhu     $t4, 0x0314($s0)           ## 00000314
/* 01618 80A7D438 3C0B80A8 */  lui     $t3, %hi(func_80A7D460)    ## $t3 = 80A80000
/* 0161C 80A7D43C 256BD460 */  addiu   $t3, $t3, %lo(func_80A7D460) ## $t3 = 80A7D460
/* 01620 80A7D440 358D0100 */  ori     $t5, $t4, 0x0100           ## $t5 = 00000100
/* 01624 80A7D444 AE0B0310 */  sw      $t3, 0x0310($s0)           ## 00000310
/* 01628 80A7D448 A60D0314 */  sh      $t5, 0x0314($s0)           ## 00000314
/* 0162C 80A7D44C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01630 80A7D450 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01634 80A7D454 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01638 80A7D458 03E00008 */  jr      $ra                        
/* 0163C 80A7D45C 00000000 */  nop
