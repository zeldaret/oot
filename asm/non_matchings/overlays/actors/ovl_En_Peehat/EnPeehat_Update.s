glabel EnPeehat_Update
/* 02924 80AD1DC4 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 02928 80AD1DC8 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 0292C 80AD1DCC AFB40048 */  sw      $s4, 0x0048($sp)           
/* 02930 80AD1DD0 AFB30044 */  sw      $s3, 0x0044($sp)           
/* 02934 80AD1DD4 AFB20040 */  sw      $s2, 0x0040($sp)           
/* 02938 80AD1DD8 AFB1003C */  sw      $s1, 0x003C($sp)           
/* 0293C 80AD1DDC AFB00038 */  sw      $s0, 0x0038($sp)           
/* 02940 80AD1DE0 F7B40030 */  sdc1    $f20, 0x0030($sp)          
/* 02944 80AD1DE4 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 02948 80AD1DE8 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 0294C 80AD1DEC 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 02950 80AD1DF0 AFAE007C */  sw      $t6, 0x007C($sp)           
/* 02954 80AD1DF4 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 02958 80AD1DF8 5DE00004 */  bgtzl   $t7, .L80AD1E0C            
/* 0295C 80AD1DFC 927800B1 */  lbu     $t8, 0x00B1($s3)           ## 000000B1
/* 02960 80AD1E00 0C2B46F6 */  jal     func_80AD1BD8              
/* 02964 80AD1E04 00000000 */  nop
/* 02968 80AD1E08 927800B1 */  lbu     $t8, 0x00B1($s3)           ## 000000B1
.L80AD1E0C:
/* 0296C 80AD1E0C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 02970 80AD1E10 53010031 */  beql    $t8, $at, .L80AD1ED8       
/* 02974 80AD1E14 866A001C */  lh      $t2, 0x001C($s3)           ## 0000001C
/* 02978 80AD1E18 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 0297C 80AD1E1C C6640068 */  lwc1    $f4, 0x0068($s3)           ## 00000068
/* 02980 80AD1E20 4604A032 */  c.eq.s  $f20, $f4                  
/* 02984 80AD1E24 00000000 */  nop
/* 02988 80AD1E28 45000006 */  bc1f    .L80AD1E44                 
/* 0298C 80AD1E2C 00000000 */  nop
/* 02990 80AD1E30 C6660060 */  lwc1    $f6, 0x0060($s3)           ## 00000060
/* 02994 80AD1E34 4606A032 */  c.eq.s  $f20, $f6                  
/* 02998 80AD1E38 00000000 */  nop
/* 0299C 80AD1E3C 4503000E */  bc1tl   .L80AD1E78                 
/* 029A0 80AD1E40 8E7902B8 */  lw      $t9, 0x02B8($s3)           ## 000002B8
.L80AD1E44:
/* 029A4 80AD1E44 0C00B638 */  jal     Actor_MoveForward
              
