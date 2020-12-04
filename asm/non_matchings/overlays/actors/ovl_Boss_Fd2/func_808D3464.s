.late_rodata
glabel D_808D6484
    .float 3.14159274101

glabel D_808D6488
    .float 6.28318548203

.text
glabel func_808D3464
/* 00DF4 808D3464 27BDFF38 */  addiu   $sp, $sp, 0xFF38           ## $sp = FFFFFF38
/* 00DF8 808D3468 AFBF005C */  sw      $ra, 0x005C($sp)           
/* 00DFC 808D346C AFB20058 */  sw      $s2, 0x0058($sp)           
/* 00E00 808D3470 AFB10054 */  sw      $s1, 0x0054($sp)           
/* 00E04 808D3474 AFB00050 */  sw      $s0, 0x0050($sp)           
/* 00E08 808D3478 F7BC0048 */  sdc1    $f28, 0x0048($sp)          
/* 00E0C 808D347C F7BA0040 */  sdc1    $f26, 0x0040($sp)          
/* 00E10 808D3480 F7B80038 */  sdc1    $f24, 0x0038($sp)          
/* 00E14 808D3484 F7B60030 */  sdc1    $f22, 0x0030($sp)          
/* 00E18 808D3488 F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 00E1C 808D348C A7A000B2 */  sh      $zero, 0x00B2($sp)         
/* 00E20 808D3490 8C8E0118 */  lw      $t6, 0x0118($a0)           ## 00000118
/* 00E24 808D3494 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E28 808D3498 2491014C */  addiu   $s1, $a0, 0x014C           ## $s1 = 0000014C
/* 00E2C 808D349C AFAE00AC */  sw      $t6, 0x00AC($sp)           
/* 00E30 808D34A0 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00E34 808D34A4 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 00E38 808D34A8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 0000014C
/* 00E3C 808D34AC 0C02927F */  jal     SkelAnime_Update
              
