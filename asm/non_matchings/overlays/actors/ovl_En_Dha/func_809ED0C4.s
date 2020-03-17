glabel func_809ED0C4
/* 00844 809ED0C4 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00848 809ED0C8 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0084C 809ED0CC AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00850 809ED0D0 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 00854 809ED0D4 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00858 809ED0D8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0085C 809ED0DC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00860 809ED0E0 8C430680 */  lw      $v1, 0x0680($v0)           ## 00000680
/* 00864 809ED0E4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00868 809ED0E8 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 0086C 809ED0EC 306F0080 */  andi    $t7, $v1, 0x0080           ## $t7 = 00000000
/* 00870 809ED0F0 51E0000A */  beql    $t7, $zero, .L809ED11C     
/* 00874 809ED0F4 260401D0 */  addiu   $a0, $s0, 0x01D0           ## $a0 = 000001D0
/* 00878 809ED0F8 8C580118 */  lw      $t8, 0x0118($v0)           ## 00000118
/* 0087C 809ED0FC 2401FF7F */  addiu   $at, $zero, 0xFF7F         ## $at = FFFFFF7F
/* 00880 809ED100 0061C824 */  and     $t9, $v1, $at              
/* 00884 809ED104 14980004 */  bne     $a0, $t8, .L809ED118       
/* 00888 809ED108 240800C8 */  addiu   $t0, $zero, 0x00C8         ## $t0 = 000000C8
/* 0088C 809ED10C AC590680 */  sw      $t9, 0x0680($v0)           ## 00000680
/* 00890 809ED110 AC400118 */  sw      $zero, 0x0118($v0)         ## 00000118
/* 00894 809ED114 A4480850 */  sh      $t0, 0x0850($v0)           ## 00000850
.L809ED118:
/* 00898 809ED118 260401D0 */  addiu   $a0, $s0, 0x01D0           ## $a0 = 000001D0
.L809ED11C:
/* 0089C 809ED11C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 008A0 809ED120 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 008A4 809ED124 260401CE */  addiu   $a0, $s0, 0x01CE           ## $a0 = 000001CE
/* 008A8 809ED128 2405C000 */  addiu   $a1, $zero, 0xC000         ## $a1 = FFFFC000
/* 008AC 809ED12C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 008B0 809ED130 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 008B4 809ED134 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 008B8 809ED138 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 008BC 809ED13C A7A2004E */  sh      $v0, 0x004E($sp)           
/* 008C0 809ED140 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 008C4 809ED144 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 008C8 809ED148 87A9004E */  lh      $t1, 0x004E($sp)           
/* 008CC 809ED14C 55200047 */  bnel    $t1, $zero, .L809ED26C     
/* 008D0 809ED150 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 008D4 809ED154 8E0B0024 */  lw      $t3, 0x0024($s0)           ## 00000024
/* 008D8 809ED158 27A50040 */  addiu   $a1, $sp, 0x0040           ## $a1 = FFFFFFF0
/* 008DC 809ED15C 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 008E0 809ED160 ACAB0000 */  sw      $t3, 0x0000($a1)           ## FFFFFFF0
/* 008E4 809ED164 8E0A0028 */  lw      $t2, 0x0028($s0)           ## 00000028
/* 008E8 809ED168 ACAA0004 */  sw      $t2, 0x0004($a1)           ## FFFFFFF4
/* 008EC 809ED16C 8E0B002C */  lw      $t3, 0x002C($s0)           ## 0000002C
/* 008F0 809ED170 ACAB0008 */  sw      $t3, 0x0008($a1)           ## FFFFFFF8
/* 008F4 809ED174 860201C8 */  lh      $v0, 0x01C8($s0)           ## 000001C8
/* 008F8 809ED178 50400026 */  beql    $v0, $zero, .L809ED214     
/* 008FC 809ED17C C60A00BC */  lwc1    $f10, 0x00BC($s0)          ## 000000BC
/* 00900 809ED180 3C01809F */  lui     $at, %hi(D_809ED784)       ## $at = 809F0000
/* 00904 809ED184 C424D784 */  lwc1    $f4, %lo(D_809ED784)($at)  
/* 00908 809ED188 C60000BC */  lwc1    $f0, 0x00BC($s0)           ## 000000BC
/* 0090C 809ED18C 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00910 809ED190 4600203C */  c.lt.s  $f4, $f0                   
/* 00914 809ED194 00000000 */  nop
/* 00918 809ED198 45020011 */  bc1fl   .L809ED1E0                 
/* 0091C 809ED19C 8E030118 */  lw      $v1, 0x0118($s0)           ## 00000118
/* 00920 809ED1A0 44813000 */  mtc1    $at, $f6                   ## $f6 = 1000.00
/* 00924 809ED1A4 240C005A */  addiu   $t4, $zero, 0x005A         ## $t4 = 0000005A
/* 00928 809ED1A8 240D0014 */  addiu   $t5, $zero, 0x0014         ## $t5 = 00000014
/* 0092C 809ED1AC 46060201 */  sub.s   $f8, $f0, $f6              
/* 00930 809ED1B0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00934 809ED1B4 3C0640E0 */  lui     $a2, 0x40E0                ## $a2 = 40E00000
/* 00938 809ED1B8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0093C 809ED1BC E60800BC */  swc1    $f8, 0x00BC($s0)           ## 000000BC
/* 00940 809ED1C0 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 00944 809ED1C4 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 00948 809ED1C8 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 0094C 809ED1CC 0C00CD20 */  jal     func_80033480              
/* 00950 809ED1D0 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00954 809ED1D4 10000025 */  beq     $zero, $zero, .L809ED26C   
/* 00958 809ED1D8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0095C 809ED1DC 8E030118 */  lw      $v1, 0x0118($s0)           ## 00000118
.L809ED1E0:
/* 00960 809ED1E0 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 00964 809ED1E4 A60F01C8 */  sh      $t7, 0x01C8($s0)           ## 000001C8
/* 00968 809ED1E8 50600020 */  beql    $v1, $zero, .L809ED26C     
/* 0096C 809ED1EC 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00970 809ED1F0 8478001C */  lh      $t8, 0x001C($v1)           ## 0000001C
/* 00974 809ED1F4 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 00978 809ED1F8 5701001C */  bnel    $t8, $at, .L809ED26C       
/* 0097C 809ED1FC 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00980 809ED200 0C00B55C */  jal     Actor_Kill
              
