.rdata
glabel D_8088F220
    .asciz "../z_bg_hidan_sima.c"
    .balign 4

glabel D_8088F238
    .asciz "../z_bg_hidan_sima.c"
    .balign 4

.late_rodata
glabel D_8088F2BC
    .float 0.4

.text
glabel func_8088EB54
/* 00784 8088EB54 27BDFF18 */  addiu   $sp, $sp, 0xFF18           ## $sp = FFFFFF18
/* 00788 8088EB58 AFB40040 */  sw      $s4, 0x0040($sp)           
/* 0078C 8088EB5C 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 00790 8088EB60 AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 00794 8088EB64 AFB10034 */  sw      $s1, 0x0034($sp)           
/* 00798 8088EB68 AFA400E8 */  sw      $a0, 0x00E8($sp)           
/* 0079C 8088EB6C 3C058013 */  lui     $a1, %hi(gMtxFClear)
/* 007A0 8088EB70 00C08825 */  or      $s1, $a2, $zero            ## $s1 = 00000000
/* 007A4 8088EB74 AFBE0050 */  sw      $s8, 0x0050($sp)           
/* 007A8 8088EB78 AFB7004C */  sw      $s7, 0x004C($sp)           
/* 007AC 8088EB7C AFB60048 */  sw      $s6, 0x0048($sp)           
/* 007B0 8088EB80 AFB50044 */  sw      $s5, 0x0044($sp)           
/* 007B4 8088EB84 AFB3003C */  sw      $s3, 0x003C($sp)           
/* 007B8 8088EB88 AFB20038 */  sw      $s2, 0x0038($sp)           
/* 007BC 8088EB8C AFB00030 */  sw      $s0, 0x0030($sp)           
/* 007C0 8088EB90 F7B80028 */  sdc1    $f24, 0x0028($sp)          
/* 007C4 8088EB94 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 007C8 8088EB98 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 007CC 8088EB9C 24A5DB60 */  addiu   $a1, %lo(gMtxFClear)
/* 007D0 8088EBA0 0C0346EA */  jal     Matrix_MtxFCopy              
/* 007D4 8088EBA4 27A400A8 */  addiu   $a0, $sp, 0x00A8           ## $a0 = FFFFFFC0
/* 007D8 8088EBA8 868E0032 */  lh      $t6, 0x0032($s4)           ## 00000032
/* 007DC 8088EBAC 34108000 */  ori     $s0, $zero, 0x8000         ## $s0 = 00008000
/* 007E0 8088EBB0 01D02021 */  addu    $a0, $t6, $s0              
/* 007E4 8088EBB4 00042400 */  sll     $a0, $a0, 16               
/* 007E8 8088EBB8 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 007EC 8088EBBC 00042403 */  sra     $a0, $a0, 16               
/* 007F0 8088EBC0 E7A00098 */  swc1    $f0, 0x0098($sp)           
/* 007F4 8088EBC4 868F0032 */  lh      $t7, 0x0032($s4)           ## 00000032
/* 007F8 8088EBC8 01F02021 */  addu    $a0, $t7, $s0              
/* 007FC 8088EBCC 00042400 */  sll     $a0, $a0, 16               
/* 00800 8088EBD0 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00804 8088EBD4 00042403 */  sra     $a0, $a0, 16               
/* 00808 8088EBD8 E7A00094 */  swc1    $f0, 0x0094($sp)           
/* 0080C 8088EBDC 86840168 */  lh      $a0, 0x0168($s4)           ## 00000168
/* 00810 8088EBE0 2418003C */  addiu   $t8, $zero, 0x003C         ## $t8 = 0000003C
/* 00814 8088EBE4 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 00818 8088EBE8 0304A823 */  subu    $s5, $t8, $a0              
/* 0081C 8088EBEC 0015A843 */  sra     $s5, $s5,  1               
/* 00820 8088EBF0 2AA10004 */  slti    $at, $s5, 0x0004           
/* 00824 8088EBF4 14200002 */  bne     $at, $zero, .L8088EC00     
/* 00828 8088EBF8 0004C843 */  sra     $t9, $a0,  1               
/* 0082C 8088EBFC 24150003 */  addiu   $s5, $zero, 0x0003         ## $s5 = 00000003
.L8088EC00:
/* 00830 8088EC00 01191023 */  subu    $v0, $t0, $t9              
/* 00834 8088EC04 04410002 */  bgez    $v0, .L8088EC10            
/* 00838 8088EC08 2405004F */  addiu   $a1, $zero, 0x004F         ## $a1 = 0000004F
/* 0083C 8088EC0C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8088EC10:
/* 00840 8088EC10 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00844 8088EC14 0086001A */  div     $zero, $a0, $a2            
/* 00848 8088EC18 00021880 */  sll     $v1, $v0,  2               
/* 0084C 8088EC1C 00004810 */  mfhi    $t1                        
/* 00850 8088EC20 00621823 */  subu    $v1, $v1, $v0              
/* 00854 8088EC24 000318C0 */  sll     $v1, $v1,  3               
/* 00858 8088EC28 00095080 */  sll     $t2, $t1,  2               
/* 0085C 8088EC2C 00AA5823 */  subu    $t3, $a1, $t2              
/* 00860 8088EC30 00621821 */  addu    $v1, $v1, $v0              
/* 00864 8088EC34 01636021 */  addu    $t4, $t3, $v1              
/* 00868 8088EC38 448C3000 */  mtc1    $t4, $f6                   ## $f6 = 0.00
/* 0086C 8088EC3C C6840024 */  lwc1    $f4, 0x0024($s4)           ## 00000024
/* 00870 8088EC40 C7AC0098 */  lwc1    $f12, 0x0098($sp)          
/* 00874 8088EC44 46803220 */  cvt.s.w $f8, $f6                   
/* 00878 8088EC48 3C018089 */  lui     $at, %hi(D_8088F2BC)       ## $at = 80890000
/* 0087C 8088EC4C C434F2BC */  lwc1    $f20, %lo(D_8088F2BC)($at) 
/* 00880 8088EC50 14C00002 */  bne     $a2, $zero, .L8088EC5C     
/* 00884 8088EC54 00000000 */  nop
/* 00888 8088EC58 0007000D */  break 7
.L8088EC5C:
/* 0088C 8088EC5C 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00890 8088EC60 14C10004 */  bne     $a2, $at, .L8088EC74       
/* 00894 8088EC64 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00898 8088EC68 14810002 */  bne     $a0, $at, .L8088EC74       
/* 0089C 8088EC6C 00000000 */  nop
/* 008A0 8088EC70 0006000D */  break 6
.L8088EC74:
/* 008A4 8088EC74 46004282 */  mul.s   $f10, $f8, $f0             
/* 008A8 8088EC78 3C190601 */  lui     $t9, %hi(gHidanObjectsDL_00DC30)                ## $t9 = 06010000
/* 008AC 8088EC7C 2739DC30 */  addiu   $t9, $t9, %lo(gHidanObjectsDL_00DC30)           ## $t9 = 0600DC30
/* 008B0 8088EC80 00409825 */  or      $s3, $v0, $zero            ## $s3 = 00000000
/* 008B4 8088EC84 241E0007 */  addiu   $s8, $zero, 0x0007         ## $s8 = 00000007
/* 008B8 8088EC88 3C178089 */  lui     $s7, %hi(D_8088F1FC)       ## $s7 = 80890000
/* 008BC 8088EC8C 460A2400 */  add.s   $f16, $f4, $f10            
/* 008C0 8088EC90 E7B000D8 */  swc1    $f16, 0x00D8($sp)          
/* 008C4 8088EC94 868D0168 */  lh      $t5, 0x0168($s4)           ## 00000168
/* 008C8 8088EC98 C692002C */  lwc1    $f18, 0x002C($s4)          ## 0000002C
/* 008CC 8088EC9C 01A6001A */  div     $zero, $t5, $a2            
/* 008D0 8088ECA0 00007010 */  mfhi    $t6                        
/* 008D4 8088ECA4 000E7880 */  sll     $t7, $t6,  2               
/* 008D8 8088ECA8 00AFC023 */  subu    $t8, $a1, $t7              
/* 008DC 8088ECAC 03034021 */  addu    $t0, $t8, $v1              
/* 008E0 8088ECB0 44883000 */  mtc1    $t0, $f6                   ## $f6 = 0.00
/* 008E4 8088ECB4 14C00002 */  bne     $a2, $zero, .L8088ECC0     
/* 008E8 8088ECB8 00000000 */  nop
/* 008EC 8088ECBC 0007000D */  break 7
.L8088ECC0:
/* 008F0 8088ECC0 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 008F4 8088ECC4 14C10004 */  bne     $a2, $at, .L8088ECD8       
/* 008F8 8088ECC8 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 008FC 8088ECCC 15A10002 */  bne     $t5, $at, .L8088ECD8       
/* 00900 8088ECD0 00000000 */  nop
/* 00904 8088ECD4 0006000D */  break 6
.L8088ECD8:
/* 00908 8088ECD8 46803220 */  cvt.s.w $f8, $f6                   
/* 0090C 8088ECDC 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00910 8088ECE0 44813000 */  mtc1    $at, $f6                   ## $f6 = 40.00
/* 00914 8088ECE4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00918 8088ECE8 460C4102 */  mul.s   $f4, $f8, $f12             
/* 0091C 8088ECEC 46049280 */  add.s   $f10, $f18, $f4            
/* 00920 8088ECF0 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 00924 8088ECF4 00000000 */  nop
/* 00928 8088ECF8 46809120 */  cvt.s.w $f4, $f18                  
/* 0092C 8088ECFC E7AA00E0 */  swc1    $f10, 0x00E0($sp)          
/* 00930 8088ED00 C6900028 */  lwc1    $f16, 0x0028($s4)          ## 00000028
/* 00934 8088ED04 46068200 */  add.s   $f8, $f16, $f6             
/* 00938 8088ED08 46142282 */  mul.s   $f10, $f4, $f20            
/* 0093C 8088ED0C 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 00940 8088ED10 0055082A */  slt     $at, $v0, $s5              
/* 00944 8088ED14 E7A800DC */  swc1    $f8, 0x00DC($sp)           
/* 00948 8088ED18 C7A80094 */  lwc1    $f8, 0x0094($sp)           
/* 0094C 8088ED1C 46105080 */  add.s   $f2, $f10, $f16            
/* 00950 8088ED20 E7A200D0 */  swc1    $f2, 0x00D0($sp)           
/* 00954 8088ED24 E7A200BC */  swc1    $f2, 0x00BC($sp)           
/* 00958 8088ED28 10200056 */  beq     $at, $zero, .L8088EE84     
/* 0095C 8088ED2C E7A200A8 */  swc1    $f2, 0x00A8($sp)           
/* 00960 8088ED30 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 00964 8088ED34 44813000 */  mtc1    $at, $f6                   ## $f6 = 25.00
/* 00968 8088ED38 44819000 */  mtc1    $at, $f18                  ## $f18 = 25.00
/* 0096C 8088ED3C 3C16DB06 */  lui     $s6, 0xDB06                ## $s6 = DB060000
/* 00970 8088ED40 46083582 */  mul.s   $f22, $f6, $f8             
/* 00974 8088ED44 36D60024 */  ori     $s6, $s6, 0x0024           ## $s6 = DB060024
/* 00978 8088ED48 AFB90060 */  sw      $t9, 0x0060($sp)           
/* 0097C 8088ED4C 460C9602 */  mul.s   $f24, $f18, $f12           
/* 00980 8088ED50 26F7F1FC */  addiu   $s7, $s7, %lo(D_8088F1FC)  ## $s7 = 8088F1FC
.L8088ED54:
/* 00984 8088ED54 C7A400D8 */  lwc1    $f4, 0x00D8($sp)           
/* 00988 8088ED58 C7B000E0 */  lwc1    $f16, 0x00E0($sp)          
/* 0098C 8088ED5C C7A800A8 */  lwc1    $f8, 0x00A8($sp)           
/* 00990 8088ED60 46162280 */  add.s   $f10, $f4, $f22            
/* 00994 8088ED64 C7A400BC */  lwc1    $f4, 0x00BC($sp)           
/* 00998 8088ED68 C7AC0098 */  lwc1    $f12, 0x0098($sp)          
/* 0099C 8088ED6C 46188180 */  add.s   $f6, $f16, $f24            
/* 009A0 8088ED70 C7B000D0 */  lwc1    $f16, 0x00D0($sp)          
/* 009A4 8088ED74 E7AA00D8 */  swc1    $f10, 0x00D8($sp)          
/* 009A8 8088ED78 46144480 */  add.s   $f18, $f8, $f20            
/* 009AC 8088ED7C E7A600E0 */  swc1    $f6, 0x00E0($sp)           
/* 009B0 8088ED80 02201025 */  or      $v0, $s1, $zero            ## $v0 = 00000000
/* 009B4 8088ED84 46142280 */  add.s   $f10, $f4, $f20            
/* 009B8 8088ED88 E7B200A8 */  swc1    $f18, 0x00A8($sp)          
/* 009BC 8088ED8C 3C198016 */  lui     $t9, %hi(gSegments)
/* 009C0 8088ED90 46148180 */  add.s   $f6, $f16, $f20            
/* 009C4 8088ED94 E7AA00BC */  swc1    $f10, 0x00BC($sp)          
/* 009C8 8088ED98 26310008 */  addiu   $s1, $s1, 0x0008           ## $s1 = 00000008
/* 009CC 8088ED9C 02208025 */  or      $s0, $s1, $zero            ## $s0 = 00000008
/* 009D0 8088EDA0 E7A600D0 */  swc1    $f6, 0x00D0($sp)           
/* 009D4 8088EDA4 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
/* 009D8 8088EDA8 86890168 */  lh      $t1, 0x0168($s4)           ## 00000168
/* 009DC 8088EDAC 3C058089 */  lui     $a1, %hi(D_8088F220)       ## $a1 = 80890000
/* 009E0 8088EDB0 24A5F220 */  addiu   $a1, $a1, %lo(D_8088F220)  ## $a1 = 8088F220
/* 009E4 8088EDB4 01335021 */  addu    $t2, $t1, $s3              
/* 009E8 8088EDB8 015E001A */  div     $zero, $t2, $s8            
/* 009EC 8088EDBC 00005810 */  mfhi    $t3                        
/* 009F0 8088EDC0 000B6080 */  sll     $t4, $t3,  2               
/* 009F4 8088EDC4 02EC6821 */  addu    $t5, $s7, $t4              
/* 009F8 8088EDC8 8DA30000 */  lw      $v1, 0x0000($t5)           ## 00000000
/* 009FC 8088EDCC 17C00002 */  bne     $s8, $zero, .L8088EDD8     
/* 00A00 8088EDD0 00000000 */  nop
/* 00A04 8088EDD4 0007000D */  break 7
.L8088EDD8:
/* 00A08 8088EDD8 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00A0C 8088EDDC 17C10004 */  bne     $s8, $at, .L8088EDF0       
/* 00A10 8088EDE0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00A14 8088EDE4 15410002 */  bne     $t2, $at, .L8088EDF0       
/* 00A18 8088EDE8 00000000 */  nop
/* 00A1C 8088EDEC 0006000D */  break 6
.L8088EDF0:
/* 00A20 8088EDF0 00037900 */  sll     $t7, $v1,  4               
/* 00A24 8088EDF4 000FC702 */  srl     $t8, $t7, 28               
/* 00A28 8088EDF8 00184080 */  sll     $t0, $t8,  2               
/* 00A2C 8088EDFC 0328C821 */  addu    $t9, $t9, $t0              
/* 00A30 8088EE00 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00A34 8088EE04 8F396FA8 */  lw      $t9, %lo(gSegments)($t9)
/* 00A38 8088EE08 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00A3C 8088EE0C 00617024 */  and     $t6, $v1, $at              
/* 00A40 8088EE10 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00A44 8088EE14 01D94821 */  addu    $t1, $t6, $t9              
/* 00A48 8088EE18 01215021 */  addu    $t2, $t1, $at              
/* 00A4C 8088EE1C 3C0BDA38 */  lui     $t3, 0xDA38                ## $t3 = DA380000
/* 00A50 8088EE20 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 00A54 8088EE24 356B0003 */  ori     $t3, $t3, 0x0003           ## $t3 = DA380003
/* 00A58 8088EE28 AE0B0000 */  sw      $t3, 0x0000($s0)           ## 00000008
/* 00A5C 8088EE2C 26310008 */  addiu   $s1, $s1, 0x0008           ## $s1 = 00000010
/* 00A60 8088EE30 27A400A8 */  addiu   $a0, $sp, 0x00A8           ## $a0 = FFFFFFC0
/* 00A64 8088EE34 0C034A17 */  jal     Matrix_CheckFloats              
/* 00A68 8088EE38 24060263 */  addiu   $a2, $zero, 0x0263         ## $a2 = 00000263
/* 00A6C 8088EE3C 8FAC00E8 */  lw      $t4, 0x00E8($sp)           
/* 00A70 8088EE40 00409025 */  or      $s2, $v0, $zero            ## $s2 = 00000000
/* 00A74 8088EE44 24050040 */  addiu   $a1, $zero, 0x0040         ## $a1 = 00000040
/* 00A78 8088EE48 0C031A73 */  jal     Graph_Alloc
              
