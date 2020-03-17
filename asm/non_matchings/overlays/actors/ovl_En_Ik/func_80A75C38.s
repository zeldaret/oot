glabel func_80A75C38
/* 01928 80A75C38 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 0192C 80A75C3C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01930 80A75C40 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01934 80A75C44 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 01938 80A75C48 908202F8 */  lbu     $v0, 0x02F8($a0)           ## 000002F8
/* 0193C 80A75C4C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01940 80A75C50 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01944 80A75C54 104100CD */  beq     $v0, $at, .L80A75F8C       
/* 01948 80A75C58 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0194C 80A75C5C 504100CC */  beql    $v0, $at, .L80A75F90       
/* 01950 80A75C60 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01954 80A75C64 908E03FD */  lbu     $t6, 0x03FD($a0)           ## 000003FD
/* 01958 80A75C68 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0195C 80A75C6C 31CF0080 */  andi    $t7, $t6, 0x0080           ## $t7 = 00000000
/* 01960 80A75C70 51E00016 */  beql    $t7, $zero, .L80A75CCC     
/* 01964 80A75C74 920A0331 */  lbu     $t2, 0x0331($s0)           ## 00000331
/* 01968 80A75C78 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 0196C 80A75C7C 2484485C */  addiu   $a0, $a0, 0x485C           ## $a0 = 0600485C
/* 01970 80A75C80 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01974 80A75C84 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01978 80A75C88 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
/* 0197C 80A75C8C 468021A0 */  cvt.s.w $f6, $f4                   
/* 01980 80A75C90 C60A0164 */  lwc1    $f10, 0x0164($s0)          ## 00000164
/* 01984 80A75C94 46083001 */  sub.s   $f0, $f6, $f8              
/* 01988 80A75C98 4600503C */  c.lt.s  $f10, $f0                  
/* 0198C 80A75C9C 00000000 */  nop
/* 01990 80A75CA0 45020003 */  bc1fl   .L80A75CB0                 
/* 01994 80A75CA4 921803FD */  lbu     $t8, 0x03FD($s0)           ## 000003FD
/* 01998 80A75CA8 E6000164 */  swc1    $f0, 0x0164($s0)           ## 00000164
/* 0199C 80A75CAC 921803FD */  lbu     $t8, 0x03FD($s0)           ## 000003FD
.L80A75CB0:
/* 019A0 80A75CB0 92080331 */  lbu     $t0, 0x0331($s0)           ## 00000331
/* 019A4 80A75CB4 3319FF7F */  andi    $t9, $t8, 0xFF7F           ## $t9 = 00000000
/* 019A8 80A75CB8 3109FFFD */  andi    $t1, $t0, 0xFFFD           ## $t1 = 00000000
/* 019AC 80A75CBC A21903FD */  sb      $t9, 0x03FD($s0)           ## 000003FD
/* 019B0 80A75CC0 100000B2 */  beq     $zero, $zero, .L80A75F8C   
/* 019B4 80A75CC4 A2090331 */  sb      $t1, 0x0331($s0)           ## 00000331
/* 019B8 80A75CC8 920A0331 */  lbu     $t2, 0x0331($s0)           ## 00000331
.L80A75CCC:
/* 019BC 80A75CCC 26020024 */  addiu   $v0, $s0, 0x0024           ## $v0 = 00000024
/* 019C0 80A75CD0 314B0002 */  andi    $t3, $t2, 0x0002           ## $t3 = 00000000
/* 019C4 80A75CD4 516000AE */  beql    $t3, $zero, .L80A75F90     
/* 019C8 80A75CD8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 019CC 80A75CDC 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 00000024
/* 019D0 80A75CE0 27AC0038 */  addiu   $t4, $sp, 0x0038           ## $t4 = FFFFFFE8
/* 019D4 80A75CE4 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 019D8 80A75CE8 AD8E0000 */  sw      $t6, 0x0000($t4)           ## FFFFFFE8
/* 019DC 80A75CEC 8C4D0004 */  lw      $t5, 0x0004($v0)           ## 00000028
/* 019E0 80A75CF0 44819000 */  mtc1    $at, $f18                  ## $f18 = 50.00
/* 019E4 80A75CF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 019E8 80A75CF8 AD8D0004 */  sw      $t5, 0x0004($t4)           ## FFFFFFEC
/* 019EC 80A75CFC 8C4E0008 */  lw      $t6, 0x0008($v0)           ## 0000002C
/* 019F0 80A75D00 26050338 */  addiu   $a1, $s0, 0x0338           ## $a1 = 00000338
/* 019F4 80A75D04 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 019F8 80A75D08 AD8E0008 */  sw      $t6, 0x0008($t4)           ## FFFFFFF0
/* 019FC 80A75D0C C7B0003C */  lwc1    $f16, 0x003C($sp)          
/* 01A00 80A75D10 AFA20030 */  sw      $v0, 0x0030($sp)           
/* 01A04 80A75D14 46128100 */  add.s   $f4, $f16, $f18            
/* 01A08 80A75D18 0C00D594 */  jal     func_80035650              
/* 01A0C 80A75D1C E7A4003C */  swc1    $f4, 0x003C($sp)           
/* 01A10 80A75D20 920F00B1 */  lbu     $t7, 0x00B1($s0)           ## 000000B1
/* 01A14 80A75D24 92180331 */  lbu     $t8, 0x0331($s0)           ## 00000331
/* 01A18 80A75D28 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 01A1C 80A75D2C 31E200FF */  andi    $v0, $t7, 0x00FF           ## $v0 = 00000000
/* 01A20 80A75D30 3319FFFD */  andi    $t9, $t8, 0xFFFD           ## $t9 = 00000000
/* 01A24 80A75D34 A2190331 */  sb      $t9, 0x0331($s0)           ## 00000331
/* 01A28 80A75D38 1040000A */  beq     $v0, $zero, .L80A75D64     
/* 01A2C 80A75D3C A20F02FD */  sb      $t7, 0x02FD($s0)           ## 000002FD
/* 01A30 80A75D40 10410008 */  beq     $v0, $at, .L80A75D64       
/* 01A34 80A75D44 00000000 */  nop
/* 01A38 80A75D48 920802FB */  lbu     $t0, 0x02FB($s0)           ## 000002FB
/* 01A3C 80A75D4C 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 01A40 80A75D50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A44 80A75D54 15000009 */  bne     $t0, $zero, .L80A75D7C     
/* 01A48 80A75D58 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 01A4C 80A75D5C 54410008 */  bnel    $v0, $at, .L80A75D80       
/* 01A50 80A75D60 2409000C */  addiu   $t1, $zero, 0x000C         ## $t1 = 0000000C
.L80A75D64:
/* 01A54 80A75D64 10400089 */  beq     $v0, $zero, .L80A75F8C     
/* 01A58 80A75D68 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 01A5C 80A75D6C 0C018B58 */  jal     func_80062D60              
/* 01A60 80A75D70 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFE8
/* 01A64 80A75D74 10000086 */  beq     $zero, $zero, .L80A75F90   
/* 01A68 80A75D78 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A75D7C:
/* 01A6C 80A75D7C 2409000C */  addiu   $t1, $zero, 0x000C         ## $t1 = 0000000C
.L80A75D80:
/* 01A70 80A75D80 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 01A74 80A75D84 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 01A78 80A75D88 0C00D09B */  jal     func_8003426C              
/* 01A7C 80A75D8C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01A80 80A75D90 920300AF */  lbu     $v1, 0x00AF($s0)           ## 000000AF
/* 01A84 80A75D94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A88 80A75D98 0C00D58A */  jal     Actor_ApplyDamage
              
