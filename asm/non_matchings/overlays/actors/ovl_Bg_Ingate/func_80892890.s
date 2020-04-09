glabel func_80892890
/* 00150 80892890 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00154 80892894 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00158 80892898 94A21D74 */  lhu     $v0, 0x1D74($a1)           ## 00001D74
/* 0015C 8089289C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00160 808928A0 3C058089 */  lui     $a1, %hi(func_80892990)    ## $a1 = 80890000
/* 00164 808928A4 28410032 */  slti    $at, $v0, 0x0032           
/* 00168 808928A8 54200010 */  bnel    $at, $zero, .L808928EC     
/* 0016C 808928AC 2841000A */  slti    $at, $v0, 0x000A           
/* 00170 808928B0 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00174 808928B4 24024000 */  addiu   $v0, $zero, 0x4000         ## $v0 = 00004000
/* 00178 808928B8 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 0017C 808928BC 55E00003 */  bnel    $t7, $zero, .L808928CC     
/* 00180 808928C0 84D80032 */  lh      $t8, 0x0032($a2)           ## 00000032
/* 00184 808928C4 2402C000 */  addiu   $v0, $zero, 0xC000         ## $v0 = FFFFC000
/* 00188 808928C8 84D80032 */  lh      $t8, 0x0032($a2)           ## 00000032
.L808928CC:
/* 0018C 808928CC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00190 808928D0 24A52990 */  addiu   $a1, $a1, %lo(func_80892990) ## $a1 = 80892990
/* 00194 808928D4 0302C821 */  addu    $t9, $t8, $v0              
/* 00198 808928D8 0C2249D0 */  jal     BgIngate_SetupAction              
/* 0019C 808928DC A4D900B6 */  sh      $t9, 0x00B6($a2)           ## 000000B6
/* 001A0 808928E0 10000028 */  beq     $zero, $zero, .L80892984   
/* 001A4 808928E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001A8 808928E8 2841000A */  slti    $at, $v0, 0x000A           
.L808928EC:
/* 001AC 808928EC 14200024 */  bne     $at, $zero, .L80892980     
/* 001B0 808928F0 2444FFF6 */  addiu   $a0, $v0, 0xFFF6           ## $a0 = FFFFFFF6
/* 001B4 808928F4 00042400 */  sll     $a0, $a0, 16               
/* 001B8 808928F8 00042403 */  sra     $a0, $a0, 16               
/* 001BC 808928FC 00800821 */  addu    $at, $a0, $zero            
/* 001C0 80892900 00042080 */  sll     $a0, $a0,  2               
/* 001C4 80892904 00812023 */  subu    $a0, $a0, $at              
/* 001C8 80892908 000420C0 */  sll     $a0, $a0,  3               
/* 001CC 8089290C 00812021 */  addu    $a0, $a0, $at              
/* 001D0 80892910 00042100 */  sll     $a0, $a0,  4               
/* 001D4 80892914 00042400 */  sll     $a0, $a0, 16               
/* 001D8 80892918 00042403 */  sra     $a0, $a0, 16               
/* 001DC 8089291C 28814001 */  slti    $at, $a0, 0x4001           
/* 001E0 80892920 14200002 */  bne     $at, $zero, .L8089292C     
/* 001E4 80892924 00000000 */  nop
/* 001E8 80892928 24044000 */  addiu   $a0, $zero, 0x4000         ## $a0 = 00004000
.L8089292C:
/* 001EC 8089292C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 001F0 80892930 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 001F4 80892934 3C014680 */  lui     $at, 0x4680                ## $at = 46800000
/* 001F8 80892938 44812000 */  mtc1    $at, $f4                   ## $f4 = 16384.00
/* 001FC 8089293C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00200 80892940 46040182 */  mul.s   $f6, $f0, $f4              
/* 00204 80892944 84C9001C */  lh      $t1, 0x001C($a2)           ## 0000001C
/* 00208 80892948 312A0002 */  andi    $t2, $t1, 0x0002           ## $t2 = 00000000
/* 0020C 8089294C 4600320D */  trunc.w.s $f8, $f6                   
/* 00210 80892950 44034000 */  mfc1    $v1, $f8                   
/* 00214 80892954 00000000 */  nop
/* 00218 80892958 00031400 */  sll     $v0, $v1, 16               
/* 0021C 8089295C 15400005 */  bne     $t2, $zero, .L80892974     
/* 00220 80892960 00021403 */  sra     $v0, $v0, 16               
/* 00224 80892964 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 00228 80892968 00021023 */  subu    $v0, $zero, $v0            
/* 0022C 8089296C 00021400 */  sll     $v0, $v0, 16               
/* 00230 80892970 00021403 */  sra     $v0, $v0, 16               
.L80892974:
/* 00234 80892974 84CB0032 */  lh      $t3, 0x0032($a2)           ## 00000032
/* 00238 80892978 01626021 */  addu    $t4, $t3, $v0              
/* 0023C 8089297C A4CC00B6 */  sh      $t4, 0x00B6($a2)           ## 000000B6
.L80892980:
/* 00240 80892980 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80892984:
/* 00244 80892984 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00248 80892988 03E00008 */  jr      $ra                        
/* 0024C 8089298C 00000000 */  nop