/* 00A7C 8088EE4C 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 00A80 8088EE50 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00A84 8088EE54 0C034610 */  jal     Matrix_MtxFToMtx              
/* 00A88 8088EE58 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 00A8C 8088EE5C AE020004 */  sw      $v0, 0x0004($s0)           ## 0000000C
/* 00A90 8088EE60 02201025 */  or      $v0, $s1, $zero            ## $v0 = 00000010
/* 00A94 8088EE64 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 00A98 8088EE68 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000010
/* 00A9C 8088EE6C 8FAF0060 */  lw      $t7, 0x0060($sp)           
/* 00AA0 8088EE70 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 00AA4 8088EE74 26310008 */  addiu   $s1, $s1, 0x0008           ## $s1 = 00000018
/* 00AA8 8088EE78 1675FFB6 */  bne     $s3, $s5, .L8088ED54       
/* 00AAC 8088EE7C AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000014
/* 00AB0 8088EE80 C7AC0098 */  lwc1    $f12, 0x0098($sp)          
.L8088EE84:
/* 00AB4 8088EE84 0015C080 */  sll     $t8, $s5,  2               
/* 00AB8 8088EE88 0315C023 */  subu    $t8, $t8, $s5              
/* 00ABC 8088EE8C 0018C0C0 */  sll     $t8, $t8,  3               
/* 00AC0 8088EE90 0315C021 */  addu    $t8, $t8, $s5              
/* 00AC4 8088EE94 27080050 */  addiu   $t0, $t8, 0x0050           ## $t0 = 00000050
/* 00AC8 8088EE98 44884000 */  mtc1    $t0, $f8                   ## $f8 = 0.00
/* 00ACC 8088EE9C C7A40094 */  lwc1    $f4, 0x0094($sp)           
/* 00AD0 8088EEA0 C6920024 */  lwc1    $f18, 0x0024($s4)          ## 00000024
/* 00AD4 8088EEA4 46804020 */  cvt.s.w $f0, $f8                   
/* 00AD8 8088EEA8 3C0E0601 */  lui     $t6, %hi(gHidanObjectsDL_00DC30)                ## $t6 = 06010000
/* 00ADC 8088EEAC 3C16DB06 */  lui     $s6, 0xDB06                ## $s6 = DB060000
/* 00AE0 8088EEB0 25CEDC30 */  addiu   $t6, $t6, %lo(gHidanObjectsDL_00DC30)           ## $t6 = 0600DC30
/* 00AE4 8088EEB4 36D60024 */  ori     $s6, $s6, 0x0024           ## $s6 = DB060024
/* 00AE8 8088EEB8 02201025 */  or      $v0, $s1, $zero            ## $v0 = 00000018
/* 00AEC 8088EEBC 46040282 */  mul.s   $f10, $f0, $f4             
/* 00AF0 8088EEC0 241E0007 */  addiu   $s8, $zero, 0x0007         ## $s8 = 00000007
/* 00AF4 8088EEC4 3C178089 */  lui     $s7, %hi(D_8088F1FC)       ## $s7 = 80890000
/* 00AF8 8088EEC8 460C0202 */  mul.s   $f8, $f0, $f12             
/* 00AFC 8088EECC 26F7F1FC */  addiu   $s7, $s7, %lo(D_8088F1FC)  ## $s7 = 8088F1FC
/* 00B00 8088EED0 26310008 */  addiu   $s1, $s1, 0x0008           ## $s1 = 00000020
/* 00B04 8088EED4 02208025 */  or      $s0, $s1, $zero            ## $s0 = 00000020
/* 00B08 8088EED8 3C058089 */  lui     $a1, %hi(D_8088F238)       ## $a1 = 80890000
/* 00B0C 8088EEDC 460A9400 */  add.s   $f16, $f18, $f10           
/* 00B10 8088EEE0 24A5F238 */  addiu   $a1, $a1, %lo(D_8088F238)  ## $a1 = 8088F238
/* 00B14 8088EEE4 26310008 */  addiu   $s1, $s1, 0x0008           ## $s1 = 00000028
/* 00B18 8088EEE8 27A400A8 */  addiu   $a0, $sp, 0x00A8           ## $a0 = FFFFFFC0
/* 00B1C 8088EEEC E7B000D8 */  swc1    $f16, 0x00D8($sp)          
/* 00B20 8088EEF0 C686002C */  lwc1    $f6, 0x002C($s4)           ## 0000002C
/* 00B24 8088EEF4 AFAE0060 */  sw      $t6, 0x0060($sp)           
/* 00B28 8088EEF8 3C0E8016 */  lui     $t6, %hi(gSegments)
/* 00B2C 8088EEFC 46083100 */  add.s   $f4, $f6, $f8              
/* 00B30 8088EF00 24060270 */  addiu   $a2, $zero, 0x0270         ## $a2 = 00000270
/* 00B34 8088EF04 E7A400E0 */  swc1    $f4, 0x00E0($sp)           
/* 00B38 8088EF08 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000018
/* 00B3C 8088EF0C 86990168 */  lh      $t9, 0x0168($s4)           ## 00000168
/* 00B40 8088EF10 03334821 */  addu    $t1, $t9, $s3              
/* 00B44 8088EF14 013E001A */  div     $zero, $t1, $s8            
/* 00B48 8088EF18 00005010 */  mfhi    $t2                        
/* 00B4C 8088EF1C 000A5880 */  sll     $t3, $t2,  2               
/* 00B50 8088EF20 02EB6021 */  addu    $t4, $s7, $t3              
/* 00B54 8088EF24 8D830000 */  lw      $v1, 0x0000($t4)           ## 00000000
/* 00B58 8088EF28 17C00002 */  bne     $s8, $zero, .L8088EF34     
/* 00B5C 8088EF2C 00000000 */  nop
/* 00B60 8088EF30 0007000D */  break 7
.L8088EF34:
/* 00B64 8088EF34 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00B68 8088EF38 17C10004 */  bne     $s8, $at, .L8088EF4C       
/* 00B6C 8088EF3C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00B70 8088EF40 15210002 */  bne     $t1, $at, .L8088EF4C       
/* 00B74 8088EF44 00000000 */  nop
/* 00B78 8088EF48 0006000D */  break 6
.L8088EF4C:
/* 00B7C 8088EF4C 00037900 */  sll     $t7, $v1,  4               
/* 00B80 8088EF50 000FC702 */  srl     $t8, $t7, 28               
/* 00B84 8088EF54 00184080 */  sll     $t0, $t8,  2               
/* 00B88 8088EF58 01C87021 */  addu    $t6, $t6, $t0              
/* 00B8C 8088EF5C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00B90 8088EF60 8DCE6FA8 */  lw      $t6, %lo(gSegments)($t6)
/* 00B94 8088EF64 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00B98 8088EF68 00616824 */  and     $t5, $v1, $at              
/* 00B9C 8088EF6C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00BA0 8088EF70 01AEC821 */  addu    $t9, $t5, $t6              
/* 00BA4 8088EF74 03214821 */  addu    $t1, $t9, $at              
/* 00BA8 8088EF78 3C0ADA38 */  lui     $t2, 0xDA38                ## $t2 = DA380000
/* 00BAC 8088EF7C AC490004 */  sw      $t1, 0x0004($v0)           ## 0000001C
/* 00BB0 8088EF80 354A0003 */  ori     $t2, $t2, 0x0003           ## $t2 = DA380003
/* 00BB4 8088EF84 0C034A17 */  jal     Matrix_CheckFloats              
/* 00BB8 8088EF88 AE0A0000 */  sw      $t2, 0x0000($s0)           ## 00000020
/* 00BBC 8088EF8C 8FAB00E8 */  lw      $t3, 0x00E8($sp)           
/* 00BC0 8088EF90 00409025 */  or      $s2, $v0, $zero            ## $s2 = 00000000
/* 00BC4 8088EF94 24050040 */  addiu   $a1, $zero, 0x0040         ## $a1 = 00000040
/* 00BC8 8088EF98 0C031A73 */  jal     Graph_Alloc
              
