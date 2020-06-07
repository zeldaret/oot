glabel func_80AFD3D4
/* 00A34 80AFD3D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A38 80AFD3D8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A3C 80AFD3DC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00A40 80AFD3E0 C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 00A44 80AFD3E4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00A48 80AFD3E8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00A4C 80AFD3EC 4600218D */  trunc.w.s $f6, $f4                   
/* 00A50 80AFD3F0 24053831 */  addiu   $a1, $zero, 0x3831         ## $a1 = 00003831
/* 00A54 80AFD3F4 44023000 */  mfc1    $v0, $f6                   
/* 00A58 80AFD3F8 00000000 */  nop
/* 00A5C 80AFD3FC 54410008 */  bnel    $v0, $at, .L80AFD420       
/* 00A60 80AFD400 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00A64 80AFD404 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00A68 80AFD408 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00A6C 80AFD40C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00A70 80AFD410 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00A74 80AFD414 10000005 */  beq     $zero, $zero, .L80AFD42C   
/* 00A78 80AFD418 A0CF0281 */  sb      $t7, 0x0281($a2)           ## 00000281
/* 00A7C 80AFD41C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
.L80AFD420:
/* 00A80 80AFD420 54410003 */  bnel    $v0, $at, .L80AFD430       
/* 00A84 80AFD424 90C202B4 */  lbu     $v0, 0x02B4($a2)           ## 000002B4
/* 00A88 80AFD428 A0C00281 */  sb      $zero, 0x0281($a2)         ## 00000281
.L80AFD42C:
/* 00A8C 80AFD42C 90C202B4 */  lbu     $v0, 0x02B4($a2)           ## 000002B4
.L80AFD430:
/* 00A90 80AFD430 24C4014C */  addiu   $a0, $a2, 0x014C           ## $a0 = 0000014C
/* 00A94 80AFD434 30580004 */  andi    $t8, $v0, 0x0004           ## $t8 = 00000000
/* 00A98 80AFD438 13000006 */  beq     $t8, $zero, .L80AFD454     
/* 00A9C 80AFD43C 3059FFF9 */  andi    $t9, $v0, 0xFFF9           ## $t9 = 00000000
/* 00AA0 80AFD440 A0D902B4 */  sb      $t9, 0x02B4($a2)           ## 000002B4
/* 00AA4 80AFD444 0C2BF51F */  jal     func_80AFD47C              
/* 00AA8 80AFD448 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00AAC 80AFD44C 10000008 */  beq     $zero, $zero, .L80AFD470   
/* 00AB0 80AFD450 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFD454:
/* 00AB4 80AFD454 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00AB8 80AFD458 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00ABC 80AFD45C 10400003 */  beq     $v0, $zero, .L80AFD46C     
/* 00AC0 80AFD460 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00AC4 80AFD464 0C2BF358 */  jal     func_80AFCD60              
/* 00AC8 80AFD468 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
.L80AFD46C:
/* 00ACC 80AFD46C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFD470:
/* 00AD0 80AFD470 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00AD4 80AFD474 03E00008 */  jr      $ra                        
/* 00AD8 80AFD478 00000000 */  nop