/* 01A8C 80A75D9C A3A30049 */  sb      $v1, 0x0049($sp)           
/* 01A90 80A75DA0 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 01A94 80A75DA4 93A30049 */  lbu     $v1, 0x0049($sp)           
/* 01A98 80A75DA8 1140000E */  beq     $t2, $zero, .L80A75DE4     
/* 01A9C 80A75DAC 2861000B */  slti    $at, $v1, 0x000B           
/* 01AA0 80A75DB0 1420000A */  bne     $at, $zero, .L80A75DDC     
/* 01AA4 80A75DB4 AFA30030 */  sw      $v1, 0x0030($sp)           
/* 01AA8 80A75DB8 920C00AF */  lbu     $t4, 0x00AF($s0)           ## 000000AF
/* 01AAC 80A75DBC 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 01AB0 80A75DC0 26040308 */  addiu   $a0, $s0, 0x0308           ## $a0 = 00000308
/* 01AB4 80A75DC4 2981000B */  slti    $at, $t4, 0x000B           
/* 01AB8 80A75DC8 10200004 */  beq     $at, $zero, .L80A75DDC     
/* 01ABC 80A75DCC 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01AC0 80A75DD0 A20D02FB */  sb      $t5, 0x02FB($s0)           ## 000002FB
/* 01AC4 80A75DD4 0C00CB89 */  jal     func_80032E24              
/* 01AC8 80A75DD8 8FA60054 */  lw      $a2, 0x0054($sp)           
.L80A75DDC:
/* 01ACC 80A75DDC 1000001F */  beq     $zero, $zero, .L80A75E5C   
/* 01AD0 80A75DE0 920200AF */  lbu     $v0, 0x00AF($s0)           ## 000000AF
.L80A75DE4:
/* 01AD4 80A75DE4 920200AF */  lbu     $v0, 0x00AF($s0)           ## 000000AF
/* 01AD8 80A75DE8 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 01ADC 80A75DEC 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 01AE0 80A75DF0 2841000B */  slti    $at, $v0, 0x000B           
/* 01AE4 80A75DF4 10200010 */  beq     $at, $zero, .L80A75E38     
/* 01AE8 80A75DF8 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 01AEC 80A75DFC 0C00CDD2 */  jal     Actor_ChangeType
              
