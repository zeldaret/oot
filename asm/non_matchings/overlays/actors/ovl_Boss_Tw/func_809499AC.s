glabel func_809499AC
/* 10CDC 809499AC 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 10CE0 809499B0 AFB60060 */  sw      $s6, 0x0060($sp)           
/* 10CE4 809499B4 0080B025 */  or      $s6, $a0, $zero            ## $s6 = 00000000
/* 10CE8 809499B8 AFBF0064 */  sw      $ra, 0x0064($sp)           
/* 10CEC 809499BC AFB5005C */  sw      $s5, 0x005C($sp)           
/* 10CF0 809499C0 24840568 */  addiu   $a0, $a0, 0x0568           ## $a0 = 00000568
/* 10CF4 809499C4 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 10CF8 809499C8 AFB40058 */  sw      $s4, 0x0058($sp)           
/* 10CFC 809499CC AFB30054 */  sw      $s3, 0x0054($sp)           
/* 10D00 809499D0 AFB20050 */  sw      $s2, 0x0050($sp)           
/* 10D04 809499D4 AFB1004C */  sw      $s1, 0x004C($sp)           
/* 10D08 809499D8 AFB00048 */  sw      $s0, 0x0048($sp)           
/* 10D0C 809499DC F7B60040 */  sdc1    $f22, 0x0040($sp)          
/* 10D10 809499E0 F7B40038 */  sdc1    $f20, 0x0038($sp)          
/* 10D14 809499E4 0C02927F */  jal     SkelAnime_Update
              
/* 10D18 809499E8 AFA40068 */  sw      $a0, 0x0068($sp)           
/* 10D1C 809499EC 8FA40068 */  lw      $a0, 0x0068($sp)           
/* 10D20 809499F0 0C0295B2 */  jal     SkelAnime_StopAtFrame              
/* 10D24 809499F4 3C054100 */  lui     $a1, 0x4100                ## $a1 = 41000000
/* 10D28 809499F8 10400006 */  beq     $v0, $zero, .L80949A14     
/* 10D2C 809499FC 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 10D30 80949A00 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 10D34 80949A04 24053923 */  addiu   $a1, $zero, 0x3923         ## $a1 = 00003923
/* 10D38 80949A08 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 10D3C 80949A0C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 10D40 80949A10 240539B8 */  addiu   $a1, $zero, 0x39B8         ## $a1 = 000039B8
.L80949A14:
/* 10D44 80949A14 8FA40068 */  lw      $a0, 0x0068($sp)           
/* 10D48 80949A18 0C0295B2 */  jal     SkelAnime_StopAtFrame              
/* 10D4C 80949A1C 3C054140 */  lui     $a1, 0x4140                ## $a1 = 41400000
/* 10D50 80949A20 1040005E */  beq     $v0, $zero, .L80949B9C     
/* 10D54 80949A24 3C0E8095 */  lui     $t6, %hi(D_8094C85C)       ## $t6 = 80950000
/* 10D58 80949A28 91CEC85C */  lbu     $t6, %lo(D_8094C85C)($t6)  
/* 10D5C 80949A2C 24100066 */  addiu   $s0, $zero, 0x0066         ## $s0 = 00000066
/* 10D60 80949A30 26D30498 */  addiu   $s3, $s6, 0x0498           ## $s3 = 00000498
/* 10D64 80949A34 11C00004 */  beq     $t6, $zero, .L80949A48     
/* 10D68 80949A38 00000000 */  nop
/* 10D6C 80949A3C 24100064 */  addiu   $s0, $zero, 0x0064         ## $s0 = 00000064
/* 10D70 80949A40 10000001 */  beq     $zero, $zero, .L80949A48   
/* 10D74 80949A44 26D304A4 */  addiu   $s3, $s6, 0x04A4           ## $s3 = 000004A4
.L80949A48:
/* 10D78 80949A48 C6640000 */  lwc1    $f4, 0x0000($s3)           ## 000004A4
/* 10D7C 80949A4C 26A41C24 */  addiu   $a0, $s5, 0x1C24           ## $a0 = 00001C24
/* 10D80 80949A50 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 10D84 80949A54 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 10D88 80949A58 C6660004 */  lwc1    $f6, 0x0004($s3)           ## 000004A8
/* 10D8C 80949A5C 02A03025 */  or      $a2, $s5, $zero            ## $a2 = 00000000
/* 10D90 80949A60 240700DC */  addiu   $a3, $zero, 0x00DC         ## $a3 = 000000DC
/* 10D94 80949A64 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 10D98 80949A68 C6680008 */  lwc1    $f8, 0x0008($s3)           ## 000004AC
/* 10D9C 80949A6C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 10DA0 80949A70 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 10DA4 80949A74 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 10DA8 80949A78 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 10DAC 80949A7C 0C00C916 */  jal     Actor_SpawnAsChild
              
