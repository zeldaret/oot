glabel ObjSyokudai_Draw
/* 00834 80B9FAE4 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 00838 80B9FAE8 AFBF0044 */  sw      $ra, 0x0044($sp)           
/* 0083C 80B9FAEC AFB20040 */  sw      $s2, 0x0040($sp)           
/* 00840 80B9FAF0 AFB1003C */  sw      $s1, 0x003C($sp)           
/* 00844 80B9FAF4 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00848 80B9FAF8 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 0084C 80B9FAFC 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 00850 80B9FB00 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00854 80B9FB04 000E7983 */  sra     $t7, $t6,  6               
/* 00858 80B9FB08 31F8000F */  andi    $t8, $t7, 0x000F           ## $t8 = 00000000
/* 0085C 80B9FB0C 0018C880 */  sll     $t9, $t8,  2               
/* 00860 80B9FB10 0338C823 */  subu    $t9, $t9, $t8              
/* 00864 80B9FB14 0019C8C0 */  sll     $t9, $t9,  3               
/* 00868 80B9FB18 0338C821 */  addu    $t9, $t9, $t8              
/* 0086C 80B9FB1C 0019C840 */  sll     $t9, $t9,  1               
/* 00870 80B9FB20 27280064 */  addiu   $t0, $t9, 0x0064           ## $t0 = 00000064
/* 00874 80B9FB24 AFA80084 */  sw      $t0, 0x0084($sp)           
/* 00878 80B9FB28 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 0087C 80B9FB2C 3C0680BA */  lui     $a2, %hi(D_80B9FE90)       ## $a2 = 80BA0000
/* 00880 80B9FB30 24C6FE90 */  addiu   $a2, $a2, %lo(D_80B9FE90)  ## $a2 = 80B9FE90
/* 00884 80B9FB34 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFE0
/* 00888 80B9FB38 240702C3 */  addiu   $a3, $zero, 0x02C3         ## $a3 = 000002C3
/* 0088C 80B9FB3C 0C031AB1 */  jal     func_800C6AC4              
/* 00890 80B9FB40 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00894 80B9FB44 0C024F46 */  jal     func_80093D18              
/* 00898 80B9FB48 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 0089C 80B9FB4C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 008A0 80B9FB50 3C0ADA38 */  lui     $t2, 0xDA38                ## $t2 = DA380000
/* 008A4 80B9FB54 354A0003 */  ori     $t2, $t2, 0x0003           ## $t2 = DA380003
/* 008A8 80B9FB58 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 008AC 80B9FB5C AE0902C0 */  sw      $t1, 0x02C0($s0)           ## 000002C0
/* 008B0 80B9FB60 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 008B4 80B9FB64 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 008B8 80B9FB68 3C0580BA */  lui     $a1, %hi(D_80B9FEA4)       ## $a1 = 80BA0000
/* 008BC 80B9FB6C 24A5FEA4 */  addiu   $a1, $a1, %lo(D_80B9FEA4)  ## $a1 = 80B9FEA4
/* 008C0 80B9FB70 240602CA */  addiu   $a2, $zero, 0x02CA         ## $a2 = 000002CA
/* 008C4 80B9FB74 0C0346A2 */  jal     Matrix_NewMtx              
/* 008C8 80B9FB78 AFA2006C */  sw      $v0, 0x006C($sp)           
/* 008CC 80B9FB7C 8FA3006C */  lw      $v1, 0x006C($sp)           
/* 008D0 80B9FB80 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 008D4 80B9FB84 3C1880BA */  lui     $t8, %hi(D_80B9FE7C)       ## $t8 = 80BA0000
/* 008D8 80B9FB88 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 008DC 80B9FB8C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 008E0 80B9FB90 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 008E4 80B9FB94 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 008E8 80B9FB98 AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 008EC 80B9FB9C AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 008F0 80B9FBA0 962D001C */  lhu     $t5, 0x001C($s1)           ## 0000001C
/* 008F4 80B9FBA4 000D7303 */  sra     $t6, $t5, 12               
/* 008F8 80B9FBA8 000E7880 */  sll     $t7, $t6,  2               
/* 008FC 80B9FBAC 030FC021 */  addu    $t8, $t8, $t7              
/* 00900 80B9FBB0 8F18FE7C */  lw      $t8, %lo(D_80B9FE7C)($t8)  
/* 00904 80B9FBB4 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 00908 80B9FBB8 862201E4 */  lh      $v0, 0x01E4($s1)           ## 000001E4
/* 0090C 80B9FBBC 8FA30084 */  lw      $v1, 0x0084($sp)           
/* 00910 80B9FBC0 1040007F */  beq     $v0, $zero, .L80B9FDC0     
/* 00914 80B9FBC4 00000000 */  nop
/* 00918 80B9FBC8 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 0091C 80B9FBCC 0062082A */  slt     $at, $v1, $v0              
/* 00920 80B9FBD0 10200008 */  beq     $at, $zero, .L80B9FBF4     
/* 00924 80B9FBD4 0062C823 */  subu    $t9, $v1, $v0              
/* 00928 80B9FBD8 2728000A */  addiu   $t0, $t9, 0x000A           ## $t0 = 0000000A
/* 0092C 80B9FBDC 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 00930 80B9FBE0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00934 80B9FBE4 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 00938 80B9FBE8 468021A0 */  cvt.s.w $f6, $f4                   
/* 0093C 80B9FBEC 1000000A */  beq     $zero, $zero, .L80B9FC18   
/* 00940 80B9FBF0 46083003 */  div.s   $f0, $f6, $f8              
.L80B9FBF4:
/* 00944 80B9FBF4 18400008 */  blez    $v0, .L80B9FC18            
/* 00948 80B9FBF8 28410014 */  slti    $at, $v0, 0x0014           
/* 0094C 80B9FBFC 10200006 */  beq     $at, $zero, .L80B9FC18     
/* 00950 80B9FC00 00000000 */  nop
/* 00954 80B9FC04 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 00958 80B9FC08 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0095C 80B9FC0C 44819000 */  mtc1    $at, $f18                  ## $f18 = 20.00
/* 00960 80B9FC10 46805420 */  cvt.s.w $f16, $f10                 
/* 00964 80B9FC14 46128003 */  div.s   $f0, $f16, $f18            
.L80B9FC18:
/* 00968 80B9FC18 3C0180BA */  lui     $at, %hi(D_80B9FEE0)       ## $at = 80BA0000
/* 0096C 80B9FC1C C424FEE0 */  lwc1    $f4, %lo(D_80B9FEE0)($at)  
/* 00970 80B9FC20 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 00974 80B9FC24 46040002 */  mul.s   $f0, $f0, $f4              
/* 00978 80B9FC28 0C024F61 */  jal     func_80093D84              
/* 0097C 80B9FC2C E7A00064 */  swc1    $f0, 0x0064($sp)           
/* 00980 80B9FC30 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00984 80B9FC34 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 00988 80B9FC38 354A0020 */  ori     $t2, $t2, 0x0020           ## $t2 = DB060020
/* 0098C 80B9FC3C 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 00990 80B9FC40 AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 00994 80B9FC44 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 00998 80B9FC48 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 0099C 80B9FC4C 240B0020 */  addiu   $t3, $zero, 0x0020         ## $t3 = 00000020
/* 009A0 80B9FC50 240C0040 */  addiu   $t4, $zero, 0x0040         ## $t4 = 00000040
/* 009A4 80B9FC54 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 009A8 80B9FC58 AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 009AC 80B9FC5C AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 009B0 80B9FC60 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 009B4 80B9FC64 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 009B8 80B9FC68 922E01E6 */  lbu     $t6, 0x01E6($s1)           ## 000001E6
/* 009BC 80B9FC6C 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 009C0 80B9FC70 24080080 */  addiu   $t0, $zero, 0x0080         ## $t0 = 00000080
/* 009C4 80B9FC74 000E0823 */  subu    $at, $zero, $t6            
/* 009C8 80B9FC78 00017880 */  sll     $t7, $at,  2               
/* 009CC 80B9FC7C 01E17821 */  addu    $t7, $t7, $at              
/* 009D0 80B9FC80 000F7880 */  sll     $t7, $t7,  2               
/* 009D4 80B9FC84 31F801FF */  andi    $t8, $t7, 0x01FF           ## $t8 = 00000000
/* 009D8 80B9FC88 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 009DC 80B9FC8C AFA80028 */  sw      $t0, 0x0028($sp)           
/* 009E0 80B9FC90 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 009E4 80B9FC94 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 009E8 80B9FC98 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 009EC 80B9FC9C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 009F0 80B9FCA0 0C0253D0 */  jal     Draw_TwoTexScroll              
/* 009F4 80B9FCA4 AFA20060 */  sw      $v0, 0x0060($sp)           
/* 009F8 80B9FCA8 8FA30060 */  lw      $v1, 0x0060($sp)           
/* 009FC 80B9FCAC 3C0AFA00 */  lui     $t2, 0xFA00                ## $t2 = FA000000
/* 00A00 80B9FCB0 3C0BFFFF */  lui     $t3, 0xFFFF                ## $t3 = FFFF0000
/* 00A04 80B9FCB4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00A08 80B9FCB8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00A0C 80B9FCBC 356B00FF */  ori     $t3, $t3, 0x00FF           ## $t3 = FFFF00FF
/* 00A10 80B9FCC0 354A8080 */  ori     $t2, $t2, 0x8080           ## $t2 = FA008080
/* 00A14 80B9FCC4 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 00A18 80B9FCC8 AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 00A1C 80B9FCCC AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 00A20 80B9FCD0 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 00A24 80B9FCD4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00A28 80B9FCD8 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00A2C 80B9FCDC 3C014250 */  lui     $at, 0x4250                ## $at = 42500000
/* 00A30 80B9FCE0 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 00A34 80B9FCE4 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 00A38 80B9FCE8 3C0DFB00 */  lui     $t5, 0xFB00                ## $t5 = FB000000
/* 00A3C 80B9FCEC 3C0EFF00 */  lui     $t6, 0xFF00                ## $t6 = FF000000
/* 00A40 80B9FCF0 44817000 */  mtc1    $at, $f14                  ## $f14 = 52.00
/* 00A44 80B9FCF4 44066000 */  mfc1    $a2, $f12                  
/* 00A48 80B9FCF8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00A4C 80B9FCFC AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 00A50 80B9FD00 0C034261 */  jal     Matrix_Translate              
/* 00A54 80B9FD04 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 00A58 80B9FD08 864F07A0 */  lh      $t7, 0x07A0($s2)           ## 000007A0
/* 00A5C 80B9FD0C 000FC080 */  sll     $t8, $t7,  2               
/* 00A60 80B9FD10 0258C821 */  addu    $t9, $s2, $t8              
/* 00A64 80B9FD14 0C016A7D */  jal     func_8005A9F4              
/* 00A68 80B9FD18 8F240790 */  lw      $a0, 0x0790($t9)           ## 00000790
/* 00A6C 80B9FD1C 862800B6 */  lh      $t0, 0x00B6($s1)           ## 000000B6
/* 00A70 80B9FD20 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00A74 80B9FD24 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00A78 80B9FD28 00484823 */  subu    $t1, $v0, $t0              
/* 00A7C 80B9FD2C 01215021 */  addu    $t2, $t1, $at              
/* 00A80 80B9FD30 000A5C00 */  sll     $t3, $t2, 16               
/* 00A84 80B9FD34 000B6403 */  sra     $t4, $t3, 16               
/* 00A88 80B9FD38 448C3000 */  mtc1    $t4, $f6                   ## $f6 = 0.00
/* 00A8C 80B9FD3C 3C0180BA */  lui     $at, %hi(D_80B9FEE4)       ## $at = 80BA0000
/* 00A90 80B9FD40 C42AFEE4 */  lwc1    $f10, %lo(D_80B9FEE4)($at) 
/* 00A94 80B9FD44 46803220 */  cvt.s.w $f8, $f6                   
/* 00A98 80B9FD48 460A4302 */  mul.s   $f12, $f8, $f10            
/* 00A9C 80B9FD4C 0C034348 */  jal     Matrix_RotateY              
/* 00AA0 80B9FD50 00000000 */  nop
/* 00AA4 80B9FD54 C7AC0064 */  lwc1    $f12, 0x0064($sp)          
/* 00AA8 80B9FD58 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00AAC 80B9FD5C 44066000 */  mfc1    $a2, $f12                  
/* 00AB0 80B9FD60 0C0342A3 */  jal     Matrix_Scale              
/* 00AB4 80B9FD64 46006386 */  mov.s   $f14, $f12                 
/* 00AB8 80B9FD68 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00ABC 80B9FD6C 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 00AC0 80B9FD70 35CE0003 */  ori     $t6, $t6, 0x0003           ## $t6 = DA380003
/* 00AC4 80B9FD74 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 00AC8 80B9FD78 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 00ACC 80B9FD7C AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 00AD0 80B9FD80 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 00AD4 80B9FD84 3C0580BA */  lui     $a1, %hi(D_80B9FEB8)       ## $a1 = 80BA0000
/* 00AD8 80B9FD88 24A5FEB8 */  addiu   $a1, $a1, %lo(D_80B9FEB8)  ## $a1 = 80B9FEB8
/* 00ADC 80B9FD8C 240602E9 */  addiu   $a2, $zero, 0x02E9         ## $a2 = 000002E9
/* 00AE0 80B9FD90 0C0346A2 */  jal     Matrix_NewMtx              
/* 00AE4 80B9FD94 AFA20054 */  sw      $v0, 0x0054($sp)           
/* 00AE8 80B9FD98 8FA30054 */  lw      $v1, 0x0054($sp)           
/* 00AEC 80B9FD9C 3C190405 */  lui     $t9, 0x0405                ## $t9 = 04050000
/* 00AF0 80B9FDA0 2739D4E0 */  addiu   $t9, $t9, 0xD4E0           ## $t9 = 0404D4E0
/* 00AF4 80B9FDA4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00AF8 80B9FDA8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00AFC 80B9FDAC 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 00B00 80B9FDB0 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00B04 80B9FDB4 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 00B08 80B9FDB8 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 00B0C 80B9FDBC AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
.L80B9FDC0:
/* 00B10 80B9FDC0 3C0680BA */  lui     $a2, %hi(D_80B9FECC)       ## $a2 = 80BA0000
/* 00B14 80B9FDC4 24C6FECC */  addiu   $a2, $a2, %lo(D_80B9FECC)  ## $a2 = 80B9FECC
/* 00B18 80B9FDC8 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFE0
/* 00B1C 80B9FDCC 8E450000 */  lw      $a1, 0x0000($s2)           ## 00000000
/* 00B20 80B9FDD0 0C031AD5 */  jal     func_800C6B54              
/* 00B24 80B9FDD4 240702ED */  addiu   $a3, $zero, 0x02ED         ## $a3 = 000002ED
/* 00B28 80B9FDD8 8FBF0044 */  lw      $ra, 0x0044($sp)           
/* 00B2C 80B9FDDC 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 00B30 80B9FDE0 8FB1003C */  lw      $s1, 0x003C($sp)           
/* 00B34 80B9FDE4 8FB20040 */  lw      $s2, 0x0040($sp)           
/* 00B38 80B9FDE8 03E00008 */  jr      $ra                        
/* 00B3C 80B9FDEC 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000