/* 00984 809ED204 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00988 809ED208 10000018 */  beq     $zero, $zero, .L809ED26C   
/* 0098C 809ED20C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00990 809ED210 C60A00BC */  lwc1    $f10, 0x00BC($s0)          ## 000000BC
.L809ED214:
/* 00994 809ED214 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.00
/* 00998 809ED218 2419005A */  addiu   $t9, $zero, 0x005A         ## $t9 = 0000005A
/* 0099C 809ED21C 24080014 */  addiu   $t0, $zero, 0x0014         ## $t0 = 00000014
/* 009A0 809ED220 46105480 */  add.s   $f18, $f10, $f16           
/* 009A4 809ED224 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 009A8 809ED228 3C0640E0 */  lui     $a2, 0x40E0                ## $a2 = 40E00000
/* 009AC 809ED22C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 009B0 809ED230 E61200BC */  swc1    $f18, 0x00BC($s0)          ## 000000BC
/* 009B4 809ED234 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 009B8 809ED238 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 009BC 809ED23C AFB90010 */  sw      $t9, 0x0010($sp)           
/* 009C0 809ED240 0C00CD20 */  jal     func_80033480              
/* 009C4 809ED244 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 009C8 809ED248 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 009CC 809ED24C C60600BC */  lwc1    $f6, 0x00BC($s0)           ## 000000BC
/* 009D0 809ED250 46062032 */  c.eq.s  $f4, $f6                   
/* 009D4 809ED254 00000000 */  nop
/* 009D8 809ED258 45020004 */  bc1fl   .L809ED26C                 
/* 009DC 809ED25C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 009E0 809ED260 0C27B272 */  jal     func_809EC9C8              
/* 009E4 809ED264 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009E8 809ED268 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809ED26C:
/* 009EC 809ED26C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 009F0 809ED270 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 009F4 809ED274 03E00008 */  jr      $ra                        
/* 009F8 809ED278 00000000 */  nop