/* 00BCC 8088EF9C 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 00BD0 8088EFA0 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00BD4 8088EFA4 0C034610 */  jal     Matrix_MtxFToMtx              
/* 00BD8 8088EFA8 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 00BDC 8088EFAC AE020004 */  sw      $v0, 0x0004($s0)           ## 00000024
/* 00BE0 8088EFB0 02201025 */  or      $v0, $s1, $zero            ## $v0 = 00000028
/* 00BE4 8088EFB4 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 00BE8 8088EFB8 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000028
/* 00BEC 8088EFBC 8FAF0060 */  lw      $t7, 0x0060($sp)           
/* 00BF0 8088EFC0 26310008 */  addiu   $s1, $s1, 0x0008           ## $s1 = 00000030
/* 00BF4 8088EFC4 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 0000002C
/* 00BF8 8088EFC8 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 00BFC 8088EFCC 02201025 */  or      $v0, $s1, $zero            ## $v0 = 00000030
/* 00C00 8088EFD0 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 00C04 8088EFD4 8FBE0050 */  lw      $s8, 0x0050($sp)           
/* 00C08 8088EFD8 8FB7004C */  lw      $s7, 0x004C($sp)           
/* 00C0C 8088EFDC 8FB60048 */  lw      $s6, 0x0048($sp)           
/* 00C10 8088EFE0 8FB50044 */  lw      $s5, 0x0044($sp)           
/* 00C14 8088EFE4 8FB40040 */  lw      $s4, 0x0040($sp)           
/* 00C18 8088EFE8 8FB3003C */  lw      $s3, 0x003C($sp)           
/* 00C1C 8088EFEC 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 00C20 8088EFF0 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00C24 8088EFF4 D7B80028 */  ldc1    $f24, 0x0028($sp)          
/* 00C28 8088EFF8 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 00C2C 8088EFFC D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 00C30 8088F000 03E00008 */  jr      $ra                        
/* 00C34 8088F004 27BD00E8 */  addiu   $sp, $sp, 0x00E8           ## $sp = 00000000