/* 10DB0 80949A80 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 10DB4 80949A84 10400007 */  beq     $v0, $zero, .L80949AA4     
/* 10DB8 80949A88 0040A025 */  or      $s4, $v0, $zero            ## $s4 = 00000000
/* 10DBC 80949A8C 24010066 */  addiu   $at, $zero, 0x0066         ## $at = 00000066
/* 10DC0 80949A90 16010003 */  bne     $s0, $at, .L80949AA0       
/* 10DC4 80949A94 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 10DC8 80949A98 10000002 */  beq     $zero, $zero, .L80949AA4   
/* 10DCC 80949A9C A4400566 */  sh      $zero, 0x0566($v0)         ## 00000566
.L80949AA0:
/* 10DD0 80949AA0 A44F0566 */  sh      $t7, 0x0566($v0)           ## 00000566
.L80949AA4:
/* 10DD4 80949AA4 84580566 */  lh      $t8, 0x0566($v0)           ## 00000566
/* 10DD8 80949AA8 3C018095 */  lui     $at, %hi(D_8094C840)       ## $at = 80950000
/* 10DDC 80949AAC 3C088095 */  lui     $t0, %hi(D_8094AA40)       ## $t0 = 80950000
/* 10DE0 80949AB0 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 10DE4 80949AB4 A039C840 */  sb      $t9, %lo(D_8094C840)($at)  
/* 10DE8 80949AB8 2508AA40 */  addiu   $t0, $t0, %lo(D_8094AA40)  ## $t0 = 8094AA40
/* 10DEC 80949ABC 8D0A0000 */  lw      $t2, 0x0000($t0)           ## 8094AA40
/* 10DF0 80949AC0 27B1007C */  addiu   $s1, $sp, 0x007C           ## $s1 = FFFFFFE4
/* 10DF4 80949AC4 3C0B8095 */  lui     $t3, %hi(D_8094AA4C)       ## $t3 = 80950000
/* 10DF8 80949AC8 AE2A0000 */  sw      $t2, 0x0000($s1)           ## FFFFFFE4
/* 10DFC 80949ACC 8D090004 */  lw      $t1, 0x0004($t0)           ## 8094AA44
/* 10E00 80949AD0 256BAA4C */  addiu   $t3, $t3, %lo(D_8094AA4C)  ## $t3 = 8094AA4C
/* 10E04 80949AD4 27B20070 */  addiu   $s2, $sp, 0x0070           ## $s2 = FFFFFFD8
/* 10E08 80949AD8 AE290004 */  sw      $t1, 0x0004($s1)           ## FFFFFFE8
/* 10E0C 80949ADC 8D0A0008 */  lw      $t2, 0x0008($t0)           ## 8094AA48
/* 10E10 80949AE0 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 10E14 80949AE4 4481B000 */  mtc1    $at, $f22                  ## $f22 = 2.00
/* 10E18 80949AE8 AE2A0008 */  sw      $t2, 0x0008($s1)           ## FFFFFFEC
/* 10E1C 80949AEC 8D6D0000 */  lw      $t5, 0x0000($t3)           ## 8094AA4C
/* 10E20 80949AF0 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 10E24 80949AF4 4481A000 */  mtc1    $at, $f20                  ## $f20 = 30.00
/* 10E28 80949AF8 AE4D0000 */  sw      $t5, 0x0000($s2)           ## FFFFFFD8
/* 10E2C 80949AFC 8D6C0004 */  lw      $t4, 0x0004($t3)           ## 8094AA50
/* 10E30 80949B00 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 10E34 80949B04 AE4C0004 */  sw      $t4, 0x0004($s2)           ## FFFFFFDC
/* 10E38 80949B08 8D6D0008 */  lw      $t5, 0x0008($t3)           ## 8094AA54
/* 10E3C 80949B0C AE4D0008 */  sw      $t5, 0x0008($s2)           ## FFFFFFE0
.L80949B10:
/* 10E40 80949B10 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 10E44 80949B14 4600A306 */  mov.s   $f12, $f20                 
/* 10E48 80949B18 E7A0007C */  swc1    $f0, 0x007C($sp)           
/* 10E4C 80949B1C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 10E50 80949B20 4600A306 */  mov.s   $f12, $f20                 
/* 10E54 80949B24 E7A00080 */  swc1    $f0, 0x0080($sp)           
/* 10E58 80949B28 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 10E5C 80949B2C 4600A306 */  mov.s   $f12, $f20                 
/* 10E60 80949B30 E7A00084 */  swc1    $f0, 0x0084($sp)           
/* 10E64 80949B34 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 10E68 80949B38 4600B306 */  mov.s   $f12, $f22                 
/* 10E6C 80949B3C 4600028D */  trunc.w.s $f10, $f0                  
/* 10E70 80949B40 240A004B */  addiu   $t2, $zero, 0x004B         ## $t2 = 0000004B
/* 10E74 80949B44 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 10E78 80949B48 02602825 */  or      $a1, $s3, $zero            ## $a1 = 000004A4
/* 10E7C 80949B4C 440F5000 */  mfc1    $t7, $f10                  
/* 10E80 80949B50 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFFE4
/* 10E84 80949B54 02403825 */  or      $a3, $s2, $zero            ## $a3 = FFFFFFD8
/* 10E88 80949B58 000FC400 */  sll     $t8, $t7, 16               
/* 10E8C 80949B5C 0018CC03 */  sra     $t9, $t8, 16               
/* 10E90 80949B60 2728000B */  addiu   $t0, $t9, 0x000B           ## $t0 = 0000000B
/* 10E94 80949B64 44888000 */  mtc1    $t0, $f16                  ## $f16 = 0.00
/* 10E98 80949B68 00000000 */  nop
/* 10E9C 80949B6C 468084A0 */  cvt.s.w $f18, $f16                 
/* 10EA0 80949B70 E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 10EA4 80949B74 86890566 */  lh      $t1, 0x0566($s4)           ## 00000566
/* 10EA8 80949B78 AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 10EAC 80949B7C 0C24E334 */  jal     func_80938CD0              
/* 10EB0 80949B80 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 10EB4 80949B84 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 10EB8 80949B88 00108400 */  sll     $s0, $s0, 16               
/* 10EBC 80949B8C 00108403 */  sra     $s0, $s0, 16               
/* 10EC0 80949B90 2A010064 */  slti    $at, $s0, 0x0064           
/* 10EC4 80949B94 1420FFDE */  bne     $at, $zero, .L80949B10     
/* 10EC8 80949B98 00000000 */  nop
.L80949B9C:
/* 10ECC 80949B9C 8FA40068 */  lw      $a0, 0x0068($sp)           
/* 10ED0 80949BA0 0C0295B2 */  jal     SkelAnime_StopAtFrame              
/* 10ED4 80949BA4 8EC501A4 */  lw      $a1, 0x01A4($s6)           ## 000001A4
/* 10ED8 80949BA8 10400003 */  beq     $v0, $zero, .L80949BB8     
/* 10EDC 80949BAC 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 10EE0 80949BB0 0C2526FF */  jal     func_80949BFC              
/* 10EE4 80949BB4 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 00000000
.L80949BB8:
/* 10EE8 80949BB8 26C400B6 */  addiu   $a0, $s6, 0x00B6           ## $a0 = 000000B6
/* 10EEC 80949BBC 86C5008A */  lh      $a1, 0x008A($s6)           ## 0000008A
/* 10EF0 80949BC0 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 10EF4 80949BC4 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 10EF8 80949BC8 24071000 */  addiu   $a3, $zero, 0x1000         ## $a3 = 00001000
/* 10EFC 80949BCC 8FBF0064 */  lw      $ra, 0x0064($sp)           
/* 10F00 80949BD0 D7B40038 */  ldc1    $f20, 0x0038($sp)          
/* 10F04 80949BD4 D7B60040 */  ldc1    $f22, 0x0040($sp)          
/* 10F08 80949BD8 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 10F0C 80949BDC 8FB1004C */  lw      $s1, 0x004C($sp)           
/* 10F10 80949BE0 8FB20050 */  lw      $s2, 0x0050($sp)           
/* 10F14 80949BE4 8FB30054 */  lw      $s3, 0x0054($sp)           
/* 10F18 80949BE8 8FB40058 */  lw      $s4, 0x0058($sp)           
/* 10F1C 80949BEC 8FB5005C */  lw      $s5, 0x005C($sp)           
/* 10F20 80949BF0 8FB60060 */  lw      $s6, 0x0060($sp)           
/* 10F24 80949BF4 03E00008 */  jr      $ra                        
/* 10F28 80949BF8 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000