/* 01AF0 80A75E00 24070009 */  addiu   $a3, $zero, 0x0009         ## $a3 = 00000009
/* 01AF4 80A75E04 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 01AF8 80A75E08 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 01AFC 80A75E0C 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 01B00 80A75E10 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 01B04 80A75E14 2407388B */  addiu   $a3, $zero, 0x388B         ## $a3 = 0000388B
/* 01B08 80A75E18 86050302 */  lh      $a1, 0x0302($s0)           ## 00000302
/* 01B0C 80A75E1C 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 01B10 80A75E20 50A1005B */  beql    $a1, $at, .L80A75F90       
/* 01B14 80A75E24 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01B18 80A75E28 0C00B2DD */  jal     Flags_SetSwitch
              
/* 01B1C 80A75E2C 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 01B20 80A75E30 10000057 */  beq     $zero, $zero, .L80A75F90   
/* 01B24 80A75E34 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A75E38:
/* 01B28 80A75E38 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 01B2C 80A75E3C 14610007 */  bne     $v1, $at, .L80A75E5C       
/* 01B30 80A75E40 AFA30030 */  sw      $v1, 0x0030($sp)           
/* 01B34 80A75E44 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 01B38 80A75E48 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 01B3C 80A75E4C 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
/* 01B40 80A75E50 0C00CDD2 */  jal     Actor_ChangeType
              
