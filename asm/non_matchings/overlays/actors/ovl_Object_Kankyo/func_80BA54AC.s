glabel func_80BA54AC
/* 02A0C 80BA54AC 27BDFEC8 */  addiu   $sp, $sp, 0xFEC8           ## $sp = FFFFFEC8
/* 02A10 80BA54B0 3C0F80BA */  lui     $t7, %hi(D_80BA599C)       ## $t7 = 80BA0000
/* 02A14 80BA54B4 AFBF0074 */  sw      $ra, 0x0074($sp)           
/* 02A18 80BA54B8 AFBE0070 */  sw      $s8, 0x0070($sp)           
/* 02A1C 80BA54BC AFB7006C */  sw      $s7, 0x006C($sp)           
/* 02A20 80BA54C0 AFB60068 */  sw      $s6, 0x0068($sp)           
/* 02A24 80BA54C4 AFB50064 */  sw      $s5, 0x0064($sp)           
/* 02A28 80BA54C8 AFB40060 */  sw      $s4, 0x0060($sp)           
/* 02A2C 80BA54CC AFB3005C */  sw      $s3, 0x005C($sp)           
/* 02A30 80BA54D0 AFB20058 */  sw      $s2, 0x0058($sp)           
/* 02A34 80BA54D4 AFB10054 */  sw      $s1, 0x0054($sp)           
/* 02A38 80BA54D8 AFB00050 */  sw      $s0, 0x0050($sp)           
/* 02A3C 80BA54DC F7B80048 */  sdc1    $f24, 0x0048($sp)          
/* 02A40 80BA54E0 F7B60040 */  sdc1    $f22, 0x0040($sp)          
/* 02A44 80BA54E4 F7B40038 */  sdc1    $f20, 0x0038($sp)          
/* 02A48 80BA54E8 25EF599C */  addiu   $t7, $t7, %lo(D_80BA599C)  ## $t7 = 80BA599C
/* 02A4C 80BA54EC 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80BA599C
/* 02A50 80BA54F0 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80BA59A0
/* 02A54 80BA54F4 27AE0114 */  addiu   $t6, $sp, 0x0114           ## $t6 = FFFFFFDC
/* 02A58 80BA54F8 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFDC
/* 02A5C 80BA54FC ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFE0
/* 02A60 80BA5500 8DF8000C */  lw      $t8, 0x000C($t7)           ## 80BA59A8
/* 02A64 80BA5504 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80BA59A4
/* 02A68 80BA5508 3C0980BA */  lui     $t1, %hi(D_80BA59B4)       ## $t1 = 80BA0000
/* 02A6C 80BA550C ADD8000C */  sw      $t8, 0x000C($t6)           ## FFFFFFE8
/* 02A70 80BA5510 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFE4
/* 02A74 80BA5514 8DF90010 */  lw      $t9, 0x0010($t7)           ## 80BA59AC
/* 02A78 80BA5518 8DF80014 */  lw      $t8, 0x0014($t7)           ## 80BA59B0
/* 02A7C 80BA551C 252959B4 */  addiu   $t1, $t1, %lo(D_80BA59B4)  ## $t1 = 80BA59B4
/* 02A80 80BA5520 ADD90010 */  sw      $t9, 0x0010($t6)           ## FFFFFFEC
/* 02A84 80BA5524 ADD80014 */  sw      $t8, 0x0014($t6)           ## FFFFFFF0
/* 02A88 80BA5528 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80BA59B8
/* 02A8C 80BA552C 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80BA59B4
/* 02A90 80BA5530 27A800FC */  addiu   $t0, $sp, 0x00FC           ## $t0 = FFFFFFC4
/* 02A94 80BA5534 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFC8
/* 02A98 80BA5538 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFC4
/* 02A9C 80BA553C 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80BA59BC
/* 02AA0 80BA5540 8D2A000C */  lw      $t2, 0x000C($t1)           ## 80BA59C0
/* 02AA4 80BA5544 3C0D80BA */  lui     $t5, %hi(D_80BA59CC)       ## $t5 = 80BA0000
/* 02AA8 80BA5548 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFCC
/* 02AAC 80BA554C AD0A000C */  sw      $t2, 0x000C($t0)           ## FFFFFFD0
/* 02AB0 80BA5550 8D2A0014 */  lw      $t2, 0x0014($t1)           ## 80BA59C8
/* 02AB4 80BA5554 8D2B0010 */  lw      $t3, 0x0010($t1)           ## 80BA59C4
/* 02AB8 80BA5558 25AD59CC */  addiu   $t5, $t5, %lo(D_80BA59CC)  ## $t5 = 80BA59CC
/* 02ABC 80BA555C AD0A0014 */  sw      $t2, 0x0014($t0)           ## FFFFFFD8
/* 02AC0 80BA5560 AD0B0010 */  sw      $t3, 0x0010($t0)           ## FFFFFFD4
/* 02AC4 80BA5564 8DAE0004 */  lw      $t6, 0x0004($t5)           ## 80BA59D0
/* 02AC8 80BA5568 8DAF0000 */  lw      $t7, 0x0000($t5)           ## 80BA59CC
/* 02ACC 80BA556C 27AC00E4 */  addiu   $t4, $sp, 0x00E4           ## $t4 = FFFFFFAC
/* 02AD0 80BA5570 AD8E0004 */  sw      $t6, 0x0004($t4)           ## FFFFFFB0
/* 02AD4 80BA5574 AD8F0000 */  sw      $t7, 0x0000($t4)           ## FFFFFFAC
/* 02AD8 80BA5578 8DAF0008 */  lw      $t7, 0x0008($t5)           ## 80BA59D4
/* 02ADC 80BA557C 8DAE000C */  lw      $t6, 0x000C($t5)           ## 80BA59D8
/* 02AE0 80BA5580 3C1980BA */  lui     $t9, %hi(D_80BA59E4)       ## $t9 = 80BA0000
/* 02AE4 80BA5584 AD8F0008 */  sw      $t7, 0x0008($t4)           ## FFFFFFB4
/* 02AE8 80BA5588 AD8E000C */  sw      $t6, 0x000C($t4)           ## FFFFFFB8
/* 02AEC 80BA558C 8DAE0014 */  lw      $t6, 0x0014($t5)           ## 80BA59E0
/* 02AF0 80BA5590 8DAF0010 */  lw      $t7, 0x0010($t5)           ## 80BA59DC
/* 02AF4 80BA5594 273959E4 */  addiu   $t9, $t9, %lo(D_80BA59E4)  ## $t9 = 80BA59E4
/* 02AF8 80BA5598 AD8E0014 */  sw      $t6, 0x0014($t4)           ## FFFFFFC0
/* 02AFC 80BA559C AD8F0010 */  sw      $t7, 0x0010($t4)           ## FFFFFFBC
/* 02B00 80BA55A0 8F280004 */  lw      $t0, 0x0004($t9)           ## 80BA59E8
/* 02B04 80BA55A4 8F290000 */  lw      $t1, 0x0000($t9)           ## 80BA59E4
/* 02B08 80BA55A8 27B800CC */  addiu   $t8, $sp, 0x00CC           ## $t8 = FFFFFF94
/* 02B0C 80BA55AC AF080004 */  sw      $t0, 0x0004($t8)           ## FFFFFF98
/* 02B10 80BA55B0 AF090000 */  sw      $t1, 0x0000($t8)           ## FFFFFF94
/* 02B14 80BA55B4 8F290008 */  lw      $t1, 0x0008($t9)           ## 80BA59EC
/* 02B18 80BA55B8 8F28000C */  lw      $t0, 0x000C($t9)           ## 80BA59F0
/* 02B1C 80BA55BC 3C0B80BA */  lui     $t3, %hi(D_80BA59FC)       ## $t3 = 80BA0000
/* 02B20 80BA55C0 AF090008 */  sw      $t1, 0x0008($t8)           ## FFFFFF9C
/* 02B24 80BA55C4 AF08000C */  sw      $t0, 0x000C($t8)           ## FFFFFFA0
/* 02B28 80BA55C8 8F280014 */  lw      $t0, 0x0014($t9)           ## 80BA59F8
/* 02B2C 80BA55CC 8F290010 */  lw      $t1, 0x0010($t9)           ## 80BA59F4
/* 02B30 80BA55D0 256B59FC */  addiu   $t3, $t3, %lo(D_80BA59FC)  ## $t3 = 80BA59FC
/* 02B34 80BA55D4 AF080014 */  sw      $t0, 0x0014($t8)           ## FFFFFFA8
/* 02B38 80BA55D8 AF090010 */  sw      $t1, 0x0010($t8)           ## FFFFFFA4
/* 02B3C 80BA55DC 8D6C0004 */  lw      $t4, 0x0004($t3)           ## 80BA5A00
/* 02B40 80BA55E0 8D6D0000 */  lw      $t5, 0x0000($t3)           ## 80BA59FC
/* 02B44 80BA55E4 27AA00B4 */  addiu   $t2, $sp, 0x00B4           ## $t2 = FFFFFF7C
/* 02B48 80BA55E8 AD4C0004 */  sw      $t4, 0x0004($t2)           ## FFFFFF80
/* 02B4C 80BA55EC AD4D0000 */  sw      $t5, 0x0000($t2)           ## FFFFFF7C
/* 02B50 80BA55F0 8D6D0008 */  lw      $t5, 0x0008($t3)           ## 80BA5A04
/* 02B54 80BA55F4 8D6C000C */  lw      $t4, 0x000C($t3)           ## 80BA5A08
/* 02B58 80BA55F8 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 02B5C 80BA55FC AD4D0008 */  sw      $t5, 0x0008($t2)           ## FFFFFF84
/* 02B60 80BA5600 AD4C000C */  sw      $t4, 0x000C($t2)           ## FFFFFF88
/* 02B64 80BA5604 8D6C0014 */  lw      $t4, 0x0014($t3)           ## 80BA5A10
/* 02B68 80BA5608 8D6D0010 */  lw      $t5, 0x0010($t3)           ## 80BA5A0C
/* 02B6C 80BA560C 0080B025 */  or      $s6, $a0, $zero            ## $s6 = 00000000
/* 02B70 80BA5610 AD4C0014 */  sw      $t4, 0x0014($t2)           ## FFFFFF90
/* 02B74 80BA5614 AD4D0010 */  sw      $t5, 0x0010($t2)           ## FFFFFF8C
/* 02B78 80BA5618 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 02B7C 80BA561C 3C0680BA */  lui     $a2, %hi(D_80BA5B98)       ## $a2 = 80BA0000
/* 02B80 80BA5620 24C65B98 */  addiu   $a2, $a2, %lo(D_80BA5B98)  ## $a2 = 80BA5B98
/* 02B84 80BA5624 27A400A0 */  addiu   $a0, $sp, 0x00A0           ## $a0 = FFFFFF68
/* 02B88 80BA5628 24070603 */  addiu   $a3, $zero, 0x0603         ## $a3 = 00000603
/* 02B8C 80BA562C 0C031AB1 */  jal     Graph_OpenDisps              
/* 02B90 80BA5630 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 02B94 80BA5634 92CE1659 */  lbu     $t6, 0x1659($s6)           ## 00001659
/* 02B98 80BA5638 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 02B9C 80BA563C 3C0180BA */  lui     $at, %hi(D_80BA5CD0)       ## $at = 80BA0000
/* 02BA0 80BA5640 11C00090 */  beq     $t6, $zero, .L80BA5884     
/* 02BA4 80BA5644 24170054 */  addiu   $s7, $zero, 0x0054         ## $s7 = 00000054
/* 02BA8 80BA5648 C4385CD0 */  lwc1    $f24, %lo(D_80BA5CD0)($at) 
/* 02BAC 80BA564C 3C0180BA */  lui     $at, %hi(D_80BA5CD4)       ## $at = 80BA0000
/* 02BB0 80BA5650 C4365CD4 */  lwc1    $f22, %lo(D_80BA5CD4)($at) 
/* 02BB4 80BA5654 3C0180BA */  lui     $at, %hi(D_80BA5CD8)       ## $at = 80BA0000
/* 02BB8 80BA5658 C4345CD8 */  lwc1    $f20, %lo(D_80BA5CD8)($at) 
/* 02BBC 80BA565C 3C1EE700 */  lui     $s8, 0xE700                ## $s8 = E7000000
.L80BA5660:
/* 02BC0 80BA5660 02770019 */  multu   $s3, $s7                   
/* 02BC4 80BA5664 00138080 */  sll     $s0, $s3,  2               
/* 02BC8 80BA5668 3C150600 */  lui     $s5, 0x0600                ## $s5 = 06000000
/* 02BCC 80BA566C 26B55FF0 */  addiu   $s5, $s5, 0x5FF0           ## $s5 = 06005FF0
/* 02BD0 80BA5670 03B0C021 */  addu    $t8, $sp, $s0              
/* 02BD4 80BA5674 03B0C821 */  addu    $t9, $sp, $s0              
/* 02BD8 80BA5678 03B04021 */  addu    $t0, $sp, $s0              
/* 02BDC 80BA567C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02BE0 80BA5680 00007812 */  mflo    $t7                        
/* 02BE4 80BA5684 02CF9021 */  addu    $s2, $s6, $t7              
/* 02BE8 80BA5688 C6440190 */  lwc1    $f4, 0x0190($s2)           ## 00000190
/* 02BEC 80BA568C 4604B03C */  c.lt.s  $f22, $f4                  
/* 02BF0 80BA5690 00000000 */  nop
/* 02BF4 80BA5694 45020076 */  bc1fl   .L80BA5870                 
/* 02BF8 80BA5698 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 02BFC 80BA569C C70C0114 */  lwc1    $f12, 0x0114($t8)          ## 00000114
/* 02C00 80BA56A0 C72E00FC */  lwc1    $f14, 0x00FC($t9)          ## 000000FC
/* 02C04 80BA56A4 0C034261 */  jal     Matrix_Translate              
/* 02C08 80BA56A8 8D0600E4 */  lw      $a2, 0x00E4($t0)           ## 000000E4
/* 02C0C 80BA56AC 03B04821 */  addu    $t1, $sp, $s0              
/* 02C10 80BA56B0 C52600CC */  lwc1    $f6, 0x00CC($t1)           ## 000000CC
/* 02C14 80BA56B4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02C18 80BA56B8 46143302 */  mul.s   $f12, $f6, $f20            
/* 02C1C 80BA56BC 0C034348 */  jal     Matrix_RotateY              
/* 02C20 80BA56C0 00000000 */  nop
/* 02C24 80BA56C4 03B05021 */  addu    $t2, $sp, $s0              
/* 02C28 80BA56C8 C54800B4 */  lwc1    $f8, 0x00B4($t2)           ## 000000B4
/* 02C2C 80BA56CC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02C30 80BA56D0 46144302 */  mul.s   $f12, $f8, $f20            
/* 02C34 80BA56D4 0C0342DC */  jal     Matrix_RotateX              
/* 02C38 80BA56D8 00000000 */  nop
/* 02C3C 80BA56DC C64C0190 */  lwc1    $f12, 0x0190($s2)          ## 00000190
/* 02C40 80BA56E0 4600C386 */  mov.s   $f14, $f24                 
/* 02C44 80BA56E4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02C48 80BA56E8 44066000 */  mfc1    $a2, $f12                  
/* 02C4C 80BA56EC 0C0342A3 */  jal     Matrix_Scale              
/* 02C50 80BA56F0 00000000 */  nop
/* 02C54 80BA56F4 0C024F61 */  jal     func_80093D84              
/* 02C58 80BA56F8 8E840000 */  lw      $a0, 0x0000($s4)           ## 00000000
/* 02C5C 80BA56FC 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 02C60 80BA5700 3C0DFA00 */  lui     $t5, 0xFA00                ## $t5 = FA000000
/* 02C64 80BA5704 00132880 */  sll     $a1, $s3,  2               
/* 02C68 80BA5708 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 02C6C 80BA570C AE2B02D0 */  sw      $t3, 0x02D0($s1)           ## 000002D0
/* 02C70 80BA5710 AC5E0000 */  sw      $s8, 0x0000($v0)           ## 00000000
/* 02C74 80BA5714 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 02C78 80BA5718 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 02C7C 80BA571C 3C0E80BA */  lui     $t6, %hi(D_80BA5A14)       ## $t6 = 80BA0000
/* 02C80 80BA5720 25CE5A14 */  addiu   $t6, $t6, %lo(D_80BA5A14)  ## $t6 = 80BA5A14
/* 02C84 80BA5724 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 02C88 80BA5728 AE2C02D0 */  sw      $t4, 0x02D0($s1)           ## 000002D0
/* 02C8C 80BA572C 00B32823 */  subu    $a1, $a1, $s3              
/* 02C90 80BA5730 35AD0080 */  ori     $t5, $t5, 0x0080           ## $t5 = FA000080
/* 02C94 80BA5734 00AE1821 */  addu    $v1, $a1, $t6              
/* 02C98 80BA5738 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 02C9C 80BA573C 90690000 */  lbu     $t1, 0x0000($v1)           ## 00000000
/* 02CA0 80BA5740 90780002 */  lbu     $t8, 0x0002($v1)           ## 00000002
/* 02CA4 80BA5744 906D0001 */  lbu     $t5, 0x0001($v1)           ## 00000001
/* 02CA8 80BA5748 00095600 */  sll     $t2, $t1, 24               
/* 02CAC 80BA574C 0018CA00 */  sll     $t9, $t8,  8               
/* 02CB0 80BA5750 032A5825 */  or      $t3, $t9, $t2              ## $t3 = 00000000
/* 02CB4 80BA5754 000D7400 */  sll     $t6, $t5, 16               
/* 02CB8 80BA5758 016E7825 */  or      $t7, $t3, $t6              ## $t7 = 80BA5A14
/* 02CBC 80BA575C 35F80080 */  ori     $t8, $t7, 0x0080           ## $t8 = 80BA5A94
/* 02CC0 80BA5760 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 02CC4 80BA5764 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 02CC8 80BA5768 3C1980BA */  lui     $t9, %hi(D_80BA5A28)       ## $t9 = 80BA0000
/* 02CCC 80BA576C 27395A28 */  addiu   $t9, $t9, %lo(D_80BA5A28)  ## $t9 = 80BA5A28
/* 02CD0 80BA5770 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 02CD4 80BA5774 AE2802D0 */  sw      $t0, 0x02D0($s1)           ## 000002D0
/* 02CD8 80BA5778 3C09FB00 */  lui     $t1, 0xFB00                ## $t1 = FB000000
/* 02CDC 80BA577C 00B91821 */  addu    $v1, $a1, $t9              
/* 02CE0 80BA5780 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 02CE4 80BA5784 906E0000 */  lbu     $t6, 0x0000($v1)           ## 00000000
/* 02CE8 80BA5788 906C0002 */  lbu     $t4, 0x0002($v1)           ## 00000002
/* 02CEC 80BA578C 90690001 */  lbu     $t1, 0x0001($v1)           ## 00000001
/* 02CF0 80BA5790 000E7E00 */  sll     $t7, $t6, 24               
/* 02CF4 80BA5794 000C6A00 */  sll     $t5, $t4,  8               
/* 02CF8 80BA5798 01AFC025 */  or      $t8, $t5, $t7              ## $t8 = FABA5A94
/* 02CFC 80BA579C 0009CC00 */  sll     $t9, $t1, 16               
/* 02D00 80BA57A0 03195025 */  or      $t2, $t8, $t9              ## $t2 = FABA5ABC
/* 02D04 80BA57A4 354C0080 */  ori     $t4, $t2, 0x0080           ## $t4 = FABA5ABC
/* 02D08 80BA57A8 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 02D0C 80BA57AC 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 02D10 80BA57B0 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 02D14 80BA57B4 35CE0003 */  ori     $t6, $t6, 0x0003           ## $t6 = DA380003
/* 02D18 80BA57B8 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 02D1C 80BA57BC AE2B02D0 */  sw      $t3, 0x02D0($s1)           ## 000002D0
/* 02D20 80BA57C0 3C0580BA */  lui     $a1, %hi(D_80BA5BB0)       ## $a1 = 80BA0000
/* 02D24 80BA57C4 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 02D28 80BA57C8 8E840000 */  lw      $a0, 0x0000($s4)           ## 00000000
/* 02D2C 80BA57CC 24A55BB0 */  addiu   $a1, $a1, %lo(D_80BA5BB0)  ## $a1 = 80BA5BB0
/* 02D30 80BA57D0 24060632 */  addiu   $a2, $zero, 0x0632         ## $a2 = 00000632
/* 02D34 80BA57D4 0C0346A2 */  jal     Matrix_NewMtx              
/* 02D38 80BA57D8 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 02D3C 80BA57DC AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 02D40 80BA57E0 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 02D44 80BA57E4 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 02D48 80BA57E8 35EF0020 */  ori     $t7, $t7, 0x0020           ## $t7 = DB060020
/* 02D4C 80BA57EC 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 02D50 80BA57F0 AE2D02D0 */  sw      $t5, 0x02D0($s1)           ## 000002D0
/* 02D54 80BA57F4 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 02D58 80BA57F8 8E83009C */  lw      $v1, 0x009C($s4)           ## 0000009C
/* 02D5C 80BA57FC 8E840000 */  lw      $a0, 0x0000($s4)           ## 00000000
/* 02D60 80BA5800 24080020 */  addiu   $t0, $zero, 0x0020         ## $t0 = 00000020
/* 02D64 80BA5804 00033880 */  sll     $a3, $v1,  2               
/* 02D68 80BA5808 00E33821 */  addu    $a3, $a3, $v1              
/* 02D6C 80BA580C 00033080 */  sll     $a2, $v1,  2               
/* 02D70 80BA5810 00073840 */  sll     $a3, $a3,  1               
/* 02D74 80BA5814 24090040 */  addiu   $t1, $zero, 0x0040         ## $t1 = 00000040
/* 02D78 80BA5818 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 02D7C 80BA581C 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 02D80 80BA5820 240A0040 */  addiu   $t2, $zero, 0x0040         ## $t2 = 00000040
/* 02D84 80BA5824 00C33021 */  addu    $a2, $a2, $v1              
/* 02D88 80BA5828 AFA6001C */  sw      $a2, 0x001C($sp)           
/* 02D8C 80BA582C AFAA0028 */  sw      $t2, 0x0028($sp)           
/* 02D90 80BA5830 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 02D94 80BA5834 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 02D98 80BA5838 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 02D9C 80BA583C AFA70020 */  sw      $a3, 0x0020($sp)           
/* 02DA0 80BA5840 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 02DA4 80BA5844 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02DA8 80BA5848 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 02DAC 80BA584C 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 02DB0 80BA5850 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 02DB4 80BA5854 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 02DB8 80BA5858 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 02DBC 80BA585C 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 02DC0 80BA5860 AE2C02D0 */  sw      $t4, 0x02D0($s1)           ## 000002D0
/* 02DC4 80BA5864 AC550004 */  sw      $s5, 0x0004($v0)           ## 00000004
/* 02DC8 80BA5868 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 02DCC 80BA586C 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000002
.L80BA5870:
/* 02DD0 80BA5870 00139C00 */  sll     $s3, $s3, 16               
/* 02DD4 80BA5874 00139C03 */  sra     $s3, $s3, 16               
/* 02DD8 80BA5878 2A610006 */  slti    $at, $s3, 0x0006           
/* 02DDC 80BA587C 1420FF78 */  bne     $at, $zero, .L80BA5660     
/* 02DE0 80BA5880 00000000 */  nop
.L80BA5884:
/* 02DE4 80BA5884 3C0680BA */  lui     $a2, %hi(D_80BA5BC8)       ## $a2 = 80BA0000
/* 02DE8 80BA5888 24C65BC8 */  addiu   $a2, $a2, %lo(D_80BA5BC8)  ## $a2 = 80BA5BC8
/* 02DEC 80BA588C 27A400A0 */  addiu   $a0, $sp, 0x00A0           ## $a0 = FFFFFF68
/* 02DF0 80BA5890 8E850000 */  lw      $a1, 0x0000($s4)           ## 00000000
/* 02DF4 80BA5894 0C031AD5 */  jal     Graph_CloseDisps              
/* 02DF8 80BA5898 24070647 */  addiu   $a3, $zero, 0x0647         ## $a3 = 00000647
/* 02DFC 80BA589C 8FBF0074 */  lw      $ra, 0x0074($sp)           
/* 02E00 80BA58A0 D7B40038 */  ldc1    $f20, 0x0038($sp)          
/* 02E04 80BA58A4 D7B60040 */  ldc1    $f22, 0x0040($sp)          
/* 02E08 80BA58A8 D7B80048 */  ldc1    $f24, 0x0048($sp)          
/* 02E0C 80BA58AC 8FB00050 */  lw      $s0, 0x0050($sp)           
/* 02E10 80BA58B0 8FB10054 */  lw      $s1, 0x0054($sp)           
/* 02E14 80BA58B4 8FB20058 */  lw      $s2, 0x0058($sp)           
/* 02E18 80BA58B8 8FB3005C */  lw      $s3, 0x005C($sp)           
/* 02E1C 80BA58BC 8FB40060 */  lw      $s4, 0x0060($sp)           
/* 02E20 80BA58C0 8FB50064 */  lw      $s5, 0x0064($sp)           
/* 02E24 80BA58C4 8FB60068 */  lw      $s6, 0x0068($sp)           
/* 02E28 80BA58C8 8FB7006C */  lw      $s7, 0x006C($sp)           
/* 02E2C 80BA58CC 8FBE0070 */  lw      $s8, 0x0070($sp)           
/* 02E30 80BA58D0 03E00008 */  jr      $ra                        
/* 02E34 80BA58D4 27BD0138 */  addiu   $sp, $sp, 0x0138           ## $sp = 00000000
/* 02E38 80BA58D8 00000000 */  nop
/* 02E3C 80BA58DC 00000000 */  nop