/* 029A8 80AD1E48 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 029AC 80AD1E4C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 029B0 80AD1E50 44810000 */  mtc1    $at, $f0                   ## $f0 = 30.00
/* 029B4 80AD1E54 24190005 */  addiu   $t9, $zero, 0x0005         ## $t9 = 00000005
/* 029B8 80AD1E58 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 029BC 80AD1E5C 44070000 */  mfc1    $a3, $f0                   
/* 029C0 80AD1E60 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 029C4 80AD1E64 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 029C8 80AD1E68 3C0641C8 */  lui     $a2, 0x41C8                ## $a2 = 41C80000
/* 029CC 80AD1E6C 0C00B92D */  jal     func_8002E4B4              
/* 029D0 80AD1E70 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 029D4 80AD1E74 8E7902B8 */  lw      $t9, 0x02B8($s3)           ## 000002B8
.L80AD1E78:
/* 029D8 80AD1E78 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 029DC 80AD1E7C 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 029E0 80AD1E80 0320F809 */  jalr    $ra, $t9                   
/* 029E4 80AD1E84 00000000 */  nop
/* 029E8 80AD1E88 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 029EC 80AD1E8C 01144021 */  addu    $t0, $t0, $s4              
/* 029F0 80AD1E90 8D081DE4 */  lw      $t0, 0x1DE4($t0)           ## 00011DE4
/* 029F4 80AD1E94 3109007F */  andi    $t1, $t0, 0x007F           ## $t1 = 00000000
/* 029F8 80AD1E98 5520000B */  bnel    $t1, $zero, .L80AD1EC8     
/* 029FC 80AD1E9C C66402E4 */  lwc1    $f4, 0x02E4($s3)           ## 000002E4
/* 02A00 80AD1EA0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 02A04 80AD1EA4 00000000 */  nop
/* 02A08 80AD1EA8 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 02A0C 80AD1EAC 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.25
/* 02A10 80AD1EB0 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 02A14 80AD1EB4 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 02A18 80AD1EB8 46080282 */  mul.s   $f10, $f0, $f8             
/* 02A1C 80AD1EBC 46105480 */  add.s   $f18, $f10, $f16           
/* 02A20 80AD1EC0 E67202E8 */  swc1    $f18, 0x02E8($s3)          ## 000002E8
/* 02A24 80AD1EC4 C66402E4 */  lwc1    $f4, 0x02E4($s3)           ## 000002E4
.L80AD1EC8:
/* 02A28 80AD1EC8 C66602E8 */  lwc1    $f6, 0x02E8($s3)           ## 000002E8
/* 02A2C 80AD1ECC 46062200 */  add.s   $f8, $f4, $f6              
/* 02A30 80AD1ED0 E66802E4 */  swc1    $f8, 0x02E4($s3)           ## 000002E4
/* 02A34 80AD1ED4 866A001C */  lh      $t2, 0x001C($s3)           ## 0000001C
.L80AD1ED8:
/* 02A38 80AD1ED8 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 02A3C 80AD1EDC 05430026 */  bgezl   $t2, .L80AD1F78            
/* 02A40 80AD1EE0 8E690024 */  lw      $t1, 0x0024($s3)           ## 00000024
/* 02A44 80AD1EE4 8E6B0368 */  lw      $t3, 0x0368($s3)           ## 00000368
/* 02A48 80AD1EE8 8E6D0368 */  lw      $t5, 0x0368($s3)           ## 00000368
/* 02A4C 80AD1EEC 8E6F0368 */  lw      $t7, 0x0368($s3)           ## 00000368
/* 02A50 80AD1EF0 856C0030 */  lh      $t4, 0x0030($t3)           ## 00000030
/* 02A54 80AD1EF4 8E7902B0 */  lw      $t9, 0x02B0($s3)           ## 000002B0
/* 02A58 80AD1EF8 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 02A5C 80AD1EFC 448C5000 */  mtc1    $t4, $f10                  ## $f10 = 0.00
/* 02A60 80AD1F00 266400B4 */  addiu   $a0, $s3, 0x00B4           ## $a0 = 000000B4
/* 02A64 80AD1F04 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02A68 80AD1F08 46805420 */  cvt.s.w $f16, $f10                 
/* 02A6C 80AD1F0C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02A70 80AD1F10 2407012C */  addiu   $a3, $zero, 0x012C         ## $a3 = 0000012C
/* 02A74 80AD1F14 E6700038 */  swc1    $f16, 0x0038($s3)          ## 00000038
/* 02A78 80AD1F18 85AE0032 */  lh      $t6, 0x0032($t5)           ## 00000032
/* 02A7C 80AD1F1C 448E9000 */  mtc1    $t6, $f18                  ## $f18 = 0.00
/* 02A80 80AD1F20 00000000 */  nop
/* 02A84 80AD1F24 46809120 */  cvt.s.w $f4, $f18                  
/* 02A88 80AD1F28 E664003C */  swc1    $f4, 0x003C($s3)           ## 0000003C
/* 02A8C 80AD1F2C 85F80034 */  lh      $t8, 0x0034($t7)           ## 00000034
/* 02A90 80AD1F30 44983000 */  mtc1    $t8, $f6                   ## $f6 = 0.00
/* 02A94 80AD1F34 00000000 */  nop
/* 02A98 80AD1F38 46803220 */  cvt.s.w $f8, $f6                   
/* 02A9C 80AD1F3C 17210009 */  bne     $t9, $at, .L80AD1F64       
/* 02AA0 80AD1F40 E6680040 */  swc1    $f8, 0x0040($s3)           ## 00000040
/* 02AA4 80AD1F44 266400B4 */  addiu   $a0, $s3, 0x00B4           ## $a0 = 000000B4
/* 02AA8 80AD1F48 24051770 */  addiu   $a1, $zero, 0x1770         ## $a1 = 00001770
/* 02AAC 80AD1F4C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02AB0 80AD1F50 2407012C */  addiu   $a3, $zero, 0x012C         ## $a3 = 0000012C
/* 02AB4 80AD1F54 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02AB8 80AD1F58 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02ABC 80AD1F5C 1000000C */  beq     $zero, $zero, .L80AD1F90   
/* 02AC0 80AD1F60 26720300 */  addiu   $s2, $s3, 0x0300           ## $s2 = 00000300
.L80AD1F64:
/* 02AC4 80AD1F64 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02AC8 80AD1F68 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02ACC 80AD1F6C 10000008 */  beq     $zero, $zero, .L80AD1F90   
/* 02AD0 80AD1F70 26720300 */  addiu   $s2, $s3, 0x0300           ## $s2 = 00000300
/* 02AD4 80AD1F74 8E690024 */  lw      $t1, 0x0024($s3)           ## 00000024
.L80AD1F78:
/* 02AD8 80AD1F78 8E680028 */  lw      $t0, 0x0028($s3)           ## 00000028
/* 02ADC 80AD1F7C AE690038 */  sw      $t1, 0x0038($s3)           ## 00000038
/* 02AE0 80AD1F80 8E69002C */  lw      $t1, 0x002C($s3)           ## 0000002C
/* 02AE4 80AD1F84 AE68003C */  sw      $t0, 0x003C($s3)           ## 0000003C
/* 02AE8 80AD1F88 AE690040 */  sw      $t1, 0x0040($s3)           ## 00000040
/* 02AEC 80AD1F8C 26720300 */  addiu   $s2, $s3, 0x0300           ## $s2 = 00000300
.L80AD1F90:
/* 02AF0 80AD1F90 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000300
/* 02AF4 80AD1F94 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 02AF8 80AD1F98 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 02AFC 80AD1F9C 926A00AF */  lbu     $t2, 0x00AF($s3)           ## 000000AF
/* 02B00 80AD1FA0 5940002C */  blezl   $t2, .L80AD2054            
/* 02B04 80AD1FA4 8E6202B0 */  lw      $v0, 0x02B0($s3)           ## 000002B0
/* 02B08 80AD1FA8 866B001C */  lh      $t3, 0x001C($s3)           ## 0000001C
/* 02B0C 80AD1FAC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02B10 80AD1FB0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 02B14 80AD1FB4 1D600018 */  bgtz    $t3, .L80AD2018            
/* 02B18 80AD1FB8 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 02B1C 80AD1FBC 02818021 */  addu    $s0, $s4, $at              
/* 02B20 80AD1FC0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02B24 80AD1FC4 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 02B28 80AD1FC8 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000300
/* 02B2C 80AD1FCC 2671034C */  addiu   $s1, $s3, 0x034C           ## $s1 = 0000034C
/* 02B30 80AD1FD0 02203025 */  or      $a2, $s1, $zero            ## $a2 = 0000034C
/* 02B34 80AD1FD4 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 02B38 80AD1FD8 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 02B3C 80AD1FDC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02B40 80AD1FE0 926C0114 */  lbu     $t4, 0x0114($s3)           ## 00000114
/* 02B44 80AD1FE4 51800006 */  beql    $t4, $zero, .L80AD2000     
/* 02B48 80AD1FE8 8E6F02B0 */  lw      $t7, 0x02B0($s3)           ## 000002B0
/* 02B4C 80AD1FEC 966D0112 */  lhu     $t5, 0x0112($s3)           ## 00000112
/* 02B50 80AD1FF0 31AE4000 */  andi    $t6, $t5, 0x4000           ## $t6 = 00000000
/* 02B54 80AD1FF4 55C00009 */  bnel    $t6, $zero, .L80AD201C     
/* 02B58 80AD1FF8 8678001C */  lh      $t8, 0x001C($s3)           ## 0000001C
/* 02B5C 80AD1FFC 8E6F02B0 */  lw      $t7, 0x02B0($s3)           ## 000002B0
.L80AD2000:
/* 02B60 80AD2000 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02B64 80AD2004 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 02B68 80AD2008 11E10003 */  beq     $t7, $at, .L80AD2018       
/* 02B6C 80AD200C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02B70 80AD2010 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 02B74 80AD2014 02203025 */  or      $a2, $s1, $zero            ## $a2 = 0000034C
.L80AD2018:
/* 02B78 80AD2018 8678001C */  lh      $t8, 0x001C($s3)           ## 0000001C
.L80AD201C:
/* 02B7C 80AD201C 5300000D */  beql    $t8, $zero, .L80AD2054     
/* 02B80 80AD2020 8E6202B0 */  lw      $v0, 0x02B0($s3)           ## 000002B0
/* 02B84 80AD2024 926203BC */  lbu     $v0, 0x03BC($s3)           ## 000003BC
/* 02B88 80AD2028 30590002 */  andi    $t9, $v0, 0x0002           ## $t9 = 00000000
/* 02B8C 80AD202C 13200008 */  beq     $t9, $zero, .L80AD2050     
/* 02B90 80AD2030 3048FFFD */  andi    $t0, $v0, 0xFFFD           ## $t0 = 00000000
/* 02B94 80AD2034 A26803BC */  sb      $t0, 0x03BC($s3)           ## 000003BC
/* 02B98 80AD2038 8FA9007C */  lw      $t1, 0x007C($sp)           
/* 02B9C 80AD203C 8E6A03B0 */  lw      $t2, 0x03B0($s3)           ## 000003B0
/* 02BA0 80AD2040 552A0004 */  bnel    $t1, $t2, .L80AD2054       
/* 02BA4 80AD2044 8E6202B0 */  lw      $v0, 0x02B0($s3)           ## 000002B0
/* 02BA8 80AD2048 0C2B4510 */  jal     func_80AD1440              
/* 02BAC 80AD204C 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
.L80AD2050:
/* 02BB0 80AD2050 8E6202B0 */  lw      $v0, 0x02B0($s3)           ## 000002B0
.L80AD2054:
/* 02BB4 80AD2054 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 02BB8 80AD2058 10410009 */  beq     $v0, $at, .L80AD2080       
/* 02BBC 80AD205C 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 02BC0 80AD2060 10410007 */  beq     $v0, $at, .L80AD2080       
/* 02BC4 80AD2064 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 02BC8 80AD2068 10410005 */  beq     $v0, $at, .L80AD2080       
/* 02BCC 80AD206C 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 02BD0 80AD2070 10410003 */  beq     $v0, $at, .L80AD2080       
/* 02BD4 80AD2074 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02BD8 80AD2078 14410055 */  bne     $v0, $at, .L80AD21D0       
/* 02BDC 80AD207C 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
.L80AD2080:
/* 02BE0 80AD2080 8663001C */  lh      $v1, 0x001C($s3)           ## 0000001C
/* 02BE4 80AD2084 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02BE8 80AD2088 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 02BEC 80AD208C 1060000B */  beq     $v1, $zero, .L80AD20BC     
/* 02BF0 80AD2090 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 02BF4 80AD2094 02818021 */  addu    $s0, $s4, $at              
/* 02BF8 80AD2098 267103AC */  addiu   $s1, $s3, 0x03AC           ## $s1 = 000003AC
/* 02BFC 80AD209C 02203025 */  or      $a2, $s1, $zero            ## $a2 = 000003AC
/* 02C00 80AD20A0 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 02C04 80AD20A4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02C08 80AD20A8 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 02C0C 80AD20AC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02C10 80AD20B0 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 02C14 80AD20B4 02203025 */  or      $a2, $s1, $zero            ## $a2 = 000003AC
/* 02C18 80AD20B8 8663001C */  lh      $v1, 0x001C($s3)           ## 0000001C
.L80AD20BC:
/* 02C1C 80AD20BC 0461003B */  bgez    $v1, .L80AD21AC            
/* 02C20 80AD20C0 00000000 */  nop
/* 02C24 80AD20C4 8E6B0004 */  lw      $t3, 0x0004($s3)           ## 00000004
/* 02C28 80AD20C8 26650024 */  addiu   $a1, $s3, 0x0024           ## $a1 = 00000024
/* 02C2C 80AD20CC 2410000C */  addiu   $s0, $zero, 0x000C         ## $s0 = 0000000C
/* 02C30 80AD20D0 316C0040 */  andi    $t4, $t3, 0x0040           ## $t4 = 00000000
/* 02C34 80AD20D4 11800035 */  beq     $t4, $zero, .L80AD21AC     
/* 02C38 80AD20D8 268407C0 */  addiu   $a0, $s4, 0x07C0           ## $a0 = 000007C0
/* 02C3C 80AD20DC 267102C8 */  addiu   $s1, $s3, 0x02C8           ## $s1 = 000002C8
/* 02C40 80AD20E0 AFA40058 */  sw      $a0, 0x0058($sp)           
/* 02C44 80AD20E4 AFA50060 */  sw      $a1, 0x0060($sp)           
/* 02C48 80AD20E8 27B20070 */  addiu   $s2, $sp, 0x0070           ## $s2 = FFFFFFE8
.L80AD20EC:
/* 02C4C 80AD20EC 27AD006C */  addiu   $t5, $sp, 0x006C           ## $t5 = FFFFFFE4
/* 02C50 80AD20F0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 02C54 80AD20F4 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 02C58 80AD20F8 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 02C5C 80AD20FC 27B90068 */  addiu   $t9, $sp, 0x0068           ## $t9 = FFFFFFE0
/* 02C60 80AD2100 8FA40058 */  lw      $a0, 0x0058($sp)           
/* 02C64 80AD2104 8FA50060 */  lw      $a1, 0x0060($sp)           
/* 02C68 80AD2108 AFA0006C */  sw      $zero, 0x006C($sp)         
/* 02C6C 80AD210C AFB90024 */  sw      $t9, 0x0024($sp)           
/* 02C70 80AD2110 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 02C74 80AD2114 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 02C78 80AD2118 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 02C7C 80AD211C AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 02C80 80AD2120 02203025 */  or      $a2, $s1, $zero            ## $a2 = 000002C8
/* 02C84 80AD2124 02403825 */  or      $a3, $s2, $zero            ## $a3 = FFFFFFE8
/* 02C88 80AD2128 0C00F7A1 */  jal     func_8003DE84              
/* 02C8C 80AD212C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 02C90 80AD2130 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02C94 80AD2134 14410018 */  bne     $v0, $at, .L80AD2198       
/* 02C98 80AD2138 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 02C9C 80AD213C 4406A000 */  mfc1    $a2, $f20                  
/* 02CA0 80AD2140 2408012C */  addiu   $t0, $zero, 0x012C         ## $t0 = 0000012C
/* 02CA4 80AD2144 24090096 */  addiu   $t1, $zero, 0x0096         ## $t1 = 00000096
/* 02CA8 80AD2148 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 02CAC 80AD214C AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 02CB0 80AD2150 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 02CB4 80AD2154 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 02CB8 80AD2158 02402825 */  or      $a1, $s2, $zero            ## $a1 = FFFFFFE8
/* 02CBC 80AD215C 0C00CD20 */  jal     func_80033480              
/* 02CC0 80AD2160 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02CC4 80AD2164 3C0180AD */  lui     $at, %hi(D_80AD2958)       ## $at = 80AD0000
/* 02CC8 80AD2168 C42A2958 */  lwc1    $f10, %lo(D_80AD2958)($at) 
/* 02CCC 80AD216C 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 02CD0 80AD2170 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.50
/* 02CD4 80AD2174 4407A000 */  mfc1    $a3, $f20                  
/* 02CD8 80AD2178 240B0003 */  addiu   $t3, $zero, 0x0003         ## $t3 = 00000003
/* 02CDC 80AD217C AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 02CE0 80AD2180 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 02CE4 80AD2184 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 02CE8 80AD2188 02403025 */  or      $a2, $s2, $zero            ## $a2 = FFFFFFE8
/* 02CEC 80AD218C E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 02CF0 80AD2190 0C2B3DE2 */  jal     func_80ACF788              
/* 02CF4 80AD2194 E7B00018 */  swc1    $f16, 0x0018($sp)          
.L80AD2198:
/* 02CF8 80AD2198 2610FFF4 */  addiu   $s0, $s0, 0xFFF4           ## $s0 = 00000000
/* 02CFC 80AD219C 0601FFD3 */  bgez    $s0, .L80AD20EC            
/* 02D00 80AD21A0 2631FFF4 */  addiu   $s1, $s1, 0xFFF4           ## $s1 = 000002BC
/* 02D04 80AD21A4 10000010 */  beq     $zero, $zero, .L80AD21E8   
/* 02D08 80AD21A8 4405A000 */  mfc1    $a1, $f20                  
.L80AD21AC:
/* 02D0C 80AD21AC 1060000D */  beq     $v1, $zero, .L80AD21E4     
/* 02D10 80AD21B0 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 02D14 80AD21B4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02D18 80AD21B8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 02D1C 80AD21BC 02812821 */  addu    $a1, $s4, $at              
/* 02D20 80AD21C0 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 02D24 80AD21C4 02403025 */  or      $a2, $s2, $zero            ## $a2 = FFFFFFE8
/* 02D28 80AD21C8 10000007 */  beq     $zero, $zero, .L80AD21E8   
/* 02D2C 80AD21CC 4405A000 */  mfc1    $a1, $f20                  
.L80AD21D0:
/* 02D30 80AD21D0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02D34 80AD21D4 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 02D38 80AD21D8 02812821 */  addu    $a1, $s4, $at              
/* 02D3C 80AD21DC 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 02D40 80AD21E0 02403025 */  or      $a2, $s2, $zero            ## $a2 = FFFFFFE8
.L80AD21E4:
/* 02D44 80AD21E4 4405A000 */  mfc1    $a1, $f20                  
.L80AD21E8:
/* 02D48 80AD21E8 3C073A83 */  lui     $a3, 0x3A83                ## $a3 = 3A830000
/* 02D4C 80AD21EC 34E7126F */  ori     $a3, $a3, 0x126F           ## $a3 = 3A83126F
/* 02D50 80AD21F0 266402EC */  addiu   $a0, $s3, 0x02EC           ## $a0 = 000002EC
/* 02D54 80AD21F4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02D58 80AD21F8 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 02D5C 80AD21FC E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 02D60 80AD2200 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 02D64 80AD2204 D7B40030 */  ldc1    $f20, 0x0030($sp)          
/* 02D68 80AD2208 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 02D6C 80AD220C 8FB1003C */  lw      $s1, 0x003C($sp)           
/* 02D70 80AD2210 8FB20040 */  lw      $s2, 0x0040($sp)           
/* 02D74 80AD2214 8FB30044 */  lw      $s3, 0x0044($sp)           
/* 02D78 80AD2218 8FB40048 */  lw      $s4, 0x0048($sp)           
/* 02D7C 80AD221C 03E00008 */  jr      $ra                        
/* 02D80 80AD2220 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000