/* 01B44 80A75E54 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 01B48 80A75E58 920200AF */  lbu     $v0, 0x00AF($s0)           ## 000000AF
.L80A75E5C:
/* 01B4C 80A75E5C 14400008 */  bne     $v0, $zero, .L80A75E80     
/* 01B50 80A75E60 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 01B54 80A75E64 0C29D663 */  jal     func_80A7598C              
/* 01B58 80A75E68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B5C 80A75E6C 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 01B60 80A75E70 0C00CB1F */  jal     func_80032C7C              
/* 01B64 80A75E74 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01B68 80A75E78 10000045 */  beq     $zero, $zero, .L80A75F90   
/* 01B6C 80A75E7C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A75E80:
/* 01B70 80A75E80 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 01B74 80A75E84 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01B78 80A75E88 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01B7C 80A75E8C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01B80 80A75E90 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 01B84 80A75E94 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 01B88 80A75E98 57000019 */  bnel    $t8, $zero, .L80A75F00     
/* 01B8C 80A75E9C 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
/* 01B90 80A75EA0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01B94 80A75EA4 00000000 */  nop
/* 01B98 80A75EA8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01B9C 80A75EAC 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 01BA0 80A75EB0 00000000 */  nop
/* 01BA4 80A75EB4 4606003C */  c.lt.s  $f0, $f6                   
/* 01BA8 80A75EB8 00000000 */  nop
/* 01BAC 80A75EBC 45020010 */  bc1fl   .L80A75F00                 
/* 01BB0 80A75EC0 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
/* 01BB4 80A75EC4 8619008A */  lh      $t9, 0x008A($s0)           ## 0000008A
/* 01BB8 80A75EC8 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 01BBC 80A75ECC 03281023 */  subu    $v0, $t9, $t0              
/* 01BC0 80A75ED0 00021400 */  sll     $v0, $v0, 16               
/* 01BC4 80A75ED4 00021403 */  sra     $v0, $v0, 16               
/* 01BC8 80A75ED8 04400003 */  bltz    $v0, .L80A75EE8            
/* 01BCC 80A75EDC 00021823 */  subu    $v1, $zero, $v0            
/* 01BD0 80A75EE0 10000001 */  beq     $zero, $zero, .L80A75EE8   
/* 01BD4 80A75EE4 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80A75EE8:
/* 01BD8 80A75EE8 28614001 */  slti    $at, $v1, 0x4001           
/* 01BDC 80A75EEC 54200004 */  bnel    $at, $zero, .L80A75F00     
/* 01BE0 80A75EF0 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
/* 01BE4 80A75EF4 0C29D528 */  jal     func_80A754A0              
/* 01BE8 80A75EF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01BEC 80A75EFC 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
.L80A75F00:
/* 01BF0 80A75F00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01BF4 80A75F04 11200019 */  beq     $t1, $zero, .L80A75F6C     
/* 01BF8 80A75F08 00000000 */  nop
/* 01BFC 80A75F0C 920A02FB */  lbu     $t2, 0x02FB($s0)           ## 000002FB
/* 01C00 80A75F10 8FAB0030 */  lw      $t3, 0x0030($sp)           
/* 01C04 80A75F14 11400015 */  beq     $t2, $zero, .L80A75F6C     
/* 01C08 80A75F18 2961000B */  slti    $at, $t3, 0x000B           
/* 01C0C 80A75F1C 1420000A */  bne     $at, $zero, .L80A75F48     
/* 01C10 80A75F20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C14 80A75F24 920C00AF */  lbu     $t4, 0x00AF($s0)           ## 000000AF
/* 01C18 80A75F28 2405392C */  addiu   $a1, $zero, 0x392C         ## $a1 = 0000392C
/* 01C1C 80A75F2C 2981000B */  slti    $at, $t4, 0x000B           
/* 01C20 80A75F30 10200005 */  beq     $at, $zero, .L80A75F48     
/* 01C24 80A75F34 00000000 */  nop
/* 01C28 80A75F38 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01C2C 80A75F3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C30 80A75F40 10000006 */  beq     $zero, $zero, .L80A75F5C   
/* 01C34 80A75F44 00000000 */  nop
.L80A75F48:
/* 01C38 80A75F48 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01C3C 80A75F4C 240539BE */  addiu   $a1, $zero, 0x39BE         ## $a1 = 000039BE
/* 01C40 80A75F50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C44 80A75F54 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01C48 80A75F58 2405393B */  addiu   $a1, $zero, 0x393B         ## $a1 = 0000393B
.L80A75F5C:
/* 01C4C 80A75F5C 0C29D5E4 */  jal     func_80A75790              
/* 01C50 80A75F60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C54 80A75F64 1000000A */  beq     $zero, $zero, .L80A75F90   
/* 01C58 80A75F68 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A75F6C:
/* 01C5C 80A75F6C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01C60 80A75F70 2405393A */  addiu   $a1, $zero, 0x393A         ## $a1 = 0000393A
/* 01C64 80A75F74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C68 80A75F78 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01C6C 80A75F7C 240539BE */  addiu   $a1, $zero, 0x39BE         ## $a1 = 000039BE
/* 01C70 80A75F80 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 01C74 80A75F84 0C018B35 */  jal     func_80062CD4              
/* 01C78 80A75F88 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFE8
.L80A75F8C:
/* 01C7C 80A75F8C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A75F90:
/* 01C80 80A75F90 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01C84 80A75F94 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 01C88 80A75F98 03E00008 */  jr      $ra                        
/* 01C8C 80A75F9C 00000000 */  nop


