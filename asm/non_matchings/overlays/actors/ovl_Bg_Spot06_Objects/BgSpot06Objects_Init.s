glabel BgSpot06Objects_Init
/* 00000 808AE780 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 808AE784 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00008 808AE788 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0000C 808AE78C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00010 808AE790 AFA00034 */  sw      $zero, 0x0034($sp)         
/* 00014 808AE794 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00018 808AE798 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 808AE79C 00027A03 */  sra     $t7, $v0,  8               
/* 00020 808AE7A0 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 00000000
/* 00024 808AE7A4 304E00FF */  andi    $t6, $v0, 0x00FF           ## $t6 = 00000000
/* 00028 808AE7A8 A48E0168 */  sh      $t6, 0x0168($a0)           ## 00000168
/* 0002C 808AE7AC A498001C */  sh      $t8, 0x001C($a0)           ## 0000001C
/* 00030 808AE7B0 3C04808B */  lui     $a0, %hi(D_808AF970)       ## $a0 = 808B0000
/* 00034 808AE7B4 2484F970 */  addiu   $a0, $a0, %lo(D_808AF970)  ## $a0 = 808AF970
/* 00038 808AE7B8 0C00084C */  jal     osSyncPrintf
              
/* 0003C 808AE7BC 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00040 808AE7C0 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00044 808AE7C4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00048 808AE7C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0004C 808AE7CC 1040000B */  beq     $v0, $zero, .L808AE7FC     
/* 00050 808AE7D0 3C05808B */  lui     $a1, %hi(D_808AF964)       ## $a1 = 808B0000
/* 00054 808AE7D4 1041002E */  beq     $v0, $at, .L808AE890       
/* 00058 808AE7D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0005C 808AE7DC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00060 808AE7E0 10410085 */  beq     $v0, $at, .L808AE9F8       
/* 00064 808AE7E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00068 808AE7E8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0006C 808AE7EC 104100BC */  beq     $v0, $at, .L808AEAE0       
/* 00070 808AE7F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00074 808AE7F4 100000D5 */  beq     $zero, $zero, .L808AEB4C   
/* 00078 808AE7F8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808AE7FC:
/* 0007C 808AE7FC 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00080 808AE800 24A5F964 */  addiu   $a1, $a1, %lo(D_808AF964)  ## $a1 = 808AF964
/* 00084 808AE804 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00088 808AE808 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 0008C 808AE80C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00090 808AE810 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00094 808AE814 24840EE8 */  addiu   $a0, $a0, 0x0EE8           ## $a0 = 06000EE8
/* 00098 808AE818 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 0009C 808AE81C 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFF4
/* 000A0 808AE820 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 000A4 808AE824 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000A8 808AE828 8FA70034 */  lw      $a3, 0x0034($sp)           
/* 000AC 808AE82C 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 000B0 808AE830 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 000B4 808AE834 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 000B8 808AE838 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 000BC 808AE83C AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 000C0 808AE840 8C790004 */  lw      $t9, 0x0004($v1)           ## 8015E664
/* 000C4 808AE844 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 000C8 808AE848 1720000D */  bne     $t9, $zero, .L808AE880     
/* 000CC 808AE84C 00000000 */  nop
/* 000D0 808AE850 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 000D4 808AE854 86050168 */  lh      $a1, 0x0168($s0)           ## 00000168
/* 000D8 808AE858 10400009 */  beq     $v0, $zero, .L808AE880     
/* 000DC 808AE85C 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 000E0 808AE860 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 000E4 808AE864 44813000 */  mtc1    $at, $f6                   ## $f6 = 120.00
/* 000E8 808AE868 3C08808B */  lui     $t0, %hi(func_808AEE00)    ## $t0 = 808B0000
/* 000EC 808AE86C 2508EE00 */  addiu   $t0, $t0, %lo(func_808AEE00) ## $t0 = 808AEE00
/* 000F0 808AE870 46062200 */  add.s   $f8, $f4, $f6              
/* 000F4 808AE874 AE080164 */  sw      $t0, 0x0164($s0)           ## 00000164
/* 000F8 808AE878 100000B3 */  beq     $zero, $zero, .L808AEB48   
/* 000FC 808AE87C E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
.L808AE880:
/* 00100 808AE880 3C09808B */  lui     $t1, %hi(func_808AECB4)    ## $t1 = 808B0000
/* 00104 808AE884 2529ECB4 */  addiu   $t1, $t1, %lo(func_808AECB4) ## $t1 = 808AECB4
/* 00108 808AE888 100000AF */  beq     $zero, $zero, .L808AEB48   
/* 0010C 808AE88C AE090164 */  sw      $t1, 0x0164($s0)           ## 00000164
.L808AE890:
/* 00110 808AE890 3C05808B */  lui     $a1, %hi(D_808AF964)       ## $a1 = 808B0000
/* 00114 808AE894 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00118 808AE898 24A5F964 */  addiu   $a1, $a1, %lo(D_808AF964)  ## $a1 = 808AF964
/* 0011C 808AE89C 26050170 */  addiu   $a1, $s0, 0x0170           ## $a1 = 00000170
/* 00120 808AE8A0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00124 808AE8A4 0C016EFE */  jal     func_8005BBF8              
/* 00128 808AE8A8 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 0012C 808AE8AC 3C07808B */  lui     $a3, %hi(D_808AF954)       ## $a3 = 808B0000
/* 00130 808AE8B0 260A0190 */  addiu   $t2, $s0, 0x0190           ## $t2 = 00000190
/* 00134 808AE8B4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00138 808AE8B8 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 0013C 808AE8BC 24E7F954 */  addiu   $a3, $a3, %lo(D_808AF954)  ## $a3 = 808AF954
/* 00140 808AE8C0 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00144 808AE8C4 0C017014 */  jal     func_8005C050              
/* 00148 808AE8C8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0014C 808AE8CC 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00150 808AE8D0 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00154 808AE8D4 8C6B0004 */  lw      $t3, 0x0004($v1)           ## 8015E664
/* 00158 808AE8D8 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 0015C 808AE8DC 5560002C */  bnel    $t3, $zero, .L808AE990     
/* 00160 808AE8E0 8E02018C */  lw      $v0, 0x018C($s0)           ## 0000018C
/* 00164 808AE8E4 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00168 808AE8E8 86050168 */  lh      $a1, 0x0168($s0)           ## 00000168
/* 0016C 808AE8EC 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00170 808AE8F0 10400026 */  beq     $v0, $zero, .L808AE98C     
/* 00174 808AE8F4 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00178 808AE8F8 946C0EE0 */  lhu     $t4, 0x0EE0($v1)           ## 8015F540
/* 0017C 808AE8FC 3C01808B */  lui     $at, %hi(D_808AF9EC)       ## $at = 808B0000
/* 00180 808AE900 318D0200 */  andi    $t5, $t4, 0x0200           ## $t5 = 00000000
/* 00184 808AE904 15A00006 */  bne     $t5, $zero, .L808AE920     
/* 00188 808AE908 00000000 */  nop
/* 0018C 808AE90C 3C01808B */  lui     $at, %hi(D_808AF9E8)       ## $at = 808B0000
/* 00190 808AE910 C420F9E8 */  lwc1    $f0, %lo(D_808AF9E8)($at)  
/* 00194 808AE914 E6000028 */  swc1    $f0, 0x0028($s0)           ## 00000028
/* 00198 808AE918 10000004 */  beq     $zero, $zero, .L808AE92C   
/* 0019C 808AE91C E600000C */  swc1    $f0, 0x000C($s0)           ## 0000000C
.L808AE920:
/* 001A0 808AE920 C422F9EC */  lwc1    $f2, %lo(D_808AF9EC)($at)  
/* 001A4 808AE924 E6020028 */  swc1    $f2, 0x0028($s0)           ## 00000028
/* 001A8 808AE928 E602000C */  swc1    $f2, 0x000C($s0)           ## 0000000C
.L808AE92C:
/* 001AC 808AE92C 3C014180 */  lui     $at, 0x4180                ## $at = 41800000
/* 001B0 808AE930 44810000 */  mtc1    $at, $f0                   ## $f0 = 16.00
/* 001B4 808AE934 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 001B8 808AE938 44818000 */  mtc1    $at, $f16                  ## $f16 = 100.00
/* 001BC 808AE93C C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 001C0 808AE940 8E02018C */  lw      $v0, 0x018C($s0)           ## 0000018C
/* 001C4 808AE944 3C0E808B */  lui     $t6, %hi(func_808AF450)    ## $t6 = 808B0000
/* 001C8 808AE948 46105481 */  sub.s   $f18, $f10, $f16           
/* 001CC 808AE94C 25CEF450 */  addiu   $t6, $t6, %lo(func_808AF450) ## $t6 = 808AF450
/* 001D0 808AE950 AE0E0164 */  sw      $t6, 0x0164($s0)           ## 00000164
/* 001D4 808AE954 E612002C */  swc1    $f18, 0x002C($s0)          ## 0000002C
/* 001D8 808AE958 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 001DC 808AE95C 46002180 */  add.s   $f6, $f4, $f0              
/* 001E0 808AE960 E6060010 */  swc1    $f6, 0x0010($s0)           ## 00000010
/* 001E4 808AE964 844F002E */  lh      $t7, 0x002E($v0)           ## 0000002E
/* 001E8 808AE968 000FC040 */  sll     $t8, $t7,  1               
/* 001EC 808AE96C A4580036 */  sh      $t8, 0x0036($v0)           ## 00000036
/* 001F0 808AE970 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 001F4 808AE974 8E09018C */  lw      $t1, 0x018C($s0)           ## 0000018C
/* 001F8 808AE978 46004280 */  add.s   $f10, $f8, $f0             
/* 001FC 808AE97C 4600540D */  trunc.w.s $f16, $f10                 
/* 00200 808AE980 44088000 */  mfc1    $t0, $f16                  
/* 00204 808AE984 1000000D */  beq     $zero, $zero, .L808AE9BC   
/* 00208 808AE988 A5280034 */  sh      $t0, 0x0034($t1)           ## 00000034
.L808AE98C:
/* 0020C 808AE98C 8E02018C */  lw      $v0, 0x018C($s0)           ## 0000018C
.L808AE990:
/* 00210 808AE990 3C0A808B */  lui     $t2, %hi(func_808AEEFC)    ## $t2 = 808B0000
/* 00214 808AE994 254AEEFC */  addiu   $t2, $t2, %lo(func_808AEEFC) ## $t2 = 808AEEFC
/* 00218 808AE998 AE0A0164 */  sw      $t2, 0x0164($s0)           ## 00000164
/* 0021C 808AE99C 844B002E */  lh      $t3, 0x002E($v0)           ## 0000002E
/* 00220 808AE9A0 A44B0036 */  sh      $t3, 0x0036($v0)           ## 00000036
/* 00224 808AE9A4 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 00228 808AE9A8 8E0E018C */  lw      $t6, 0x018C($s0)           ## 0000018C
/* 0022C 808AE9AC 4600910D */  trunc.w.s $f4, $f18                  
/* 00230 808AE9B0 440D2000 */  mfc1    $t5, $f4                   
/* 00234 808AE9B4 00000000 */  nop
/* 00238 808AE9B8 A5CD0034 */  sh      $t5, 0x0034($t6)           ## 808AF484
.L808AE9BC:
/* 0023C 808AE9BC C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00240 808AE9C0 8E19018C */  lw      $t9, 0x018C($s0)           ## 0000018C
/* 00244 808AE9C4 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 00248 808AE9C8 4600320D */  trunc.w.s $f8, $f6                   
/* 0024C 808AE9CC 44184000 */  mfc1    $t8, $f8                   
/* 00250 808AE9D0 00000000 */  nop
/* 00254 808AE9D4 A7380030 */  sh      $t8, 0x0030($t9)           ## 00000030
/* 00258 808AE9D8 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 0025C 808AE9DC 8E0A018C */  lw      $t2, 0x018C($s0)           ## 0000018C
/* 00260 808AE9E0 4600540D */  trunc.w.s $f16, $f10                 
/* 00264 808AE9E4 44098000 */  mfc1    $t1, $f16                  
/* 00268 808AE9E8 00000000 */  nop
/* 0026C 808AE9EC A5490032 */  sh      $t1, 0x0032($t2)           ## 808AEF2E
/* 00270 808AE9F0 10000055 */  beq     $zero, $zero, .L808AEB48   
/* 00274 808AE9F4 A20B00AE */  sb      $t3, 0x00AE($s0)           ## 000000AE
.L808AE9F8:
/* 00278 808AE9F8 3C05808B */  lui     $a1, %hi(D_808AF968)       ## $a1 = 808B0000
/* 0027C 808AE9FC 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00280 808AEA00 24A5F968 */  addiu   $a1, $a1, %lo(D_808AF968)  ## $a1 = 808AF968
/* 00284 808AEA04 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00288 808AEA08 240C0030 */  addiu   $t4, $zero, 0x0030         ## $t4 = 00000030
/* 0028C 808AEA0C 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00290 808AEA10 AE0C0004 */  sw      $t4, 0x0004($s0)           ## 00000004
/* 00294 808AEA14 8C6D0004 */  lw      $t5, 0x0004($v1)           ## 8015E664
/* 00298 808AEA18 3C09808B */  lui     $t1, %hi(func_808AEE00)    ## $t1 = 808B0000
/* 0029C 808AEA1C 2529EE00 */  addiu   $t1, $t1, %lo(func_808AEE00) ## $t1 = 808AEE00
/* 002A0 808AEA20 55A0002C */  bnel    $t5, $zero, .L808AEAD4     
/* 002A4 808AEA24 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 002A8 808AEA28 946E0EE0 */  lhu     $t6, 0x0EE0($v1)           ## 8015F540
/* 002AC 808AEA2C 31CF0200 */  andi    $t7, $t6, 0x0200           ## $t7 = 00000000
/* 002B0 808AEA30 55E00028 */  bnel    $t7, $zero, .L808AEAD4     
/* 002B4 808AEA34 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 002B8 808AEA38 8C781360 */  lw      $t8, 0x1360($v1)           ## 8015F9C0
/* 002BC 808AEA3C 2B010004 */  slti    $at, $t8, 0x0004           
/* 002C0 808AEA40 10200018 */  beq     $at, $zero, .L808AEAA4     
/* 002C4 808AEA44 3C01808B */  lui     $at, %hi(D_808AF9F0)       ## $at = 808B0000
/* 002C8 808AEA48 C420F9F0 */  lwc1    $f0, %lo(D_808AF9F0)($at)  
/* 002CC 808AEA4C 8FA30044 */  lw      $v1, 0x0044($sp)           
/* 002D0 808AEA50 2419FB57 */  addiu   $t9, $zero, 0xFB57         ## $t9 = FFFFFB57
/* 002D4 808AEA54 E600016C */  swc1    $f0, 0x016C($s0)           ## 0000016C
/* 002D8 808AEA58 8C6807C0 */  lw      $t0, 0x07C0($v1)           ## 8015EE20
/* 002DC 808AEA5C 2404F837 */  addiu   $a0, $zero, 0xF837         ## $a0 = FFFFF837
/* 002E0 808AEA60 8D090028 */  lw      $t1, 0x0028($t0)           ## 00000028
/* 002E4 808AEA64 3C08808B */  lui     $t0, %hi(func_808AEE00)    ## $t0 = 808B0000
/* 002E8 808AEA68 2508EE00 */  addiu   $t0, $t0, %lo(func_808AEE00) ## $t0 = 808AEE00
/* 002EC 808AEA6C A5390012 */  sh      $t9, 0x0012($t1)           ## 808AEE12
/* 002F0 808AEA70 8C6A07C0 */  lw      $t2, 0x07C0($v1)           ## 8015EE20
/* 002F4 808AEA74 8D420028 */  lw      $v0, 0x0028($t2)           ## 00000028
/* 002F8 808AEA78 844B0014 */  lh      $t3, 0x0014($v0)           ## 00000014
/* 002FC 808AEA7C 256CFFCE */  addiu   $t4, $t3, 0xFFCE           ## $t4 = FFFFFFCE
/* 00300 808AEA80 A44C0014 */  sh      $t4, 0x0014($v0)           ## 00000014
/* 00304 808AEA84 8C6D07C0 */  lw      $t5, 0x07C0($v1)           ## 8015EE20
/* 00308 808AEA88 8DAE0028 */  lw      $t6, 0x0028($t5)           ## 00000028
/* 0030C 808AEA8C A5C40022 */  sh      $a0, 0x0022($t6)           ## 00000022
/* 00310 808AEA90 8C6F07C0 */  lw      $t7, 0x07C0($v1)           ## 8015EE20
/* 00314 808AEA94 8DF80028 */  lw      $t8, 0x0028($t7)           ## 00000028
/* 00318 808AEA98 A7040032 */  sh      $a0, 0x0032($t8)           ## 00000032
/* 0031C 808AEA9C 1000002A */  beq     $zero, $zero, .L808AEB48   
/* 00320 808AEAA0 AE080164 */  sw      $t0, 0x0164($s0)           ## 00000164
.L808AEAA4:
/* 00324 808AEAA4 3C01808B */  lui     $at, %hi(D_808AF9F4)       ## $at = 808B0000
/* 00328 808AEAA8 C420F9F4 */  lwc1    $f0, %lo(D_808AF9F4)($at)  
/* 0032C 808AEAAC 3C01808B */  lui     $at, %hi(D_808AF9F8)       ## $at = 808B0000
/* 00330 808AEAB0 C422F9F8 */  lwc1    $f2, %lo(D_808AF9F8)($at)  
/* 00334 808AEAB4 3C19808B */  lui     $t9, %hi(func_808AF7FC)    ## $t9 = 808B0000
/* 00338 808AEAB8 2739F7FC */  addiu   $t9, $t9, %lo(func_808AF7FC) ## $t9 = 808AF7FC
/* 0033C 808AEABC 46020480 */  add.s   $f18, $f0, $f2             
/* 00340 808AEAC0 AE190164 */  sw      $t9, 0x0164($s0)           ## 00000164
/* 00344 808AEAC4 E600016C */  swc1    $f0, 0x016C($s0)           ## 0000016C
/* 00348 808AEAC8 1000001F */  beq     $zero, $zero, .L808AEB48   
/* 0034C 808AEACC E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
/* 00350 808AEAD0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
.L808AEAD4:
/* 00354 808AEAD4 AE090164 */  sw      $t1, 0x0164($s0)           ## 00000164
/* 00358 808AEAD8 1000001B */  beq     $zero, $zero, .L808AEB48   
/* 0035C 808AEADC E604016C */  swc1    $f4, 0x016C($s0)           ## 0000016C
.L808AEAE0:
/* 00360 808AEAE0 3C05808B */  lui     $a1, %hi(D_808AF964)       ## $a1 = 808B0000
/* 00364 808AEAE4 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00368 808AEAE8 24A5F964 */  addiu   $a1, $a1, %lo(D_808AF964)  ## $a1 = 808AF964
/* 0036C 808AEAEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00370 808AEAF0 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00374 808AEAF4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00378 808AEAF8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0037C 808AEAFC 24841238 */  addiu   $a0, $a0, 0x1238           ## $a0 = 06001238
/* 00380 808AEB00 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00384 808AEB04 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFF4
/* 00388 808AEB08 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 0038C 808AEB0C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00390 808AEB10 8FA70034 */  lw      $a3, 0x0034($sp)           
/* 00394 808AEB14 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00398 808AEB18 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 0039C 808AEB1C 3C0A808B */  lui     $t2, %hi(func_808AEE00)    ## $t2 = 808B0000
/* 003A0 808AEB20 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 003A4 808AEB24 254AEE00 */  addiu   $t2, $t2, %lo(func_808AEE00) ## $t2 = 808AEE00
/* 003A8 808AEB28 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 003AC 808AEB2C AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 003B0 808AEB30 AE0A0164 */  sw      $t2, 0x0164($s0)           ## 00000164
/* 003B4 808AEB34 8C6B0004 */  lw      $t3, 0x0004($v1)           ## 8015E664
/* 003B8 808AEB38 51600004 */  beql    $t3, $zero, .L808AEB4C     
/* 003BC 808AEB3C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 003C0 808AEB40 0C00B55C */  jal     Actor_Kill
              
/* 003C4 808AEB44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L808AEB48:
/* 003C8 808AEB48 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808AEB4C:
/* 003CC 808AEB4C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 003D0 808AEB50 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 003D4 808AEB54 03E00008 */  jr      $ra                        
/* 003D8 808AEB58 00000000 */  nop