/* 00E40 808D34B0 AFAF00A8 */  sw      $t7, 0x00A8($sp)           
/* 00E44 808D34B4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 0000014C
/* 00E48 808D34B8 0C0295B2 */  jal     SkelAnime_StopAtFrame              
/* 00E4C 808D34BC 8E0501F0 */  lw      $a1, 0x01F0($s0)           ## 000001F0
/* 00E50 808D34C0 10400003 */  beq     $v0, $zero, .L808D34D0     
/* 00E54 808D34C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E58 808D34C8 0C234CAD */  jal     func_808D32B4              
/* 00E5C 808D34CC 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
.L808D34D0:
/* 00E60 808D34D0 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 00E64 808D34D4 44811000 */  mtc1    $at, $f2                   ## $f2 = 25.00
/* 00E68 808D34D8 C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 00E6C 808D34DC 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 00E70 808D34E0 2604021E */  addiu   $a0, $s0, 0x021E           ## $a0 = 0000021E
/* 00E74 808D34E4 4600103E */  c.le.s  $f2, $f0                   
/* 00E78 808D34E8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00E7C 808D34EC 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00E80 808D34F0 45000059 */  bc1f    .L808D3658                 
/* 00E84 808D34F4 00000000 */  nop
/* 00E88 808D34F8 4481A000 */  mtc1    $at, $f20                  ## $f20 = 70.00
/* 00E8C 808D34FC 00000000 */  nop
/* 00E90 808D3500 4614003C */  c.lt.s  $f0, $f20                  
/* 00E94 808D3504 00000000 */  nop
/* 00E98 808D3508 45000053 */  bc1f    .L808D3658                 
/* 00E9C 808D350C 00000000 */  nop
/* 00EA0 808D3510 46001032 */  c.eq.s  $f2, $f0                   
/* 00EA4 808D3514 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EA8 808D3518 45000005 */  bc1f    .L808D3530                 
/* 00EAC 808D351C 00000000 */  nop
/* 00EB0 808D3520 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00EB4 808D3524 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00EB8 808D3528 00320821 */  addu    $at, $at, $s2              
/* 00EBC 808D352C E4240AFC */  swc1    $f4, 0x0AFC($at)           ## 00010AFC
.L808D3530:
/* 00EC0 808D3530 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00EC4 808D3534 240530DB */  addiu   $a1, $zero, 0x30DB         ## $a1 = 000030DB
/* 00EC8 808D3538 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00ECC 808D353C 44813000 */  mtc1    $at, $f6                   ## $f6 = 50.00
/* 00ED0 808D3540 C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 00ED4 808D3544 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 00ED8 808D3548 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 00EDC 808D354C 4600303C */  c.lt.s  $f6, $f0                   
/* 00EE0 808D3550 00000000 */  nop
/* 00EE4 808D3554 4502000A */  bc1fl   .L808D3580                 
/* 00EE8 808D3558 A7A800B2 */  sh      $t0, 0x00B2($sp)           
/* 00EEC 808D355C 4600A201 */  sub.s   $f8, $f20, $f0             
/* 00EF0 808D3560 44815000 */  mtc1    $at, $f10                  ## $f10 = 12.00
/* 00EF4 808D3564 00000000 */  nop
/* 00EF8 808D3568 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00EFC 808D356C 4600848D */  trunc.w.s $f18, $f16                 
/* 00F00 808D3570 44199000 */  mfc1    $t9, $f18                  
/* 00F04 808D3574 10000002 */  beq     $zero, $zero, .L808D3580   
/* 00F08 808D3578 A7B900B2 */  sh      $t9, 0x00B2($sp)           
/* 00F0C 808D357C A7A800B2 */  sh      $t0, 0x00B2($sp)           
.L808D3580:
/* 00F10 808D3580 8FA200A8 */  lw      $v0, 0x00A8($sp)           
/* 00F14 808D3584 C6060210 */  lwc1    $f6, 0x0210($s0)           ## 00000210
/* 00F18 808D3588 C6120218 */  lwc1    $f18, 0x0218($s0)          ## 00000218
/* 00F1C 808D358C C4440024 */  lwc1    $f4, 0x0024($v0)           ## 00000024
/* 00F20 808D3590 C450002C */  lwc1    $f16, 0x002C($v0)          ## 0000002C
/* 00F24 808D3594 C60A0214 */  lwc1    $f10, 0x0214($s0)          ## 00000214
/* 00F28 808D3598 46062501 */  sub.s   $f20, $f4, $f6             
/* 00F2C 808D359C C4480028 */  lwc1    $f8, 0x0028($v0)           ## 00000028
/* 00F30 808D35A0 46128581 */  sub.s   $f22, $f16, $f18           
/* 00F34 808D35A4 4600A386 */  mov.s   $f14, $f20                 
/* 00F38 808D35A8 460A4601 */  sub.s   $f24, $f8, $f10            
/* 00F3C 808D35AC 0C034199 */  jal     atan2s
              
/* 00F40 808D35B0 4600B306 */  mov.s   $f12, $f22                 
/* 00F44 808D35B4 4614A102 */  mul.s   $f4, $f20, $f20            
/* 00F48 808D35B8 4600C386 */  mov.s   $f14, $f24                 
/* 00F4C 808D35BC A7A200B4 */  sh      $v0, 0x00B4($sp)           
/* 00F50 808D35C0 4616B182 */  mul.s   $f6, $f22, $f22            
/* 00F54 808D35C4 46062000 */  add.s   $f0, $f4, $f6              
/* 00F58 808D35C8 0C034199 */  jal     atan2s
              
