glabel func_809CB458
/* 00948 809CB458 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 0094C 809CB45C AFB1005C */  sw      $s1, 0x005C($sp)           
/* 00950 809CB460 AFB00058 */  sw      $s0, 0x0058($sp)           
/* 00954 809CB464 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00958 809CB468 AFBF0074 */  sw      $ra, 0x0074($sp)           
/* 0095C 809CB46C AFB60070 */  sw      $s6, 0x0070($sp)           
/* 00960 809CB470 24900164 */  addiu   $s0, $a0, 0x0164           ## $s0 = 00000164
/* 00964 809CB474 00A0B025 */  or      $s6, $a1, $zero            ## $s6 = 00000000
/* 00968 809CB478 AFB5006C */  sw      $s5, 0x006C($sp)           
/* 0096C 809CB47C AFB40068 */  sw      $s4, 0x0068($sp)           
/* 00970 809CB480 AFB30064 */  sw      $s3, 0x0064($sp)           
/* 00974 809CB484 AFB20060 */  sw      $s2, 0x0060($sp)           
/* 00978 809CB488 F7BE0050 */  sdc1    $f30, 0x0050($sp)          
/* 0097C 809CB48C F7BC0048 */  sdc1    $f28, 0x0048($sp)          
/* 00980 809CB490 F7BA0040 */  sdc1    $f26, 0x0040($sp)          
/* 00984 809CB494 F7B80038 */  sdc1    $f24, 0x0038($sp)          
/* 00988 809CB498 F7B60030 */  sdc1    $f22, 0x0030($sp)          
/* 0098C 809CB49C F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 00990 809CB4A0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00994 809CB4A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000164
/* 00998 809CB4A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000164
/* 0099C 809CB4AC 0C0295B2 */  jal     func_800A56C8              
/* 009A0 809CB4B0 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 009A4 809CB4B4 10400005 */  beq     $v0, $zero, .L809CB4CC     
/* 009A8 809CB4B8 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 009AC 809CB4BC 862201AC */  lh      $v0, 0x01AC($s1)           ## 000001AC
/* 009B0 809CB4C0 10400002 */  beq     $v0, $zero, .L809CB4CC     
/* 009B4 809CB4C4 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 009B8 809CB4C8 A62E01AC */  sh      $t6, 0x01AC($s1)           ## 000001AC
.L809CB4CC:
/* 009BC 809CB4CC 01F67821 */  addu    $t7, $t7, $s6              
/* 009C0 809CB4D0 8DEF1DE4 */  lw      $t7, 0x1DE4($t7)           ## 00011DE4
/* 009C4 809CB4D4 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 009C8 809CB4D8 24150004 */  addiu   $s5, $zero, 0x0004         ## $s5 = 00000004
/* 009CC 809CB4DC 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 009D0 809CB4E0 13000008 */  beq     $t8, $zero, .L809CB504     
/* 009D4 809CB4E4 3C14809D */  lui     $s4, %hi(D_809CBAB8)       ## $s4 = 809D0000
/* 009D8 809CB4E8 3C01809D */  lui     $at, %hi(D_809CBAD0)       ## $at = 809D0000
/* 009DC 809CB4EC C426BAD0 */  lwc1    $f6, %lo(D_809CBAD0)($at)  
/* 009E0 809CB4F0 C6240050 */  lwc1    $f4, 0x0050($s1)           ## 00000050
/* 009E4 809CB4F4 4480B000 */  mtc1    $zero, $f22                ## $f22 = 0.00
/* 009E8 809CB4F8 46062002 */  mul.s   $f0, $f4, $f6              
/* 009EC 809CB4FC 10000007 */  beq     $zero, $zero, .L809CB51C   
/* 009F0 809CB500 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
.L809CB504:
/* 009F4 809CB504 3C01809D */  lui     $at, %hi(D_809CBAD4)       ## $at = 809D0000
/* 009F8 809CB508 C42ABAD4 */  lwc1    $f10, %lo(D_809CBAD4)($at) 
/* 009FC 809CB50C C6280050 */  lwc1    $f8, 0x0050($s1)           ## 00000050
/* 00A00 809CB510 460A4002 */  mul.s   $f0, $f8, $f10             
/* 00A04 809CB514 46000586 */  mov.s   $f22, $f0                  
/* 00A08 809CB518 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
.L809CB51C:
/* 00A0C 809CB51C 4481F000 */  mtc1    $at, $f30                  ## $f30 = 65536.00
/* 00A10 809CB520 3C0145FA */  lui     $at, 0x45FA                ## $at = 45FA0000
/* 00A14 809CB524 4481E000 */  mtc1    $at, $f28                  ## $f28 = 8000.00
/* 00A18 809CB528 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00A1C 809CB52C 4481D000 */  mtc1    $at, $f26                  ## $f26 = 1000.00
/* 00A20 809CB530 3C01809D */  lui     $at, %hi(D_809CBAD8)       ## $at = 809D0000
/* 00A24 809CB534 3C13809D */  lui     $s3, %hi(D_809CBAB4)       ## $s3 = 809D0000
/* 00A28 809CB538 46000506 */  mov.s   $f20, $f0                  
/* 00A2C 809CB53C 2673BAB4 */  addiu   $s3, $s3, %lo(D_809CBAB4)  ## $s3 = 809CBAB4
/* 00A30 809CB540 C438BAD8 */  lwc1    $f24, %lo(D_809CBAD8)($at) 
/* 00A34 809CB544 2694BAB8 */  addiu   $s4, $s4, %lo(D_809CBAB8)  ## $s4 = 809CBAB8
/* 00A38 809CB548 27B2008C */  addiu   $s2, $sp, 0x008C           ## $s2 = FFFFFFF4
.L809CB54C:
/* 00A3C 809CB54C 06010004 */  bgez    $s0, .L809CB560            
/* 00A40 809CB550 32190001 */  andi    $t9, $s0, 0x0001           ## $t9 = 00000000
/* 00A44 809CB554 13200002 */  beq     $t9, $zero, .L809CB560     
/* 00A48 809CB558 00000000 */  nop
/* 00A4C 809CB55C 2739FFFE */  addiu   $t9, $t9, 0xFFFE           ## $t9 = FFFFFFFE
.L809CB560:
/* 00A50 809CB560 53200009 */  beql    $t9, $zero, .L809CB588     
/* 00A54 809CB564 C6280024 */  lwc1    $f8, 0x0024($s1)           ## 00000024
/* 00A58 809CB568 C6300024 */  lwc1    $f16, 0x0024($s1)          ## 00000024
/* 00A5C 809CB56C 46168480 */  add.s   $f18, $f16, $f22           
/* 00A60 809CB570 E7B2008C */  swc1    $f18, 0x008C($sp)          
/* 00A64 809CB574 C624002C */  lwc1    $f4, 0x002C($s1)           ## 0000002C
/* 00A68 809CB578 46142180 */  add.s   $f6, $f4, $f20             
/* 00A6C 809CB57C 10000009 */  beq     $zero, $zero, .L809CB5A4   
/* 00A70 809CB580 E7A60094 */  swc1    $f6, 0x0094($sp)           
/* 00A74 809CB584 C6280024 */  lwc1    $f8, 0x0024($s1)           ## 00000024
.L809CB588:
/* 00A78 809CB588 46144280 */  add.s   $f10, $f8, $f20            
/* 00A7C 809CB58C 4600A507 */  neg.s   $f20, $f20                 
/* 00A80 809CB590 E7AA008C */  swc1    $f10, 0x008C($sp)          
/* 00A84 809CB594 C630002C */  lwc1    $f16, 0x002C($s1)          ## 0000002C
/* 00A88 809CB598 46168480 */  add.s   $f18, $f16, $f22           
/* 00A8C 809CB59C 4600B587 */  neg.s   $f22, $f22                 
/* 00A90 809CB5A0 E7B20094 */  swc1    $f18, 0x0094($sp)          
.L809CB5A4:
/* 00A94 809CB5A4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A98 809CB5A8 00000000 */  nop
/* 00A9C 809CB5AC 46180102 */  mul.s   $f4, $f0, $f24             
/* 00AA0 809CB5B0 C6280054 */  lwc1    $f8, 0x0054($s1)           ## 00000054
/* 00AA4 809CB5B4 C6300028 */  lwc1    $f16, 0x0028($s1)          ## 00000028
/* 00AA8 809CB5B8 461A2180 */  add.s   $f6, $f4, $f26             
/* 00AAC 809CB5BC 46083282 */  mul.s   $f10, $f6, $f8             
/* 00AB0 809CB5C0 46105480 */  add.s   $f18, $f10, $f16           
/* 00AB4 809CB5C4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00AB8 809CB5C8 E7B20090 */  swc1    $f18, 0x0090($sp)          
/* 00ABC 809CB5CC C6240054 */  lwc1    $f4, 0x0054($s1)           ## 00000054
/* 00AC0 809CB5D0 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00AC4 809CB5D4 AFAC001C */  sw      $t4, 0x001C($sp)           
/* 00AC8 809CB5D8 461C2182 */  mul.s   $f6, $f4, $f28             
/* 00ACC 809CB5DC AFB50018 */  sw      $s5, 0x0018($sp)           
/* 00AD0 809CB5E0 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 00AD4 809CB5E4 461E0282 */  mul.s   $f10, $f0, $f30            
/* 00AD8 809CB5E8 02402825 */  or      $a1, $s2, $zero            ## $a1 = FFFFFFF4
/* 00ADC 809CB5EC 02603025 */  or      $a2, $s3, $zero            ## $a2 = 809CBAB4
/* 00AE0 809CB5F0 02803825 */  or      $a3, $s4, $zero            ## $a3 = 809CBAB8
/* 00AE4 809CB5F4 4600320D */  trunc.w.s $f8, $f6                   
/* 00AE8 809CB5F8 4600540D */  trunc.w.s $f16, $f10                 
/* 00AEC 809CB5FC 44094000 */  mfc1    $t1, $f8                   
/* 00AF0 809CB600 440B8000 */  mfc1    $t3, $f16                  
/* 00AF4 809CB604 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 00AF8 809CB608 0C00A568 */  jal     func_800295A0              
/* 00AFC 809CB60C AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00B00 809CB610 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00B04 809CB614 1615FFCD */  bne     $s0, $s5, .L809CB54C       
/* 00B08 809CB618 00000000 */  nop
/* 00B0C 809CB61C 862D01AC */  lh      $t5, 0x01AC($s1)           ## 000001AC
/* 00B10 809CB620 55A00004 */  bnel    $t5, $zero, .L809CB634     
/* 00B14 809CB624 8FBF0074 */  lw      $ra, 0x0074($sp)           
/* 00B18 809CB628 0C272BA8 */  jal     func_809CAEA0              
/* 00B1C 809CB62C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B20 809CB630 8FBF0074 */  lw      $ra, 0x0074($sp)           
.L809CB634:
/* 00B24 809CB634 D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 00B28 809CB638 D7B60030 */  ldc1    $f22, 0x0030($sp)          
/* 00B2C 809CB63C D7B80038 */  ldc1    $f24, 0x0038($sp)          
/* 00B30 809CB640 D7BA0040 */  ldc1    $f26, 0x0040($sp)          
/* 00B34 809CB644 D7BC0048 */  ldc1    $f28, 0x0048($sp)          
/* 00B38 809CB648 D7BE0050 */  ldc1    $f30, 0x0050($sp)          
/* 00B3C 809CB64C 8FB00058 */  lw      $s0, 0x0058($sp)           
/* 00B40 809CB650 8FB1005C */  lw      $s1, 0x005C($sp)           
/* 00B44 809CB654 8FB20060 */  lw      $s2, 0x0060($sp)           
/* 00B48 809CB658 8FB30064 */  lw      $s3, 0x0064($sp)           
/* 00B4C 809CB65C 8FB40068 */  lw      $s4, 0x0068($sp)           
/* 00B50 809CB660 8FB5006C */  lw      $s5, 0x006C($sp)           
/* 00B54 809CB664 8FB60070 */  lw      $s6, 0x0070($sp)           
/* 00B58 809CB668 03E00008 */  jr      $ra                        
/* 00B5C 809CB66C 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000


