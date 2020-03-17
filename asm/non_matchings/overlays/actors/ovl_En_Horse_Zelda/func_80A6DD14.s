glabel func_80A6DD14
/* 00444 80A6DD14 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00448 80A6DD18 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0044C 80A6DD1C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00450 80A6DD20 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00454 80A6DD24 44813000 */  mtc1    $at, $f6                   ## $f6 = 6.00
/* 00458 80A6DD28 C4840068 */  lwc1    $f4, 0x0068($a0)           ## 00000068
/* 0045C 80A6DD2C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00460 80A6DD30 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 00464 80A6DD34 46062203 */  div.s   $f8, $f4, $f6              
/* 00468 80A6DD38 AC800150 */  sw      $zero, 0x0150($a0)         ## 00000150
/* 0046C 80A6DD3C 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 00470 80A6DD40 3C0F8013 */  lui     $t7, 0x8013                ## $t7 = 80130000
/* 00474 80A6DD44 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 00478 80A6DD48 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0047C 80A6DD4C 25EF33E8 */  addiu   $t7, $t7, 0x33E8           ## $t7 = 801333E8
/* 00480 80A6DD50 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00484 80A6DD54 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 00488 80A6DD58 24042804 */  addiu   $a0, $zero, 0x2804         ## $a0 = 00002804
/* 0048C 80A6DD5C AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00490 80A6DD60 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00494 80A6DD64 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00498 80A6DD68 E7A80034 */  swc1    $f8, 0x0034($sp)           
/* 0049C 80A6DD6C 8E180150 */  lw      $t8, 0x0150($s0)           ## 00000150
/* 004A0 80A6DD70 3C0480A7 */  lui     $a0, %hi(D_80A6E1D0)       ## $a0 = 80A70000
/* 004A4 80A6DD74 0018C880 */  sll     $t9, $t8,  2               
/* 004A8 80A6DD78 00992021 */  addu    $a0, $a0, $t9              
/* 004AC 80A6DD7C 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 004B0 80A6DD80 8C84E1D0 */  lw      $a0, %lo(D_80A6E1D0)($a0)  
/* 004B4 80A6DD84 8E030150 */  lw      $v1, 0x0150($s0)           ## 00000150
/* 004B8 80A6DD88 3C0180A7 */  lui     $at, %hi(D_80A6E1D4)       ## $at = 80A70000
/* 004BC 80A6DD8C C7B00034 */  lwc1    $f16, 0x0034($sp)          
/* 004C0 80A6DD90 00031880 */  sll     $v1, $v1,  2               
/* 004C4 80A6DD94 00230821 */  addu    $at, $at, $v1              
/* 004C8 80A6DD98 C42AE1D4 */  lwc1    $f10, %lo(D_80A6E1D4)($at) 
/* 004CC 80A6DD9C 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 004D0 80A6DDA0 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.50
/* 004D4 80A6DDA4 46105482 */  mul.s   $f18, $f10, $f16           
/* 004D8 80A6DDA8 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 004DC 80A6DDAC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 004E0 80A6DDB0 3C0580A7 */  lui     $a1, %hi(D_80A6E1D0)       ## $a1 = 80A70000
/* 004E4 80A6DDB4 00A32821 */  addu    $a1, $a1, $v1              
/* 004E8 80A6DDB8 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 004EC 80A6DDBC 468042A0 */  cvt.s.w $f10, $f8                  
/* 004F0 80A6DDC0 46049182 */  mul.s   $f6, $f18, $f4             
/* 004F4 80A6DDC4 44070000 */  mfc1    $a3, $f0                   
/* 004F8 80A6DDC8 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 004FC 80A6DDCC 8CA5E1D0 */  lw      $a1, %lo(D_80A6E1D0)($a1)  
/* 00500 80A6DDD0 260401A0 */  addiu   $a0, $s0, 0x01A0           ## $a0 = 000001A0
/* 00504 80A6DDD4 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 00508 80A6DDD8 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 0050C 80A6DDDC 44063000 */  mfc1    $a2, $f6                   
/* 00510 80A6DDE0 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00514 80A6DDE4 00000000 */  nop
/* 00518 80A6DDE8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0051C 80A6DDEC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00520 80A6DDF0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00524 80A6DDF4 03E00008 */  jr      $ra                        
/* 00528 80A6DDF8 00000000 */  nop