/* 00F5C 808D35CC 46000304 */  sqrt.s  $f12, $f0                  
/* 00F60 808D35D0 87A500B4 */  lh      $a1, 0x00B4($sp)           
/* 00F64 808D35D4 860900B6 */  lh      $t1, 0x00B6($s0)           ## 000000B6
/* 00F68 808D35D8 00021823 */  subu    $v1, $zero, $v0            
/* 00F6C 808D35DC 00608825 */  or      $s1, $v1, $zero            ## $s1 = 00000000
/* 00F70 808D35E0 00A92823 */  subu    $a1, $a1, $t1              
/* 00F74 808D35E4 00052C00 */  sll     $a1, $a1, 16               
/* 00F78 808D35E8 00052C03 */  sra     $a1, $a1, 16               
/* 00F7C 808D35EC 28A11F41 */  slti    $at, $a1, 0x1F41           
/* 00F80 808D35F0 14200002 */  bne     $at, $zero, .L808D35FC     
/* 00F84 808D35F4 2631E4A8 */  addiu   $s1, $s1, 0xE4A8           ## $s1 = FFFFE4A8
/* 00F88 808D35F8 24051F40 */  addiu   $a1, $zero, 0x1F40         ## $a1 = 00001F40
.L808D35FC:
/* 00F8C 808D35FC 28A1E0C0 */  slti    $at, $a1, 0xE0C0           
/* 00F90 808D3600 10200002 */  beq     $at, $zero, .L808D360C     
/* 00F94 808D3604 00118C00 */  sll     $s1, $s1, 16               
/* 00F98 808D3608 2405E0C0 */  addiu   $a1, $zero, 0xE0C0         ## $a1 = FFFFE0C0
.L808D360C:
/* 00F9C 808D360C 00118C03 */  sra     $s1, $s1, 16               
/* 00FA0 808D3610 2A2103E9 */  slti    $at, $s1, 0x03E9           
/* 00FA4 808D3614 14200002 */  bne     $at, $zero, .L808D3620     
/* 00FA8 808D3618 2604021E */  addiu   $a0, $s0, 0x021E           ## $a0 = 0000021E
/* 00FAC 808D361C 241103E8 */  addiu   $s1, $zero, 0x03E8         ## $s1 = 000003E8
.L808D3620:
/* 00FB0 808D3620 2A21F060 */  slti    $at, $s1, 0xF060           
/* 00FB4 808D3624 10200002 */  beq     $at, $zero, .L808D3630     
/* 00FB8 808D3628 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00FBC 808D362C 2411F060 */  addiu   $s1, $zero, 0xF060         ## $s1 = FFFFF060
.L808D3630:
/* 00FC0 808D3630 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 00FC4 808D3634 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 00FC8 808D3638 00112C00 */  sll     $a1, $s1, 16               
/* 00FCC 808D363C 00052C03 */  sra     $a1, $a1, 16               
/* 00FD0 808D3640 2604021C */  addiu   $a0, $s0, 0x021C           ## $a0 = 0000021C
/* 00FD4 808D3644 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00FD8 808D3648 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 00FDC 808D364C 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 00FE0 808D3650 10000009 */  beq     $zero, $zero, .L808D3678   
/* 00FE4 808D3654 87AA00B2 */  lh      $t2, 0x00B2($sp)           
.L808D3658:
/* 00FE8 808D3658 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 00FEC 808D365C 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 00FF0 808D3660 2604021C */  addiu   $a0, $s0, 0x021C           ## $a0 = 0000021C
/* 00FF4 808D3664 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00FF8 808D3668 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00FFC 808D366C 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 01000 808D3670 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 01004 808D3674 87AA00B2 */  lh      $t2, 0x00B2($sp)           
.L808D3678:
/* 01008 808D3678 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 0100C 808D367C 27AB0090 */  addiu   $t3, $sp, 0x0090           ## $t3 = FFFFFFC8
/* 01010 808D3680 114000BE */  beq     $t2, $zero, .L808D397C     
/* 01014 808D3684 3C0C808D */  lui     $t4, %hi(D_808D61AC)       ## $t4 = 808D0000
/* 01018 808D3688 258C61AC */  addiu   $t4, $t4, %lo(D_808D61AC)  ## $t4 = 808D61AC
/* 0101C 808D368C 44810000 */  mtc1    $at, $f0                   ## $f0 = 32768.00
/* 01020 808D3690 8D8E0000 */  lw      $t6, 0x0000($t4)           ## 808D61AC
/* 01024 808D3694 3C01808D */  lui     $at, %hi(D_808D6484)       ## $at = 808D0000
/* 01028 808D3698 C4226484 */  lwc1    $f2, %lo(D_808D6484)($at)  
/* 0102C 808D369C AD6E0000 */  sw      $t6, 0x0000($t3)           ## FFFFFFC8
/* 01030 808D36A0 8D8E0008 */  lw      $t6, 0x0008($t4)           ## 808D61B4
/* 01034 808D36A4 8D8D0004 */  lw      $t5, 0x0004($t4)           ## 808D61B0
/* 01038 808D36A8 3C18808D */  lui     $t8, %hi(D_808D61B8)       ## $t8 = 808D0000
/* 0103C 808D36AC 271861B8 */  addiu   $t8, $t8, %lo(D_808D61B8)  ## $t8 = 808D61B8
/* 01040 808D36B0 AD6E0008 */  sw      $t6, 0x0008($t3)           ## FFFFFFD0
/* 01044 808D36B4 AD6D0004 */  sw      $t5, 0x0004($t3)           ## FFFFFFCC
/* 01048 808D36B8 8F080000 */  lw      $t0, 0x0000($t8)           ## 808D61B8
/* 0104C 808D36BC 27AF0078 */  addiu   $t7, $sp, 0x0078           ## $t7 = FFFFFFB0
/* 01050 808D36C0 8F190004 */  lw      $t9, 0x0004($t8)           ## 808D61BC
/* 01054 808D36C4 ADE80000 */  sw      $t0, 0x0000($t7)           ## FFFFFFB0
/* 01058 808D36C8 8F080008 */  lw      $t0, 0x0008($t8)           ## 808D61C0
/* 0105C 808D36CC ADF90004 */  sw      $t9, 0x0004($t7)           ## FFFFFFB4
/* 01060 808D36D0 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01064 808D36D4 ADE80008 */  sw      $t0, 0x0008($t7)           ## FFFFFFB8
/* 01068 808D36D8 8FAA00AC */  lw      $t2, 0x00AC($sp)           
/* 0106C 808D36DC 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 01070 808D36E0 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 01074 808D36E4 A1490220 */  sb      $t1, 0x0220($t2)           ## 00000220
/* 01078 808D36E8 26020210 */  addiu   $v0, $s0, 0x0210           ## $v0 = 00000210
/* 0107C 808D36EC E7A80098 */  swc1    $f8, 0x0098($sp)           
/* 01080 808D36F0 8C4D0000 */  lw      $t5, 0x0000($v0)           ## 00000210
/* 01084 808D36F4 27AB006C */  addiu   $t3, $sp, 0x006C           ## $t3 = FFFFFFA4
/* 01088 808D36F8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0108C 808D36FC AD6D0000 */  sw      $t5, 0x0000($t3)           ## FFFFFFA4
/* 01090 808D3700 8C4C0004 */  lw      $t4, 0x0004($v0)           ## 00000214
/* 01094 808D3704 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01098 808D3708 AD6C0004 */  sw      $t4, 0x0004($t3)           ## FFFFFFA8
/* 0109C 808D370C 8C4D0008 */  lw      $t5, 0x0008($v0)           ## 00000218
/* 010A0 808D3710 AD6D0008 */  sw      $t5, 0x0008($t3)           ## FFFFFFAC
/* 010A4 808D3714 860F021E */  lh      $t7, 0x021E($s0)           ## 0000021E
/* 010A8 808D3718 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 010AC 808D371C 8619021C */  lh      $t9, 0x021C($s0)           ## 0000021C
/* 010B0 808D3720 AFA20064 */  sw      $v0, 0x0064($sp)           
/* 010B4 808D3724 01CFC021 */  addu    $t8, $t6, $t7              
/* 010B8 808D3728 44985000 */  mtc1    $t8, $f10                  ## $f10 = -0.00
/* 010BC 808D372C 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 010C0 808D3730 46805420 */  cvt.s.w $f16, $f10                 
/* 010C4 808D3734 468021A0 */  cvt.s.w $f6, $f4                   
/* 010C8 808D3738 46008483 */  div.s   $f18, $f16, $f0            
/* 010CC 808D373C 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 010D0 808D3740 46003203 */  div.s   $f8, $f6, $f0              
/* 010D4 808D3744 46029302 */  mul.s   $f12, $f18, $f2            
/* 010D8 808D3748 00000000 */  nop
/* 010DC 808D374C 46024282 */  mul.s   $f10, $f8, $f2             
/* 010E0 808D3750 0C034348 */  jal     Matrix_RotateY              
/* 010E4 808D3754 46105580 */  add.s   $f22, $f10, $f16           
/* 010E8 808D3758 4600B306 */  mov.s   $f12, $f22                 
/* 010EC 808D375C 0C0342DC */  jal     Matrix_RotateX              
/* 010F0 808D3760 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 010F4 808D3764 27B10084 */  addiu   $s1, $sp, 0x0084           ## $s1 = FFFFFFBC
/* 010F8 808D3768 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFBC
/* 010FC 808D376C 0C0346BD */  jal     Matrix_MultVec3f              
/* 01100 808D3770 27A40090 */  addiu   $a0, $sp, 0x0090           ## $a0 = FFFFFFC8
/* 01104 808D3774 8604019C */  lh      $a0, 0x019C($s0)           ## 0000019C
/* 01108 808D3778 00042340 */  sll     $a0, $a0, 13               
/* 0110C 808D377C 00042400 */  sll     $a0, $a0, 16               
/* 01110 808D3780 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01114 808D3784 00042403 */  sra     $a0, $a0, 16               
/* 01118 808D3788 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 0111C 808D378C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 50.00
/* 01120 808D3790 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 01124 808D3794 4481B000 */  mtc1    $at, $f22                  ## $f22 = 300.00
/* 01128 808D3798 46140482 */  mul.s   $f18, $f0, $f20            
/* 0112C 808D379C 87A900B2 */  lh      $t1, 0x00B2($sp)           
/* 01130 808D37A0 27A80078 */  addiu   $t0, $sp, 0x0078           ## $t0 = FFFFFFB0
/* 01134 808D37A4 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 01138 808D37A8 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 0113C 808D37AC 8FA500AC */  lw      $a1, 0x00AC($sp)           
/* 01140 808D37B0 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01144 808D37B4 46169100 */  add.s   $f4, $f18, $f22            
/* 01148 808D37B8 24A51970 */  addiu   $a1, $a1, 0x1970           ## $a1 = 00001970
/* 0114C 808D37BC 27A6006C */  addiu   $a2, $sp, 0x006C           ## $a2 = FFFFFFA4
/* 01150 808D37C0 02203825 */  or      $a3, $s1, $zero            ## $a3 = FFFFFFBC
/* 01154 808D37C4 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 01158 808D37C8 860B021E */  lh      $t3, 0x021E($s0)           ## 0000021E
/* 0115C 808D37CC 860A00B6 */  lh      $t2, 0x00B6($s0)           ## 000000B6
/* 01160 808D37D0 AFA50060 */  sw      $a1, 0x0060($sp)           
/* 01164 808D37D4 014B6021 */  addu    $t4, $t2, $t3              
/* 01168 808D37D8 0C2349D2 */  jal     func_808D2748              
/* 0116C 808D37DC AFAC001C */  sw      $t4, 0x001C($sp)           
/* 01170 808D37E0 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01174 808D37E4 44810000 */  mtc1    $at, $f0                   ## $f0 = 0.50
/* 01178 808D37E8 C7A80084 */  lwc1    $f8, 0x0084($sp)           
/* 0117C 808D37EC C7A6006C */  lwc1    $f6, 0x006C($sp)           
/* 01180 808D37F0 C7A40088 */  lwc1    $f4, 0x0088($sp)           
/* 01184 808D37F4 46004282 */  mul.s   $f10, $f8, $f0             
/* 01188 808D37F8 C7B20070 */  lwc1    $f18, 0x0070($sp)          
/* 0118C 808D37FC 46002202 */  mul.s   $f8, $f4, $f0              
/* 01190 808D3800 460A3400 */  add.s   $f16, $f6, $f10            
/* 01194 808D3804 C7AA0074 */  lwc1    $f10, 0x0074($sp)          
/* 01198 808D3808 46089180 */  add.s   $f6, $f18, $f8             
/* 0119C 808D380C E7B0006C */  swc1    $f16, 0x006C($sp)          
/* 011A0 808D3810 C7B0008C */  lwc1    $f16, 0x008C($sp)          
/* 011A4 808D3814 E7A60070 */  swc1    $f6, 0x0070($sp)           
/* 011A8 808D3818 46008102 */  mul.s   $f4, $f16, $f0             
/* 011AC 808D381C 46045480 */  add.s   $f18, $f10, $f4            
/* 011B0 808D3820 E7B20074 */  swc1    $f18, 0x0074($sp)          
/* 011B4 808D3824 8604019C */  lh      $a0, 0x019C($s0)           ## 0000019C
/* 011B8 808D3828 00042340 */  sll     $a0, $a0, 13               
/* 011BC 808D382C 00042400 */  sll     $a0, $a0, 16               
/* 011C0 808D3830 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 011C4 808D3834 00042403 */  sra     $a0, $a0, 16               
/* 011C8 808D3838 46140202 */  mul.s   $f8, $f0, $f20             
/* 011CC 808D383C 87AE00B2 */  lh      $t6, 0x00B2($sp)           
/* 011D0 808D3840 27AD0078 */  addiu   $t5, $sp, 0x0078           ## $t5 = FFFFFFB0
/* 011D4 808D3844 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 011D8 808D3848 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 011DC 808D384C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 011E0 808D3850 8FA50060 */  lw      $a1, 0x0060($sp)           
/* 011E4 808D3854 46164180 */  add.s   $f6, $f8, $f22             
/* 011E8 808D3858 27A6006C */  addiu   $a2, $sp, 0x006C           ## $a2 = FFFFFFA4
/* 011EC 808D385C 02203825 */  or      $a3, $s1, $zero            ## $a3 = FFFFFFBC
/* 011F0 808D3860 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 011F4 808D3864 8618021E */  lh      $t8, 0x021E($s0)           ## 0000021E
/* 011F8 808D3868 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 011FC 808D386C 01F8C821 */  addu    $t9, $t7, $t8              
/* 01200 808D3870 0C2349D2 */  jal     func_808D2748              
/* 01204 808D3874 AFB9001C */  sw      $t9, 0x001C($sp)           
/* 01208 808D3878 3C014188 */  lui     $at, 0x4188                ## $at = 41880000
/* 0120C 808D387C 44815000 */  mtc1    $at, $f10                  ## $f10 = 17.00
/* 01210 808D3880 3C01808D */  lui     $at, %hi(D_808D6488)       ## $at = 808D0000
/* 01214 808D3884 C43C6488 */  lwc1    $f28, %lo(D_808D6488)($at) 
/* 01218 808D3888 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0121C 808D388C 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 01220 808D3890 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01224 808D3894 4481D000 */  mtc1    $at, $f26                  ## $f26 = 100.00
/* 01228 808D3898 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 0122C 808D389C 4481C000 */  mtc1    $at, $f24                  ## $f24 = -10.00
/* 01230 808D38A0 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 01234 808D38A4 E7AA0094 */  swc1    $f10, 0x0094($sp)          
/* 01238 808D38A8 E7B00090 */  swc1    $f16, 0x0090($sp)          
/* 0123C 808D38AC E7A40098 */  swc1    $f4, 0x0098($sp)           
.L808D38B0:
/* 01240 808D38B0 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 01244 808D38B4 4600E306 */  mov.s   $f12, $f28                 
/* 01248 808D38B8 46000506 */  mov.s   $f20, $f0                  
/* 0124C 808D38BC 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 01250 808D38C0 4600E306 */  mov.s   $f12, $f28                 
/* 01254 808D38C4 46000586 */  mov.s   $f22, $f0                  
/* 01258 808D38C8 4600A306 */  mov.s   $f12, $f20                 
/* 0125C 808D38CC 0C034348 */  jal     Matrix_RotateY              
/* 01260 808D38D0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01264 808D38D4 4600B306 */  mov.s   $f12, $f22                 
/* 01268 808D38D8 0C0342DC */  jal     Matrix_RotateX              
/* 0126C 808D38DC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01270 808D38E0 27A40090 */  addiu   $a0, $sp, 0x0090           ## $a0 = FFFFFFC8
/* 01274 808D38E4 0C0346BD */  jal     Matrix_MultVec3f              
/* 01278 808D38E8 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFBC
/* 0127C 808D38EC C7B20084 */  lwc1    $f18, 0x0084($sp)          
/* 01280 808D38F0 C7B00088 */  lwc1    $f16, 0x0088($sp)          
/* 01284 808D38F4 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01288 808D38F8 46189202 */  mul.s   $f8, $f18, $f24            
/* 0128C 808D38FC C7B2008C */  lwc1    $f18, 0x008C($sp)          
/* 01290 808D3900 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 01294 808D3904 46188282 */  mul.s   $f10, $f16, $f24           
/* 01298 808D3908 461A4183 */  div.s   $f6, $f8, $f26             
/* 0129C 808D390C 46189202 */  mul.s   $f8, $f18, $f24            
/* 012A0 808D3910 461A5103 */  div.s   $f4, $f10, $f26            
/* 012A4 808D3914 E7A60078 */  swc1    $f6, 0x0078($sp)           
/* 012A8 808D3918 461A4183 */  div.s   $f6, $f8, $f26             
/* 012AC 808D391C E7A4007C */  swc1    $f4, 0x007C($sp)           
/* 012B0 808D3920 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 012B4 808D3924 E7A60080 */  swc1    $f6, 0x0080($sp)           
/* 012B8 808D3928 4600040D */  trunc.w.s $f16, $f0                  
/* 012BC 808D392C 27A80078 */  addiu   $t0, $sp, 0x0078           ## $t0 = FFFFFFB0
/* 012C0 808D3930 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 012C4 808D3934 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 012C8 808D3938 440A8000 */  mfc1    $t2, $f16                  
/* 012CC 808D393C 8FA50060 */  lw      $a1, 0x0060($sp)           
/* 012D0 808D3940 8FA60064 */  lw      $a2, 0x0064($sp)           
/* 012D4 808D3944 000A5C00 */  sll     $t3, $t2, 16               
/* 012D8 808D3948 000B6403 */  sra     $t4, $t3, 16               
/* 012DC 808D394C 258D0008 */  addiu   $t5, $t4, 0x0008           ## $t5 = 00000008
/* 012E0 808D3950 448D5000 */  mtc1    $t5, $f10                  ## $f10 = 0.00
/* 012E4 808D3954 02203825 */  or      $a3, $s1, $zero            ## $a3 = FFFFFFBC
/* 012E8 808D3958 46805120 */  cvt.s.w $f4, $f10                  
/* 012EC 808D395C 0C234A17 */  jal     func_808D285C              
/* 012F0 808D3960 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 012F4 808D3964 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 012F8 808D3968 00108400 */  sll     $s0, $s0, 16               
/* 012FC 808D396C 00108403 */  sra     $s0, $s0, 16               
/* 01300 808D3970 2A010006 */  slti    $at, $s0, 0x0006           
/* 01304 808D3974 1420FFCE */  bne     $at, $zero, .L808D38B0     
/* 01308 808D3978 00000000 */  nop
.L808D397C:
/* 0130C 808D397C 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 01310 808D3980 D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 01314 808D3984 D7B60030 */  ldc1    $f22, 0x0030($sp)          
/* 01318 808D3988 D7B80038 */  ldc1    $f24, 0x0038($sp)          
/* 0131C 808D398C D7BA0040 */  ldc1    $f26, 0x0040($sp)          
/* 01320 808D3990 D7BC0048 */  ldc1    $f28, 0x0048($sp)          
/* 01324 808D3994 8FB00050 */  lw      $s0, 0x0050($sp)           
/* 01328 808D3998 8FB10054 */  lw      $s1, 0x0054($sp)           
/* 0132C 808D399C 8FB20058 */  lw      $s2, 0x0058($sp)           
/* 01330 808D39A0 03E00008 */  jr      $ra                        
/* 01334 808D39A4 27BD00C8 */  addiu   $sp, $sp, 0x00C8           ## $sp = 00000000
