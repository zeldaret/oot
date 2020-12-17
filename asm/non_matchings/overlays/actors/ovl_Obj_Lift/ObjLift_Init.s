.rdata
glabel D_80B96A70
    .asciz "(Dungeon Lift)(arg_data 0x%04x)\n"
    .balign 4

.late_rodata
glabel D_80B96A98
 .word 0x477FFF80
glabel D_80B96A9C
 .word 0x477FFF80
glabel D_80B96AA0
 .word 0x477FFF80

.text
glabel ObjLift_Init
/* 00314 80B963E4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00318 80B963E8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0031C 80B963EC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00320 80B963F0 3C060600 */  lui     $a2, %hi(D_060003D0)                ## $a2 = 06000000
/* 00324 80B963F4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00328 80B963F8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0032C 80B963FC 24C603D0 */  addiu   $a2, $a2, %lo(D_060003D0)           ## $a2 = 060003D0
/* 00330 80B96400 0C2E5836 */  jal     func_80B960D8              
/* 00334 80B96404 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00338 80B96408 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 0033C 80B9640C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00340 80B96410 00052883 */  sra     $a1, $a1,  2               
/* 00344 80B96414 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00348 80B96418 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 0034C 80B9641C 50400006 */  beql    $v0, $zero, .L80B96438     
/* 00350 80B96420 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00354 80B96424 0C00B55C */  jal     Actor_Kill
              
/* 00358 80B96428 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0035C 80B9642C 1000002B */  beq     $zero, $zero, .L80B964DC   
/* 00360 80B96430 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00364 80B96434 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
.L80B96438:
/* 00368 80B96438 3C0580B9 */  lui     $a1, %hi(D_80B96A08)       ## $a1 = 80B90000
/* 0036C 80B9643C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00370 80B96440 000E7843 */  sra     $t7, $t6,  1               
/* 00374 80B96444 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 00378 80B96448 0018C880 */  sll     $t9, $t8,  2               
/* 0037C 80B9644C 00B92821 */  addu    $a1, $a1, $t9              
/* 00380 80B96450 0C00B58B */  jal     Actor_SetScale
              
/* 00384 80B96454 8CA56A08 */  lw      $a1, %lo(D_80B96A08)($a1)  
/* 00388 80B96458 3C0580B9 */  lui     $a1, %hi(D_80B969F4)       ## $a1 = 80B90000
/* 0038C 80B9645C 24A569F4 */  addiu   $a1, $a1, %lo(D_80B969F4)  ## $a1 = 80B969F4
/* 00390 80B96460 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00394 80B96464 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00398 80B96468 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0039C 80B9646C 00000000 */  nop
/* 003A0 80B96470 3C0180B9 */  lui     $at, %hi(D_80B96A98)       ## $at = 80B90000
/* 003A4 80B96474 C4246A98 */  lwc1    $f4, %lo(D_80B96A98)($at)  
/* 003A8 80B96478 46040182 */  mul.s   $f6, $f0, $f4              
/* 003AC 80B9647C 4600320D */  trunc.w.s $f8, $f6                   
/* 003B0 80B96480 44094000 */  mfc1    $t1, $f8                   
/* 003B4 80B96484 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 003B8 80B96488 A6090168 */  sh      $t1, 0x0168($s0)           ## 00000168
/* 003BC 80B9648C 3C0180B9 */  lui     $at, %hi(D_80B96A9C)       ## $at = 80B90000
/* 003C0 80B96490 C42A6A9C */  lwc1    $f10, %lo(D_80B96A9C)($at) 
/* 003C4 80B96494 460A0402 */  mul.s   $f16, $f0, $f10            
/* 003C8 80B96498 4600848D */  trunc.w.s $f18, $f16                 
/* 003CC 80B9649C 440B9000 */  mfc1    $t3, $f18                  
/* 003D0 80B964A0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 003D4 80B964A4 A60B016A */  sh      $t3, 0x016A($s0)           ## 0000016A
/* 003D8 80B964A8 3C0180B9 */  lui     $at, %hi(D_80B96AA0)       ## $at = 80B90000
/* 003DC 80B964AC C4246AA0 */  lwc1    $f4, %lo(D_80B96AA0)($at)  
/* 003E0 80B964B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003E4 80B964B4 46040182 */  mul.s   $f6, $f0, $f4              
/* 003E8 80B964B8 4600320D */  trunc.w.s $f8, $f6                   
/* 003EC 80B964BC 440D4000 */  mfc1    $t5, $f8                   
/* 003F0 80B964C0 0C2E5947 */  jal     func_80B9651C              
/* 003F4 80B964C4 A60D016C */  sh      $t5, 0x016C($s0)           ## 0000016C
/* 003F8 80B964C8 3C0480B9 */  lui     $a0, %hi(D_80B96A70)       ## $a0 = 80B90000
/* 003FC 80B964CC 24846A70 */  addiu   $a0, $a0, %lo(D_80B96A70)  ## $a0 = 80B96A70
/* 00400 80B964D0 0C00084C */  jal     osSyncPrintf
              
/* 00404 80B964D4 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00408 80B964D8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B964DC:
/* 0040C 80B964DC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00410 80B964E0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00414 80B964E4 03E00008 */  jr      $ra                        
/* 00418 80B964E8 00000000 */  nop
