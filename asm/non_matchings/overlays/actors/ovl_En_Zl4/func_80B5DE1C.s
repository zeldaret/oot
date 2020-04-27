.late_rodata
glabel jtbl_80B5FCE0
.word L80B5DE5C
.word L80B5DE84
.word L80B5DEE0
.word L80B5DF08
.word L80B5DF30
.word L80B5DF58
.word L80B5DF80
.word L80B5DFA8
.word L80B5DFD0

.text
glabel func_80B5DE1C
/* 0266C 80B5DE1C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02670 80B5DE20 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02674 80B5DE24 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02678 80B5DE28 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0267C 80B5DE2C 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 02680 80B5DE30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02684 80B5DE34 AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 02688 80B5DE38 90980209 */  lbu     $t8, 0x0209($a0)           ## 00000209
/* 0268C 80B5DE3C 2F010009 */  sltiu   $at, $t8, 0x0009           
/* 02690 80B5DE40 10200075 */  beq     $at, $zero, .L80B5E018     
/* 02694 80B5DE44 0018C080 */  sll     $t8, $t8,  2               
/* 02698 80B5DE48 3C0180B6 */  lui     $at, %hi(jtbl_80B5FCE0)       ## $at = 80B60000
/* 0269C 80B5DE4C 00380821 */  addu    $at, $at, $t8              
/* 026A0 80B5DE50 8C38FCE0 */  lw      $t8, %lo(jtbl_80B5FCE0)($at)  
/* 026A4 80B5DE54 03000008 */  jr      $t8                        
/* 026A8 80B5DE58 00000000 */  nop
glabel L80B5DE5C
/* 026AC 80B5DE5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 026B0 80B5DE60 0C2D7002 */  jal     func_80B5C008              
/* 026B4 80B5DE64 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 026B8 80B5DE68 5040006C */  beql    $v0, $zero, .L80B5E01C     
/* 026BC 80B5DE6C 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 026C0 80B5DE70 92190209 */  lbu     $t9, 0x0209($s0)           ## 00000209
/* 026C4 80B5DE74 A2000208 */  sb      $zero, 0x0208($s0)         ## 00000208
/* 026C8 80B5DE78 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 026CC 80B5DE7C 10000066 */  beq     $zero, $zero, .L80B5E018   
/* 026D0 80B5DE80 A2080209 */  sb      $t0, 0x0209($s0)           ## 00000209
glabel L80B5DE84
/* 026D4 80B5DE84 3C0580B6 */  lui     $a1, %hi(D_80B5E7B8)       ## $a1 = 80B60000
/* 026D8 80B5DE88 24A5E7B8 */  addiu   $a1, $a1, %lo(D_80B5E7B8)  ## $a1 = 80B5E7B8
/* 026DC 80B5DE8C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 026E0 80B5DE90 0C00D3B0 */  jal     func_80034EC0              
/* 026E4 80B5DE94 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 026E8 80B5DE98 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 026EC 80B5DE9C A6000210 */  sh      $zero, 0x0210($s0)         ## 00000210
/* 026F0 80B5DEA0 A200020D */  sb      $zero, 0x020D($s0)         ## 0000020D
/* 026F4 80B5DEA4 A209020E */  sb      $t1, 0x020E($s0)           ## 0000020E
/* 026F8 80B5DEA8 0C03D719 */  jal     func_800F5C64              
/* 026FC 80B5DEAC 24040051 */  addiu   $a0, $zero, 0x0051         ## $a0 = 00000051
/* 02700 80B5DEB0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 02704 80B5DEB4 0C2D6DEC */  jal     func_80B5B7B0              
/* 02708 80B5DEB8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0270C 80B5DEBC 0C020978 */  jal     Interface_ChangeAlpha              
/* 02710 80B5DEC0 24040002 */  addiu   $a0, $zero, 0x0002         ## $a0 = 00000002
/* 02714 80B5DEC4 0C02CE10 */  jal     func_800B3840              ## letterbox_target_addr
/* 02718 80B5DEC8 24040020 */  addiu   $a0, $zero, 0x0020         ## $a0 = 00000020
/* 0271C 80B5DECC 920A0209 */  lbu     $t2, 0x0209($s0)           ## 00000209
/* 02720 80B5DED0 A2000208 */  sb      $zero, 0x0208($s0)         ## 00000208
/* 02724 80B5DED4 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 02728 80B5DED8 1000004F */  beq     $zero, $zero, .L80B5E018   
/* 0272C 80B5DEDC A20B0209 */  sb      $t3, 0x0209($s0)           ## 00000209
glabel L80B5DEE0
/* 02730 80B5DEE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02734 80B5DEE4 0C2D7058 */  jal     func_80B5C160              
/* 02738 80B5DEE8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0273C 80B5DEEC 5040004B */  beql    $v0, $zero, .L80B5E01C     
/* 02740 80B5DEF0 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 02744 80B5DEF4 920C0209 */  lbu     $t4, 0x0209($s0)           ## 00000209
/* 02748 80B5DEF8 A2000208 */  sb      $zero, 0x0208($s0)         ## 00000208
/* 0274C 80B5DEFC 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 02750 80B5DF00 10000045 */  beq     $zero, $zero, .L80B5E018   
/* 02754 80B5DF04 A20D0209 */  sb      $t5, 0x0209($s0)           ## 00000209
glabel L80B5DF08
/* 02758 80B5DF08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0275C 80B5DF0C 0C2D7116 */  jal     func_80B5C458              
/* 02760 80B5DF10 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02764 80B5DF14 50400041 */  beql    $v0, $zero, .L80B5E01C     
/* 02768 80B5DF18 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 0276C 80B5DF1C 920E0209 */  lbu     $t6, 0x0209($s0)           ## 00000209
/* 02770 80B5DF20 A2000208 */  sb      $zero, 0x0208($s0)         ## 00000208
/* 02774 80B5DF24 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 02778 80B5DF28 1000003B */  beq     $zero, $zero, .L80B5E018   
/* 0277C 80B5DF2C A20F0209 */  sb      $t7, 0x0209($s0)           ## 00000209
glabel L80B5DF30
/* 02780 80B5DF30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02784 80B5DF34 0C2D7261 */  jal     func_80B5C984              
/* 02788 80B5DF38 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0278C 80B5DF3C 50400037 */  beql    $v0, $zero, .L80B5E01C     
/* 02790 80B5DF40 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 02794 80B5DF44 92180209 */  lbu     $t8, 0x0209($s0)           ## 00000209
/* 02798 80B5DF48 A2000208 */  sb      $zero, 0x0208($s0)         ## 00000208
/* 0279C 80B5DF4C 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 027A0 80B5DF50 10000031 */  beq     $zero, $zero, .L80B5E018   
/* 027A4 80B5DF54 A2190209 */  sb      $t9, 0x0209($s0)           ## 00000209
glabel L80B5DF58
/* 027A8 80B5DF58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 027AC 80B5DF5C 0C2D73DC */  jal     func_80B5CF70              
/* 027B0 80B5DF60 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 027B4 80B5DF64 5040002D */  beql    $v0, $zero, .L80B5E01C     
/* 027B8 80B5DF68 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 027BC 80B5DF6C 92080209 */  lbu     $t0, 0x0209($s0)           ## 00000209
/* 027C0 80B5DF70 A2000208 */  sb      $zero, 0x0208($s0)         ## 00000208
/* 027C4 80B5DF74 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 027C8 80B5DF78 10000027 */  beq     $zero, $zero, .L80B5E018   
/* 027CC 80B5DF7C A2090209 */  sb      $t1, 0x0209($s0)           ## 00000209
glabel L80B5DF80
/* 027D0 80B5DF80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 027D4 80B5DF84 0C2D74F3 */  jal     func_80B5D3CC              
/* 027D8 80B5DF88 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 027DC 80B5DF8C 50400023 */  beql    $v0, $zero, .L80B5E01C     
/* 027E0 80B5DF90 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 027E4 80B5DF94 920A0209 */  lbu     $t2, 0x0209($s0)           ## 00000209
/* 027E8 80B5DF98 A2000208 */  sb      $zero, 0x0208($s0)         ## 00000208
/* 027EC 80B5DF9C 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 027F0 80B5DFA0 1000001D */  beq     $zero, $zero, .L80B5E018   
/* 027F4 80B5DFA4 A20B0209 */  sb      $t3, 0x0209($s0)           ## 00000209
glabel L80B5DFA8
/* 027F8 80B5DFA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 027FC 80B5DFAC 0C2D7584 */  jal     func_80B5D610              
/* 02800 80B5DFB0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02804 80B5DFB4 50400019 */  beql    $v0, $zero, .L80B5E01C     
/* 02808 80B5DFB8 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 0280C 80B5DFBC 920C0209 */  lbu     $t4, 0x0209($s0)           ## 00000209
/* 02810 80B5DFC0 A2000208 */  sb      $zero, 0x0208($s0)         ## 00000208
/* 02814 80B5DFC4 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 02818 80B5DFC8 10000013 */  beq     $zero, $zero, .L80B5E018   
/* 0281C 80B5DFCC A20D0209 */  sb      $t5, 0x0209($s0)           ## 00000209
glabel L80B5DFD0
/* 02820 80B5DFD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02824 80B5DFD4 0C2D76B6 */  jal     func_80B5DAD8              
/* 02828 80B5DFD8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0282C 80B5DFDC 1040000E */  beq     $v0, $zero, .L80B5E018     
/* 02830 80B5DFE0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 02834 80B5DFE4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02838 80B5DFE8 0C00B7D5 */  jal     func_8002DF54              
/* 0283C 80B5DFEC 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 02840 80B5DFF0 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 02844 80B5DFF4 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 02848 80B5DFF8 946F0EDC */  lhu     $t7, 0x0EDC($v1)           ## 8015F53C
/* 0284C 80B5DFFC 240E0032 */  addiu   $t6, $zero, 0x0032         ## $t6 = 00000032
/* 02850 80B5E000 3C1980B6 */  lui     $t9, %hi(func_80B5E090)    ## $t9 = 80B60000
/* 02854 80B5E004 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 02858 80B5E008 A46E13EE */  sh      $t6, 0x13EE($v1)           ## 8015FA4E
/* 0285C 80B5E00C A4780EDC */  sh      $t8, 0x0EDC($v1)           ## 8015F53C
/* 02860 80B5E010 2739E090 */  addiu   $t9, $t9, %lo(func_80B5E090) ## $t9 = 80B5E090
/* 02864 80B5E014 AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
.L80B5E018:
/* 02868 80B5E018 8FA80024 */  lw      $t0, 0x0024($sp)           
.L80B5E01C:
/* 0286C 80B5E01C 920B0209 */  lbu     $t3, 0x0209($s0)           ## 00000209
/* 02870 80B5E020 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 02874 80B5E024 8D0A0024 */  lw      $t2, 0x0024($t0)           ## 00000024
/* 02878 80B5E028 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0287C 80B5E02C 260501E0 */  addiu   $a1, $s0, 0x01E0           ## $a1 = 000001E0
/* 02880 80B5E030 AE0A01F8 */  sw      $t2, 0x01F8($s0)           ## 000001F8
/* 02884 80B5E034 8D090028 */  lw      $t1, 0x0028($t0)           ## 00000028
/* 02888 80B5E038 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 0288C 80B5E03C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 02890 80B5E040 AE0901FC */  sw      $t1, 0x01FC($s0)           ## 000001FC
/* 02894 80B5E044 8D0A002C */  lw      $t2, 0x002C($t0)           ## 0000002C
/* 02898 80B5E048 15610003 */  bne     $t3, $at, .L80B5E058       
/* 0289C 80B5E04C AE0A0200 */  sw      $t2, 0x0200($s0)           ## 00000200
/* 028A0 80B5E050 10000001 */  beq     $zero, $zero, .L80B5E058   
/* 028A4 80B5E054 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L80B5E058:
/* 028A8 80B5E058 00023C00 */  sll     $a3, $v0, 16               
/* 028AC 80B5E05C 0C00D285 */  jal     func_80034A14              
/* 028B0 80B5E060 00073C03 */  sra     $a3, $a3, 16               
/* 028B4 80B5E064 0C2D6F37 */  jal     func_80B5BCDC              
/* 028B8 80B5E068 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 028BC 80B5E06C 10400003 */  beq     $v0, $zero, .L80B5E07C     
/* 028C0 80B5E070 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 028C4 80B5E074 0C2D6ECE */  jal     func_80B5BB38              
/* 028C8 80B5E078 8FA5002C */  lw      $a1, 0x002C($sp)           
.L80B5E07C:
/* 028CC 80B5E07C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 028D0 80B5E080 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 028D4 80B5E084 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 028D8 80B5E088 03E00008 */  jr      $ra                        
/* 028DC 80B5E08C 00000000 */  nop
