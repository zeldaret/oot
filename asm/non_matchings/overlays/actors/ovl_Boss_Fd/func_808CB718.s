.rdata
glabel D_808D1C30
    .asciz "MODE %d\n"
    .balign 4

glabel D_808D1C3C
    .asciz "WAY_SPD X = %f\n"
    .balign 4

glabel D_808D1C4C
    .asciz "WAY_SPD Y = %f\n"
    .balign 4

glabel D_808D1C5C
    .asciz "WAY_SPD Z = %f\n"
    .balign 4

glabel D_808D1C6C
    .asciz "this->timer[2] = %d\n"
    .balign 4

glabel D_808D1C84
    .asciz "this->timer[5] = %d\n"
    .balign 4

glabel D_808D1C9C
    .asciz "BGCHECKKKKKKKKKKKKKKKKKKKKKKK\n"
    .balign 4

.late_rodata
glabel D_808D1E48
 .word 0x44E08000
glabel D_808D1E4C
 .word 0x4622F983
glabel jtbl_808D1E50
.word L808CB988
.word L808CBCD4
.word L808CBCF8
.word L808CBE20
.word L808CBF44
.word L808CC140
glabel D_808D1E68
    .float 10000.0

glabel D_808D1E6C
    .float 0.05

glabel D_808D1E70
    .float 0.1

glabel D_808D1E74
 .word 0x3BA3D70A, 0x3DCCCCCD
glabel D_808D1E7C
 .word 0x3A831270
glabel D_808D1E80
    .float 0.2

glabel D_808D1E84
    .float 0.02

glabel D_808D1E88
    .float 0.005

glabel D_808D1E8C
    .float 0.1

glabel D_808D1E90
    .float 0.1

glabel D_808D1E94
    .float 0.1

glabel D_808D1E98
    .float 0.1

glabel D_808D1E9C
    .float 0.1

glabel D_808D1EA0
    .float 0.1

glabel D_808D1EA4
    .float 0.05

glabel D_808D1EA8
    .float 0.05

glabel D_808D1EAC
    .float 0.05

glabel D_808D1EB0
 .word 0x42AB1EB8, 0x3DCCCCCD
glabel jtbl_808D1EB8
.word L808CCCF4
.word L808CCDF0
.word L808CD0E4
.word L808CD154
.word L808CD178
.word L808CD3A8
glabel jtbl_808D1ED0
.word L808CD598
.word L808CC6A4
.word L808CC878
.word L808CC91C
.word L808CC944
glabel D_808D1EE4
 .word 0x410E6666
glabel D_808D1EE8
    .float 10000.0

glabel D_808D1EEC
    .float 3000.0

glabel D_808D1EF0
    .float 10000.0

glabel D_808D1EF4
 .word 0xC68FA000
glabel D_808D1EF8
 .word 0x4515C000
glabel D_808D1EFC
    .float 10000.0

glabel D_808D1F00
    .float 0.4

glabel D_808D1F04
 .word 0x42C7CCCD
glabel D_808D1F08
    .float 0.03

glabel D_808D1F0C
    .float 0.3

glabel D_808D1F10
    .float 0.03

glabel D_808D1F14
    .float 3.14159274101

glabel D_808D1F18
 .word 0x45AEE000
glabel D_808D1F1C
    .float 0.3

glabel D_808D1F20
 .word 0x45ABC000
glabel D_808D1F24
    .float 0.3

glabel D_808D1F28
    .float 0.3

glabel D_808D1F2C
    .float 1500.0

glabel D_808D1F30
    .float 3000.0

glabel D_808D1F34
 .word 0x45098000
glabel D_808D1F38
 .word 0x44D48000
glabel D_808D1F3C
 .word 0x44ED8000
glabel D_808D1F40
 .word 0xC53B8000
glabel D_808D1F44
 .word 0xC53B8000

.text
glabel func_808CB718
/* 00958 808CB718 27BDFE30 */  addiu   $sp, $sp, 0xFE30           ## $sp = FFFFFE30
/* 0095C 808CB71C AFB60078 */  sw      $s6, 0x0078($sp)           
/* 00960 808CB720 0080B025 */  or      $s6, $a0, $zero            ## $s6 = 00000000
/* 00964 808CB724 AFBF007C */  sw      $ra, 0x007C($sp)           
/* 00968 808CB728 AFB50074 */  sw      $s5, 0x0074($sp)           
/* 0096C 808CB72C AFB40070 */  sw      $s4, 0x0070($sp)           
/* 00970 808CB730 AFB3006C */  sw      $s3, 0x006C($sp)           
/* 00974 808CB734 AFB20068 */  sw      $s2, 0x0068($sp)           
/* 00978 808CB738 AFB10064 */  sw      $s1, 0x0064($sp)           
/* 0097C 808CB73C AFB00060 */  sw      $s0, 0x0060($sp)           
/* 00980 808CB740 F7BE0058 */  sdc1    $f30, 0x0058($sp)          
/* 00984 808CB744 F7BC0050 */  sdc1    $f28, 0x0050($sp)          
/* 00988 808CB748 F7BA0048 */  sdc1    $f26, 0x0048($sp)          
/* 0098C 808CB74C F7B80040 */  sdc1    $f24, 0x0040($sp)          
/* 00990 808CB750 F7B60038 */  sdc1    $f22, 0x0038($sp)          
/* 00994 808CB754 F7B40030 */  sdc1    $f20, 0x0030($sp)          
/* 00998 808CB758 AFA501D4 */  sw      $a1, 0x01D4($sp)           
/* 0099C 808CB75C A3A001CF */  sb      $zero, 0x01CF($sp)         
/* 009A0 808CB760 8CB31C44 */  lw      $s3, 0x1C44($a1)           ## 00001C44
/* 009A4 808CB764 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 009A8 808CB768 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 009AC 808CB76C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 009B0 808CB770 26C40190 */  addiu   $a0, $s6, 0x0190           ## $a0 = 00000190
/* 009B4 808CB774 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 009B8 808CB778 26C401D4 */  addiu   $a0, $s6, 0x01D4           ## $a0 = 000001D4
/* 009BC 808CB77C C6C402BC */  lwc1    $f4, 0x02BC($s6)           ## 000002BC
/* 009C0 808CB780 C6C60024 */  lwc1    $f6, 0x0024($s6)           ## 00000024
/* 009C4 808CB784 C6C802C0 */  lwc1    $f8, 0x02C0($s6)           ## 000002C0
/* 009C8 808CB788 C6CA0028 */  lwc1    $f10, 0x0028($s6)          ## 00000028
/* 009CC 808CB78C 46062501 */  sub.s   $f20, $f4, $f6             
/* 009D0 808CB790 3C014503 */  lui     $at, 0x4503                ## $at = 45030000
/* 009D4 808CB794 460A4101 */  sub.s   $f4, $f8, $f10             
/* 009D8 808CB798 44815000 */  mtc1    $at, $f10                  ## $f10 = 2096.00
/* 009DC 808CB79C E7A401C0 */  swc1    $f4, 0x01C0($sp)           
/* 009E0 808CB7A0 C6C8002C */  lwc1    $f8, 0x002C($s6)           ## 0000002C
/* 009E4 808CB7A4 C6C602C4 */  lwc1    $f6, 0x02C4($s6)           ## 000002C4
/* 009E8 808CB7A8 86CF0224 */  lh      $t7, 0x0224($s6)           ## 00000224
/* 009EC 808CB7AC C6C402B4 */  lwc1    $f4, 0x02B4($s6)           ## 000002B4
/* 009F0 808CB7B0 46083581 */  sub.s   $f22, $f6, $f8             
/* 009F4 808CB7B4 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 009F8 808CB7B8 46045180 */  add.s   $f6, $f10, $f4             
/* 009FC 808CB7BC 468042A0 */  cvt.s.w $f10, $f8                  
/* 00A00 808CB7C0 46065102 */  mul.s   $f4, $f10, $f6             
/* 00A04 808CB7C4 4600220D */  trunc.w.s $f8, $f4                   
/* 00A08 808CB7C8 44044000 */  mfc1    $a0, $f8                   
/* 00A0C 808CB7CC 00000000 */  nop
/* 00A10 808CB7D0 00042400 */  sll     $a0, $a0, 16               
/* 00A14 808CB7D4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00A18 808CB7D8 00042403 */  sra     $a0, $a0, 16               
/* 00A1C 808CB7DC C6CA02B0 */  lwc1    $f10, 0x02B0($s6)          ## 000002B0
/* 00A20 808CB7E0 86D90224 */  lh      $t9, 0x0224($s6)           ## 00000224
/* 00A24 808CB7E4 3C014489 */  lui     $at, 0x4489                ## $at = 44890000
/* 00A28 808CB7E8 460A0182 */  mul.s   $f6, $f0, $f10             
/* 00A2C 808CB7EC 44812000 */  mtc1    $at, $f4                   ## $f4 = 1096.00
/* 00A30 808CB7F0 C6C802B4 */  lwc1    $f8, 0x02B4($s6)           ## 000002B4
/* 00A34 808CB7F4 46082280 */  add.s   $f10, $f4, $f8             
/* 00A38 808CB7F8 4606A500 */  add.s   $f20, $f20, $f6            
/* 00A3C 808CB7FC 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 00A40 808CB800 00000000 */  nop
/* 00A44 808CB804 46803120 */  cvt.s.w $f4, $f6                   
/* 00A48 808CB808 460A2202 */  mul.s   $f8, $f4, $f10             
/* 00A4C 808CB80C 4600418D */  trunc.w.s $f6, $f8                   
/* 00A50 808CB810 44043000 */  mfc1    $a0, $f6                   
/* 00A54 808CB814 00000000 */  nop
/* 00A58 808CB818 00042400 */  sll     $a0, $a0, 16               
/* 00A5C 808CB81C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00A60 808CB820 00042403 */  sra     $a0, $a0, 16               
/* 00A64 808CB824 C6CA02B0 */  lwc1    $f10, 0x02B0($s6)          ## 000002B0
/* 00A68 808CB828 C7A401C0 */  lwc1    $f4, 0x01C0($sp)           
/* 00A6C 808CB82C 3C01808D */  lui     $at, %hi(D_808D1E48)       ## $at = 808D0000
/* 00A70 808CB830 460A0202 */  mul.s   $f8, $f0, $f10             
/* 00A74 808CB834 C42A1E48 */  lwc1    $f10, %lo(D_808D1E48)($at) 
/* 00A78 808CB838 46082180 */  add.s   $f6, $f4, $f8              
/* 00A7C 808CB83C E7A601C0 */  swc1    $f6, 0x01C0($sp)           
/* 00A80 808CB840 86C90224 */  lh      $t1, 0x0224($s6)           ## 00000224
/* 00A84 808CB844 C6C402B4 */  lwc1    $f4, 0x02B4($s6)           ## 000002B4
/* 00A88 808CB848 44893000 */  mtc1    $t1, $f6                   ## $f6 = 0.00
/* 00A8C 808CB84C 46045200 */  add.s   $f8, $f10, $f4             
/* 00A90 808CB850 468032A0 */  cvt.s.w $f10, $f6                  
/* 00A94 808CB854 46085102 */  mul.s   $f4, $f10, $f8             
/* 00A98 808CB858 4600218D */  trunc.w.s $f6, $f4                   
/* 00A9C 808CB85C 44043000 */  mfc1    $a0, $f6                   
/* 00AA0 808CB860 00000000 */  nop
/* 00AA4 808CB864 00042400 */  sll     $a0, $a0, 16               
/* 00AA8 808CB868 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00AAC 808CB86C 00042403 */  sra     $a0, $a0, 16               
/* 00AB0 808CB870 C6CA02B0 */  lwc1    $f10, 0x02B0($s6)          ## 000002B0
/* 00AB4 808CB874 4600A306 */  mov.s   $f12, $f20                 
/* 00AB8 808CB878 460A0202 */  mul.s   $f8, $f0, $f10             
/* 00ABC 808CB87C 4608B580 */  add.s   $f22, $f22, $f8            
/* 00AC0 808CB880 0C03F494 */  jal     Math_atan2f              
/* 00AC4 808CB884 4600B386 */  mov.s   $f14, $f22                 
/* 00AC8 808CB888 3C01808D */  lui     $at, %hi(D_808D1E4C)       ## $at = 808D0000
/* 00ACC 808CB88C C4381E4C */  lwc1    $f24, %lo(D_808D1E4C)($at) 
/* 00AD0 808CB890 C7AC01C0 */  lwc1    $f12, 0x01C0($sp)          
/* 00AD4 808CB894 46180102 */  mul.s   $f4, $f0, $f24             
/* 00AD8 808CB898 00000000 */  nop
/* 00ADC 808CB89C 4614A082 */  mul.s   $f2, $f20, $f20            
/* 00AE0 808CB8A0 00000000 */  nop
/* 00AE4 808CB8A4 4616B402 */  mul.s   $f16, $f22, $f22           
/* 00AE8 808CB8A8 E7A20098 */  swc1    $f2, 0x0098($sp)           
/* 00AEC 808CB8AC 4600218D */  trunc.w.s $f6, $f4                   
/* 00AF0 808CB8B0 E7B00094 */  swc1    $f16, 0x0094($sp)          
/* 00AF4 808CB8B4 46101480 */  add.s   $f18, $f2, $f16            
/* 00AF8 808CB8B8 440C3000 */  mfc1    $t4, $f6                   
/* 00AFC 808CB8BC 46009384 */  sqrt.s  $f14, $f18                 
/* 00B00 808CB8C0 000C6C00 */  sll     $t5, $t4, 16               
/* 00B04 808CB8C4 000D7403 */  sra     $t6, $t5, 16               
/* 00B08 808CB8C8 448E5000 */  mtc1    $t6, $f10                  ## $f10 = 0.00
/* 00B0C 808CB8CC 00000000 */  nop
/* 00B10 808CB8D0 46805220 */  cvt.s.w $f8, $f10                  
/* 00B14 808CB8D4 E7AE0090 */  swc1    $f14, 0x0090($sp)          
/* 00B18 808CB8D8 0C03F494 */  jal     Math_atan2f              
/* 00B1C 808CB8DC E7A801B4 */  swc1    $f8, 0x01B4($sp)           
/* 00B20 808CB8E0 46180102 */  mul.s   $f4, $f0, $f24             
/* 00B24 808CB8E4 3C04808D */  lui     $a0, %hi(D_808D1C30)       ## $a0 = 808D0000
/* 00B28 808CB8E8 24841C30 */  addiu   $a0, $a0, %lo(D_808D1C30)  ## $a0 = 808D1C30
/* 00B2C 808CB8EC 4600218D */  trunc.w.s $f6, $f4                   
/* 00B30 808CB8F0 44183000 */  mfc1    $t8, $f6                   
/* 00B34 808CB8F4 00000000 */  nop
/* 00B38 808CB8F8 0018CC00 */  sll     $t9, $t8, 16               
/* 00B3C 808CB8FC 00194403 */  sra     $t0, $t9, 16               
/* 00B40 808CB900 44885000 */  mtc1    $t0, $f10                  ## $f10 = 0.00
/* 00B44 808CB904 00000000 */  nop
/* 00B48 808CB908 46805220 */  cvt.s.w $f8, $f10                  
/* 00B4C 808CB90C E7A801B0 */  swc1    $f8, 0x01B0($sp)           
/* 00B50 808CB910 0C00084C */  jal     osSyncPrintf
              
/* 00B54 808CB914 86C50222 */  lh      $a1, 0x0222($s6)           ## 00000222
/* 00B58 808CB918 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00B5C 808CB91C 4481F000 */  mtc1    $at, $f30                  ## $f30 = 1.00
/* 00B60 808CB920 26D50280 */  addiu   $s5, $s6, 0x0280           ## $s5 = 00000280
/* 00B64 808CB924 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 00B68 808CB928 3C073CA3 */  lui     $a3, 0x3CA3                ## $a3 = 3CA30000
/* 00B6C 808CB92C 4406F000 */  mfc1    $a2, $f30                  
/* 00B70 808CB930 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3CA3D70A
/* 00B74 808CB934 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 00B78 808CB938 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00B7C 808CB93C 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000280
/* 00B80 808CB940 86C91402 */  lh      $t1, 0x1402($s6)           ## 00001402
/* 00B84 808CB944 51200321 */  beql    $t1, $zero, .L808CC5CC     
/* 00B88 808CB948 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00B8C 808CB94C 8FA401D4 */  lw      $a0, 0x01D4($sp)           
/* 00B90 808CB950 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00B94 808CB954 0C030129 */  jal     Gameplay_GetCamera              
/* 00B98 808CB958 8C901C44 */  lw      $s0, 0x1C44($a0)           ## 00001C44
/* 00B9C 808CB95C 86CA1402 */  lh      $t2, 0x1402($s6)           ## 00001402
/* 00BA0 808CB960 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 00BA4 808CB964 254BFFFF */  addiu   $t3, $t2, 0xFFFF           ## $t3 = FFFFFFFF
/* 00BA8 808CB968 2D610006 */  sltiu   $at, $t3, 0x0006           
/* 00BAC 808CB96C 10200307 */  beq     $at, $zero, .L808CC58C     
/* 00BB0 808CB970 000B5880 */  sll     $t3, $t3,  2               
/* 00BB4 808CB974 3C01808D */  lui     $at, %hi(jtbl_808D1E50)       ## $at = 808D0000
/* 00BB8 808CB978 002B0821 */  addu    $at, $at, $t3              
/* 00BBC 808CB97C 8C2B1E50 */  lw      $t3, %lo(jtbl_808D1E50)($at)  
/* 00BC0 808CB980 01600008 */  jr      $t3                        
/* 00BC4 808CB984 00000000 */  nop
glabel L808CB988
/* 00BC8 808CB988 3C01C2DC */  lui     $at, 0xC2DC                ## $at = C2DC0000
/* 00BCC 808CB98C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00BD0 808CB990 44813000 */  mtc1    $at, $f6                   ## $f6 = -110.00
/* 00BD4 808CB994 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00BD8 808CB998 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 00BDC 808CB99C A2CC0220 */  sb      $t4, 0x0220($s6)           ## 00000220
/* 00BE0 808CB9A0 3C01808D */  lui     $at, %hi(D_808D1E68)       ## $at = 808D0000
/* 00BE4 808CB9A4 E6C402BC */  swc1    $f4, 0x02BC($s6)           ## 000002BC
/* 00BE8 808CB9A8 E6C602C0 */  swc1    $f6, 0x02C0($s6)           ## 000002C0
/* 00BEC 808CB9AC E6CA02C4 */  swc1    $f10, 0x02C4($s6)          ## 000002C4
/* 00BF0 808CB9B0 C4281E68 */  lwc1    $f8, %lo(D_808D1E68)($at)  
/* 00BF4 808CB9B4 240DFFFF */  addiu   $t5, $zero, 0xFFFF         ## $t5 = FFFFFFFF
/* 00BF8 808CB9B8 A6CD0222 */  sh      $t5, 0x0222($s6)           ## 00000222
/* 00BFC 808CB9BC E6C802AC */  swc1    $f8, 0x02AC($s6)           ## 000002AC
/* 00C00 808CB9C0 C600002C */  lwc1    $f0, 0x002C($s0)           ## 0000002C
/* 00C04 808CB9C4 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00C08 808CB9C8 44812000 */  mtc1    $at, $f4                   ## $f4 = 80.00
/* 00C0C 808CB9CC 46000005 */  abs.s   $f0, $f0                   
/* 00C10 808CB9D0 3C0143AA */  lui     $at, 0x43AA                ## $at = 43AA0000
/* 00C14 808CB9D4 4604003C */  c.lt.s  $f0, $f4                   
/* 00C18 808CB9D8 00000000 */  nop
/* 00C1C 808CB9DC 450000BB */  bc1f    .L808CBCCC                 
/* 00C20 808CB9E0 00000000 */  nop
/* 00C24 808CB9E4 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00C28 808CB9E8 44815000 */  mtc1    $at, $f10                  ## $f10 = 340.00
/* 00C2C 808CB9EC 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00C30 808CB9F0 44814000 */  mtc1    $at, $f8                   ## $f8 = 60.00
/* 00C34 808CB9F4 460A3001 */  sub.s   $f0, $f6, $f10             
/* 00C38 808CB9F8 8FA401D4 */  lw      $a0, 0x01D4($sp)           
/* 00C3C 808CB9FC 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00C40 808CBA00 46000005 */  abs.s   $f0, $f0                   
/* 00C44 808CBA04 24851D64 */  addiu   $a1, $a0, 0x1D64           ## $a1 = 00001D64
/* 00C48 808CBA08 4608003C */  c.lt.s  $f0, $f8                   
/* 00C4C 808CBA0C 00000000 */  nop
/* 00C50 808CBA10 450000AE */  bc1f    .L808CBCCC                 
/* 00C54 808CBA14 00000000 */  nop
/* 00C58 808CBA18 0C019148 */  jal     func_80064520              
/* 00C5C 808CBA1C A6CE1402 */  sh      $t6, 0x1402($s6)           ## 00001402
/* 00C60 808CBA20 8FA401D4 */  lw      $a0, 0x01D4($sp)           
/* 00C64 808CBA24 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 00C68 808CBA28 0C00B7D5 */  jal     func_8002DF54              
/* 00C6C 808CBA2C 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 00C70 808CBA30 0C03008C */  jal     Gameplay_CreateSubCamera              
/* 00C74 808CBA34 8FA401D4 */  lw      $a0, 0x01D4($sp)           
/* 00C78 808CBA38 A6C21404 */  sh      $v0, 0x1404($s6)           ## 00001404
/* 00C7C 808CBA3C 8FA401D4 */  lw      $a0, 0x01D4($sp)           
/* 00C80 808CBA40 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00C84 808CBA44 0C0300C5 */  jal     Gameplay_ChangeCameraStatus              
/* 00C88 808CBA48 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00C8C 808CBA4C 8FA401D4 */  lw      $a0, 0x01D4($sp)           
/* 00C90 808CBA50 86C51404 */  lh      $a1, 0x1404($s6)           ## 00001404
/* 00C94 808CBA54 0C0300C5 */  jal     Gameplay_ChangeCameraStatus              
/* 00C98 808CBA58 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00C9C 808CBA5C 3C0143BE */  lui     $at, 0x43BE                ## $at = 43BE0000
/* 00CA0 808CBA60 44810000 */  mtc1    $at, $f0                   ## $f0 = 380.00
/* 00CA4 808CBA64 3C014190 */  lui     $at, 0x4190                ## $at = 41900000
/* 00CA8 808CBA68 44811000 */  mtc1    $at, $f2                   ## $f2 = 18.00
/* 00CAC 808CBA6C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00CB0 808CBA70 4481C000 */  mtc1    $at, $f24                  ## $f24 = 50.00
/* 00CB4 808CBA74 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00CB8 808CBA78 4481E000 */  mtc1    $at, $f28                  ## $f28 = 100.00
/* 00CBC 808CBA7C 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 00CC0 808CBA80 44812000 */  mtc1    $at, $f4                   ## $f4 = 70.00
/* 00CC4 808CBA84 240FC000 */  addiu   $t7, $zero, 0xC000         ## $t7 = FFFFC000
/* 00CC8 808CBA88 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00CCC 808CBA8C A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
/* 00CD0 808CBA90 46040181 */  sub.s   $f6, $f0, $f4              
/* 00CD4 808CBA94 86180032 */  lh      $t8, 0x0032($s0)           ## 00000032
/* 00CD8 808CBA98 E6000024 */  swc1    $f0, 0x0024($s0)           ## 00000024
/* 00CDC 808CBA9C E61C0028 */  swc1    $f28, 0x0028($s0)          ## 00000028
/* 00CE0 808CBAA0 E60C002C */  swc1    $f12, 0x002C($s0)          ## 0000002C
/* 00CE4 808CBAA4 E60C0068 */  swc1    $f12, 0x0068($s0)          ## 00000068
/* 00CE8 808CBAA8 A61800B6 */  sh      $t8, 0x00B6($s0)           ## 000000B6
/* 00CEC 808CBAAC E6C61408 */  swc1    $f6, 0x1408($s6)           ## 00001408
/* 00CF0 808CBAB0 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00CF4 808CBAB4 44814000 */  mtc1    $at, $f8                   ## $f8 = 40.00
/* 00CF8 808CBAB8 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 00CFC 808CBABC 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 00D00 808CBAC0 4405F000 */  mfc1    $a1, $f30                  
/* 00D04 808CBAC4 46085100 */  add.s   $f4, $f10, $f8             
/* 00D08 808CBAC8 44815000 */  mtc1    $at, $f10                  ## $f10 = 70.00
/* 00D0C 808CBACC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00D10 808CBAD0 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 00D14 808CBAD4 E6C4140C */  swc1    $f4, 0x140C($s6)           ## 0000140C
/* 00D18 808CBAD8 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 00D1C 808CBADC 460A3200 */  add.s   $f8, $f6, $f10             
/* 00D20 808CBAE0 44815000 */  mtc1    $at, $f10                  ## $f10 = 30.00
/* 00D24 808CBAE4 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00D28 808CBAE8 E6C81410 */  swc1    $f8, 0x1410($s6)           ## 00001410
/* 00D2C 808CBAEC C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00D30 808CBAF0 E6C41414 */  swc1    $f4, 0x1414($s6)           ## 00001414
/* 00D34 808CBAF4 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 00D38 808CBAF8 460A3200 */  add.s   $f8, $f6, $f10             
/* 00D3C 808CBAFC E6C81418 */  swc1    $f8, 0x1418($s6)           ## 00001418
/* 00D40 808CBB00 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 00D44 808CBB04 E6C4141C */  swc1    $f4, 0x141C($s6)           ## 0000141C
/* 00D48 808CBB08 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00D4C 808CBB0C 46183281 */  sub.s   $f10, $f6, $f24            
/* 00D50 808CBB10 44813000 */  mtc1    $at, $f6                   ## $f6 = 40.00
/* 00D54 808CBB14 46025200 */  add.s   $f8, $f10, $f2             
/* 00D58 808CBB18 E6C81450 */  swc1    $f8, 0x1450($s6)           ## 00001450
/* 00D5C 808CBB1C C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00D60 808CBB20 46062280 */  add.s   $f10, $f4, $f6             
/* 00D64 808CBB24 E6CA1454 */  swc1    $f10, 0x1454($s6)          ## 00001454
/* 00D68 808CBB28 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 00D6C 808CBB2C 46184100 */  add.s   $f4, $f8, $f24             
/* 00D70 808CBB30 46022181 */  sub.s   $f6, $f4, $f2              
/* 00D74 808CBB34 E6C61458 */  swc1    $f6, 0x1458($s6)           ## 00001458
/* 00D78 808CBB38 C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 00D7C 808CBB3C E6CA1468 */  swc1    $f10, 0x1468($s6)          ## 00001468
/* 00D80 808CBB40 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00D84 808CBB44 46184100 */  add.s   $f4, $f8, $f24             
/* 00D88 808CBB48 E6C4146C */  swc1    $f4, 0x146C($s6)           ## 0000146C
/* 00D8C 808CBB4C C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 00D90 808CBB50 0C232C40 */  jal     func_808CB100              
/* 00D94 808CBB54 E6C61470 */  swc1    $f6, 0x1470($s6)           ## 00001470
/* 00D98 808CBB58 3C01808D */  lui     $at, %hi(D_808D1E6C)       ## $at = 808D0000
/* 00D9C 808CBB5C C4221E6C */  lwc1    $f2, %lo(D_808D1E6C)($at)  
/* 00DA0 808CBB60 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00DA4 808CBB64 3C148016 */  lui     $s4, 0x8016                ## $s4 = 80160000
/* 00DA8 808CBB68 2694E660 */  addiu   $s4, $s4, 0xE660           ## $s4 = 8015E660
/* 00DAC 808CBB6C A6C00248 */  sh      $zero, 0x0248($s6)         ## 00000248
/* 00DB0 808CBB70 E6C2147C */  swc1    $f2, 0x147C($s6)           ## 0000147C
/* 00DB4 808CBB74 E6C21478 */  swc1    $f2, 0x1478($s6)           ## 00001478
/* 00DB8 808CBB78 E6C21474 */  swc1    $f2, 0x1474($s6)           ## 00001474
/* 00DBC 808CBB7C E6C21464 */  swc1    $f2, 0x1464($s6)           ## 00001464
/* 00DC0 808CBB80 E6C21460 */  swc1    $f2, 0x1460($s6)           ## 00001460
/* 00DC4 808CBB84 E6C2145C */  swc1    $f2, 0x145C($s6)           ## 0000145C
/* 00DC8 808CBB88 E6C01480 */  swc1    $f0, 0x1480($s6)           ## 00001480
/* 00DCC 808CBB8C E6C01484 */  swc1    $f0, 0x1484($s6)           ## 00001484
/* 00DD0 808CBB90 96990EE2 */  lhu     $t9, 0x0EE2($s4)           ## 8015F542
/* 00DD4 808CBB94 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00DD8 808CBB98 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
/* 00DDC 808CBB9C 33280008 */  andi    $t0, $t9, 0x0008           ## $t0 = 00000000
/* 00DE0 808CBBA0 1100004A */  beq     $t0, $zero, .L808CBCCC     
/* 00DE4 808CBBA4 00000000 */  nop
/* 00DE8 808CBBA8 A6C91402 */  sh      $t1, 0x1402($s6)           ## 00001402
/* 00DEC 808CBBAC 4481B000 */  mtc1    $at, $f22                  ## $f22 = 200.00
/* 00DF0 808CBBB0 C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 00DF4 808CBBB4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00DF8 808CBBB8 4481D000 */  mtc1    $at, $f26                  ## $f26 = 0.50
/* 00DFC 808CBBBC 461C5200 */  add.s   $f8, $f10, $f28            
/* 00E00 808CBBC0 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 00E04 808CBBC4 44812000 */  mtc1    $at, $f4                   ## $f4 = 300.00
/* 00E08 808CBBC8 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 00E0C 808CBBCC 44815000 */  mtc1    $at, $f10                  ## $f10 = 600.00
/* 00E10 808CBBD0 46044180 */  add.s   $f6, $f8, $f4              
/* 00E14 808CBBD4 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 00E18 808CBBD8 4405D000 */  mfc1    $a1, $f26                  
/* 00E1C 808CBBDC 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 00E20 808CBBE0 460A3201 */  sub.s   $f8, $f6, $f10             
/* 00E24 808CBBE4 E6C81450 */  swc1    $f8, 0x1450($s6)           ## 00001450
/* 00E28 808CBBE8 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00E2C 808CBBEC 461C2180 */  add.s   $f6, $f4, $f28             
/* 00E30 808CBBF0 46183281 */  sub.s   $f10, $f6, $f24            
/* 00E34 808CBBF4 44813000 */  mtc1    $at, $f6                   ## $f6 = 150.00
/* 00E38 808CBBF8 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00E3C 808CBBFC E6CA1454 */  swc1    $f10, 0x1454($s6)          ## 00001454
/* 00E40 808CBC00 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 00E44 808CBC04 E6C01468 */  swc1    $f0, 0x1468($s6)           ## 00001468
/* 00E48 808CBC08 E6C01470 */  swc1    $f0, 0x1470($s6)           ## 00001470
/* 00E4C 808CBC0C 46164100 */  add.s   $f4, $f8, $f22             
/* 00E50 808CBC10 44814000 */  mtc1    $at, $f8                   ## $f8 = 120.00
/* 00E54 808CBC14 46062281 */  sub.s   $f10, $f4, $f6             
/* 00E58 808CBC18 E6C8146C */  swc1    $f8, 0x146C($s6)           ## 0000146C
/* 00E5C 808CBC1C 0C232C40 */  jal     func_808CB100              
/* 00E60 808CBC20 E6CA1458 */  swc1    $f10, 0x1458($s6)          ## 00001458
/* 00E64 808CBC24 3C01808D */  lui     $at, %hi(D_808D1E70)       ## $at = 808D0000
/* 00E68 808CBC28 C4201E70 */  lwc1    $f0, %lo(D_808D1E70)($at)  
/* 00E6C 808CBC2C 3C01808D */  lui     $at, %hi(D_808D1E74)       ## $at = 808D0000
/* 00E70 808CBC30 C4341E74 */  lwc1    $f20, %lo(D_808D1E74)($at) 
/* 00E74 808CBC34 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00E78 808CBC38 314B00FF */  andi    $t3, $t2, 0x00FF           ## $t3 = 00000001
/* 00E7C 808CBC3C 000B6080 */  sll     $t4, $t3,  2               
/* 00E80 808CBC40 018B6023 */  subu    $t4, $t4, $t3              
/* 00E84 808CBC44 3C0D808D */  lui     $t5, %hi(D_808D192C)       ## $t5 = 808D0000
/* 00E88 808CBC48 25AD192C */  addiu   $t5, $t5, %lo(D_808D192C)  ## $t5 = 808D192C
/* 00E8C 808CBC4C 000C6080 */  sll     $t4, $t4,  2               
/* 00E90 808CBC50 A6C00248 */  sh      $zero, 0x0248($s6)         ## 00000248
/* 00E94 808CBC54 A2CA02D4 */  sb      $t2, 0x02D4($s6)           ## 000002D4
/* 00E98 808CBC58 018D1021 */  addu    $v0, $t4, $t5              
/* 00E9C 808CBC5C E6C0145C */  swc1    $f0, 0x145C($s6)           ## 0000145C
/* 00EA0 808CBC60 E6C01460 */  swc1    $f0, 0x1460($s6)           ## 00001460
/* 00EA4 808CBC64 E6C01464 */  swc1    $f0, 0x1464($s6)           ## 00001464
/* 00EA8 808CBC68 E6C01474 */  swc1    $f0, 0x1474($s6)           ## 00001474
/* 00EAC 808CBC6C E6C01478 */  swc1    $f0, 0x1478($s6)           ## 00001478
/* 00EB0 808CBC70 E6C0147C */  swc1    $f0, 0x147C($s6)           ## 0000147C
/* 00EB4 808CBC74 E6D41484 */  swc1    $f20, 0x1484($s6)          ## 00001484
/* 00EB8 808CBC78 C4440000 */  lwc1    $f4, 0x0000($v0)           ## 00000000
/* 00EBC 808CBC7C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00EC0 808CBC80 240E0032 */  addiu   $t6, $zero, 0x0032         ## $t6 = 00000032
/* 00EC4 808CBC84 E6C402BC */  swc1    $f4, 0x02BC($s6)           ## 000002BC
/* 00EC8 808CBC88 C4460004 */  lwc1    $f6, 0x0004($v0)           ## 00000004
/* 00ECC 808CBC8C 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 00ED0 808CBC90 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 00ED4 808CBC94 46163281 */  sub.s   $f10, $f6, $f22            
/* 00ED8 808CBC98 24184000 */  addiu   $t8, $zero, 0x4000         ## $t8 = 00004000
/* 00EDC 808CBC9C 241900FA */  addiu   $t9, $zero, 0x00FA         ## $t9 = 000000FA
/* 00EE0 808CBCA0 240801D6 */  addiu   $t0, $zero, 0x01D6         ## $t0 = 000001D6
/* 00EE4 808CBCA4 E6CA02C0 */  swc1    $f10, 0x02C0($s6)          ## 000002C0
/* 00EE8 808CBCA8 C4480008 */  lwc1    $f8, 0x0008($v0)           ## 00000008
/* 00EEC 808CBCAC A6CE0248 */  sh      $t6, 0x0248($s6)           ## 00000248
/* 00EF0 808CBCB0 A6CF0222 */  sh      $t7, 0x0222($s6)           ## 00000222
/* 00EF4 808CBCB4 A6D80030 */  sh      $t8, 0x0030($s6)           ## 00000030
/* 00EF8 808CBCB8 A6C00224 */  sh      $zero, 0x0224($s6)         ## 00000224
/* 00EFC 808CBCBC A6D9024E */  sh      $t9, 0x024E($s6)           ## 0000024E
/* 00F00 808CBCC0 A6C8024C */  sh      $t0, 0x024C($s6)           ## 0000024C
/* 00F04 808CBCC4 E6C402A4 */  swc1    $f4, 0x02A4($s6)           ## 000002A4
/* 00F08 808CBCC8 E6C802C4 */  swc1    $f8, 0x02C4($s6)           ## 000002C4
.L808CBCCC:
/* 00F0C 808CBCCC 10000230 */  beq     $zero, $zero, .L808CC590   
/* 00F10 808CBCD0 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
glabel L808CBCD4
/* 00F14 808CBCD4 86C90248 */  lh      $t1, 0x0248($s6)           ## 00000248
/* 00F18 808CBCD8 3C01808D */  lui     $at, %hi(D_808D1E7C)       ## $at = 808D0000
/* 00F1C 808CBCDC 240A0064 */  addiu   $t2, $zero, 0x0064         ## $t2 = 00000064
/* 00F20 808CBCE0 15200005 */  bne     $t1, $zero, .L808CBCF8     
/* 00F24 808CBCE4 240B0003 */  addiu   $t3, $zero, 0x0003         ## $t3 = 00000003
/* 00F28 808CBCE8 C4261E7C */  lwc1    $f6, %lo(D_808D1E7C)($at)  
/* 00F2C 808CBCEC A6CA0248 */  sh      $t2, 0x0248($s6)           ## 00000248
/* 00F30 808CBCF0 A6CB1402 */  sh      $t3, 0x1402($s6)           ## 00001402
/* 00F34 808CBCF4 E6C61484 */  swc1    $f6, 0x1484($s6)           ## 00001484
glabel L808CBCF8
.L808CBCF8:
/* 00F38 808CBCF8 3C0143BE */  lui     $at, 0x43BE                ## $at = 43BE0000
/* 00F3C 808CBCFC 44810000 */  mtc1    $at, $f0                   ## $f0 = 380.00
/* 00F40 808CBD00 240CC000 */  addiu   $t4, $zero, 0xC000         ## $t4 = FFFFC000
/* 00F44 808CBD04 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00F48 808CBD08 A60C0032 */  sh      $t4, 0x0032($s0)           ## 00000032
/* 00F4C 808CBD0C 4481E000 */  mtc1    $at, $f28                  ## $f28 = 100.00
/* 00F50 808CBD10 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00F54 808CBD14 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00F58 808CBD18 860D0032 */  lh      $t5, 0x0032($s0)           ## 00000032
/* 00F5C 808CBD1C E6000024 */  swc1    $f0, 0x0024($s0)           ## 00000024
/* 00F60 808CBD20 E61C0028 */  swc1    $f28, 0x0028($s0)          ## 00000028
/* 00F64 808CBD24 E60A002C */  swc1    $f10, 0x002C($s0)          ## 0000002C
/* 00F68 808CBD28 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 00F6C 808CBD2C A60D00B6 */  sh      $t5, 0x00B6($s0)           ## 000000B6
/* 00F70 808CBD30 86C30248 */  lh      $v1, 0x0248($s6)           ## 00000248
/* 00F74 808CBD34 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 00F78 808CBD38 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00F7C 808CBD3C 14610003 */  bne     $v1, $at, .L808CBD4C       
/* 00F80 808CBD40 3C128013 */  lui     $s2, 0x8013                ## $s2 = 80130000
/* 00F84 808CBD44 A2CE0220 */  sb      $t6, 0x0220($s6)           ## 00000220
/* 00F88 808CBD48 86C30248 */  lh      $v1, 0x0248($s6)           ## 00000248
.L808CBD4C:
/* 00F8C 808CBD4C 28610032 */  slti    $at, $v1, 0x0032           
/* 00F90 808CBD50 10200018 */  beq     $at, $zero, .L808CBDB4     
/* 00F94 808CBD54 264733E0 */  addiu   $a3, $s2, 0x33E0           ## $a3 = 801333E0
/* 00F98 808CBD58 3C0F8013 */  lui     $t7, 0x8013                ## $t7 = 80130000
/* 00F9C 808CBD5C 25EF33E8 */  addiu   $t7, $t7, 0x33E8           ## $t7 = 801333E8
/* 00FA0 808CBD60 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00FA4 808CBD64 2404304E */  addiu   $a0, $zero, 0x304E         ## $a0 = 0000304E
/* 00FA8 808CBD68 26C500E4 */  addiu   $a1, $s6, 0x00E4           ## $a1 = 000000E4
/* 00FAC 808CBD6C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00FB0 808CBD70 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00FB4 808CBD74 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00FB8 808CBD78 86C40224 */  lh      $a0, 0x0224($s6)           ## 00000224
/* 00FBC 808CBD7C 000423C0 */  sll     $a0, $a0, 15               
/* 00FC0 808CBD80 00042400 */  sll     $a0, $a0, 16               
/* 00FC4 808CBD84 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00FC8 808CBD88 00042403 */  sra     $a0, $a0, 16               
/* 00FCC 808CBD8C C6C4148C */  lwc1    $f4, 0x148C($s6)           ## 0000148C
/* 00FD0 808CBD90 4406F000 */  mfc1    $a2, $f30                  
/* 00FD4 808CBD94 3C073C03 */  lui     $a3, 0x3C03                ## $a3 = 3C030000
/* 00FD8 808CBD98 46040182 */  mul.s   $f6, $f0, $f4              
/* 00FDC 808CBD9C 34E7126E */  ori     $a3, $a3, 0x126E           ## $a3 = 3C03126E
/* 00FE0 808CBDA0 26C4148C */  addiu   $a0, $s6, 0x148C           ## $a0 = 0000148C
/* 00FE4 808CBDA4 3C054000 */  lui     $a1, 0x4000                ## $a1 = 40000000
/* 00FE8 808CBDA8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00FEC 808CBDAC E6C61488 */  swc1    $f6, 0x1488($s6)           ## 00001488
/* 00FF0 808CBDB0 86C30248 */  lh      $v1, 0x0248($s6)           ## 00000248
.L808CBDB4:
/* 00FF4 808CBDB4 24010028 */  addiu   $at, $zero, 0x0028         ## $at = 00000028
/* 00FF8 808CBDB8 14610005 */  bne     $v1, $at, .L808CBDD0       
/* 00FFC 808CBDBC 8FA401D4 */  lw      $a0, 0x01D4($sp)           
/* 01000 808CBDC0 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 01004 808CBDC4 0C00B7D5 */  jal     func_8002DF54              
/* 01008 808CBDC8 24060013 */  addiu   $a2, $zero, 0x0013         ## $a2 = 00000013
/* 0100C 808CBDCC 86C30248 */  lh      $v1, 0x0248($s6)           ## 00000248
.L808CBDD0:
/* 01010 808CBDD0 146001EE */  bne     $v1, $zero, .L808CC58C     
/* 01014 808CBDD4 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 01018 808CBDD8 A6D81402 */  sh      $t8, 0x1402($s6)           ## 00001402
/* 0101C 808CBDDC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01020 808CBDE0 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 01024 808CBDE4 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 01028 808CBDE8 3C01808D */  lui     $at, %hi(D_808D1E80)       ## $at = 808D0000
/* 0102C 808CBDEC 24190046 */  addiu   $t9, $zero, 0x0046         ## $t9 = 00000046
/* 01030 808CBDF0 46085100 */  add.s   $f4, $f10, $f8             
/* 01034 808CBDF4 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 01038 808CBDF8 E6C4146C */  swc1    $f4, 0x146C($s6)           ## 0000146C
/* 0103C 808CBDFC C4261E80 */  lwc1    $f6, %lo(D_808D1E80)($at)  
/* 01040 808CBE00 3C01808D */  lui     $at, %hi(D_808D1E84)       ## $at = 808D0000
/* 01044 808CBE04 E6CA1480 */  swc1    $f10, 0x1480($s6)          ## 00001480
/* 01048 808CBE08 E6C61478 */  swc1    $f6, 0x1478($s6)           ## 00001478
/* 0104C 808CBE0C C4281E84 */  lwc1    $f8, %lo(D_808D1E84)($at)  
/* 01050 808CBE10 A6D90248 */  sh      $t9, 0x0248($s6)           ## 00000248
/* 01054 808CBE14 A6C00224 */  sh      $zero, 0x0224($s6)         ## 00000224
/* 01058 808CBE18 100001DC */  beq     $zero, $zero, .L808CC58C   
/* 0105C 808CBE1C E6C81484 */  swc1    $f8, 0x1484($s6)           ## 00001484
glabel L808CBE20
/* 01060 808CBE20 86C40224 */  lh      $a0, 0x0224($s6)           ## 00000224
/* 01064 808CBE24 000423C0 */  sll     $a0, $a0, 15               
/* 01068 808CBE28 00042400 */  sll     $a0, $a0, 16               
/* 0106C 808CBE2C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01070 808CBE30 00042403 */  sra     $a0, $a0, 16               
/* 01074 808CBE34 C6C4148C */  lwc1    $f4, 0x148C($s6)           ## 0000148C
/* 01078 808CBE38 4406F000 */  mfc1    $a2, $f30                  
/* 0107C 808CBE3C 3C073C03 */  lui     $a3, 0x3C03                ## $a3 = 3C030000
/* 01080 808CBE40 46040182 */  mul.s   $f6, $f0, $f4              
/* 01084 808CBE44 34E7126E */  ori     $a3, $a3, 0x126E           ## $a3 = 3C03126E
/* 01088 808CBE48 26C4148C */  addiu   $a0, $s6, 0x148C           ## $a0 = 0000148C
/* 0108C 808CBE4C 3C054000 */  lui     $a1, 0x4000                ## $a1 = 40000000
/* 01090 808CBE50 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01094 808CBE54 E6C61488 */  swc1    $f6, 0x1488($s6)           ## 00001488
/* 01098 808CBE58 3C128013 */  lui     $s2, 0x8013                ## $s2 = 80130000
/* 0109C 808CBE5C 3C088013 */  lui     $t0, 0x8013                ## $t0 = 80130000
/* 010A0 808CBE60 264733E0 */  addiu   $a3, $s2, 0x33E0           ## $a3 = 801333E0
/* 010A4 808CBE64 250833E8 */  addiu   $t0, $t0, 0x33E8           ## $t0 = 801333E8
/* 010A8 808CBE68 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 010AC 808CBE6C AFA70010 */  sw      $a3, 0x0010($sp)           
/* 010B0 808CBE70 2404304E */  addiu   $a0, $zero, 0x304E         ## $a0 = 0000304E
/* 010B4 808CBE74 26C500E4 */  addiu   $a1, $s6, 0x00E4           ## $a1 = 000000E4
/* 010B8 808CBE78 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 010BC 808CBE7C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 010C0 808CBE80 86C90248 */  lh      $t1, 0x0248($s6)           ## 00000248
/* 010C4 808CBE84 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 010C8 808CBE88 240A0005 */  addiu   $t2, $zero, 0x0005         ## $t2 = 00000005
/* 010CC 808CBE8C 1520002B */  bne     $t1, $zero, .L808CBF3C     
/* 010D0 808CBE90 00000000 */  nop
/* 010D4 808CBE94 4481B000 */  mtc1    $at, $f22                  ## $f22 = 200.00
/* 010D8 808CBE98 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 010DC 808CBE9C 4481C000 */  mtc1    $at, $f24                  ## $f24 = 50.00
/* 010E0 808CBEA0 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 010E4 808CBEA4 A6CA1402 */  sh      $t2, 0x1402($s6)           ## 00001402
/* 010E8 808CBEA8 4481E000 */  mtc1    $at, $f28                  ## $f28 = 100.00
/* 010EC 808CBEAC C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 010F0 808CBEB0 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 010F4 808CBEB4 44812000 */  mtc1    $at, $f4                   ## $f4 = 300.00
/* 010F8 808CBEB8 461C5200 */  add.s   $f8, $f10, $f28            
/* 010FC 808CBEBC 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 01100 808CBEC0 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 01104 808CBEC4 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 01108 808CBEC8 46044180 */  add.s   $f6, $f8, $f4              
/* 0110C 808CBECC 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 01110 808CBED0 E6C61450 */  swc1    $f6, 0x1450($s6)           ## 00001450
/* 01114 808CBED4 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 01118 808CBED8 461C5200 */  add.s   $f8, $f10, $f28            
/* 0111C 808CBEDC E6C81454 */  swc1    $f8, 0x1454($s6)           ## 00001454
/* 01120 808CBEE0 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 01124 808CBEE4 46162180 */  add.s   $f6, $f4, $f22             
/* 01128 808CBEE8 44812000 */  mtc1    $at, $f4                   ## $f4 = 150.00
/* 0112C 808CBEEC E6C61458 */  swc1    $f6, 0x1458($s6)           ## 00001458
/* 01130 808CBEF0 C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 01134 808CBEF4 E6CA1468 */  swc1    $f10, 0x1468($s6)          ## 00001468
/* 01138 808CBEF8 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 0113C 808CBEFC 46044181 */  sub.s   $f6, $f8, $f4              
/* 01140 808CBF00 E6C6146C */  swc1    $f6, 0x146C($s6)           ## 0000146C
/* 01144 808CBF04 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 01148 808CBF08 46185201 */  sub.s   $f8, $f10, $f24            
/* 0114C 808CBF0C 0C232C40 */  jal     func_808CB100              
/* 01150 808CBF10 E6C81470 */  swc1    $f8, 0x1470($s6)           ## 00001470
/* 01154 808CBF14 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01158 808CBF18 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 0115C 808CBF1C 240B00AA */  addiu   $t3, $zero, 0x00AA         ## $t3 = 000000AA
/* 01160 808CBF20 A6CB0248 */  sh      $t3, 0x0248($s6)           ## 00000248
/* 01164 808CBF24 E6C41480 */  swc1    $f4, 0x1480($s6)           ## 00001480
/* 01168 808CBF28 E6C61484 */  swc1    $f6, 0x1484($s6)           ## 00001484
/* 0116C 808CBF2C 8FA401D4 */  lw      $a0, 0x01D4($sp)           
/* 01170 808CBF30 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 01174 808CBF34 0C00B7D5 */  jal     func_8002DF54              
/* 01178 808CBF38 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
.L808CBF3C:
/* 0117C 808CBF3C 10000194 */  beq     $zero, $zero, .L808CC590   
/* 01180 808CBF40 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
glabel L808CBF44
/* 01184 808CBF44 86C40224 */  lh      $a0, 0x0224($s6)           ## 00000224
/* 01188 808CBF48 3C01808D */  lui     $at, %hi(D_808D1E88)       ## $at = 808D0000
/* 0118C 808CBF4C C4341E88 */  lwc1    $f20, %lo(D_808D1E88)($at) 
/* 01190 808CBF50 000423C0 */  sll     $a0, $a0, 15               
/* 01194 808CBF54 00042400 */  sll     $a0, $a0, 16               
/* 01198 808CBF58 00042403 */  sra     $a0, $a0, 16               
/* 0119C 808CBF5C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 011A0 808CBF60 E6D41484 */  swc1    $f20, 0x1484($s6)          ## 00001484
/* 011A4 808CBF64 C6CA148C */  lwc1    $f10, 0x148C($s6)          ## 0000148C
/* 011A8 808CBF68 4406F000 */  mfc1    $a2, $f30                  
/* 011AC 808CBF6C 3C073C03 */  lui     $a3, 0x3C03                ## $a3 = 3C030000
/* 011B0 808CBF70 460A0202 */  mul.s   $f8, $f0, $f10             
/* 011B4 808CBF74 34E7126E */  ori     $a3, $a3, 0x126E           ## $a3 = 3C03126E
/* 011B8 808CBF78 26C4148C */  addiu   $a0, $s6, 0x148C           ## $a0 = 0000148C
/* 011BC 808CBF7C 3C054000 */  lui     $a1, 0x4000                ## $a1 = 40000000
/* 011C0 808CBF80 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 011C4 808CBF84 E6C81488 */  swc1    $f8, 0x1488($s6)           ## 00001488
/* 011C8 808CBF88 3C128013 */  lui     $s2, 0x8013                ## $s2 = 80130000
/* 011CC 808CBF8C 3C0C8013 */  lui     $t4, 0x8013                ## $t4 = 80130000
/* 011D0 808CBF90 264733E0 */  addiu   $a3, $s2, 0x33E0           ## $a3 = 801333E0
/* 011D4 808CBF94 258C33E8 */  addiu   $t4, $t4, 0x33E8           ## $t4 = 801333E8
/* 011D8 808CBF98 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 011DC 808CBF9C AFA70010 */  sw      $a3, 0x0010($sp)           
/* 011E0 808CBFA0 2404304E */  addiu   $a0, $zero, 0x304E         ## $a0 = 0000304E
/* 011E4 808CBFA4 26C500E4 */  addiu   $a1, $s6, 0x00E4           ## $a1 = 000000E4
/* 011E8 808CBFA8 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 011EC 808CBFAC 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 011F0 808CBFB0 86C30248 */  lh      $v1, 0x0248($s6)           ## 00000248
/* 011F4 808CBFB4 24010064 */  addiu   $at, $zero, 0x0064         ## $at = 00000064
/* 011F8 808CBFB8 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 011FC 808CBFBC 14610003 */  bne     $v1, $at, .L808CBFCC       
/* 01200 808CBFC0 240E0006 */  addiu   $t6, $zero, 0x0006         ## $t6 = 00000006
/* 01204 808CBFC4 A2CD02D6 */  sb      $t5, 0x02D6($s6)           ## 000002D6
/* 01208 808CBFC8 86C30248 */  lh      $v1, 0x0248($s6)           ## 00000248
.L808CBFCC:
/* 0120C 808CBFCC 1460005A */  bne     $v1, $zero, .L808CC138     
/* 01210 808CBFD0 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 01214 808CBFD4 4481B000 */  mtc1    $at, $f22                  ## $f22 = 200.00
/* 01218 808CBFD8 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 0121C 808CBFDC 4481C000 */  mtc1    $at, $f24                  ## $f24 = 50.00
/* 01220 808CBFE0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01224 808CBFE4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01228 808CBFE8 4481D000 */  mtc1    $at, $f26                  ## $f26 = 0.50
/* 0122C 808CBFEC 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01230 808CBFF0 A6CE1402 */  sh      $t6, 0x1402($s6)           ## 00001402
/* 01234 808CBFF4 E6C41480 */  swc1    $f4, 0x1480($s6)           ## 00001480
/* 01238 808CBFF8 4481E000 */  mtc1    $at, $f28                  ## $f28 = 100.00
/* 0123C 808CBFFC C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 01240 808CC000 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 01244 808CC004 44814000 */  mtc1    $at, $f8                   ## $f8 = 300.00
/* 01248 808CC008 461C3280 */  add.s   $f10, $f6, $f28            
/* 0124C 808CC00C 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 01250 808CC010 44813000 */  mtc1    $at, $f6                   ## $f6 = 600.00
/* 01254 808CC014 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 01258 808CC018 46085100 */  add.s   $f4, $f10, $f8             
/* 0125C 808CC01C 4405D000 */  mfc1    $a1, $f26                  
/* 01260 808CC020 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 01264 808CC024 46062281 */  sub.s   $f10, $f4, $f6             
/* 01268 808CC028 E6CA1450 */  swc1    $f10, 0x1450($s6)          ## 00001450
/* 0126C 808CC02C C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 01270 808CC030 461C4100 */  add.s   $f4, $f8, $f28             
/* 01274 808CC034 46182181 */  sub.s   $f6, $f4, $f24             
/* 01278 808CC038 44812000 */  mtc1    $at, $f4                   ## $f4 = 150.00
/* 0127C 808CC03C 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 01280 808CC040 E6C61454 */  swc1    $f6, 0x1454($s6)           ## 00001454
/* 01284 808CC044 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 01288 808CC048 46165200 */  add.s   $f8, $f10, $f22            
/* 0128C 808CC04C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 01290 808CC050 46044181 */  sub.s   $f6, $f8, $f4              
/* 01294 808CC054 44814000 */  mtc1    $at, $f8                   ## $f8 = 120.00
/* 01298 808CC058 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0129C 808CC05C E6CA1468 */  swc1    $f10, 0x1468($s6)          ## 00001468
/* 012A0 808CC060 E6C61458 */  swc1    $f6, 0x1458($s6)           ## 00001458
/* 012A4 808CC064 E6C8146C */  swc1    $f8, 0x146C($s6)           ## 0000146C
/* 012A8 808CC068 0C232C40 */  jal     func_808CB100              
/* 012AC 808CC06C E6C41470 */  swc1    $f4, 0x1470($s6)           ## 00001470
/* 012B0 808CC070 3C01808D */  lui     $at, %hi(D_808D1E8C)       ## $at = 808D0000
/* 012B4 808CC074 C4261E8C */  lwc1    $f6, %lo(D_808D1E8C)($at)  
/* 012B8 808CC078 3C01808D */  lui     $at, %hi(D_808D1E90)       ## $at = 808D0000
/* 012BC 808CC07C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 012C0 808CC080 E6C6147C */  swc1    $f6, 0x147C($s6)           ## 0000147C
/* 012C4 808CC084 C42A1E90 */  lwc1    $f10, %lo(D_808D1E90)($at) 
/* 012C8 808CC088 3C01808D */  lui     $at, %hi(D_808D1E94)       ## $at = 808D0000
/* 012CC 808CC08C 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 00000001
/* 012D0 808CC090 E6CA1478 */  swc1    $f10, 0x1478($s6)          ## 00001478
/* 012D4 808CC094 C4281E94 */  lwc1    $f8, %lo(D_808D1E94)($at)  
/* 012D8 808CC098 3C01808D */  lui     $at, %hi(D_808D1E98)       ## $at = 808D0000
/* 012DC 808CC09C 0018C880 */  sll     $t9, $t8,  2               
/* 012E0 808CC0A0 E6C81474 */  swc1    $f8, 0x1474($s6)           ## 00001474
/* 012E4 808CC0A4 C4241E98 */  lwc1    $f4, %lo(D_808D1E98)($at)  
/* 012E8 808CC0A8 3C01808D */  lui     $at, %hi(D_808D1E9C)       ## $at = 808D0000
/* 012EC 808CC0AC 0338C823 */  subu    $t9, $t9, $t8              
/* 012F0 808CC0B0 E6C41464 */  swc1    $f4, 0x1464($s6)           ## 00001464
/* 012F4 808CC0B4 C4261E9C */  lwc1    $f6, %lo(D_808D1E9C)($at)  
/* 012F8 808CC0B8 3C01808D */  lui     $at, %hi(D_808D1EA0)       ## $at = 808D0000
/* 012FC 808CC0BC 3C08808D */  lui     $t0, %hi(D_808D192C)       ## $t0 = 808D0000
/* 01300 808CC0C0 E6C61460 */  swc1    $f6, 0x1460($s6)           ## 00001460
/* 01304 808CC0C4 C42A1EA0 */  lwc1    $f10, %lo(D_808D1EA0)($at) 
/* 01308 808CC0C8 2508192C */  addiu   $t0, $t0, %lo(D_808D192C)  ## $t0 = 808D192C
/* 0130C 808CC0CC 0019C880 */  sll     $t9, $t9,  2               
/* 01310 808CC0D0 E6D41484 */  swc1    $f20, 0x1484($s6)          ## 00001484
/* 01314 808CC0D4 A6C00248 */  sh      $zero, 0x0248($s6)         ## 00000248
/* 01318 808CC0D8 A2CF02D4 */  sb      $t7, 0x02D4($s6)           ## 000002D4
/* 0131C 808CC0DC 03281021 */  addu    $v0, $t9, $t0              
/* 01320 808CC0E0 E6CA145C */  swc1    $f10, 0x145C($s6)          ## 0000145C
/* 01324 808CC0E4 C4480000 */  lwc1    $f8, 0x0000($v0)           ## 00000000
/* 01328 808CC0E8 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 0132C 808CC0EC 24090032 */  addiu   $t1, $zero, 0x0032         ## $t1 = 00000032
/* 01330 808CC0F0 E6C802BC */  swc1    $f8, 0x02BC($s6)           ## 000002BC
/* 01334 808CC0F4 C4440004 */  lwc1    $f4, 0x0004($v0)           ## 00000004
/* 01338 808CC0F8 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 0133C 808CC0FC 240A0003 */  addiu   $t2, $zero, 0x0003         ## $t2 = 00000003
/* 01340 808CC100 46162181 */  sub.s   $f6, $f4, $f22             
/* 01344 808CC104 240B4000 */  addiu   $t3, $zero, 0x4000         ## $t3 = 00004000
/* 01348 808CC108 240C00FA */  addiu   $t4, $zero, 0x00FA         ## $t4 = 000000FA
/* 0134C 808CC10C 240D01D6 */  addiu   $t5, $zero, 0x01D6         ## $t5 = 000001D6
/* 01350 808CC110 E6C602C0 */  swc1    $f6, 0x02C0($s6)           ## 000002C0
/* 01354 808CC114 C44A0008 */  lwc1    $f10, 0x0008($v0)          ## 00000008
/* 01358 808CC118 A6C90248 */  sh      $t1, 0x0248($s6)           ## 00000248
/* 0135C 808CC11C A6CA0222 */  sh      $t2, 0x0222($s6)           ## 00000222
/* 01360 808CC120 A6CB0030 */  sh      $t3, 0x0030($s6)           ## 00000030
/* 01364 808CC124 A6C00224 */  sh      $zero, 0x0224($s6)         ## 00000224
/* 01368 808CC128 A6CC024E */  sh      $t4, 0x024E($s6)           ## 0000024E
/* 0136C 808CC12C A6CD024C */  sh      $t5, 0x024C($s6)           ## 0000024C
/* 01370 808CC130 E6C802A4 */  swc1    $f8, 0x02A4($s6)           ## 000002A4
/* 01374 808CC134 E6CA02C4 */  swc1    $f10, 0x02C4($s6)          ## 000002C4
.L808CC138:
/* 01378 808CC138 10000115 */  beq     $zero, $zero, .L808CC590   
/* 0137C 808CC13C 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
glabel L808CC140
/* 01380 808CC140 C6C41444 */  lwc1    $f4, 0x1444($s6)           ## 00001444
/* 01384 808CC144 3C04808D */  lui     $a0, %hi(D_808D1C3C)       ## $a0 = 808D0000
/* 01388 808CC148 24841C3C */  addiu   $a0, $a0, %lo(D_808D1C3C)  ## $a0 = 808D1C3C
/* 0138C 808CC14C 460021A1 */  cvt.d.s $f6, $f4                   
/* 01390 808CC150 44073000 */  mfc1    $a3, $f6                   
/* 01394 808CC154 44063800 */  mfc1    $a2, $f7                   
/* 01398 808CC158 0C00084C */  jal     osSyncPrintf
              
/* 0139C 808CC15C 00000000 */  nop
/* 013A0 808CC160 C6CA1448 */  lwc1    $f10, 0x1448($s6)          ## 00001448
/* 013A4 808CC164 3C04808D */  lui     $a0, %hi(D_808D1C4C)       ## $a0 = 808D0000
/* 013A8 808CC168 24841C4C */  addiu   $a0, $a0, %lo(D_808D1C4C)  ## $a0 = 808D1C4C
/* 013AC 808CC16C 46005221 */  cvt.d.s $f8, $f10                  
/* 013B0 808CC170 44074000 */  mfc1    $a3, $f8                   
/* 013B4 808CC174 44064800 */  mfc1    $a2, $f9                   
/* 013B8 808CC178 0C00084C */  jal     osSyncPrintf
              
/* 013BC 808CC17C 00000000 */  nop
/* 013C0 808CC180 C6C4144C */  lwc1    $f4, 0x144C($s6)           ## 0000144C
/* 013C4 808CC184 3C04808D */  lui     $a0, %hi(D_808D1C5C)       ## $a0 = 808D0000
/* 013C8 808CC188 24841C5C */  addiu   $a0, $a0, %lo(D_808D1C5C)  ## $a0 = 808D1C5C
/* 013CC 808CC18C 460021A1 */  cvt.d.s $f6, $f4                   
/* 013D0 808CC190 44073000 */  mfc1    $a3, $f6                   
/* 013D4 808CC194 44063800 */  mfc1    $a2, $f7                   
/* 013D8 808CC198 0C00084C */  jal     osSyncPrintf
              
/* 013DC 808CC19C 00000000 */  nop
/* 013E0 808CC1A0 86C2024E */  lh      $v0, 0x024E($s6)           ## 0000024E
/* 013E4 808CC1A4 3C148016 */  lui     $s4, 0x8016                ## $s4 = 80160000
/* 013E8 808CC1A8 2694E660 */  addiu   $s4, $s4, 0xE660           ## $s4 = 8015E660
/* 013EC 808CC1AC 284100BF */  slti    $at, $v0, 0x00BF           
/* 013F0 808CC1B0 1420000F */  bne     $at, $zero, .L808CC1F0     
/* 013F4 808CC1B4 00000000 */  nop
/* 013F8 808CC1B8 968E0EE2 */  lhu     $t6, 0x0EE2($s4)           ## 8015F542
/* 013FC 808CC1BC 3C128013 */  lui     $s2, 0x8013                ## $s2 = 80130000
/* 01400 808CC1C0 264733E0 */  addiu   $a3, $s2, 0x33E0           ## $a3 = 801333E0
/* 01404 808CC1C4 31CF0008 */  andi    $t7, $t6, 0x0008           ## $t7 = 00000000
/* 01408 808CC1C8 15E00009 */  bne     $t7, $zero, .L808CC1F0     
/* 0140C 808CC1CC 2404304E */  addiu   $a0, $zero, 0x304E         ## $a0 = 0000304E
/* 01410 808CC1D0 3C188013 */  lui     $t8, 0x8013                ## $t8 = 80130000
/* 01414 808CC1D4 271833E8 */  addiu   $t8, $t8, 0x33E8           ## $t8 = 801333E8
/* 01418 808CC1D8 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 0141C 808CC1DC 26C500E4 */  addiu   $a1, $s6, 0x00E4           ## $a1 = 000000E4
/* 01420 808CC1E0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01424 808CC1E4 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 01428 808CC1E8 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0142C 808CC1EC 86C2024E */  lh      $v0, 0x024E($s6)           ## 0000024E
.L808CC1F0:
/* 01430 808CC1F0 3C148016 */  lui     $s4, 0x8016                ## $s4 = 80160000
/* 01434 808CC1F4 240100BE */  addiu   $at, $zero, 0x00BE         ## $at = 000000BE
/* 01438 808CC1F8 14410010 */  bne     $v0, $at, .L808CC23C       
/* 0143C 808CC1FC 2694E660 */  addiu   $s4, $s4, 0xE660           ## $s4 = 8015E660
/* 01440 808CC200 3C01808D */  lui     $at, %hi(D_808D1EA4)       ## $at = 808D0000
/* 01444 808CC204 C42A1EA4 */  lwc1    $f10, %lo(D_808D1EA4)($at) 
/* 01448 808CC208 3C01808D */  lui     $at, %hi(D_808D1EA8)       ## $at = 808D0000
/* 0144C 808CC20C 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 01450 808CC210 E6CA147C */  swc1    $f10, 0x147C($s6)          ## 0000147C
/* 01454 808CC214 C4281EA8 */  lwc1    $f8, %lo(D_808D1EA8)($at)  
/* 01458 808CC218 3C01808D */  lui     $at, %hi(D_808D1EAC)       ## $at = 808D0000
/* 0145C 808CC21C 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 01460 808CC220 E6C81478 */  swc1    $f8, 0x1478($s6)           ## 00001478
/* 01464 808CC224 C4241EAC */  lwc1    $f4, %lo(D_808D1EAC)($at)  
/* 01468 808CC228 A2D902D6 */  sb      $t9, 0x02D6($s6)           ## 000002D6
/* 0146C 808CC22C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01470 808CC230 E6C41474 */  swc1    $f4, 0x1474($s6)           ## 00001474
/* 01474 808CC234 0C00B7D5 */  jal     func_8002DF54              
/* 01478 808CC238 8FA401D4 */  lw      $a0, 0x01D4($sp)           
.L808CC23C:
/* 0147C 808CC23C 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 01480 808CC240 44813000 */  mtc1    $at, $f6                   ## $f6 = 120.00
/* 01484 808CC244 C6CA0028 */  lwc1    $f10, 0x0028($s6)          ## 00000028
/* 01488 808CC248 3C01433E */  lui     $at, 0x433E                ## $at = 433E0000
/* 0148C 808CC24C 26C4148C */  addiu   $a0, $s6, 0x148C           ## $a0 = 0000148C
/* 01490 808CC250 460A303C */  c.lt.s  $f6, $f10                  
/* 01494 808CC254 3C054000 */  lui     $a1, 0x4000                ## $a1 = 40000000
/* 01498 808CC258 3C073C03 */  lui     $a3, 0x3C03                ## $a3 = 3C030000
/* 0149C 808CC25C 45020011 */  bc1fl   .L808CC2A4                 
/* 014A0 808CC260 4406F000 */  mfc1    $a2, $f30                  
/* 014A4 808CC264 8EC90024 */  lw      $t1, 0x0024($s6)           ## 00000024
/* 014A8 808CC268 8EC80028 */  lw      $t0, 0x0028($s6)           ## 00000028
/* 014AC 808CC26C 44814000 */  mtc1    $at, $f8                   ## $f8 = 190.00
/* 014B0 808CC270 AEC91468 */  sw      $t1, 0x1468($s6)           ## 00001468
/* 014B4 808CC274 8EC9002C */  lw      $t1, 0x002C($s6)           ## 0000002C
/* 014B8 808CC278 3C01808D */  lui     $at, %hi(D_808D1EB0)       ## $at = 808D0000
/* 014BC 808CC27C AEC8146C */  sw      $t0, 0x146C($s6)           ## 0000146C
/* 014C0 808CC280 E6C81444 */  swc1    $f8, 0x1444($s6)           ## 00001444
/* 014C4 808CC284 AEC91470 */  sw      $t1, 0x1470($s6)           ## 00001470
/* 014C8 808CC288 C4241EB0 */  lwc1    $f4, %lo(D_808D1EB0)($at)  
/* 014CC 808CC28C 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 014D0 808CC290 44813000 */  mtc1    $at, $f6                   ## $f6 = 25.00
/* 014D4 808CC294 E6C41448 */  swc1    $f4, 0x1448($s6)           ## 00001448
/* 014D8 808CC298 1000000C */  beq     $zero, $zero, .L808CC2CC   
/* 014DC 808CC29C E6C6144C */  swc1    $f6, 0x144C($s6)           ## 0000144C
/* 014E0 808CC2A0 4406F000 */  mfc1    $a2, $f30                  
.L808CC2A4:
/* 014E4 808CC2A4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 014E8 808CC2A8 34E7126E */  ori     $a3, $a3, 0x126E           ## $a3 = 3C03126E
/* 014EC 808CC2AC 86C40224 */  lh      $a0, 0x0224($s6)           ## 00000224
/* 014F0 808CC2B0 000423C0 */  sll     $a0, $a0, 15               
/* 014F4 808CC2B4 00042400 */  sll     $a0, $a0, 16               
/* 014F8 808CC2B8 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 014FC 808CC2BC 00042403 */  sra     $a0, $a0, 16               
/* 01500 808CC2C0 C6CA148C */  lwc1    $f10, 0x148C($s6)          ## 0000148C
/* 01504 808CC2C4 460A0202 */  mul.s   $f8, $f0, $f10             
/* 01508 808CC2C8 E6C81488 */  swc1    $f8, 0x1488($s6)           ## 00001488
.L808CC2CC:
/* 0150C 808CC2CC 86C2024E */  lh      $v0, 0x024E($s6)           ## 0000024E
/* 01510 808CC2D0 240100A0 */  addiu   $at, $zero, 0x00A0         ## $at = 000000A0
/* 01514 808CC2D4 54410005 */  bnel    $v0, $at, .L808CC2EC       
/* 01518 808CC2D8 24010082 */  addiu   $at, $zero, 0x0082         ## $at = 00000082
/* 0151C 808CC2DC 0C03E803 */  jal     Audio_SetBGM
              
/* 01520 808CC2E0 2404006B */  addiu   $a0, $zero, 0x006B         ## $a0 = 0000006B
/* 01524 808CC2E4 86C2024E */  lh      $v0, 0x024E($s6)           ## 0000024E
/* 01528 808CC2E8 24010082 */  addiu   $at, $zero, 0x0082         ## $at = 00000082
.L808CC2EC:
/* 0152C 808CC2EC 5441001E */  bnel    $v0, $at, .L808CC368       
/* 01530 808CC2F0 28410065 */  slti    $at, $v0, 0x0065           
/* 01534 808CC2F4 968A0EE2 */  lhu     $t2, 0x0EE2($s4)           ## 8015F542
/* 01538 808CC2F8 8FA401D4 */  lw      $a0, 0x01D4($sp)           
/* 0153C 808CC2FC 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 01540 808CC300 314B0008 */  andi    $t3, $t2, 0x0008           ## $t3 = 00000000
/* 01544 808CC304 15600017 */  bne     $t3, $zero, .L808CC364     
/* 01548 808CC308 24851D4C */  addiu   $a1, $a0, 0x1D4C           ## $a1 = 00001D4C
/* 0154C 808CC30C 3C020601 */  lui     $v0, 0x0601                ## $v0 = 06010000
/* 01550 808CC310 2442D700 */  addiu   $v0, $v0, 0xD700           ## $v0 = 0600D700
/* 01554 808CC314 00026900 */  sll     $t5, $v0,  4               
/* 01558 808CC318 000D7702 */  srl     $t6, $t5, 28               
/* 0155C 808CC31C 000E7880 */  sll     $t7, $t6,  2               
/* 01560 808CC320 030FC021 */  addu    $t8, $t8, $t7              
/* 01564 808CC324 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 01568 808CC328 8F186FA8 */  lw      $t8, 0x6FA8($t8)           ## 80166FA8
/* 0156C 808CC32C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 01570 808CC330 0041C824 */  and     $t9, $v0, $at              
/* 01574 808CC334 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01578 808CC338 240800B4 */  addiu   $t0, $zero, 0x00B4         ## $t0 = 000000B4
/* 0157C 808CC33C 24090080 */  addiu   $t1, $zero, 0x0080         ## $t1 = 00000080
/* 01580 808CC340 240A0028 */  addiu   $t2, $zero, 0x0028         ## $t2 = 00000028
/* 01584 808CC344 03193021 */  addu    $a2, $t8, $t9              
/* 01588 808CC348 00C13021 */  addu    $a2, $a2, $at              
/* 0158C 808CC34C AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 01590 808CC350 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 01594 808CC354 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 01598 808CC358 0C00B380 */  jal     TitleCard_InitBossName
              
/* 0159C 808CC35C 240700A0 */  addiu   $a3, $zero, 0x00A0         ## $a3 = 000000A0
/* 015A0 808CC360 86C2024E */  lh      $v0, 0x024E($s6)           ## 0000024E
.L808CC364:
/* 015A4 808CC364 28410065 */  slti    $at, $v0, 0x0065           
.L808CC368:
/* 015A8 808CC368 10200013 */  beq     $at, $zero, .L808CC3B8     
/* 015AC 808CC36C 3C04808D */  lui     $a0, %hi(D_808D1C6C)       ## $a0 = 808D0000
/* 015B0 808CC370 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 015B4 808CC374 4481C000 */  mtc1    $at, $f24                  ## $f24 = 50.00
/* 015B8 808CC378 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 015BC 808CC37C 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 015C0 808CC380 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.00
/* 015C4 808CC384 44815000 */  mtc1    $at, $f10                  ## $f10 = 2.00
/* 015C8 808CC388 E6C41440 */  swc1    $f4, 0x1440($s6)           ## 00001440
/* 015CC 808CC38C E6C6143C */  swc1    $f6, 0x143C($s6)           ## 0000143C
/* 015D0 808CC390 E6CA1438 */  swc1    $f10, 0x1438($s6)          ## 00001438
/* 015D4 808CC394 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 015D8 808CC398 46184100 */  add.s   $f4, $f8, $f24             
/* 015DC 808CC39C E6C41450 */  swc1    $f4, 0x1450($s6)           ## 00001450
/* 015E0 808CC3A0 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 015E4 808CC3A4 46183280 */  add.s   $f10, $f6, $f24            
/* 015E8 808CC3A8 E6CA1454 */  swc1    $f10, 0x1454($s6)          ## 00001454
/* 015EC 808CC3AC C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 015F0 808CC3B0 46184100 */  add.s   $f4, $f8, $f24             
/* 015F4 808CC3B4 E6C41458 */  swc1    $f4, 0x1458($s6)           ## 00001458
.L808CC3B8:
/* 015F8 808CC3B8 86CB0222 */  lh      $t3, 0x0222($s6)           ## 00000222
/* 015FC 808CC3BC 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 01600 808CC3C0 4481C000 */  mtc1    $at, $f24                  ## $f24 = 50.00
/* 01604 808CC3C4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01608 808CC3C8 1561003D */  bne     $t3, $at, .L808CC4C0       
/* 0160C 808CC3CC 24841C6C */  addiu   $a0, $a0, %lo(D_808D1C6C)  ## $a0 = 808D1C6C
/* 01610 808CC3D0 86C21400 */  lh      $v0, 0x1400($s6)           ## 00001400
/* 01614 808CC3D4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01618 808CC3D8 240C0064 */  addiu   $t4, $zero, 0x0064         ## $t4 = 00000064
/* 0161C 808CC3DC 10400009 */  beq     $v0, $zero, .L808CC404     
/* 01620 808CC3E0 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 01624 808CC3E4 10410009 */  beq     $v0, $at, .L808CC40C       
/* 01628 808CC3E8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0162C 808CC3EC 1041000F */  beq     $v0, $at, .L808CC42C       
/* 01630 808CC3F0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01634 808CC3F4 10410032 */  beq     $v0, $at, .L808CC4C0       
/* 01638 808CC3F8 00000000 */  nop
/* 0163C 808CC3FC 10000030 */  beq     $zero, $zero, .L808CC4C0   
/* 01640 808CC400 00000000 */  nop
.L808CC404:
/* 01644 808CC404 A6CC0252 */  sh      $t4, 0x0252($s6)           ## 00000252
/* 01648 808CC408 A6CD1400 */  sh      $t5, 0x1400($s6)           ## 00001400
.L808CC40C:
/* 0164C 808CC40C 86CE0252 */  lh      $t6, 0x0252($s6)           ## 00000252
/* 01650 808CC410 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 01654 808CC414 2418004B */  addiu   $t8, $zero, 0x004B         ## $t8 = 0000004B
/* 01658 808CC418 15C00029 */  bne     $t6, $zero, .L808CC4C0     
/* 0165C 808CC41C 00000000 */  nop
/* 01660 808CC420 A6CF1400 */  sh      $t7, 0x1400($s6)           ## 00001400
/* 01664 808CC424 10000026 */  beq     $zero, $zero, .L808CC4C0   
/* 01668 808CC428 A6D80252 */  sh      $t8, 0x0252($s6)           ## 00000252
.L808CC42C:
/* 0166C 808CC42C 8EC81408 */  lw      $t0, 0x1408($s6)           ## 00001408
/* 01670 808CC430 86C30252 */  lh      $v1, 0x0252($s6)           ## 00000252
/* 01674 808CC434 8ED9140C */  lw      $t9, 0x140C($s6)           ## 0000140C
/* 01678 808CC438 AEC802BC */  sw      $t0, 0x02BC($s6)           ## 000002BC
/* 0167C 808CC43C 8EC81410 */  lw      $t0, 0x1410($s6)           ## 00001410
/* 01680 808CC440 AED902C0 */  sw      $t9, 0x02C0($s6)           ## 000002C0
/* 01684 808CC444 14600018 */  bne     $v1, $zero, .L808CC4A8     
/* 01688 808CC448 AEC802C4 */  sw      $t0, 0x02C4($s6)           ## 000002C4
/* 0168C 808CC44C 24090007 */  addiu   $t1, $zero, 0x0007         ## $t1 = 00000007
/* 01690 808CC450 312A00FF */  andi    $t2, $t1, 0x00FF           ## $t2 = 00000007
/* 01694 808CC454 000A5880 */  sll     $t3, $t2,  2               
/* 01698 808CC458 016A5823 */  subu    $t3, $t3, $t2              
/* 0169C 808CC45C 3C0C808D */  lui     $t4, %hi(D_808D192C)       ## $t4 = 808D0000
/* 016A0 808CC460 258C192C */  addiu   $t4, $t4, %lo(D_808D192C)  ## $t4 = 808D192C
/* 016A4 808CC464 000B5880 */  sll     $t3, $t3,  2               
/* 016A8 808CC468 A6C00248 */  sh      $zero, 0x0248($s6)         ## 00000248
/* 016AC 808CC46C A2C902D4 */  sb      $t1, 0x02D4($s6)           ## 000002D4
/* 016B0 808CC470 016C1021 */  addu    $v0, $t3, $t4              
/* 016B4 808CC474 C4460000 */  lwc1    $f6, 0x0000($v0)           ## 00000000
/* 016B8 808CC478 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 016BC 808CC47C 4481B000 */  mtc1    $at, $f22                  ## $f22 = 200.00
/* 016C0 808CC480 E6C602BC */  swc1    $f6, 0x02BC($s6)           ## 000002BC
/* 016C4 808CC484 C44A0004 */  lwc1    $f10, 0x0004($v0)          ## 00000004
/* 016C8 808CC488 240D0003 */  addiu   $t5, $zero, 0x0003         ## $t5 = 00000003
/* 016CC 808CC48C 86C30252 */  lh      $v1, 0x0252($s6)           ## 00000252
/* 016D0 808CC490 46165200 */  add.s   $f8, $f10, $f22            
/* 016D4 808CC494 46184100 */  add.s   $f4, $f8, $f24             
/* 016D8 808CC498 E6C402C0 */  swc1    $f4, 0x02C0($s6)           ## 000002C0
/* 016DC 808CC49C C4460008 */  lwc1    $f6, 0x0008($v0)           ## 00000008
/* 016E0 808CC4A0 A6CD1400 */  sh      $t5, 0x1400($s6)           ## 00001400
/* 016E4 808CC4A4 E6C602C4 */  swc1    $f6, 0x02C4($s6)           ## 000002C4
.L808CC4A8:
/* 016E8 808CC4A8 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 016EC 808CC4AC 14610004 */  bne     $v1, $at, .L808CC4C0       
/* 016F0 808CC4B0 240E0028 */  addiu   $t6, $zero, 0x0028         ## $t6 = 00000028
/* 016F4 808CC4B4 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 016F8 808CC4B8 A6CE022E */  sh      $t6, 0x022E($s6)           ## 0000022E
/* 016FC 808CC4BC A6CF021C */  sh      $t7, 0x021C($s6)           ## 0000021C
.L808CC4C0:
/* 01700 808CC4C0 0C00084C */  jal     osSyncPrintf
              
/* 01704 808CC4C4 86C5024C */  lh      $a1, 0x024C($s6)           ## 0000024C
/* 01708 808CC4C8 3C04808D */  lui     $a0, %hi(D_808D1C84)       ## $a0 = 808D0000
/* 0170C 808CC4CC 24841C84 */  addiu   $a0, $a0, %lo(D_808D1C84)  ## $a0 = 808D1C84
/* 01710 808CC4D0 0C00084C */  jal     osSyncPrintf
              
/* 01714 808CC4D4 86C50252 */  lh      $a1, 0x0252($s6)           ## 00000252
/* 01718 808CC4D8 86D8024C */  lh      $t8, 0x024C($s6)           ## 0000024C
/* 0171C 808CC4DC 26C21408 */  addiu   $v0, $s6, 0x1408           ## $v0 = 00001408
/* 01720 808CC4E0 5700002B */  bnel    $t8, $zero, .L808CC590     
/* 01724 808CC4E4 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 01728 808CC4E8 8C480000 */  lw      $t0, 0x0000($v0)           ## 00001408
/* 0172C 808CC4EC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01730 808CC4F0 AE28005C */  sw      $t0, 0x005C($s1)           ## 0000005C
/* 01734 808CC4F4 8C590004 */  lw      $t9, 0x0004($v0)           ## 0000140C
/* 01738 808CC4F8 AE390060 */  sw      $t9, 0x0060($s1)           ## 00000060
/* 0173C 808CC4FC 8C480008 */  lw      $t0, 0x0008($v0)           ## 00001410
/* 01740 808CC500 AE280064 */  sw      $t0, 0x0064($s1)           ## 00000064
/* 01744 808CC504 8C4A0000 */  lw      $t2, 0x0000($v0)           ## 00001408
/* 01748 808CC508 AE2A0074 */  sw      $t2, 0x0074($s1)           ## 00000074
/* 0174C 808CC50C 8C490004 */  lw      $t1, 0x0004($v0)           ## 0000140C
/* 01750 808CC510 AE290078 */  sw      $t1, 0x0078($s1)           ## 00000078
/* 01754 808CC514 8C4A0008 */  lw      $t2, 0x0008($v0)           ## 00001410
/* 01758 808CC518 AE2A007C */  sw      $t2, 0x007C($s1)           ## 0000007C
/* 0175C 808CC51C 8ECC1414 */  lw      $t4, 0x1414($s6)           ## 00001414
/* 01760 808CC520 AE2C0050 */  sw      $t4, 0x0050($s1)           ## 00000050
/* 01764 808CC524 8ECB1418 */  lw      $t3, 0x1418($s6)           ## 00001418
/* 01768 808CC528 AE2B0054 */  sw      $t3, 0x0054($s1)           ## 00000054
/* 0176C 808CC52C 8ECC141C */  lw      $t4, 0x141C($s6)           ## 0000141C
/* 01770 808CC530 AE2C0058 */  sw      $t4, 0x0058($s1)           ## 00000058
/* 01774 808CC534 86C51404 */  lh      $a1, 0x1404($s6)           ## 00001404
/* 01778 808CC538 0C03022B */  jal     func_800C08AC              
/* 0177C 808CC53C 8FA401D4 */  lw      $a0, 0x01D4($sp)           
/* 01780 808CC540 A6C01404 */  sh      $zero, 0x1404($s6)         ## 00001404
/* 01784 808CC544 86C21404 */  lh      $v0, 0x1404($s6)           ## 00001404
/* 01788 808CC548 A6C21400 */  sh      $v0, 0x1400($s6)           ## 00001400
/* 0178C 808CC54C A6C21402 */  sh      $v0, 0x1402($s6)           ## 00001402
/* 01790 808CC550 8FA401D4 */  lw      $a0, 0x01D4($sp)           
/* 01794 808CC554 0C01914D */  jal     func_80064534              
/* 01798 808CC558 24851D64 */  addiu   $a1, $a0, 0x1D64           ## $a1 = 00001D64
/* 0179C 808CC55C 8FA401D4 */  lw      $a0, 0x01D4($sp)           
/* 017A0 808CC560 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 017A4 808CC564 0C00B7D5 */  jal     func_8002DF54              
/* 017A8 808CC568 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 017AC 808CC56C 3C0E808D */  lui     $t6, %hi(func_808CDE30)    ## $t6 = 808D0000
/* 017B0 808CC570 25CEDE30 */  addiu   $t6, $t6, %lo(func_808CDE30) ## $t6 = 808CDE30
/* 017B4 808CC574 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 017B8 808CC578 AECE0218 */  sw      $t6, 0x0218($s6)           ## 00000218
/* 017BC 808CC57C A2CF02D8 */  sb      $t7, 0x02D8($s6)           ## 000002D8
/* 017C0 808CC580 96980EE2 */  lhu     $t8, 0x0EE2($s4)           ## 8015F542
/* 017C4 808CC584 37190008 */  ori     $t9, $t8, 0x0008           ## $t9 = 00000008
/* 017C8 808CC588 A6990EE2 */  sh      $t9, 0x0EE2($s4)           ## 8015F542
.L808CC58C:
/* 017CC 808CC58C 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
.L808CC590:
/* 017D0 808CC590 4481B000 */  mtc1    $at, $f22                  ## $f22 = 200.00
/* 017D4 808CC594 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 017D8 808CC598 4481C000 */  mtc1    $at, $f24                  ## $f24 = 50.00
/* 017DC 808CC59C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 017E0 808CC5A0 4481D000 */  mtc1    $at, $f26                  ## $f26 = 0.50
/* 017E4 808CC5A4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 017E8 808CC5A8 4481E000 */  mtc1    $at, $f28                  ## $f28 = 100.00
/* 017EC 808CC5AC 3C128013 */  lui     $s2, 0x8013                ## $s2 = 80130000
/* 017F0 808CC5B0 265233E0 */  addiu   $s2, $s2, 0x33E0           ## $s2 = 801333E0
/* 017F4 808CC5B4 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 017F8 808CC5B8 0C232C66 */  jal     func_808CB198              
/* 017FC 808CC5BC 8FA501D4 */  lw      $a1, 0x01D4($sp)           
/* 01800 808CC5C0 1000000F */  beq     $zero, $zero, .L808CC600   
/* 01804 808CC5C4 86C20222 */  lh      $v0, 0x0222($s6)           ## 00000222
/* 01808 808CC5C8 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
.L808CC5CC:
/* 0180C 808CC5CC 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 01810 808CC5D0 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01814 808CC5D4 4481E000 */  mtc1    $at, $f28                  ## $f28 = 100.00
/* 01818 808CC5D8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0181C 808CC5DC 4481D000 */  mtc1    $at, $f26                  ## $f26 = 0.50
/* 01820 808CC5E0 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 01824 808CC5E4 4481C000 */  mtc1    $at, $f24                  ## $f24 = 50.00
/* 01828 808CC5E8 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 0182C 808CC5EC 3C128013 */  lui     $s2, 0x8013                ## $s2 = 80130000
/* 01830 808CC5F0 4481B000 */  mtc1    $at, $f22                  ## $f22 = 200.00
/* 01834 808CC5F4 265233E0 */  addiu   $s2, $s2, 0x33E0           ## $s2 = 801333E0
/* 01838 808CC5F8 E6CA02A4 */  swc1    $f10, 0x02A4($s6)          ## 000002A4
/* 0183C 808CC5FC 86C20222 */  lh      $v0, 0x0222($s6)           ## 00000222
.L808CC600:
/* 01840 808CC600 28410034 */  slti    $at, $v0, 0x0034           
/* 01844 808CC604 14200010 */  bne     $at, $zero, .L808CC648     
/* 01848 808CC608 28410065 */  slti    $at, $v0, 0x0065           
/* 0184C 808CC60C 14200009 */  bne     $at, $zero, .L808CC634     
/* 01850 808CC610 2448FF38 */  addiu   $t0, $v0, 0xFF38           ## $t0 = FFFFFF38
/* 01854 808CC614 2D010006 */  sltiu   $at, $t0, 0x0006           
/* 01858 808CC618 102003DF */  beq     $at, $zero, .L808CD598     
/* 0185C 808CC61C 00084080 */  sll     $t0, $t0,  2               
/* 01860 808CC620 3C01808D */  lui     $at, %hi(jtbl_808D1EB8)       ## $at = 808D0000
/* 01864 808CC624 00280821 */  addu    $at, $at, $t0              
/* 01868 808CC628 8C281EB8 */  lw      $t0, %lo(jtbl_808D1EB8)($at)  
/* 0186C 808CC62C 01000008 */  jr      $t0                        
/* 01870 808CC630 00000000 */  nop
.L808CC634:
/* 01874 808CC634 24010064 */  addiu   $at, $zero, 0x0064         ## $at = 00000064
/* 01878 808CC638 5041016B */  beql    $v0, $at, .L808CCBE8       
/* 0187C 808CC63C 86CE0224 */  lh      $t6, 0x0224($s6)           ## 00000224
/* 01880 808CC640 100003D6 */  beq     $zero, $zero, .L808CD59C   
/* 01884 808CC644 86D90244 */  lh      $t9, 0x0244($s6)           ## 00000244
.L808CC648:
/* 01888 808CC648 28410033 */  slti    $at, $v0, 0x0033           
/* 0188C 808CC64C 14200006 */  bne     $at, $zero, .L808CC668     
/* 01890 808CC650 24490001 */  addiu   $t1, $v0, 0x0001           ## $t1 = 00000001
/* 01894 808CC654 24010033 */  addiu   $at, $zero, 0x0033         ## $at = 00000033
/* 01898 808CC658 1041010D */  beq     $v0, $at, .L808CCA90       
/* 0189C 808CC65C 3C09808D */  lui     $t1, %hi(D_808D1998)       ## $t1 = 808D0000
/* 018A0 808CC660 100003CE */  beq     $zero, $zero, .L808CD59C   
/* 018A4 808CC664 86D90244 */  lh      $t9, 0x0244($s6)           ## 00000244
.L808CC668:
/* 018A8 808CC668 28410004 */  slti    $at, $v0, 0x0004           
/* 018AC 808CC66C 14200005 */  bne     $at, $zero, .L808CC684     
/* 018B0 808CC670 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 018B4 808CC674 504100ED */  beql    $v0, $at, .L808CCA2C       
/* 018B8 808CC678 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
/* 018BC 808CC67C 100003C7 */  beq     $zero, $zero, .L808CD59C   
/* 018C0 808CC680 86D90244 */  lh      $t9, 0x0244($s6)           ## 00000244
.L808CC684:
/* 018C4 808CC684 2D210005 */  sltiu   $at, $t1, 0x0005           
/* 018C8 808CC688 102003C3 */  beq     $at, $zero, .L808CD598     
/* 018CC 808CC68C 00094880 */  sll     $t1, $t1,  2               
/* 018D0 808CC690 3C01808D */  lui     $at, %hi(jtbl_808D1ED0)       ## $at = 808D0000
/* 018D4 808CC694 00290821 */  addu    $at, $at, $t1              
/* 018D8 808CC698 8C291ED0 */  lw      $t1, %lo(jtbl_808D1ED0)($at)  
/* 018DC 808CC69C 01200008 */  jr      $t1                        
/* 018E0 808CC6A0 00000000 */  nop
glabel L808CC6A4
/* 018E4 808CC6A4 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 018E8 808CC6A8 A3AA01CF */  sb      $t2, 0x01CF($sp)           
/* 018EC 808CC6AC 86CB0248 */  lh      $t3, 0x0248($s6)           ## 00000248
/* 018F0 808CC6B0 556003BA */  bnel    $t3, $zero, .L808CD59C     
/* 018F4 808CC6B4 86D90244 */  lh      $t9, 0x0244($s6)           ## 00000244
/* 018F8 808CC6B8 92CC00AF */  lbu     $t4, 0x00AF($s6)           ## 000000AF
/* 018FC 808CC6BC 240D00C8 */  addiu   $t5, $zero, 0x00C8         ## $t5 = 000000C8
/* 01900 808CC6C0 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 01904 808CC6C4 55800006 */  bnel    $t4, $zero, .L808CC6E0     
/* 01908 808CC6C8 86CF1402 */  lh      $t7, 0x1402($s6)           ## 00001402
/* 0190C 808CC6CC A6CD0222 */  sh      $t5, 0x0222($s6)           ## 00000222
/* 01910 808CC6D0 A6C00248 */  sh      $zero, 0x0248($s6)         ## 00000248
/* 01914 808CC6D4 100003B0 */  beq     $zero, $zero, .L808CD598   
/* 01918 808CC6D8 A6CE024A */  sh      $t6, 0x024A($s6)           ## 0000024A
/* 0191C 808CC6DC 86CF1402 */  lh      $t7, 0x1402($s6)           ## 00001402
.L808CC6E0:
/* 01920 808CC6E0 24180006 */  addiu   $t8, $zero, 0x0006         ## $t8 = 00000006
/* 01924 808CC6E4 3C01808D */  lui     $at, %hi(D_808D1EE4)       ## $at = 808D0000
/* 01928 808CC6E8 11E00003 */  beq     $t7, $zero, .L808CC6F8     
/* 0192C 808CC6EC 00000000 */  nop
/* 01930 808CC6F0 10000029 */  beq     $zero, $zero, .L808CC798   
/* 01934 808CC6F4 A2D802D4 */  sb      $t8, 0x02D4($s6)           ## 000002D4
.L808CC6F8:
/* 01938 808CC6F8 C4341EE4 */  lwc1    $f20, %lo(D_808D1EE4)($at) 
.L808CC6FC:
/* 0193C 808CC6FC 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 01940 808CC700 4600A306 */  mov.s   $f12, $f20                 
/* 01944 808CC704 4459F800 */  cfc1    $t9, $31
/* 01948 808CC708 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 0194C 808CC70C 44C2F800 */  ctc1    $v0, $31
/* 01950 808CC710 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 01954 808CC714 46000224 */  cvt.w.s $f8, $f0                   
/* 01958 808CC718 4442F800 */  cfc1    $v0, $31
/* 0195C 808CC71C 00000000 */  nop
/* 01960 808CC720 30420078 */  andi    $v0, $v0, 0x0078           ## $v0 = 00000000
/* 01964 808CC724 50400013 */  beql    $v0, $zero, .L808CC774     
/* 01968 808CC728 44024000 */  mfc1    $v0, $f8                   
/* 0196C 808CC72C 44814000 */  mtc1    $at, $f8                   ## $f8 = 2147483648.00
/* 01970 808CC730 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 01974 808CC734 46080201 */  sub.s   $f8, $f0, $f8              
/* 01978 808CC738 44C2F800 */  ctc1    $v0, $31
/* 0197C 808CC73C 00000000 */  nop
/* 01980 808CC740 46004224 */  cvt.w.s $f8, $f8                   
/* 01984 808CC744 4442F800 */  cfc1    $v0, $31
/* 01988 808CC748 00000000 */  nop
/* 0198C 808CC74C 30420078 */  andi    $v0, $v0, 0x0078           ## $v0 = 00000000
/* 01990 808CC750 14400005 */  bne     $v0, $zero, .L808CC768     
/* 01994 808CC754 00000000 */  nop
/* 01998 808CC758 44024000 */  mfc1    $v0, $f8                   
/* 0199C 808CC75C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 019A0 808CC760 10000007 */  beq     $zero, $zero, .L808CC780   
/* 019A4 808CC764 00411025 */  or      $v0, $v0, $at              ## $v0 = 80000000
.L808CC768:
/* 019A8 808CC768 10000005 */  beq     $zero, $zero, .L808CC780   
/* 019AC 808CC76C 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
/* 019B0 808CC770 44024000 */  mfc1    $v0, $f8                   
.L808CC774:
/* 019B4 808CC774 00000000 */  nop
/* 019B8 808CC778 0440FFFB */  bltz    $v0, .L808CC768            
/* 019BC 808CC77C 00000000 */  nop
.L808CC780:
/* 019C0 808CC780 92C802D4 */  lbu     $t0, 0x02D4($s6)           ## 000002D4
/* 019C4 808CC784 44D9F800 */  ctc1    $t9, $31
/* 019C8 808CC788 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 000000FF
/* 019CC 808CC78C 1102FFDB */  beq     $t0, $v0, .L808CC6FC       
/* 019D0 808CC790 00000000 */  nop
/* 019D4 808CC794 A2C202D4 */  sb      $v0, 0x02D4($s6)           ## 000002D4
.L808CC798:
/* 019D8 808CC798 92C902D4 */  lbu     $t1, 0x02D4($s6)           ## 000002D4
/* 019DC 808CC79C 3C0B808D */  lui     $t3, %hi(D_808D192C)       ## $t3 = 808D0000
/* 019E0 808CC7A0 256B192C */  addiu   $t3, $t3, %lo(D_808D192C)  ## $t3 = 808D192C
/* 019E4 808CC7A4 00095080 */  sll     $t2, $t1,  2               
/* 019E8 808CC7A8 01495023 */  subu    $t2, $t2, $t1              
/* 019EC 808CC7AC 000A5080 */  sll     $t2, $t2,  2               
/* 019F0 808CC7B0 014B1021 */  addu    $v0, $t2, $t3              
/* 019F4 808CC7B4 C4440000 */  lwc1    $f4, 0x0000($v0)           ## 000000FF
/* 019F8 808CC7B8 86CC1402 */  lh      $t4, 0x1402($s6)           ## 00001402
/* 019FC 808CC7BC 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 01A00 808CC7C0 E6C402BC */  swc1    $f4, 0x02BC($s6)           ## 000002BC
/* 01A04 808CC7C4 C4460004 */  lwc1    $f6, 0x0004($v0)           ## 00000103
/* 01A08 808CC7C8 240D2742 */  addiu   $t5, $zero, 0x2742         ## $t5 = 00002742
/* 01A0C 808CC7CC 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 01A10 808CC7D0 46163280 */  add.s   $f10, $f6, $f22            
/* 01A14 808CC7D4 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01A18 808CC7D8 46185200 */  add.s   $f8, $f10, $f24            
/* 01A1C 808CC7DC 44815000 */  mtc1    $at, $f10                  ## $f10 = 1000.00
/* 01A20 808CC7E0 E6C802C0 */  swc1    $f8, 0x02C0($s6)           ## 000002C0
/* 01A24 808CC7E4 C4440008 */  lwc1    $f4, 0x0008($v0)           ## 00000107
/* 01A28 808CC7E8 E6C602A8 */  swc1    $f6, 0x02A8($s6)           ## 000002A8
/* 01A2C 808CC7EC E6CA02AC */  swc1    $f10, 0x02AC($s6)          ## 000002AC
/* 01A30 808CC7F0 11800003 */  beq     $t4, $zero, .L808CC800     
/* 01A34 808CC7F4 E6C402C4 */  swc1    $f4, 0x02C4($s6)           ## 000002C4
/* 01A38 808CC7F8 10000002 */  beq     $zero, $zero, .L808CC804   
/* 01A3C 808CC7FC A6CD0248 */  sh      $t5, 0x0248($s6)           ## 00000248
.L808CC800:
/* 01A40 808CC800 A6CE0248 */  sh      $t6, 0x0248($s6)           ## 00000248
.L808CC804:
/* 01A44 808CC804 86D80232 */  lh      $t8, 0x0232($s6)           ## 00000232
/* 01A48 808CC808 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01A4C 808CC80C E6DC02B0 */  swc1    $f28, 0x02B0($s6)          ## 000002B0
/* 01A50 808CC810 13000361 */  beq     $t8, $zero, .L808CD598     
/* 01A54 808CC814 A6CF0222 */  sh      $t7, 0x0222($s6)           ## 00000222
/* 01A58 808CC818 86D90246 */  lh      $t9, 0x0246($s6)           ## 00000246
/* 01A5C 808CC81C A6C00232 */  sh      $zero, 0x0232($s6)         ## 00000232
/* 01A60 808CC820 240B0064 */  addiu   $t3, $zero, 0x0064         ## $t3 = 00000064
/* 01A64 808CC824 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 01A68 808CC828 A6C80246 */  sh      $t0, 0x0246($s6)           ## 00000246
/* 01A6C 808CC82C 86C90246 */  lh      $t1, 0x0246($s6)           ## 00000246
/* 01A70 808CC830 240C012C */  addiu   $t4, $zero, 0x012C         ## $t4 = 0000012C
/* 01A74 808CC834 3C014461 */  lui     $at, 0x4461                ## $at = 44610000
/* 01A78 808CC838 312A0001 */  andi    $t2, $t1, 0x0001           ## $t2 = 00000000
/* 01A7C 808CC83C 1140000C */  beq     $t2, $zero, .L808CC870     
/* 01A80 808CC840 240E0032 */  addiu   $t6, $zero, 0x0032         ## $t6 = 00000032
/* 01A84 808CC844 44814000 */  mtc1    $at, $f8                   ## $f8 = 900.00
/* 01A88 808CC848 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 01A8C 808CC84C A6C00236 */  sh      $zero, 0x0236($s6)         ## 00000236
/* 01A90 808CC850 44812000 */  mtc1    $at, $f4                   ## $f4 = 300.00
/* 01A94 808CC854 86CD0236 */  lh      $t5, 0x0236($s6)           ## 00000236
/* 01A98 808CC858 A6CB0222 */  sh      $t3, 0x0222($s6)           ## 00000222
/* 01A9C 808CC85C A6CC0248 */  sh      $t4, 0x0248($s6)           ## 00000248
/* 01AA0 808CC860 E6C802AC */  swc1    $f8, 0x02AC($s6)           ## 000002AC
/* 01AA4 808CC864 E6C40278 */  swc1    $f4, 0x0278($s6)           ## 00000278
/* 01AA8 808CC868 1000034B */  beq     $zero, $zero, .L808CD598   
/* 01AAC 808CC86C A6CD0234 */  sh      $t5, 0x0234($s6)           ## 00000234
.L808CC870:
/* 01AB0 808CC870 10000349 */  beq     $zero, $zero, .L808CD598   
/* 01AB4 808CC874 A6CE0222 */  sh      $t6, 0x0222($s6)           ## 00000222
glabel L808CC878
/* 01AB8 808CC878 86CF0248 */  lh      $t7, 0x0248($s6)           ## 00000248
/* 01ABC 808CC87C C7A601C0 */  lwc1    $f6, 0x01C0($sp)           
/* 01AC0 808CC880 55E00346 */  bnel    $t7, $zero, .L808CD59C     
/* 01AC4 808CC884 86D90244 */  lh      $t9, 0x0244($s6)           ## 00000244
/* 01AC8 808CC888 46063282 */  mul.s   $f10, $f6, $f6             
/* 01ACC 808CC88C C7A80098 */  lwc1    $f8, 0x0098($sp)           
/* 01AD0 808CC890 C7A60094 */  lwc1    $f6, 0x0094($sp)           
/* 01AD4 808CC894 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 01AD8 808CC898 460A4100 */  add.s   $f4, $f8, $f10             
/* 01ADC 808CC89C 46062000 */  add.s   $f0, $f4, $f6              
/* 01AE0 808CC8A0 46000004 */  sqrt.s  $f0, $f0                   
/* 01AE4 808CC8A4 461C003C */  c.lt.s  $f0, $f28                  
/* 01AE8 808CC8A8 00000000 */  nop
/* 01AEC 808CC8AC 4502033B */  bc1fl   .L808CD59C                 
/* 01AF0 808CC8B0 86D90244 */  lh      $t9, 0x0244($s6)           ## 00000244
/* 01AF4 808CC8B4 92D902D4 */  lbu     $t9, 0x02D4($s6)           ## 000002D4
/* 01AF8 808CC8B8 3C01808D */  lui     $at, %hi(D_808D1930)       ## $at = 808D0000
/* 01AFC 808CC8BC A6D80222 */  sh      $t8, 0x0222($s6)           ## 00000222
/* 01B00 808CC8C0 00194080 */  sll     $t0, $t9,  2               
/* 01B04 808CC8C4 01194023 */  subu    $t0, $t0, $t9              
/* 01B08 808CC8C8 00084080 */  sll     $t0, $t0,  2               
/* 01B0C 808CC8CC 00280821 */  addu    $at, $at, $t0              
/* 01B10 808CC8D0 C4281930 */  lwc1    $f8, %lo(D_808D1930)($at)  
/* 01B14 808CC8D4 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 01B18 808CC8D8 44815000 */  mtc1    $at, $f10                  ## $f10 = 70.00
/* 01B1C 808CC8DC 3C01808D */  lui     $at, %hi(D_808D1EE8)       ## $at = 808D0000
/* 01B20 808CC8E0 24090096 */  addiu   $t1, $zero, 0x0096         ## $t1 = 00000096
/* 01B24 808CC8E4 460A4101 */  sub.s   $f4, $f8, $f10             
/* 01B28 808CC8E8 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01B2C 808CC8EC C6CA02BC */  lwc1    $f10, 0x02BC($s6)          ## 000002BC
/* 01B30 808CC8F0 240A0028 */  addiu   $t2, $zero, 0x0028         ## $t2 = 00000028
/* 01B34 808CC8F4 E6C402C0 */  swc1    $f4, 0x02C0($s6)           ## 000002C0
/* 01B38 808CC8F8 C4261EE8 */  lwc1    $f6, %lo(D_808D1EE8)($at)  
/* 01B3C 808CC8FC C6C402C4 */  lwc1    $f4, 0x02C4($s6)           ## 000002C4
/* 01B40 808CC900 A6C90248 */  sh      $t1, 0x0248($s6)           ## 00000248
/* 01B44 808CC904 A6CA022E */  sh      $t2, 0x022E($s6)           ## 0000022E
/* 01B48 808CC908 E6C802B0 */  swc1    $f8, 0x02B0($s6)           ## 000002B0
/* 01B4C 808CC90C E6CA02C8 */  swc1    $f10, 0x02C8($s6)          ## 000002C8
/* 01B50 808CC910 E6C602AC */  swc1    $f6, 0x02AC($s6)           ## 000002AC
/* 01B54 808CC914 10000320 */  beq     $zero, $zero, .L808CD598   
/* 01B58 808CC918 E6C402D0 */  swc1    $f4, 0x02D0($s6)           ## 000002D0
glabel L808CC91C
/* 01B5C 808CC91C 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 01B60 808CC920 A3AB01CF */  sb      $t3, 0x01CF($sp)           
/* 01B64 808CC924 86CC0248 */  lh      $t4, 0x0248($s6)           ## 00000248
/* 01B68 808CC928 3C0D808D */  lui     $t5, %hi(func_808CDE30)    ## $t5 = 808D0000
/* 01B6C 808CC92C 25ADDE30 */  addiu   $t5, $t5, %lo(func_808CDE30) ## $t5 = 808CDE30
/* 01B70 808CC930 15800319 */  bne     $t4, $zero, .L808CD598     
/* 01B74 808CC934 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 01B78 808CC938 AECD0218 */  sw      $t5, 0x0218($s6)           ## 00000218
/* 01B7C 808CC93C 10000316 */  beq     $zero, $zero, .L808CD598   
/* 01B80 808CC940 A2CE02D8 */  sb      $t6, 0x02D8($s6)           ## 000002D8
glabel L808CC944
/* 01B84 808CC944 86CF0248 */  lh      $t7, 0x0248($s6)           ## 00000248
/* 01B88 808CC948 C7A201C0 */  lwc1    $f2, 0x01C0($sp)           
/* 01B8C 808CC94C 55E00313 */  bnel    $t7, $zero, .L808CD59C     
/* 01B90 808CC950 86D90244 */  lh      $t9, 0x0244($s6)           ## 00000244
/* 01B94 808CC954 46021202 */  mul.s   $f8, $f2, $f2              
/* 01B98 808CC958 C7A60098 */  lwc1    $f6, 0x0098($sp)           
/* 01B9C 808CC95C C7A40094 */  lwc1    $f4, 0x0094($sp)           
/* 01BA0 808CC960 24084000 */  addiu   $t0, $zero, 0x4000         ## $t0 = 00004000
/* 01BA4 808CC964 3C01808D */  lui     $at, %hi(D_808D1930)       ## $at = 808D0000
/* 01BA8 808CC968 240B0050 */  addiu   $t3, $zero, 0x0050         ## $t3 = 00000050
/* 01BAC 808CC96C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01BB0 808CC970 46083280 */  add.s   $f10, $f6, $f8             
/* 01BB4 808CC974 24060050 */  addiu   $a2, $zero, 0x0050         ## $a2 = 00000050
/* 01BB8 808CC978 24075000 */  addiu   $a3, $zero, 0x5000         ## $a3 = 00005000
/* 01BBC 808CC97C 46045000 */  add.s   $f0, $f10, $f4             
/* 01BC0 808CC980 46000004 */  sqrt.s  $f0, $f0                   
/* 01BC4 808CC984 461C003C */  c.lt.s  $f0, $f28                  
/* 01BC8 808CC988 00000000 */  nop
/* 01BCC 808CC98C 45020303 */  bc1fl   .L808CD59C                 
/* 01BD0 808CC990 86D90244 */  lh      $t9, 0x0244($s6)           ## 00000244
/* 01BD4 808CC994 8ED902BC */  lw      $t9, 0x02BC($s6)           ## 000002BC
/* 01BD8 808CC998 92C902D4 */  lbu     $t1, 0x02D4($s6)           ## 000002D4
/* 01BDC 808CC99C 8ED802C0 */  lw      $t8, 0x02C0($s6)           ## 000002C0
/* 01BE0 808CC9A0 AED90024 */  sw      $t9, 0x0024($s6)           ## 00000024
/* 01BE4 808CC9A4 8ED902C4 */  lw      $t9, 0x02C4($s6)           ## 000002C4
/* 01BE8 808CC9A8 00095080 */  sll     $t2, $t1,  2               
/* 01BEC 808CC9AC 01495023 */  subu    $t2, $t2, $t1              
/* 01BF0 808CC9B0 000A5080 */  sll     $t2, $t2,  2               
/* 01BF4 808CC9B4 A6C00222 */  sh      $zero, 0x0222($s6)         ## 00000222
/* 01BF8 808CC9B8 A6C80030 */  sh      $t0, 0x0030($s6)           ## 00000030
/* 01BFC 808CC9BC 002A0821 */  addu    $at, $at, $t2              
/* 01C00 808CC9C0 AED80028 */  sw      $t8, 0x0028($s6)           ## 00000028
/* 01C04 808CC9C4 AED9002C */  sw      $t9, 0x002C($s6)           ## 0000002C
/* 01C08 808CC9C8 C4261930 */  lwc1    $f6, %lo(D_808D1930)($at)  
/* 01C0C 808CC9CC 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 01C10 808CC9D0 44815000 */  mtc1    $at, $f10                  ## $f10 = 1000.00
/* 01C14 808CC9D4 46163200 */  add.s   $f8, $f6, $f22             
/* 01C18 808CC9D8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01C1C 808CC9DC C6C602BC */  lwc1    $f6, 0x02BC($s6)           ## 000002BC
/* 01C20 808CC9E0 A6CB0250 */  sh      $t3, 0x0250($s6)           ## 00000250
/* 01C24 808CC9E4 E6C802C0 */  swc1    $f8, 0x02C0($s6)           ## 000002C0
/* 01C28 808CC9E8 C6C802C4 */  lwc1    $f8, 0x02C4($s6)           ## 000002C4
/* 01C2C 808CC9EC E6CA02AC */  swc1    $f10, 0x02AC($s6)          ## 000002AC
/* 01C30 808CC9F0 E6C402B0 */  swc1    $f4, 0x02B0($s6)           ## 000002B0
/* 01C34 808CC9F4 E6C602C8 */  swc1    $f6, 0x02C8($s6)           ## 000002C8
/* 01C38 808CC9F8 E6C802D0 */  swc1    $f8, 0x02D0($s6)           ## 000002D0
/* 01C3C 808CC9FC 0C00CF87 */  jal     func_80033E1C              
/* 01C40 808CCA00 8FA401D4 */  lw      $a0, 0x01D4($sp)           
/* 01C44 808CCA04 86CC1402 */  lh      $t4, 0x1402($s6)           ## 00001402
/* 01C48 808CCA08 240D0032 */  addiu   $t5, $zero, 0x0032         ## $t5 = 00000032
/* 01C4C 808CCA0C 240E0032 */  addiu   $t6, $zero, 0x0032         ## $t6 = 00000032
/* 01C50 808CCA10 11800003 */  beq     $t4, $zero, .L808CCA20     
/* 01C54 808CCA14 00000000 */  nop
/* 01C58 808CCA18 100002DF */  beq     $zero, $zero, .L808CD598   
/* 01C5C 808CCA1C A6CD0248 */  sh      $t5, 0x0248($s6)           ## 00000248
.L808CCA20:
/* 01C60 808CCA20 100002DD */  beq     $zero, $zero, .L808CD598   
/* 01C64 808CCA24 A6CE0248 */  sh      $t6, 0x0248($s6)           ## 00000248
/* 01C68 808CCA28 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
.L808CCA2C:
/* 01C6C 808CCA2C 44810000 */  mtc1    $at, $f0                   ## $f0 = 700.00
/* 01C70 808CCA30 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 01C74 808CCA34 44815000 */  mtc1    $at, $f10                  ## $f10 = 8.00
/* 01C78 808CCA38 3C01C396 */  lui     $at, 0xC396                ## $at = C3960000
/* 01C7C 808CCA3C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01C80 808CCA40 E6CA02A4 */  swc1    $f10, 0x02A4($s6)          ## 000002A4
/* 01C84 808CCA44 C6CA0028 */  lwc1    $f10, 0x0028($s6)          ## 00000028
/* 01C88 808CCA48 44813000 */  mtc1    $at, $f6                   ## $f6 = -300.00
/* 01C8C 808CCA4C E6D602B0 */  swc1    $f22, 0x02B0($s6)          ## 000002B0
/* 01C90 808CCA50 460A003C */  c.lt.s  $f0, $f10                  
/* 01C94 808CCA54 3C01808D */  lui     $at, %hi(D_808D1EEC)       ## $at = 808D0000
/* 01C98 808CCA58 E6C002C0 */  swc1    $f0, 0x02C0($s6)           ## 000002C0
/* 01C9C 808CCA5C E6C402BC */  swc1    $f4, 0x02BC($s6)           ## 000002BC
/* 01CA0 808CCA60 E6C602C4 */  swc1    $f6, 0x02C4($s6)           ## 000002C4
/* 01CA4 808CCA64 C4281EEC */  lwc1    $f8, %lo(D_808D1EEC)($at)  
/* 01CA8 808CCA68 240F0033 */  addiu   $t7, $zero, 0x0033         ## $t7 = 00000033
/* 01CAC 808CCA6C 450002CA */  bc1f    .L808CD598                 
/* 01CB0 808CCA70 E6C802AC */  swc1    $f8, 0x02AC($s6)           ## 000002AC
/* 01CB4 808CCA74 24180019 */  addiu   $t8, $zero, 0x0019         ## $t8 = 00000019
/* 01CB8 808CCA78 24190096 */  addiu   $t9, $zero, 0x0096         ## $t9 = 00000096
/* 01CBC 808CCA7C A6CF0222 */  sh      $t7, 0x0222($s6)           ## 00000222
/* 01CC0 808CCA80 A6D80248 */  sh      $t8, 0x0248($s6)           ## 00000248
/* 01CC4 808CCA84 A6D9024C */  sh      $t9, 0x024C($s6)           ## 0000024C
/* 01CC8 808CCA88 100002C3 */  beq     $zero, $zero, .L808CD598   
/* 01CCC 808CCA8C A6C0023C */  sh      $zero, 0x023C($s6)         ## 0000023C
.L808CCA90:
/* 01CD0 808CCA90 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 01CD4 808CCA94 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 01CD8 808CCA98 86C3023C */  lh      $v1, 0x023C($s6)           ## 0000023C
/* 01CDC 808CCA9C E6D602B0 */  swc1    $f22, 0x02B0($s6)          ## 000002B0
/* 01CE0 808CCAA0 3C01808D */  lui     $at, %hi(D_808D1EF0)       ## $at = 808D0000
/* 01CE4 808CCAA4 E6C402A4 */  swc1    $f4, 0x02A4($s6)           ## 000002A4
/* 01CE8 808CCAA8 C4261EF0 */  lwc1    $f6, %lo(D_808D1EF0)($at)  
/* 01CEC 808CCAAC 00034080 */  sll     $t0, $v1,  2               
/* 01CF0 808CCAB0 01034023 */  subu    $t0, $t0, $v1              
/* 01CF4 808CCAB4 00084080 */  sll     $t0, $t0,  2               
/* 01CF8 808CCAB8 25291998 */  addiu   $t1, $t1, %lo(D_808D1998)  ## $t1 = 00001998
/* 01CFC 808CCABC 01091021 */  addu    $v0, $t0, $t1              
/* 01D00 808CCAC0 E6C602AC */  swc1    $f6, 0x02AC($s6)           ## 000002AC
/* 01D04 808CCAC4 C4480000 */  lwc1    $f8, 0x0000($v0)           ## 00000000
/* 01D08 808CCAC8 3C014461 */  lui     $at, 0x4461                ## $at = 44610000
/* 01D0C 808CCACC 44812000 */  mtc1    $at, $f4                   ## $f4 = 900.00
/* 01D10 808CCAD0 E6C802BC */  swc1    $f8, 0x02BC($s6)           ## 000002BC
/* 01D14 808CCAD4 C44A0004 */  lwc1    $f10, 0x0004($v0)          ## 00000004
/* 01D18 808CCAD8 86CA0248 */  lh      $t2, 0x0248($s6)           ## 00000248
/* 01D1C 808CCADC 4406C000 */  mfc1    $a2, $f24                  
/* 01D20 808CCAE0 46045180 */  add.s   $f6, $f10, $f4             
/* 01D24 808CCAE4 4407C000 */  mfc1    $a3, $f24                  
/* 01D28 808CCAE8 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 01D2C 808CCAEC 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 01D30 808CCAF0 E6C602C0 */  swc1    $f6, 0x02C0($s6)           ## 000002C0
/* 01D34 808CCAF4 C4480008 */  lwc1    $f8, 0x0008($v0)           ## 00000008
/* 01D38 808CCAF8 246C0001 */  addiu   $t4, $v1, 0x0001           ## $t4 = 00000001
/* 01D3C 808CCAFC 15400009 */  bne     $t2, $zero, .L808CCB24     
/* 01D40 808CCB00 E6C802C4 */  swc1    $f8, 0x02C4($s6)           ## 000002C4
/* 01D44 808CCB04 A6CC023C */  sh      $t4, 0x023C($s6)           ## 0000023C
/* 01D48 808CCB08 86CD023C */  lh      $t5, 0x023C($s6)           ## 0000023C
/* 01D4C 808CCB0C 240B0019 */  addiu   $t3, $zero, 0x0019         ## $t3 = 00000019
/* 01D50 808CCB10 A6CB0248 */  sh      $t3, 0x0248($s6)           ## 00000248
/* 01D54 808CCB14 29A10006 */  slti    $at, $t5, 0x0006           
/* 01D58 808CCB18 54200003 */  bnel    $at, $zero, .L808CCB28     
/* 01D5C 808CCB1C 8FA401D4 */  lw      $a0, 0x01D4($sp)           
/* 01D60 808CCB20 A6C0023C */  sh      $zero, 0x023C($s6)         ## 0000023C
.L808CCB24:
/* 01D64 808CCB24 8FA401D4 */  lw      $a0, 0x01D4($sp)           
.L808CCB28:
/* 01D68 808CCB28 E7BC0010 */  swc1    $f28, 0x0010($sp)          
/* 01D6C 808CCB2C 0C00B92D */  jal     func_8002E4B4              
/* 01D70 808CCB30 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 01D74 808CCB34 86CF024A */  lh      $t7, 0x024A($s6)           ## 0000024A
/* 01D78 808CCB38 26C4027C */  addiu   $a0, $s6, 0x027C           ## $a0 = 0000027C
/* 01D7C 808CCB3C 3C06447A */  lui     $a2, 0x447A                ## $a2 = 447A0000
/* 01D80 808CCB40 55E0001E */  bnel    $t7, $zero, .L808CCBBC     
/* 01D84 808CCB44 C6C4027C */  lwc1    $f4, 0x027C($s6)           ## 0000027C
/* 01D88 808CCB48 3C04808D */  lui     $a0, %hi(D_808D1C9C)       ## $a0 = 808D0000
/* 01D8C 808CCB4C 0C00084C */  jal     osSyncPrintf
              
/* 01D90 808CCB50 24841C9C */  addiu   $a0, $a0, %lo(D_808D1C9C)  ## $a0 = 808D1C9C
/* 01D94 808CCB54 96D80088 */  lhu     $t8, 0x0088($s6)           ## 00000088
/* 01D98 808CCB58 3C01808D */  lui     $at, %hi(D_808D1EF4)       ## $at = 808D0000
/* 01D9C 808CCB5C 2408000A */  addiu   $t0, $zero, 0x000A         ## $t0 = 0000000A
/* 01DA0 808CCB60 33190010 */  andi    $t9, $t8, 0x0010           ## $t9 = 00000000
/* 01DA4 808CCB64 13200018 */  beq     $t9, $zero, .L808CCBC8     
/* 01DA8 808CCB68 24042802 */  addiu   $a0, $zero, 0x2802         ## $a0 = 00002802
/* 01DAC 808CCB6C C42A1EF4 */  lwc1    $f10, %lo(D_808D1EF4)($at) 
/* 01DB0 808CCB70 3C098013 */  lui     $t1, 0x8013                ## $t1 = 80130000
/* 01DB4 808CCB74 A6C8024A */  sh      $t0, 0x024A($s6)           ## 0000024A
/* 01DB8 808CCB78 252933E8 */  addiu   $t1, $t1, 0x33E8           ## $t1 = 801333E8
/* 01DBC 808CCB7C E6CA027C */  swc1    $f10, 0x027C($s6)          ## 0000027C
/* 01DC0 808CCB80 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 01DC4 808CCB84 AFB20010 */  sw      $s2, 0x0010($sp)           
/* 01DC8 808CCB88 26C500E4 */  addiu   $a1, $s6, 0x00E4           ## $a1 = 000000E4
/* 01DCC 808CCB8C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01DD0 808CCB90 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 01DD4 808CCB94 02403825 */  or      $a3, $s2, $zero            ## $a3 = 801333E0
/* 01DD8 808CCB98 8FA401D4 */  lw      $a0, 0x01D4($sp)           
/* 01DDC 808CCB9C 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01DE0 808CCBA0 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 01DE4 808CCBA4 0C00CF87 */  jal     func_80033E1C              
/* 01DE8 808CCBA8 24077530 */  addiu   $a3, $zero, 0x7530         ## $a3 = 00007530
/* 01DEC 808CCBAC 240A012C */  addiu   $t2, $zero, 0x012C         ## $t2 = 0000012C
/* 01DF0 808CCBB0 10000005 */  beq     $zero, $zero, .L808CCBC8   
/* 01DF4 808CCBB4 A6CA023A */  sh      $t2, 0x023A($s6)           ## 0000023A
/* 01DF8 808CCBB8 C6C4027C */  lwc1    $f4, 0x027C($s6)           ## 0000027C
.L808CCBBC:
/* 01DFC 808CCBBC 4405F000 */  mfc1    $a1, $f30                  
/* 01E00 808CCBC0 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 01E04 808CCBC4 E7A401B0 */  swc1    $f4, 0x01B0($sp)           
.L808CCBC8:
/* 01E08 808CCBC8 86CB024C */  lh      $t3, 0x024C($s6)           ## 0000024C
/* 01E0C 808CCBCC 55600273 */  bnel    $t3, $zero, .L808CD59C     
/* 01E10 808CCBD0 86D90244 */  lh      $t9, 0x0244($s6)           ## 00000244
/* 01E14 808CCBD4 A6C00222 */  sh      $zero, 0x0222($s6)         ## 00000222
/* 01E18 808CCBD8 A6C00248 */  sh      $zero, 0x0248($s6)         ## 00000248
/* 01E1C 808CCBDC 1000026E */  beq     $zero, $zero, .L808CD598   
/* 01E20 808CCBE0 A6C00232 */  sh      $zero, 0x0232($s6)         ## 00000232
/* 01E24 808CCBE4 86CE0224 */  lh      $t6, 0x0224($s6)           ## 00000224
.L808CCBE8:
/* 01E28 808CCBE8 8ECC0004 */  lw      $t4, 0x0004($s6)           ## 00000004
/* 01E2C 808CCBEC 3C010100 */  lui     $at, 0x0100                ## $at = 01000000
/* 01E30 808CCBF0 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 01E34 808CCBF4 01816825 */  or      $t5, $t4, $at              ## $t5 = 01000000
/* 01E38 808CCBF8 AECD0004 */  sw      $t5, 0x0004($s6)           ## 00000004
/* 01E3C 808CCBFC 46803220 */  cvt.s.w $f8, $f6                   
/* 01E40 808CCC00 3C01808D */  lui     $at, %hi(D_808D1EF8)       ## $at = 808D0000
/* 01E44 808CCC04 C42A1EF8 */  lwc1    $f10, %lo(D_808D1EF8)($at) 
/* 01E48 808CCC08 460A4102 */  mul.s   $f4, $f8, $f10             
/* 01E4C 808CCC0C 4600218D */  trunc.w.s $f6, $f4                   
/* 01E50 808CCC10 44043000 */  mfc1    $a0, $f6                   
/* 01E54 808CCC14 00000000 */  nop
/* 01E58 808CCC18 00042400 */  sll     $a0, $a0, 16               
/* 01E5C 808CCC1C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01E60 808CCC20 00042403 */  sra     $a0, $a0, 16               
/* 01E64 808CCC24 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01E68 808CCC28 44815000 */  mtc1    $at, $f10                  ## $f10 = 30.00
/* 01E6C 808CCC2C C6C80278 */  lwc1    $f8, 0x0278($s6)           ## 00000278
/* 01E70 808CCC30 C6660024 */  lwc1    $f6, 0x0024($s3)           ## 00000024
/* 01E74 808CCC34 460A0102 */  mul.s   $f4, $f0, $f10             
/* 01E78 808CCC38 86C30248 */  lh      $v1, 0x0248($s6)           ## 00000248
/* 01E7C 808CCC3C E6C602BC */  swc1    $f6, 0x02BC($s6)           ## 000002BC
/* 01E80 808CCC40 C66A0028 */  lwc1    $f10, 0x0028($s3)          ## 00000028
/* 01E84 808CCC44 3078003F */  andi    $t8, $v1, 0x003F           ## $t8 = 00000000
/* 01E88 808CCC48 46044080 */  add.s   $f2, $f8, $f4              
/* 01E8C 808CCC4C 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 01E90 808CCC50 286101C2 */  slti    $at, $v1, 0x01C2           
/* 01E94 808CCC54 46025200 */  add.s   $f8, $f10, $f2             
/* 01E98 808CCC58 46044180 */  add.s   $f6, $f8, $f4              
/* 01E9C 808CCC5C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01EA0 808CCC60 E6C602C0 */  swc1    $f6, 0x02C0($s6)           ## 000002C0
/* 01EA4 808CCC64 C66A002C */  lwc1    $f10, 0x002C($s3)          ## 0000002C
/* 01EA8 808CCC68 E6C802B0 */  swc1    $f8, 0x02B0($s6)           ## 000002B0
/* 01EAC 808CCC6C 17000009 */  bne     $t8, $zero, .L808CCC94     
/* 01EB0 808CCC70 E6CA02C4 */  swc1    $f10, 0x02C4($s6)          ## 000002C4
/* 01EB4 808CCC74 10200007 */  beq     $at, $zero, .L808CCC94     
/* 01EB8 808CCC78 24190028 */  addiu   $t9, $zero, 0x0028         ## $t9 = 00000028
/* 01EBC 808CCC7C A6D9022E */  sh      $t9, 0x022E($s6)           ## 0000022E
/* 01EC0 808CCC80 0C232D9F */  jal     func_808CB67C              
/* 01EC4 808CCC84 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 01EC8 808CCC88 10400002 */  beq     $v0, $zero, .L808CCC94     
/* 01ECC 808CCC8C 24080014 */  addiu   $t0, $zero, 0x0014         ## $t0 = 00000014
/* 01ED0 808CCC90 A6C8021C */  sh      $t0, 0x021C($s6)           ## 0000021C
.L808CCC94:
/* 01ED4 808CCC94 86C90230 */  lh      $t1, 0x0230($s6)           ## 00000230
/* 01ED8 808CCC98 5520000E */  bnel    $t1, $zero, .L808CCCD4     
/* 01EDC 808CCC9C A6C00222 */  sh      $zero, 0x0222($s6)         ## 00000222
/* 01EE0 808CCCA0 86CA0248 */  lh      $t2, 0x0248($s6)           ## 00000248
/* 01EE4 808CCCA4 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 01EE8 808CCCA8 5140000A */  beql    $t2, $zero, .L808CCCD4     
/* 01EEC 808CCCAC A6C00222 */  sh      $zero, 0x0222($s6)         ## 00000222
/* 01EF0 808CCCB0 C6640028 */  lwc1    $f4, 0x0028($s3)           ## 00000028
/* 01EF4 808CCCB4 44813000 */  mtc1    $at, $f6                   ## $f6 = 70.00
/* 01EF8 808CCCB8 26C40278 */  addiu   $a0, $s6, 0x0278           ## $a0 = 00000278
/* 01EFC 808CCCBC 3C054248 */  lui     $a1, 0x4248                ## $a1 = 42480000
/* 01F00 808CCCC0 4606203C */  c.lt.s  $f4, $f6                   
/* 01F04 808CCCC4 00000000 */  nop
/* 01F08 808CCCC8 45020006 */  bc1fl   .L808CCCE4                 
/* 01F0C 808CCCCC 4406F000 */  mfc1    $a2, $f30                  
/* 01F10 808CCCD0 A6C00222 */  sh      $zero, 0x0222($s6)         ## 00000222
.L808CCCD4:
/* 01F14 808CCCD4 A6C00248 */  sh      $zero, 0x0248($s6)         ## 00000248
/* 01F18 808CCCD8 1000022F */  beq     $zero, $zero, .L808CD598   
/* 01F1C 808CCCDC A6C00232 */  sh      $zero, 0x0232($s6)         ## 00000232
/* 01F20 808CCCE0 4406F000 */  mfc1    $a2, $f30                  
.L808CCCE4:
/* 01F24 808CCCE4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01F28 808CCCE8 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 01F2C 808CCCEC 1000022B */  beq     $zero, $zero, .L808CD59C   
/* 01F30 808CCCF0 86D90244 */  lh      $t9, 0x0244($s6)           ## 00000244
glabel L808CCCF4
/* 01F34 808CCCF4 C7A00090 */  lwc1    $f0, 0x0090($sp)           
/* 01F38 808CCCF8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01F3C 808CCCFC 4618003C */  c.lt.s  $f0, $f24                  
/* 01F40 808CCD00 00000000 */  nop
/* 01F44 808CCD04 45020003 */  bc1fl   .L808CCD14                 
/* 01F48 808CCD08 86CB0248 */  lh      $t3, 0x0248($s6)           ## 00000248
/* 01F4C 808CCD0C A6C00248 */  sh      $zero, 0x0248($s6)         ## 00000248
/* 01F50 808CCD10 86CB0248 */  lh      $t3, 0x0248($s6)           ## 00000248
.L808CCD14:
/* 01F54 808CCD14 55600021 */  bnel    $t3, $zero, .L808CCD9C     
/* 01F58 808CCD18 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 01F5C 808CCD1C 44816000 */  mtc1    $at, $f12                  ## $f12 = 1000.00
/* 01F60 808CCD20 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 01F64 808CCD24 00000000 */  nop
/* 01F68 808CCD28 4600028D */  trunc.w.s $f10, $f0                  
/* 01F6C 808CCD2C 3C0143C3 */  lui     $at, 0x43C3                ## $at = 43C30000
/* 01F70 808CCD30 4481A000 */  mtc1    $at, $f20                  ## $f20 = 390.00
/* 01F74 808CCD34 440F5000 */  mfc1    $t7, $f10                  
/* 01F78 808CCD38 00000000 */  nop
/* 01F7C 808CCD3C 25F8000A */  addiu   $t8, $t7, 0x000A           ## $t8 = 0000000A
/* 01F80 808CCD40 A6D80248 */  sh      $t8, 0x0248($s6)           ## 00000248
.L808CCD44:
/* 01F84 808CCD44 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 01F88 808CCD48 4600B306 */  mov.s   $f12, $f22                 
/* 01F8C 808CCD4C E6C002BC */  swc1    $f0, 0x02BC($s6)           ## 000002BC
/* 01F90 808CCD50 E6D402C0 */  swc1    $f20, 0x02C0($s6)          ## 000002C0
/* 01F94 808CCD54 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 01F98 808CCD58 4600B306 */  mov.s   $f12, $f22                 
/* 01F9C 808CCD5C C6C802BC */  lwc1    $f8, 0x02BC($s6)           ## 000002BC
/* 01FA0 808CCD60 C6C40024 */  lwc1    $f4, 0x0024($s6)           ## 00000024
/* 01FA4 808CCD64 C6C6002C */  lwc1    $f6, 0x002C($s6)           ## 0000002C
/* 01FA8 808CCD68 E6C002C4 */  swc1    $f0, 0x02C4($s6)           ## 000002C4
/* 01FAC 808CCD6C 46044081 */  sub.s   $f2, $f8, $f4              
/* 01FB0 808CCD70 46060301 */  sub.s   $f12, $f0, $f6             
/* 01FB4 808CCD74 46021282 */  mul.s   $f10, $f2, $f2             
/* 01FB8 808CCD78 00000000 */  nop
/* 01FBC 808CCD7C 460C6202 */  mul.s   $f8, $f12, $f12            
/* 01FC0 808CCD80 46085000 */  add.s   $f0, $f10, $f8             
/* 01FC4 808CCD84 46000004 */  sqrt.s  $f0, $f0                   
/* 01FC8 808CCD88 4600E03C */  c.lt.s  $f28, $f0                  
/* 01FCC 808CCD8C 00000000 */  nop
/* 01FD0 808CCD90 4500FFEC */  bc1f    .L808CCD44                 
/* 01FD4 808CCD94 00000000 */  nop
/* 01FD8 808CCD98 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
.L808CCD9C:
/* 01FDC 808CCD9C 44812000 */  mtc1    $at, $f4                   ## $f4 = 1000.00
/* 01FE0 808CCDA0 E6D602B0 */  swc1    $f22, 0x02B0($s6)          ## 000002B0
/* 01FE4 808CCDA4 3C01808D */  lui     $at, %hi(D_808D1EFC)       ## $at = 808D0000
/* 01FE8 808CCDA8 E6C402B4 */  swc1    $f4, 0x02B4($s6)           ## 000002B4
/* 01FEC 808CCDAC C4261EFC */  lwc1    $f6, %lo(D_808D1EFC)($at)  
/* 01FF0 808CCDB0 3C053E99 */  lui     $a1, 0x3E99                ## $a1 = 3E990000
/* 01FF4 808CCDB4 4406F000 */  mfc1    $a2, $f30                  
/* 01FF8 808CCDB8 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 01FFC 808CCDBC 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3D4CCCCD
/* 02000 808CCDC0 34A5999A */  ori     $a1, $a1, 0x999A           ## $a1 = 3E99999A
/* 02004 808CCDC4 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000280
/* 02008 808CCDC8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0200C 808CCDCC E6C602AC */  swc1    $f6, 0x02AC($s6)           ## 000002AC
/* 02010 808CCDD0 86D9024A */  lh      $t9, 0x024A($s6)           ## 0000024A
/* 02014 808CCDD4 240800C9 */  addiu   $t0, $zero, 0x00C9         ## $t0 = 000000C9
/* 02018 808CCDD8 2409001E */  addiu   $t1, $zero, 0x001E         ## $t1 = 0000001E
/* 0201C 808CCDDC 572001EF */  bnel    $t9, $zero, .L808CD59C     
/* 02020 808CCDE0 86D90244 */  lh      $t9, 0x0244($s6)           ## 00000244
/* 02024 808CCDE4 A6C80222 */  sh      $t0, 0x0222($s6)           ## 00000222
/* 02028 808CCDE8 100001EB */  beq     $zero, $zero, .L808CD598   
/* 0202C 808CCDEC A6C90248 */  sh      $t1, 0x0248($s6)           ## 00000248
glabel L808CCDF0
/* 02030 808CCDF0 3C0143C3 */  lui     $at, 0x43C3                ## $at = 43C30000
/* 02034 808CCDF4 4481A000 */  mtc1    $at, $f20                  ## $f20 = 390.00
/* 02038 808CCDF8 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 0203C 808CCDFC 44812000 */  mtc1    $at, $f4                   ## $f4 = 1000.00
/* 02040 808CCE00 3C0144FA */  lui     $at, 0x44FA                ## $at = 44FA0000
/* 02044 808CCE04 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 02048 808CCE08 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0204C 808CCE0C 44813000 */  mtc1    $at, $f6                   ## $f6 = 2000.00
/* 02050 808CCE10 3C053E99 */  lui     $a1, 0x3E99                ## $a1 = 3E990000
/* 02054 808CCE14 4406F000 */  mfc1    $a2, $f30                  
/* 02058 808CCE18 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 0205C 808CCE1C E6D602B0 */  swc1    $f22, 0x02B0($s6)          ## 000002B0
/* 02060 808CCE20 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3D4CCCCD
/* 02064 808CCE24 34A5999A */  ori     $a1, $a1, 0x999A           ## $a1 = 3E99999A
/* 02068 808CCE28 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000280
/* 0206C 808CCE2C E6D402C0 */  swc1    $f20, 0x02C0($s6)          ## 000002C0
/* 02070 808CCE30 E6C402B4 */  swc1    $f4, 0x02B4($s6)           ## 000002B4
/* 02074 808CCE34 E6CA02BC */  swc1    $f10, 0x02BC($s6)          ## 000002BC
/* 02078 808CCE38 E6C802C4 */  swc1    $f8, 0x02C4($s6)           ## 000002C4
/* 0207C 808CCE3C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02080 808CCE40 E6C602AC */  swc1    $f6, 0x02AC($s6)           ## 000002AC
/* 02084 808CCE44 86CA0248 */  lh      $t2, 0x0248($s6)           ## 00000248
/* 02088 808CCE48 55400015 */  bnel    $t2, $zero, .L808CCEA0     
/* 0208C 808CCE4C 86D90224 */  lh      $t9, 0x0224($s6)           ## 00000224
/* 02090 808CCE50 86CB0224 */  lh      $t3, 0x0224($s6)           ## 00000224
/* 02094 808CCE54 316C0003 */  andi    $t4, $t3, 0x0003           ## $t4 = 00000000
/* 02098 808CCE58 55800011 */  bnel    $t4, $zero, .L808CCEA0     
/* 0209C 808CCE5C 86D90224 */  lh      $t9, 0x0224($s6)           ## 00000224
/* 020A0 808CCE60 86C2021E */  lh      $v0, 0x021E($s6)           ## 0000021E
/* 020A4 808CCE64 240F00CA */  addiu   $t7, $zero, 0x00CA         ## $t7 = 000000CA
/* 020A8 808CCE68 2418001E */  addiu   $t8, $zero, 0x001E         ## $t8 = 0000001E
/* 020AC 808CCE6C 10400009 */  beq     $v0, $zero, .L808CCE94     
/* 020B0 808CCE70 244DFFFF */  addiu   $t5, $v0, 0xFFFF           ## $t5 = FFFFFFFF
/* 020B4 808CCE74 A6CD021E */  sh      $t5, 0x021E($s6)           ## 0000021E
/* 020B8 808CCE78 86CE021E */  lh      $t6, 0x021E($s6)           ## 0000021E
/* 020BC 808CCE7C 55C00008 */  bnel    $t6, $zero, .L808CCEA0     
/* 020C0 808CCE80 86D90224 */  lh      $t9, 0x0224($s6)           ## 00000224
/* 020C4 808CCE84 0C03E803 */  jal     Audio_SetBGM
              
/* 020C8 808CCE88 24040021 */  addiu   $a0, $zero, 0x0021         ## $a0 = 00000021
/* 020CC 808CCE8C 10000004 */  beq     $zero, $zero, .L808CCEA0   
/* 020D0 808CCE90 86D90224 */  lh      $t9, 0x0224($s6)           ## 00000224
.L808CCE94:
/* 020D4 808CCE94 A6CF0222 */  sh      $t7, 0x0222($s6)           ## 00000222
/* 020D8 808CCE98 A6D80248 */  sh      $t8, 0x0248($s6)           ## 00000248
/* 020DC 808CCE9C 86D90224 */  lh      $t9, 0x0224($s6)           ## 00000224
.L808CCEA0:
/* 020E0 808CCEA0 24090028 */  addiu   $t1, $zero, 0x0028         ## $t1 = 00000028
/* 020E4 808CCEA4 27AB017C */  addiu   $t3, $sp, 0x017C           ## $t3 = FFFFFFAC
/* 020E8 808CCEA8 3328001F */  andi    $t0, $t9, 0x001F           ## $t0 = 00000000
/* 020EC 808CCEAC 15000002 */  bne     $t0, $zero, .L808CCEB8     
/* 020F0 808CCEB0 3C0C808D */  lui     $t4, %hi(D_808D19E0)       ## $t4 = 808D0000
/* 020F4 808CCEB4 A6C9022E */  sh      $t1, 0x022E($s6)           ## 0000022E
.L808CCEB8:
/* 020F8 808CCEB8 86CA021E */  lh      $t2, 0x021E($s6)           ## 0000021E
/* 020FC 808CCEBC 258C19E0 */  addiu   $t4, $t4, %lo(D_808D19E0)  ## $t4 = 808D19E0
/* 02100 808CCEC0 514001B6 */  beql    $t2, $zero, .L808CD59C     
/* 02104 808CCEC4 86D90244 */  lh      $t9, 0x0244($s6)           ## 00000244
/* 02108 808CCEC8 8D8E0000 */  lw      $t6, 0x0000($t4)           ## 808D19E0
/* 0210C 808CCECC 8D8D0004 */  lw      $t5, 0x0004($t4)           ## 808D19E4
/* 02110 808CCED0 3C18808D */  lui     $t8, %hi(D_808D19EC)       ## $t8 = 808D0000
/* 02114 808CCED4 AD6E0000 */  sw      $t6, 0x0000($t3)           ## FFFFFFAC
/* 02118 808CCED8 8D8E0008 */  lw      $t6, 0x0008($t4)           ## 808D19E8
/* 0211C 808CCEDC 271819EC */  addiu   $t8, $t8, %lo(D_808D19EC)  ## $t8 = 808D19EC
/* 02120 808CCEE0 AD6D0004 */  sw      $t5, 0x0004($t3)           ## FFFFFFB0
/* 02124 808CCEE4 AD6E0008 */  sw      $t6, 0x0008($t3)           ## FFFFFFB4
/* 02128 808CCEE8 8F080000 */  lw      $t0, 0x0000($t8)           ## 808D19EC
/* 0212C 808CCEEC 27AF0164 */  addiu   $t7, $sp, 0x0164           ## $t7 = FFFFFF94
/* 02130 808CCEF0 8F190004 */  lw      $t9, 0x0004($t8)           ## 808D19F0
/* 02134 808CCEF4 ADE80000 */  sw      $t0, 0x0000($t7)           ## FFFFFF94
/* 02138 808CCEF8 8F080008 */  lw      $t0, 0x0008($t8)           ## 808D19F4
/* 0213C 808CCEFC ADF90004 */  sw      $t9, 0x0004($t7)           ## FFFFFF98
/* 02140 808CCF00 240B000A */  addiu   $t3, $zero, 0x000A         ## $t3 = 0000000A
/* 02144 808CCF04 ADE80008 */  sw      $t0, 0x0008($t7)           ## FFFFFF9C
/* 02148 808CCF08 92C90220 */  lbu     $t1, 0x0220($s6)           ## 00000220
/* 0214C 808CCF0C 8FAA01D4 */  lw      $t2, 0x01D4($sp)           
/* 02150 808CCF10 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 02154 808CCF14 15200005 */  bne     $t1, $zero, .L808CCF2C     
/* 02158 808CCF18 240430DA */  addiu   $a0, $zero, 0x30DA         ## $a0 = 000030DA
/* 0215C 808CCF1C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 02160 808CCF20 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02164 808CCF24 002A0821 */  addu    $at, $at, $t2              
/* 02168 808CCF28 E42A0AFC */  swc1    $f10, 0x0AFC($at)          ## 00010AFC
.L808CCF2C:
/* 0216C 808CCF2C A2CB0220 */  sb      $t3, 0x0220($s6)           ## 00000220
/* 02170 808CCF30 A7AC0150 */  sh      $t4, 0x0150($sp)           
/* 02174 808CCF34 86CD0224 */  lh      $t5, 0x0224($s6)           ## 00000224
/* 02178 808CCF38 26C500E4 */  addiu   $a1, $s6, 0x00E4           ## $a1 = 000000E4
/* 0217C 808CCF3C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 02180 808CCF40 31AE001C */  andi    $t6, $t5, 0x001C           ## $t6 = 00000000
/* 02184 808CCF44 11C00006 */  beq     $t6, $zero, .L808CCF60     
/* 02188 808CCF48 02403825 */  or      $a3, $s2, $zero            ## $a3 = 801333E0
/* 0218C 808CCF4C 3C0F8013 */  lui     $t7, 0x8013                ## $t7 = 80130000
/* 02190 808CCF50 25EF33E8 */  addiu   $t7, $t7, 0x33E8           ## $t7 = 801333E8
/* 02194 808CCF54 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 02198 808CCF58 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 0219C 808CCF5C AFB20010 */  sw      $s2, 0x0010($sp)           
.L808CCF60:
/* 021A0 808CCF60 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 021A4 808CCF64 4481C000 */  mtc1    $at, $f24                  ## $f24 = 3.00
/* 021A8 808CCF68 3C01808D */  lui     $at, %hi(D_808D1F00)       ## $at = 808D0000
/* 021AC 808CCF6C C4361F00 */  lwc1    $f22, %lo(D_808D1F00)($at) 
/* 021B0 808CCF70 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 021B4 808CCF74 4481A000 */  mtc1    $at, $f20                  ## $f20 = 20.00
/* 021B8 808CCF78 0000A825 */  or      $s5, $zero, $zero          ## $s5 = 00000000
/* 021BC 808CCF7C 27B30158 */  addiu   $s3, $sp, 0x0158           ## $s3 = FFFFFF88
/* 021C0 808CCF80 27B20170 */  addiu   $s2, $sp, 0x0170           ## $s2 = FFFFFFA0
/* 021C4 808CCF84 27B10188 */  addiu   $s1, $sp, 0x0188           ## $s1 = FFFFFFB8
.L808CCF88:
/* 021C8 808CCF88 3C01808D */  lui     $at, %hi(D_808D1F04)       ## $at = 808D0000
/* 021CC 808CCF8C C42C1F04 */  lwc1    $f12, %lo(D_808D1F04)($at) 
/* 021D0 808CCF90 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 021D4 808CCF94 26D41970 */  addiu   $s4, $s6, 0x1970           ## $s4 = 00001970
/* 021D8 808CCF98 4600020D */  trunc.w.s $f8, $f0                   
/* 021DC 808CCF9C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 021E0 808CCFA0 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 021E4 808CCFA4 3C01808D */  lui     $at, %hi(D_808D1F08)       ## $at = 808D0000
/* 021E8 808CCFA8 44194000 */  mfc1    $t9, $f8                   
/* 021EC 808CCFAC 4600A306 */  mov.s   $f12, $f20                 
/* 021F0 808CCFB0 00194400 */  sll     $t0, $t9, 16               
/* 021F4 808CCFB4 00084C03 */  sra     $t1, $t0, 16               
/* 021F8 808CCFB8 00095080 */  sll     $t2, $t1,  2               
/* 021FC 808CCFBC 01495023 */  subu    $t2, $t2, $t1              
/* 02200 808CCFC0 000A5080 */  sll     $t2, $t2,  2               
/* 02204 808CCFC4 02CA1021 */  addu    $v0, $s6, $t2              
/* 02208 808CCFC8 C444078C */  lwc1    $f4, 0x078C($v0)           ## 0000078C
/* 0220C 808CCFCC E7A40188 */  swc1    $f4, 0x0188($sp)           
/* 02210 808CCFD0 C4460790 */  lwc1    $f6, 0x0790($v0)           ## 00000790
/* 02214 808CCFD4 460A3201 */  sub.s   $f8, $f6, $f10             
/* 02218 808CCFD8 C4261F08 */  lwc1    $f6, %lo(D_808D1F08)($at)  
/* 0221C 808CCFDC E7A8018C */  swc1    $f8, 0x018C($sp)           
/* 02220 808CCFE0 C4440794 */  lwc1    $f4, 0x0794($v0)           ## 00000794
/* 02224 808CCFE4 E7A60168 */  swc1    $f6, 0x0168($sp)           
/* 02228 808CCFE8 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0222C 808CCFEC E7A40190 */  swc1    $f4, 0x0190($sp)           
/* 02230 808CCFF0 4600028D */  trunc.w.s $f10, $f0                  
/* 02234 808CCFF4 24180064 */  addiu   $t8, $zero, 0x0064         ## $t8 = 00000064
/* 02238 808CCFF8 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 0223C 808CCFFC 8FA401D4 */  lw      $a0, 0x01D4($sp)           
/* 02240 808CD000 440C5000 */  mfc1    $t4, $f10                  
/* 02244 808CD004 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFB8
/* 02248 808CD008 27A6017C */  addiu   $a2, $sp, 0x017C           ## $a2 = FFFFFFAC
/* 0224C 808CD00C 000C6C00 */  sll     $t5, $t4, 16               
/* 02250 808CD010 000D7403 */  sra     $t6, $t5, 16               
/* 02254 808CD014 25CF0028 */  addiu   $t7, $t6, 0x0028           ## $t7 = 00000028
/* 02258 808CD018 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 0225C 808CD01C 0C00A76F */  jal     func_80029DBC              
/* 02260 808CD020 27A70164 */  addiu   $a3, $sp, 0x0164           ## $a3 = FFFFFF94
/* 02264 808CD024 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
.L808CD028:
/* 02268 808CD028 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 0226C 808CD02C 4600A306 */  mov.s   $f12, $f20                 
/* 02270 808CD030 E7A00170 */  swc1    $f0, 0x0170($sp)           
/* 02274 808CD034 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 02278 808CD038 4600A306 */  mov.s   $f12, $f20                 
/* 0227C 808CD03C E7A00174 */  swc1    $f0, 0x0174($sp)           
/* 02280 808CD040 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 02284 808CD044 4600A306 */  mov.s   $f12, $f20                 
/* 02288 808CD048 E7A00178 */  swc1    $f0, 0x0178($sp)           
/* 0228C 808CD04C E7B6015C */  swc1    $f22, 0x015C($sp)          
/* 02290 808CD050 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 02294 808CD054 4600D306 */  mov.s   $f12, $f26                 
/* 02298 808CD058 E7A00158 */  swc1    $f0, 0x0158($sp)           
/* 0229C 808CD05C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 022A0 808CD060 4600D306 */  mov.s   $f12, $f26                 
/* 022A4 808CD064 E7A00160 */  swc1    $f0, 0x0160($sp)           
/* 022A8 808CD068 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 022AC 808CD06C 4600C306 */  mov.s   $f12, $f24                 
/* 022B0 808CD070 4600020D */  trunc.w.s $f8, $f0                   
/* 022B4 808CD074 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00001970
/* 022B8 808CD078 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFB8
/* 022BC 808CD07C 02403025 */  or      $a2, $s2, $zero            ## $a2 = FFFFFFA0
/* 022C0 808CD080 44084000 */  mfc1    $t0, $f8                   
/* 022C4 808CD084 02603825 */  or      $a3, $s3, $zero            ## $a3 = FFFFFF88
/* 022C8 808CD088 00084C00 */  sll     $t1, $t0, 16               
/* 022CC 808CD08C 00095403 */  sra     $t2, $t1, 16               
/* 022D0 808CD090 254B0008 */  addiu   $t3, $t2, 0x0008           ## $t3 = 00000008
/* 022D4 808CD094 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 022D8 808CD098 00000000 */  nop
/* 022DC 808CD09C 468021A0 */  cvt.s.w $f6, $f4                   
/* 022E0 808CD0A0 0C232B70 */  jal     func_808CADC0              
/* 022E4 808CD0A4 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 022E8 808CD0A8 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 022EC 808CD0AC 00108400 */  sll     $s0, $s0, 16               
/* 022F0 808CD0B0 00108403 */  sra     $s0, $s0, 16               
/* 022F4 808CD0B4 2A01000F */  slti    $at, $s0, 0x000F           
/* 022F8 808CD0B8 1420FFDB */  bne     $at, $zero, .L808CD028     
/* 022FC 808CD0BC 00000000 */  nop
/* 02300 808CD0C0 87AC0150 */  lh      $t4, 0x0150($sp)           
/* 02304 808CD0C4 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000001
/* 02308 808CD0C8 0015AC00 */  sll     $s5, $s5, 16               
/* 0230C 808CD0CC 0015AC03 */  sra     $s5, $s5, 16               
/* 02310 808CD0D0 02AC082A */  slt     $at, $s5, $t4              
/* 02314 808CD0D4 1420FFAC */  bne     $at, $zero, .L808CCF88     
/* 02318 808CD0D8 00000000 */  nop
/* 0231C 808CD0DC 1000012F */  beq     $zero, $zero, .L808CD59C   
/* 02320 808CD0E0 86D90244 */  lh      $t9, 0x0244($s6)           ## 00000244
glabel L808CD0E4
/* 02324 808CD0E4 86C30248 */  lh      $v1, 0x0248($s6)           ## 00000248
/* 02328 808CD0E8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 0232C 808CD0EC 240D0003 */  addiu   $t5, $zero, 0x0003         ## $t5 = 00000003
/* 02330 808CD0F0 28610012 */  slti    $at, $v1, 0x0012           
/* 02334 808CD0F4 A6C20244 */  sh      $v0, 0x0244($s6)           ## 00000244
/* 02338 808CD0F8 10200005 */  beq     $at, $zero, .L808CD110     
/* 0233C 808CD0FC A2CD0220 */  sb      $t5, 0x0220($s6)           ## 00000220
/* 02340 808CD100 00037040 */  sll     $t6, $v1,  1               
/* 02344 808CD104 02CE7821 */  addu    $t7, $s6, $t6              
/* 02348 808CD108 A5E213D0 */  sh      $v0, 0x13D0($t7)           ## 000013D0
/* 0234C 808CD10C 86C30248 */  lh      $v1, 0x0248($s6)           ## 00000248
.L808CD110:
/* 02350 808CD110 1460000E */  bne     $v1, $zero, .L808CD14C     
/* 02354 808CD114 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 02358 808CD118 4481C000 */  mtc1    $at, $f24                  ## $f24 = 90.00
/* 0235C 808CD11C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 02360 808CD120 44815000 */  mtc1    $at, $f10                  ## $f10 = 40.00
/* 02364 808CD124 241800CB */  addiu   $t8, $zero, 0x00CB         ## $t8 = 000000CB
/* 02368 808CD128 2419000F */  addiu   $t9, $zero, 0x000F         ## $t9 = 0000000F
/* 0236C 808CD12C 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 02370 808CD130 44814000 */  mtc1    $at, $f8                   ## $f8 = 150.00
/* 02374 808CD134 A6D80222 */  sh      $t8, 0x0222($s6)           ## 00000222
/* 02378 808CD138 A6D90248 */  sh      $t9, 0x0248($s6)           ## 00000248
/* 0237C 808CD13C A6C0023C */  sh      $zero, 0x023C($s6)         ## 0000023C
/* 02380 808CD140 E6780028 */  swc1    $f24, 0x0028($s3)          ## FFFFFFB0
/* 02384 808CD144 E66A0024 */  swc1    $f10, 0x0024($s3)          ## FFFFFFAC
/* 02388 808CD148 E668002C */  swc1    $f8, 0x002C($s3)           ## FFFFFFB4
.L808CD14C:
/* 0238C 808CD14C 10000113 */  beq     $zero, $zero, .L808CD59C   
/* 02390 808CD150 86D90244 */  lh      $t9, 0x0244($s6)           ## 00000244
glabel L808CD154
/* 02394 808CD154 86C80248 */  lh      $t0, 0x0248($s6)           ## 00000248
/* 02398 808CD158 240900CC */  addiu   $t1, $zero, 0x00CC         ## $t1 = 000000CC
/* 0239C 808CD15C 240A0014 */  addiu   $t2, $zero, 0x0014         ## $t2 = 00000014
/* 023A0 808CD160 5500010E */  bnel    $t0, $zero, .L808CD59C     
/* 023A4 808CD164 86D90244 */  lh      $t9, 0x0244($s6)           ## 00000244
/* 023A8 808CD168 A6C90222 */  sh      $t1, 0x0222($s6)           ## 00000222
/* 023AC 808CD16C A6CA0248 */  sh      $t2, 0x0248($s6)           ## 00000248
/* 023B0 808CD170 10000109 */  beq     $zero, $zero, .L808CD598   
/* 023B4 808CD174 A6C00244 */  sh      $zero, 0x0244($s6)         ## 00000244
glabel L808CD178
/* 023B8 808CD178 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 023BC 808CD17C 86C30248 */  lh      $v1, 0x0248($s6)           ## 00000248
/* 023C0 808CD180 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 023C4 808CD184 E6C002A4 */  swc1    $f0, 0x02A4($s6)           ## 000002A4
/* 023C8 808CD188 E6C00068 */  swc1    $f0, 0x0068($s6)           ## 00000068
/* 023CC 808CD18C E6C002AC */  swc1    $f0, 0x02AC($s6)           ## 000002AC
/* 023D0 808CD190 14610010 */  bne     $v1, $at, .L808CD1D4       
/* 023D4 808CD194 E6C002A8 */  swc1    $f0, 0x02A8($s6)           ## 000002A8
/* 023D8 808CD198 3C014461 */  lui     $at, 0x4461                ## $at = 44610000
/* 023DC 808CD19C 44812000 */  mtc1    $at, $f4                   ## $f4 = 900.00
/* 023E0 808CD1A0 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 023E4 808CD1A4 A6C00032 */  sh      $zero, 0x0032($s6)         ## 00000032
/* 023E8 808CD1A8 44813000 */  mtc1    $at, $f6                   ## $f6 = 150.00
/* 023EC 808CD1AC 86CB0032 */  lh      $t3, 0x0032($s6)           ## 00000032
/* 023F0 808CD1B0 240C1200 */  addiu   $t4, $zero, 0x1200         ## $t4 = 00001200
/* 023F4 808CD1B4 E6C00024 */  swc1    $f0, 0x0024($s6)           ## 00000024
/* 023F8 808CD1B8 A6CC00B8 */  sh      $t4, 0x00B8($s6)           ## 000000B8
/* 023FC 808CD1BC E6C0005C */  swc1    $f0, 0x005C($s6)           ## 0000005C
/* 02400 808CD1C0 E6C00064 */  swc1    $f0, 0x0064($s6)           ## 00000064
/* 02404 808CD1C4 86C30248 */  lh      $v1, 0x0248($s6)           ## 00000248
/* 02408 808CD1C8 E6C40028 */  swc1    $f4, 0x0028($s6)           ## 00000028
/* 0240C 808CD1CC E6C6002C */  swc1    $f6, 0x002C($s6)           ## 0000002C
/* 02410 808CD1D0 A6CB0030 */  sh      $t3, 0x0030($s6)           ## 00000030
.L808CD1D4:
/* 02414 808CD1D4 1460006B */  bne     $v1, $zero, .L808CD384     
/* 02418 808CD1D8 3C0142DC */  lui     $at, 0x42DC                ## $at = 42DC0000
/* 0241C 808CD1DC 44815000 */  mtc1    $at, $f10                  ## $f10 = 110.00
/* 02420 808CD1E0 C6C80028 */  lwc1    $f8, 0x0028($s6)           ## 00000028
/* 02424 808CD1E4 3C0142DC */  lui     $at, 0x42DC                ## $at = 42DC0000
/* 02428 808CD1E8 460A403E */  c.le.s  $f8, $f10                  
/* 0242C 808CD1EC 00000000 */  nop
/* 02430 808CD1F0 45020061 */  bc1fl   .L808CD378                 
/* 02434 808CD1F4 C6C60060 */  lwc1    $f6, 0x0060($s6)           ## 00000060
/* 02438 808CD1F8 86C3023C */  lh      $v1, 0x023C($s6)           ## 0000023C
/* 0243C 808CD1FC 44812000 */  mtc1    $at, $f4                   ## $f4 = 110.00
/* 02440 808CD200 E6C00060 */  swc1    $f0, 0x0060($s6)           ## 00000060
/* 02444 808CD204 14600060 */  bne     $v1, $zero, .L808CD388     
/* 02448 808CD208 E6C40028 */  swc1    $f4, 0x0028($s6)           ## 00000028
/* 0244C 808CD20C 246D0001 */  addiu   $t5, $v1, 0x0001           ## $t5 = 00000001
/* 02450 808CD210 240E003C */  addiu   $t6, $zero, 0x003C         ## $t6 = 0000003C
/* 02454 808CD214 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 02458 808CD218 3C188013 */  lui     $t8, 0x8013                ## $t8 = 80130000
/* 0245C 808CD21C A6CD023C */  sh      $t5, 0x023C($s6)           ## 0000023C
/* 02460 808CD220 A6CE024A */  sh      $t6, 0x024A($s6)           ## 0000024A
/* 02464 808CD224 A6CF0242 */  sh      $t7, 0x0242($s6)           ## 00000242
/* 02468 808CD228 271833E8 */  addiu   $t8, $t8, 0x33E8           ## $t8 = 801333E8
/* 0246C 808CD22C AFB80014 */  sw      $t8, 0x0014($sp)           
/* 02470 808CD230 AFB20010 */  sw      $s2, 0x0010($sp)           
/* 02474 808CD234 24043889 */  addiu   $a0, $zero, 0x3889         ## $a0 = 00003889
/* 02478 808CD238 26C500E4 */  addiu   $a1, $s6, 0x00E4           ## $a1 = 000000E4
/* 0247C 808CD23C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 02480 808CD240 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 02484 808CD244 02403825 */  or      $a3, $s2, $zero            ## $a3 = FFFFFFA0
/* 02488 808CD248 8FA401D4 */  lw      $a0, 0x01D4($sp)           
/* 0248C 808CD24C 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 02490 808CD250 0C00B7D5 */  jal     func_8002DF54              
/* 02494 808CD254 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 02498 808CD258 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 0249C 808CD25C 4481B000 */  mtc1    $at, $f22                  ## $f22 = 300.00
/* 024A0 808CD260 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 024A4 808CD264 3C13808D */  lui     $s3, %hi(D_808D1A04)       ## $s3 = 808D0000
/* 024A8 808CD268 3C12808D */  lui     $s2, %hi(D_808D19F8)       ## $s2 = 808D0000
/* 024AC 808CD26C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 8.00
/* 024B0 808CD270 265219F8 */  addiu   $s2, $s2, %lo(D_808D19F8)  ## $s2 = 808D19F8
/* 024B4 808CD274 26731A04 */  addiu   $s3, $s3, %lo(D_808D1A04)  ## $s3 = 808D1A04
/* 024B8 808CD278 0000A825 */  or      $s5, $zero, $zero          ## $s5 = 00000000
/* 024BC 808CD27C 26D41970 */  addiu   $s4, $s6, 0x1970           ## $s4 = 00001970
/* 024C0 808CD280 27B10138 */  addiu   $s1, $sp, 0x0138           ## $s1 = FFFFFF68
/* 024C4 808CD284 27B00144 */  addiu   $s0, $sp, 0x0144           ## $s0 = FFFFFF74
/* 024C8 808CD288 8E480000 */  lw      $t0, 0x0000($s2)           ## 808D19F8
.L808CD28C:
/* 024CC 808CD28C 8E6A0000 */  lw      $t2, 0x0000($s3)           ## 808D1A04
/* 024D0 808CD290 8E590004 */  lw      $t9, 0x0004($s2)           ## 808D19FC
/* 024D4 808CD294 AE080000 */  sw      $t0, 0x0000($s0)           ## FFFFFF74
/* 024D8 808CD298 AE2A0000 */  sw      $t2, 0x0000($s1)           ## FFFFFF68
/* 024DC 808CD29C 8E480008 */  lw      $t0, 0x0008($s2)           ## 808D1A00
/* 024E0 808CD2A0 8E6A0008 */  lw      $t2, 0x0008($s3)           ## 808D1A0C
/* 024E4 808CD2A4 8E690004 */  lw      $t1, 0x0004($s3)           ## 808D1A08
/* 024E8 808CD2A8 4600A306 */  mov.s   $f12, $f20                 
/* 024EC 808CD2AC AE190004 */  sw      $t9, 0x0004($s0)           ## FFFFFF78
/* 024F0 808CD2B0 AE080008 */  sw      $t0, 0x0008($s0)           ## FFFFFF7C
/* 024F4 808CD2B4 AE2A0008 */  sw      $t2, 0x0008($s1)           ## FFFFFF70
/* 024F8 808CD2B8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 024FC 808CD2BC AE290004 */  sw      $t1, 0x0004($s1)           ## FFFFFF6C
/* 02500 808CD2C0 E7A00144 */  swc1    $f0, 0x0144($sp)           
/* 02504 808CD2C4 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 02508 808CD2C8 4600F306 */  mov.s   $f12, $f30                 
/* 0250C 808CD2CC E7A00148 */  swc1    $f0, 0x0148($sp)           
/* 02510 808CD2D0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 02514 808CD2D4 4600A306 */  mov.s   $f12, $f20                 
/* 02518 808CD2D8 3C01808D */  lui     $at, %hi(D_808D1F0C)       ## $at = 808D0000
/* 0251C 808CD2DC C4261F0C */  lwc1    $f6, %lo(D_808D1F0C)($at)  
/* 02520 808CD2E0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 02524 808CD2E4 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 02528 808CD2E8 E7A0014C */  swc1    $f0, 0x014C($sp)           
/* 0252C 808CD2EC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 02530 808CD2F0 E7A6013C */  swc1    $f6, 0x013C($sp)           
/* 02534 808CD2F4 C6CA0024 */  lwc1    $f10, 0x0024($s6)          ## 00000024
/* 02538 808CD2F8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0253C 808CD2FC 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 02540 808CD300 460A0200 */  add.s   $f8, $f0, $f10             
/* 02544 808CD304 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 02548 808CD308 E7A8012C */  swc1    $f8, 0x012C($sp)           
/* 0254C 808CD30C C6C40028 */  lwc1    $f4, 0x0028($s6)           ## 00000028
/* 02550 808CD310 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 02554 808CD314 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 02558 808CD318 46040180 */  add.s   $f6, $f0, $f4              
/* 0255C 808CD31C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 02560 808CD320 E7A60130 */  swc1    $f6, 0x0130($sp)           
/* 02564 808CD324 C6CA002C */  lwc1    $f10, 0x002C($s6)          ## 0000002C
/* 02568 808CD328 4600E306 */  mov.s   $f12, $f28                 
/* 0256C 808CD32C 460A0200 */  add.s   $f8, $f0, $f10             
/* 02570 808CD330 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 02574 808CD334 E7A80134 */  swc1    $f8, 0x0134($sp)           
/* 02578 808CD338 46160100 */  add.s   $f4, $f0, $f22             
/* 0257C 808CD33C 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00001970
/* 02580 808CD340 27A5012C */  addiu   $a1, $sp, 0x012C           ## $a1 = FFFFFF5C
/* 02584 808CD344 02003025 */  or      $a2, $s0, $zero            ## $a2 = FFFFFF74
/* 02588 808CD348 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 0258C 808CD34C 0C232BD7 */  jal     func_808CAF5C              
/* 02590 808CD350 02203825 */  or      $a3, $s1, $zero            ## $a3 = FFFFFF68
/* 02594 808CD354 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000001
/* 02598 808CD358 0015AC00 */  sll     $s5, $s5, 16               
/* 0259C 808CD35C 0015AC03 */  sra     $s5, $s5, 16               
/* 025A0 808CD360 2AA1000F */  slti    $at, $s5, 0x000F           
/* 025A4 808CD364 5420FFC9 */  bnel    $at, $zero, .L808CD28C     
/* 025A8 808CD368 8E480000 */  lw      $t0, 0x0000($s2)           ## 808D19F8
/* 025AC 808CD36C 10000007 */  beq     $zero, $zero, .L808CD38C   
/* 025B0 808CD370 86CB024A */  lh      $t3, 0x024A($s6)           ## 0000024A
/* 025B4 808CD374 C6C60060 */  lwc1    $f6, 0x0060($s6)           ## 00000060
.L808CD378:
/* 025B8 808CD378 461E3281 */  sub.s   $f10, $f6, $f30            
/* 025BC 808CD37C 10000002 */  beq     $zero, $zero, .L808CD388   
/* 025C0 808CD380 E6CA0060 */  swc1    $f10, 0x0060($s6)          ## 00000060
.L808CD384:
/* 025C4 808CD384 E6C00060 */  swc1    $f0, 0x0060($s6)           ## 00000060
.L808CD388:
/* 025C8 808CD388 86CB024A */  lh      $t3, 0x024A($s6)           ## 0000024A
.L808CD38C:
/* 025CC 808CD38C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 025D0 808CD390 240C00CD */  addiu   $t4, $zero, 0x00CD         ## $t4 = 000000CD
/* 025D4 808CD394 15610080 */  bne     $t3, $at, .L808CD598       
/* 025D8 808CD398 240D0046 */  addiu   $t5, $zero, 0x0046         ## $t5 = 00000046
/* 025DC 808CD39C A6CC0222 */  sh      $t4, 0x0222($s6)           ## 00000222
/* 025E0 808CD3A0 1000007D */  beq     $zero, $zero, .L808CD598   
/* 025E4 808CD3A4 A6CD0248 */  sh      $t5, 0x0248($s6)           ## 00000248
glabel L808CD3A8
/* 025E8 808CD3A8 3C0142DC */  lui     $at, 0x42DC                ## $at = 42DC0000
/* 025EC 808CD3AC 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 025F0 808CD3B0 44812000 */  mtc1    $at, $f4                   ## $f4 = 110.00
/* 025F4 808CD3B4 86C30248 */  lh      $v1, 0x0248($s6)           ## 00000248
/* 025F8 808CD3B8 E6C80060 */  swc1    $f8, 0x0060($s6)           ## 00000060
/* 025FC 808CD3BC E6C40028 */  swc1    $f4, 0x0028($s6)           ## 00000028
/* 02600 808CD3C0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02604 808CD3C4 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 02608 808CD3C8 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 0260C 808CD3CC 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 02610 808CD3D0 28610032 */  slti    $at, $v1, 0x0032           
/* 02614 808CD3D4 E6C402A8 */  swc1    $f4, 0x02A8($s6)           ## 000002A8
/* 02618 808CD3D8 E6C802AC */  swc1    $f8, 0x02AC($s6)           ## 000002AC
/* 0261C 808CD3DC E6C602A4 */  swc1    $f6, 0x02A4($s6)           ## 000002A4
/* 02620 808CD3E0 10200049 */  beq     $at, $zero, .L808CD508     
/* 02624 808CD3E4 E6CA0068 */  swc1    $f10, 0x0068($s6)          ## 00000068
/* 02628 808CD3E8 18600047 */  blez    $v1, .L808CD508            
/* 0262C 808CD3EC 3C0E808D */  lui     $t6, %hi(D_808D1A10)       ## $t6 = 808D0000
/* 02630 808CD3F0 25CE1A10 */  addiu   $t6, $t6, %lo(D_808D1A10)  ## $t6 = 808D1A10
/* 02634 808CD3F4 8DD80000 */  lw      $t8, 0x0000($t6)           ## 808D1A10
/* 02638 808CD3F8 27B00114 */  addiu   $s0, $sp, 0x0114           ## $s0 = FFFFFF44
/* 0263C 808CD3FC 3C19808D */  lui     $t9, %hi(D_808D1A1C)       ## $t9 = 808D0000
/* 02640 808CD400 AE180000 */  sw      $t8, 0x0000($s0)           ## FFFFFF44
/* 02644 808CD404 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 808D1A14
/* 02648 808CD408 27391A1C */  addiu   $t9, $t9, %lo(D_808D1A1C)  ## $t9 = 808D1A1C
/* 0264C 808CD40C 27B10108 */  addiu   $s1, $sp, 0x0108           ## $s1 = FFFFFF38
/* 02650 808CD410 AE0F0004 */  sw      $t7, 0x0004($s0)           ## FFFFFF48
/* 02654 808CD414 8DD80008 */  lw      $t8, 0x0008($t6)           ## 808D1A18
/* 02658 808CD418 3C0A8013 */  lui     $t2, 0x8013                ## $t2 = 80130000
/* 0265C 808CD41C 254A33E8 */  addiu   $t2, $t2, 0x33E8           ## $t2 = 801333E8
/* 02660 808CD420 AE180008 */  sw      $t8, 0x0008($s0)           ## FFFFFF4C
/* 02664 808CD424 8F290000 */  lw      $t1, 0x0000($t9)           ## 808D1A1C
/* 02668 808CD428 2404301C */  addiu   $a0, $zero, 0x301C         ## $a0 = 0000301C
/* 0266C 808CD42C 26C500E4 */  addiu   $a1, $s6, 0x00E4           ## $a1 = 000000E4
/* 02670 808CD430 AE290000 */  sw      $t1, 0x0000($s1)           ## FFFFFF38
/* 02674 808CD434 8F280004 */  lw      $t0, 0x0004($t9)           ## 808D1A20
/* 02678 808CD438 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 0267C 808CD43C 02403825 */  or      $a3, $s2, $zero            ## $a3 = 808D19F8
/* 02680 808CD440 AE280004 */  sw      $t0, 0x0004($s1)           ## FFFFFF3C
/* 02684 808CD444 8F290008 */  lw      $t1, 0x0008($t9)           ## 808D1A24
/* 02688 808CD448 AE290008 */  sw      $t1, 0x0008($s1)           ## FFFFFF40
/* 0268C 808CD44C AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 02690 808CD450 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 02694 808CD454 AFB20010 */  sw      $s2, 0x0010($sp)           
/* 02698 808CD458 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 0269C 808CD45C 44816000 */  mtc1    $at, $f12                  ## $f12 = 40.00
/* 026A0 808CD460 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 026A4 808CD464 00000000 */  nop
/* 026A8 808CD468 C6C60024 */  lwc1    $f6, 0x0024($s6)           ## 00000024
/* 026AC 808CD46C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 026B0 808CD470 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 026B4 808CD474 46060280 */  add.s   $f10, $f0, $f6             
/* 026B8 808CD478 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 026BC 808CD47C E7AA0120 */  swc1    $f10, 0x0120($sp)          
/* 026C0 808CD480 C6C80028 */  lwc1    $f8, 0x0028($s6)           ## 00000028
/* 026C4 808CD484 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 026C8 808CD488 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 026CC 808CD48C 46080100 */  add.s   $f4, $f0, $f8              
/* 026D0 808CD490 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 026D4 808CD494 44816000 */  mtc1    $at, $f12                  ## $f12 = 40.00
/* 026D8 808CD498 46062281 */  sub.s   $f10, $f4, $f6             
/* 026DC 808CD49C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 026E0 808CD4A0 E7AA0124 */  swc1    $f10, 0x0124($sp)          
/* 026E4 808CD4A4 C6C8002C */  lwc1    $f8, 0x002C($s6)           ## 0000002C
/* 026E8 808CD4A8 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 026EC 808CD4AC 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 026F0 808CD4B0 46080100 */  add.s   $f4, $f0, $f8              
/* 026F4 808CD4B4 3C01808D */  lui     $at, %hi(D_808D1F10)       ## $at = 808D0000
/* 026F8 808CD4B8 C4281F10 */  lwc1    $f8, %lo(D_808D1F10)($at)  
/* 026FC 808CD4BC 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 02700 808CD4C0 46062280 */  add.s   $f10, $f4, $f6             
/* 02704 808CD4C4 44816000 */  mtc1    $at, $f12                  ## $f12 = 15.00
/* 02708 808CD4C8 E7A8010C */  swc1    $f8, 0x010C($sp)           
/* 0270C 808CD4CC 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 02710 808CD4D0 E7AA0128 */  swc1    $f10, 0x0128($sp)          
/* 02714 808CD4D4 4600010D */  trunc.w.s $f4, $f0                   
/* 02718 808CD4D8 8FA401D4 */  lw      $a0, 0x01D4($sp)           
/* 0271C 808CD4DC 27A50120 */  addiu   $a1, $sp, 0x0120           ## $a1 = FFFFFF50
/* 02720 808CD4E0 02003025 */  or      $a2, $s0, $zero            ## $a2 = FFFFFF44
/* 02724 808CD4E4 440C2000 */  mfc1    $t4, $f4                   
/* 02728 808CD4E8 02203825 */  or      $a3, $s1, $zero            ## $a3 = FFFFFF38
/* 0272C 808CD4EC AFA00014 */  sw      $zero, 0x0014($sp)         
/* 02730 808CD4F0 000C6C00 */  sll     $t5, $t4, 16               
/* 02734 808CD4F4 000D7403 */  sra     $t6, $t5, 16               
/* 02738 808CD4F8 25CF001E */  addiu   $t7, $t6, 0x001E           ## $t7 = 0000001E
/* 0273C 808CD4FC 0C00A76F */  jal     func_80029DBC              
/* 02740 808CD500 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 02744 808CD504 86C30248 */  lh      $v1, 0x0248($s6)           ## 00000248
.L808CD508:
/* 02748 808CD508 28610014 */  slti    $at, $v1, 0x0014           
/* 0274C 808CD50C 10200009 */  beq     $at, $zero, .L808CD534     
/* 02750 808CD510 26C40050 */  addiu   $a0, $s6, 0x0050           ## $a0 = 00000050
/* 02754 808CD514 4405F000 */  mfc1    $a1, $f30                  
/* 02758 808CD518 3C063B23 */  lui     $a2, 0x3B23                ## $a2 = 3B230000
/* 0275C 808CD51C 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 02760 808CD520 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3B23D70A
/* 02764 808CD524 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 02768 808CD528 0C00B58B */  jal     Actor_SetScale
              
/* 0276C 808CD52C 8EC50050 */  lw      $a1, 0x0050($s6)           ## 00000050
/* 02770 808CD530 86C30248 */  lh      $v1, 0x0248($s6)           ## 00000248
.L808CD534:
/* 02774 808CD534 14600009 */  bne     $v1, $zero, .L808CD55C     
/* 02778 808CD538 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 0277C 808CD53C C6C60028 */  lwc1    $f6, 0x0028($s6)           ## 00000028
/* 02780 808CD540 44815000 */  mtc1    $at, $f10                  ## $f10 = 1000.00
/* 02784 808CD544 3C18808D */  lui     $t8, %hi(func_808CDE30)    ## $t8 = 808D0000
/* 02788 808CD548 2718DE30 */  addiu   $t8, $t8, %lo(func_808CDE30) ## $t8 = 808CDE30
/* 0278C 808CD54C 460A3201 */  sub.s   $f8, $f6, $f10             
/* 02790 808CD550 AED80218 */  sw      $t8, 0x0218($s6)           ## 00000218
/* 02794 808CD554 86C30248 */  lh      $v1, 0x0248($s6)           ## 00000248
/* 02798 808CD558 E6C80028 */  swc1    $f8, 0x0028($s6)           ## 00000028
.L808CD55C:
/* 0279C 808CD55C 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 027A0 808CD560 1461000D */  bne     $v1, $at, .L808CD598       
/* 027A4 808CD564 8FA501D4 */  lw      $a1, 0x01D4($sp)           
/* 027A8 808CD568 C6C40028 */  lwc1    $f4, 0x0028($s6)           ## 00000028
/* 027AC 808CD56C 8EC70024 */  lw      $a3, 0x0024($s6)           ## 00000024
/* 027B0 808CD570 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 027B4 808CD574 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 027B8 808CD578 C6C6002C */  lwc1    $f6, 0x002C($s6)           ## 0000002C
/* 027BC 808CD57C AFA00024 */  sw      $zero, 0x0024($sp)         
/* 027C0 808CD580 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 027C4 808CD584 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 027C8 808CD588 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 027CC 808CD58C 2406005F */  addiu   $a2, $zero, 0x005F         ## $a2 = 0000005F
/* 027D0 808CD590 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 027D4 808CD594 E7A60014 */  swc1    $f6, 0x0014($sp)           
glabel L808CD598
.L808CD598:
/* 027D8 808CD598 86D90244 */  lh      $t9, 0x0244($s6)           ## 00000244
.L808CD59C:
/* 027DC 808CD59C 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 027E0 808CD5A0 4481C000 */  mtc1    $at, $f24                  ## $f24 = 90.00
/* 027E4 808CD5A4 17200212 */  bne     $t9, $zero, .L808CDDF0     
/* 027E8 808CD5A8 C7AA01B4 */  lwc1    $f10, 0x01B4($sp)          
/* 027EC 808CD5AC C6C402A8 */  lwc1    $f4, 0x02A8($s6)           ## 000002A8
/* 027F0 808CD5B0 4600520D */  trunc.w.s $f8, $f10                  
/* 027F4 808CD5B4 26C40032 */  addiu   $a0, $s6, 0x0032           ## $a0 = 00000032
/* 027F8 808CD5B8 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 027FC 808CD5BC 4600218D */  trunc.w.s $f6, $f4                   
/* 02800 808CD5C0 44054000 */  mfc1    $a1, $f8                   
/* 02804 808CD5C4 44073000 */  mfc1    $a3, $f6                   
/* 02808 808CD5C8 00052C00 */  sll     $a1, $a1, 16               
/* 0280C 808CD5CC 00052C03 */  sra     $a1, $a1, 16               
/* 02810 808CD5D0 00073C00 */  sll     $a3, $a3, 16               
/* 02814 808CD5D4 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 02818 808CD5D8 00073C03 */  sra     $a3, $a3, 16               
/* 0281C 808CD5DC 86C20222 */  lh      $v0, 0x0222($s6)           ## 00000222
/* 02820 808CD5E0 24010064 */  addiu   $at, $zero, 0x0064         ## $at = 00000064
/* 02824 808CD5E4 10410002 */  beq     $v0, $at, .L808CD5F0       
/* 02828 808CD5E8 24010065 */  addiu   $at, $zero, 0x0065         ## $at = 00000065
/* 0282C 808CD5EC 14410012 */  bne     $v0, $at, .L808CD638       
.L808CD5F0:
/* 02830 808CD5F0 3C0142DC */  lui     $at, 0x42DC                ## $at = 42DC0000
/* 02834 808CD5F4 44814000 */  mtc1    $at, $f8                   ## $f8 = 110.00
/* 02838 808CD5F8 C6CA0028 */  lwc1    $f10, 0x0028($s6)          ## 00000028
/* 0283C 808CD5FC C7A401B0 */  lwc1    $f4, 0x01B0($sp)           
/* 02840 808CD600 4608503C */  c.lt.s  $f10, $f8                  
/* 02844 808CD604 00000000 */  nop
/* 02848 808CD608 4502000C */  bc1fl   .L808CD63C                 
/* 0284C 808CD60C C7A601B0 */  lwc1    $f6, 0x01B0($sp)           
/* 02850 808CD610 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 02854 808CD614 26C40028 */  addiu   $a0, $s6, 0x0028           ## $a0 = 00000028
/* 02858 808CD618 3C0542DC */  lui     $a1, 0x42DC                ## $a1 = 42DC0000
/* 0285C 808CD61C 4600203C */  c.lt.s  $f4, $f0                   
/* 02860 808CD620 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 02864 808CD624 45020005 */  bc1fl   .L808CD63C                 
/* 02868 808CD628 C7A601B0 */  lwc1    $f6, 0x01B0($sp)           
/* 0286C 808CD62C 4406F000 */  mfc1    $a2, $f30                  
/* 02870 808CD630 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02874 808CD634 E7A001B0 */  swc1    $f0, 0x01B0($sp)           
.L808CD638:
/* 02878 808CD638 C7A601B0 */  lwc1    $f6, 0x01B0($sp)           
.L808CD63C:
/* 0287C 808CD63C C6C802A8 */  lwc1    $f8, 0x02A8($s6)           ## 000002A8
/* 02880 808CD640 26C40030 */  addiu   $a0, $s6, 0x0030           ## $a0 = 00000030
/* 02884 808CD644 4600328D */  trunc.w.s $f10, $f6                  
/* 02888 808CD648 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 0288C 808CD64C 4600410D */  trunc.w.s $f4, $f8                   
/* 02890 808CD650 44055000 */  mfc1    $a1, $f10                  
/* 02894 808CD654 44072000 */  mfc1    $a3, $f4                   
/* 02898 808CD658 00052C00 */  sll     $a1, $a1, 16               
/* 0289C 808CD65C 00052C03 */  sra     $a1, $a1, 16               
/* 028A0 808CD660 00073C00 */  sll     $a3, $a3, 16               
/* 028A4 808CD664 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 028A8 808CD668 00073C03 */  sra     $a3, $a3, 16               
/* 028AC 808CD66C 4406F000 */  mfc1    $a2, $f30                  
/* 028B0 808CD670 3C07469C */  lui     $a3, 0x469C                ## $a3 = 469C0000
/* 028B4 808CD674 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 469C4000
/* 028B8 808CD678 26C402A8 */  addiu   $a0, $s6, 0x02A8           ## $a0 = 000002A8
/* 028BC 808CD67C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 028C0 808CD680 8EC502AC */  lw      $a1, 0x02AC($s6)           ## 000002AC
/* 028C4 808CD684 4406F000 */  mfc1    $a2, $f30                  
/* 028C8 808CD688 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 028CC 808CD68C 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 028D0 808CD690 26C40068 */  addiu   $a0, $s6, 0x0068           ## $a0 = 00000068
/* 028D4 808CD694 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 028D8 808CD698 8EC502A4 */  lw      $a1, 0x02A4($s6)           ## 000002A4
/* 028DC 808CD69C 86CC0222 */  lh      $t4, 0x0222($s6)           ## 00000222
/* 028E0 808CD6A0 298100CC */  slti    $at, $t4, 0x00CC           
/* 028E4 808CD6A4 10200003 */  beq     $at, $zero, .L808CD6B4     
/* 028E8 808CD6A8 00000000 */  nop
/* 028EC 808CD6AC 0C00B642 */  jal     func_8002D908              
/* 028F0 808CD6B0 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
.L808CD6B4:
/* 028F4 808CD6B4 0C00B5FB */  jal     func_8002D7EC              
/* 028F8 808CD6B8 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 028FC 808CD6BC 86CD0228 */  lh      $t5, 0x0228($s6)           ## 00000228
/* 02900 808CD6C0 25AE0001 */  addiu   $t6, $t5, 0x0001           ## $t6 = 00000001
/* 02904 808CD6C4 A6CE0228 */  sh      $t6, 0x0228($s6)           ## 00000228
/* 02908 808CD6C8 86C30228 */  lh      $v1, 0x0228($s6)           ## 00000228
/* 0290C 808CD6CC 28610064 */  slti    $at, $v1, 0x0064           
/* 02910 808CD6D0 54200004 */  bnel    $at, $zero, .L808CD6E4     
/* 02914 808CD6D4 00038400 */  sll     $s0, $v1, 16               
/* 02918 808CD6D8 A6C00228 */  sh      $zero, 0x0228($s6)         ## 00000228
/* 0291C 808CD6DC 86C30228 */  lh      $v1, 0x0228($s6)           ## 00000228
/* 02920 808CD6E0 00038400 */  sll     $s0, $v1, 16               
.L808CD6E4:
/* 02924 808CD6E4 00108403 */  sra     $s0, $s0, 16               
/* 02928 808CD6E8 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 0292C 808CD6EC 00107880 */  sll     $t7, $s0,  2               
/* 02930 808CD6F0 4481A000 */  mtc1    $at, $f20                  ## $f20 = 32768.00
/* 02934 808CD6F4 C6C60024 */  lwc1    $f6, 0x0024($s6)           ## 00000024
/* 02938 808CD6F8 01F07823 */  subu    $t7, $t7, $s0              
/* 0293C 808CD6FC 3C01808D */  lui     $at, %hi(D_808D1F14)       ## $at = 808D0000
/* 02940 808CD700 000F7880 */  sll     $t7, $t7,  2               
/* 02944 808CD704 C4361F14 */  lwc1    $f22, %lo(D_808D1F14)($at) 
/* 02948 808CD708 02CF1021 */  addu    $v0, $s6, $t7              
/* 0294C 808CD70C E446078C */  swc1    $f6, 0x078C($v0)           ## 0000078C
/* 02950 808CD710 C6CA0028 */  lwc1    $f10, 0x0028($s6)          ## 00000028
/* 02954 808CD714 E44A0790 */  swc1    $f10, 0x0790($v0)          ## 00000790
/* 02958 808CD718 C6C8002C */  lwc1    $f8, 0x002C($s6)           ## 0000002C
/* 0295C 808CD71C E4480794 */  swc1    $f8, 0x0794($v0)           ## 00000794
/* 02960 808CD720 86D80030 */  lh      $t8, 0x0030($s6)           ## 00000030
/* 02964 808CD724 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 02968 808CD728 00000000 */  nop
/* 0296C 808CD72C 468021A0 */  cvt.s.w $f6, $f4                   
/* 02970 808CD730 46143283 */  div.s   $f10, $f6, $f20            
/* 02974 808CD734 46165202 */  mul.s   $f8, $f10, $f22            
/* 02978 808CD738 E44802DC */  swc1    $f8, 0x02DC($v0)           ## 000002DC
/* 0297C 808CD73C 86D90032 */  lh      $t9, 0x0032($s6)           ## 00000032
/* 02980 808CD740 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 02984 808CD744 00000000 */  nop
/* 02988 808CD748 468021A0 */  cvt.s.w $f6, $f4                   
/* 0298C 808CD74C 46143283 */  div.s   $f10, $f6, $f20            
/* 02990 808CD750 46165202 */  mul.s   $f8, $f10, $f22            
/* 02994 808CD754 E44802E0 */  swc1    $f8, 0x02E0($v0)           ## 000002E0
/* 02998 808CD758 86C80034 */  lh      $t0, 0x0034($s6)           ## 00000034
/* 0299C 808CD75C 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 029A0 808CD760 00000000 */  nop
/* 029A4 808CD764 468021A0 */  cvt.s.w $f6, $f4                   
/* 029A8 808CD768 46143283 */  div.s   $f10, $f6, $f20            
/* 029AC 808CD76C 46165202 */  mul.s   $f8, $f10, $f22            
/* 029B0 808CD770 E44802E4 */  swc1    $f8, 0x02E4($v0)           ## 000002E4
/* 029B4 808CD774 86C9022A */  lh      $t1, 0x022A($s6)           ## 0000022A
/* 029B8 808CD778 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 029BC 808CD77C A6CA022A */  sh      $t2, 0x022A($s6)           ## 0000022A
/* 029C0 808CD780 86C2022A */  lh      $v0, 0x022A($s6)           ## 0000022A
/* 029C4 808CD784 2841001E */  slti    $at, $v0, 0x001E           
/* 029C8 808CD788 54200004 */  bnel    $at, $zero, .L808CD79C     
/* 029CC 808CD78C 86CB0224 */  lh      $t3, 0x0224($s6)           ## 00000224
/* 029D0 808CD790 A6C0022A */  sh      $zero, 0x022A($s6)         ## 0000022A
/* 029D4 808CD794 86C2022A */  lh      $v0, 0x022A($s6)           ## 0000022A
/* 029D8 808CD798 86CB0224 */  lh      $t3, 0x0224($s6)           ## 00000224
.L808CD79C:
/* 029DC 808CD79C 3C01808D */  lui     $at, %hi(D_808D1F18)       ## $at = 808D0000
/* 029E0 808CD7A0 C42A1F18 */  lwc1    $f10, %lo(D_808D1F18)($at) 
/* 029E4 808CD7A4 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 029E8 808CD7A8 00028400 */  sll     $s0, $v0, 16               
/* 029EC 808CD7AC 00108403 */  sra     $s0, $s0, 16               
/* 029F0 808CD7B0 468021A0 */  cvt.s.w $f6, $f4                   
/* 029F4 808CD7B4 460A3202 */  mul.s   $f8, $f6, $f10             
/* 029F8 808CD7B8 4600410D */  trunc.w.s $f4, $f8                   
/* 029FC 808CD7BC 44042000 */  mfc1    $a0, $f4                   
/* 02A00 808CD7C0 00000000 */  nop
/* 02A04 808CD7C4 00042400 */  sll     $a0, $a0, 16               
/* 02A08 808CD7C8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02A0C 808CD7CC 00042403 */  sra     $a0, $a0, 16               
/* 02A10 808CD7D0 3C01808D */  lui     $at, %hi(D_808D1F1C)       ## $at = 808D0000
/* 02A14 808CD7D4 C4261F1C */  lwc1    $f6, %lo(D_808D1F1C)($at)  
/* 02A18 808CD7D8 00106880 */  sll     $t5, $s0,  2               
/* 02A1C 808CD7DC 02CD8821 */  addu    $s1, $s6, $t5              
/* 02A20 808CD7E0 46060282 */  mul.s   $f10, $f0, $f6             
/* 02A24 808CD7E4 3C01808D */  lui     $at, %hi(D_808D1F20)       ## $at = 808D0000
/* 02A28 808CD7E8 461E5200 */  add.s   $f8, $f10, $f30            
/* 02A2C 808CD7EC E6280F6C */  swc1    $f8, 0x0F6C($s1)           ## 00000EA4
/* 02A30 808CD7F0 86CE0224 */  lh      $t6, 0x0224($s6)           ## 00000224
/* 02A34 808CD7F4 C42A1F20 */  lwc1    $f10, %lo(D_808D1F20)($at) 
/* 02A38 808CD7F8 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 02A3C 808CD7FC 00000000 */  nop
/* 02A40 808CD800 468021A0 */  cvt.s.w $f6, $f4                   
/* 02A44 808CD804 460A3202 */  mul.s   $f8, $f6, $f10             
/* 02A48 808CD808 4600410D */  trunc.w.s $f4, $f8                   
/* 02A4C 808CD80C 44042000 */  mfc1    $a0, $f4                   
/* 02A50 808CD810 00000000 */  nop
/* 02A54 808CD814 00042400 */  sll     $a0, $a0, 16               
/* 02A58 808CD818 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02A5C 808CD81C 00042403 */  sra     $a0, $a0, 16               
/* 02A60 808CD820 3C01808D */  lui     $at, %hi(D_808D1F24)       ## $at = 808D0000
/* 02A64 808CD824 C4261F24 */  lwc1    $f6, %lo(D_808D1F24)($at)  
/* 02A68 808CD828 3C0145B2 */  lui     $at, 0x45B2                ## $at = 45B20000
/* 02A6C 808CD82C 46060282 */  mul.s   $f10, $f0, $f6             
/* 02A70 808CD830 461E5200 */  add.s   $f8, $f10, $f30            
/* 02A74 808CD834 44815000 */  mtc1    $at, $f10                  ## $f10 = 5696.00
/* 02A78 808CD838 E6281158 */  swc1    $f8, 0x1158($s1)           ## 00001090
/* 02A7C 808CD83C 86D80224 */  lh      $t8, 0x0224($s6)           ## 00000224
/* 02A80 808CD840 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 02A84 808CD844 00000000 */  nop
/* 02A88 808CD848 468021A0 */  cvt.s.w $f6, $f4                   
/* 02A8C 808CD84C 460A3202 */  mul.s   $f8, $f6, $f10             
/* 02A90 808CD850 4600410D */  trunc.w.s $f4, $f8                   
/* 02A94 808CD854 44042000 */  mfc1    $a0, $f4                   
/* 02A98 808CD858 00000000 */  nop
/* 02A9C 808CD85C 00042400 */  sll     $a0, $a0, 16               
/* 02AA0 808CD860 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 02AA4 808CD864 00042403 */  sra     $a0, $a0, 16               
/* 02AA8 808CD868 3C01808D */  lui     $at, %hi(D_808D1F28)       ## $at = 808D0000
/* 02AAC 808CD86C C4261F28 */  lwc1    $f6, %lo(D_808D1F28)($at)  
/* 02AB0 808CD870 00104080 */  sll     $t0, $s0,  2               
/* 02AB4 808CD874 01104023 */  subu    $t0, $t0, $s0              
/* 02AB8 808CD878 46060282 */  mul.s   $f10, $f0, $f6             
/* 02ABC 808CD87C 00084080 */  sll     $t0, $t0,  2               
/* 02AC0 808CD880 02C81021 */  addu    $v0, $s6, $t0              
/* 02AC4 808CD884 26C413C8 */  addiu   $a0, $s6, 0x13C8           ## $a0 = 000013C8
/* 02AC8 808CD888 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 02ACC 808CD88C 461E5200 */  add.s   $f8, $f10, $f30            
/* 02AD0 808CD890 E6281344 */  swc1    $f8, 0x1344($s1)           ## 0000127C
/* 02AD4 808CD894 8ECA0FE4 */  lw      $t2, 0x0FE4($s6)           ## 00000FE4
/* 02AD8 808CD898 AC4A0E04 */  sw      $t2, 0x0E04($v0)           ## 00000E04
/* 02ADC 808CD89C 8EC90FE8 */  lw      $t1, 0x0FE8($s6)           ## 00000FE8
/* 02AE0 808CD8A0 AC490E08 */  sw      $t1, 0x0E08($v0)           ## 00000E08
/* 02AE4 808CD8A4 8ECA0FEC */  lw      $t2, 0x0FEC($s6)           ## 00000FEC
/* 02AE8 808CD8A8 AC4A0E0C */  sw      $t2, 0x0E0C($v0)           ## 00000E0C
/* 02AEC 808CD8AC 86CB0030 */  lh      $t3, 0x0030($s6)           ## 00000030
/* 02AF0 808CD8B0 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 02AF4 808CD8B4 00000000 */  nop
/* 02AF8 808CD8B8 468021A0 */  cvt.s.w $f6, $f4                   
/* 02AFC 808CD8BC 46143283 */  div.s   $f10, $f6, $f20            
/* 02B00 808CD8C0 46165202 */  mul.s   $f8, $f10, $f22            
/* 02B04 808CD8C4 E4480C9C */  swc1    $f8, 0x0C9C($v0)           ## 00000C9C
/* 02B08 808CD8C8 86CC0032 */  lh      $t4, 0x0032($s6)           ## 00000032
/* 02B0C 808CD8CC 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 02B10 808CD8D0 00000000 */  nop
/* 02B14 808CD8D4 468021A0 */  cvt.s.w $f6, $f4                   
/* 02B18 808CD8D8 46143283 */  div.s   $f10, $f6, $f20            
/* 02B1C 808CD8DC 46165202 */  mul.s   $f8, $f10, $f22            
/* 02B20 808CD8E0 E4480CA0 */  swc1    $f8, 0x0CA0($v0)           ## 00000CA0
/* 02B24 808CD8E4 86CD0034 */  lh      $t5, 0x0034($s6)           ## 00000034
/* 02B28 808CD8E8 448D2000 */  mtc1    $t5, $f4                   ## $f4 = 0.00
/* 02B2C 808CD8EC 00000000 */  nop
/* 02B30 808CD8F0 468021A0 */  cvt.s.w $f6, $f4                   
/* 02B34 808CD8F4 46143283 */  div.s   $f10, $f6, $f20            
/* 02B38 808CD8F8 46165202 */  mul.s   $f8, $f10, $f22            
/* 02B3C 808CD8FC E4480CA4 */  swc1    $f8, 0x0CA4($v0)           ## 00000CA4
/* 02B40 808CD900 8ECF11D0 */  lw      $t7, 0x11D0($s6)           ## 000011D0
/* 02B44 808CD904 AC4F0FF0 */  sw      $t7, 0x0FF0($v0)           ## 00000FF0
/* 02B48 808CD908 8ECE11D4 */  lw      $t6, 0x11D4($s6)           ## 000011D4
/* 02B4C 808CD90C AC4E0FF4 */  sw      $t6, 0x0FF4($v0)           ## 00000FF4
/* 02B50 808CD910 8ECF11D8 */  lw      $t7, 0x11D8($s6)           ## 000011D8
/* 02B54 808CD914 AC4F0FF8 */  sw      $t7, 0x0FF8($v0)           ## 00000FF8
/* 02B58 808CD918 8ED913BC */  lw      $t9, 0x13BC($s6)           ## 000013BC
/* 02B5C 808CD91C AC5911DC */  sw      $t9, 0x11DC($v0)           ## 000011DC
/* 02B60 808CD920 8ED813C0 */  lw      $t8, 0x13C0($s6)           ## 000013C0
/* 02B64 808CD924 AC5811E0 */  sw      $t8, 0x11E0($v0)           ## 000011E0
/* 02B68 808CD928 8ED913C4 */  lw      $t9, 0x13C4($s6)           ## 000013C4
/* 02B6C 808CD92C AC5911E4 */  sw      $t9, 0x11E4($v0)           ## 000011E4
/* 02B70 808CD930 86C20030 */  lh      $v0, 0x0030($s6)           ## 00000030
/* 02B74 808CD934 28413000 */  slti    $at, $v0, 0x3000           
/* 02B78 808CD938 1020000B */  beq     $at, $zero, .L808CD968     
/* 02B7C 808CD93C 2841D001 */  slti    $at, $v0, 0xD001           
/* 02B80 808CD940 5420000A */  bnel    $at, $zero, .L808CD96C     
/* 02B84 808CD944 4405D000 */  mfc1    $a1, $f26                  
/* 02B88 808CD948 4405F000 */  mfc1    $a1, $f30                  
/* 02B8C 808CD94C 4406F000 */  mfc1    $a2, $f30                  
/* 02B90 808CD950 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 02B94 808CD954 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3D4CCCCD
/* 02B98 808CD958 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02B9C 808CD95C 26C413C8 */  addiu   $a0, $s6, 0x13C8           ## $a0 = 000013C8
/* 02BA0 808CD960 10000006 */  beq     $zero, $zero, .L808CD97C   
/* 02BA4 808CD964 86C80222 */  lh      $t0, 0x0222($s6)           ## 00000222
.L808CD968:
/* 02BA8 808CD968 4405D000 */  mfc1    $a1, $f26                  
.L808CD96C:
/* 02BAC 808CD96C 4406F000 */  mfc1    $a2, $f30                  
/* 02BB0 808CD970 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02BB4 808CD974 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 0000CCCD
/* 02BB8 808CD978 86C80222 */  lh      $t0, 0x0222($s6)           ## 00000222
.L808CD97C:
/* 02BBC 808CD97C 290100CC */  slti    $at, $t0, 0x00CC           
/* 02BC0 808CD980 5020002C */  beql    $at, $zero, .L808CDA34     
/* 02BC4 808CD984 93B801CF */  lbu     $t8, 0x01CF($sp)           
/* 02BC8 808CD988 C6C00104 */  lwc1    $f0, 0x0104($s6)           ## 00000104
/* 02BCC 808CD98C 4618003C */  c.lt.s  $f0, $f24                  
/* 02BD0 808CD990 00000000 */  nop
/* 02BD4 808CD994 45020014 */  bc1fl   .L808CD9E8                 
/* 02BD8 808CD998 4600C03C */  c.lt.s  $f24, $f0                  
/* 02BDC 808CD99C C6C40028 */  lwc1    $f4, 0x0028($s6)           ## 00000028
/* 02BE0 808CD9A0 24090050 */  addiu   $t1, $zero, 0x0050         ## $t1 = 00000050
/* 02BE4 808CD9A4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02BE8 808CD9A8 4604C03E */  c.le.s  $f24, $f4                  
/* 02BEC 808CD9AC 24060050 */  addiu   $a2, $zero, 0x0050         ## $a2 = 00000050
/* 02BF0 808CD9B0 24075000 */  addiu   $a3, $zero, 0x5000         ## $a3 = 00005000
/* 02BF4 808CD9B4 4502000C */  bc1fl   .L808CD9E8                 
/* 02BF8 808CD9B8 4600C03C */  c.lt.s  $f24, $f0                  
/* 02BFC 808CD9BC A6C90250 */  sh      $t1, 0x0250($s6)           ## 00000250
/* 02C00 808CD9C0 0C00CF87 */  jal     func_80033E1C              
/* 02C04 808CD9C4 8FA401D4 */  lw      $a0, 0x01D4($sp)           
/* 02C08 808CD9C8 240A0028 */  addiu   $t2, $zero, 0x0028         ## $t2 = 00000028
/* 02C0C 808CD9CC 240B001E */  addiu   $t3, $zero, 0x001E         ## $t3 = 0000001E
/* 02C10 808CD9D0 240C000A */  addiu   $t4, $zero, 0x000A         ## $t4 = 0000000A
/* 02C14 808CD9D4 A6CA022E */  sh      $t2, 0x022E($s6)           ## 0000022E
/* 02C18 808CD9D8 A6CB0238 */  sh      $t3, 0x0238($s6)           ## 00000238
/* 02C1C 808CD9DC A6CC0240 */  sh      $t4, 0x0240($s6)           ## 00000240
/* 02C20 808CD9E0 C6C00104 */  lwc1    $f0, 0x0104($s6)           ## 00000104
/* 02C24 808CD9E4 4600C03C */  c.lt.s  $f24, $f0                  
.L808CD9E8:
/* 02C28 808CD9E8 00000000 */  nop
/* 02C2C 808CD9EC 45020011 */  bc1fl   .L808CDA34                 
/* 02C30 808CD9F0 93B801CF */  lbu     $t8, 0x01CF($sp)           
/* 02C34 808CD9F4 C6C60028 */  lwc1    $f6, 0x0028($s6)           ## 00000028
/* 02C38 808CD9F8 240D0050 */  addiu   $t5, $zero, 0x0050         ## $t5 = 00000050
/* 02C3C 808CD9FC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02C40 808CDA00 4618303E */  c.le.s  $f6, $f24                  
/* 02C44 808CDA04 24060050 */  addiu   $a2, $zero, 0x0050         ## $a2 = 00000050
/* 02C48 808CDA08 24075000 */  addiu   $a3, $zero, 0x5000         ## $a3 = 00005000
/* 02C4C 808CDA0C 45020009 */  bc1fl   .L808CDA34                 
/* 02C50 808CDA10 93B801CF */  lbu     $t8, 0x01CF($sp)           
/* 02C54 808CDA14 A6CD0250 */  sh      $t5, 0x0250($s6)           ## 00000250
/* 02C58 808CDA18 0C00CF87 */  jal     func_80033E1C              
/* 02C5C 808CDA1C 8FA401D4 */  lw      $a0, 0x01D4($sp)           
/* 02C60 808CDA20 240E001E */  addiu   $t6, $zero, 0x001E         ## $t6 = 0000001E
/* 02C64 808CDA24 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 02C68 808CDA28 A6CE0238 */  sh      $t6, 0x0238($s6)           ## 00000238
/* 02C6C 808CDA2C A6CF0240 */  sh      $t7, 0x0240($s6)           ## 00000240
/* 02C70 808CDA30 93B801CF */  lbu     $t8, 0x01CF($sp)           
.L808CDA34:
/* 02C74 808CDA34 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 02C78 808CDA38 3C01808D */  lui     $at, %hi(D_808D1F44)       ## $at = 808D0000
/* 02C7C 808CDA3C 170000C7 */  bne     $t8, $zero, .L808CDD5C     
/* 02C80 808CDA40 00000000 */  nop
/* 02C84 808CDA44 86D90224 */  lh      $t9, 0x0224($s6)           ## 00000224
/* 02C88 808CDA48 3C01808D */  lui     $at, %hi(D_808D1F2C)       ## $at = 808D0000
/* 02C8C 808CDA4C C4361F2C */  lwc1    $f22, %lo(D_808D1F2C)($at) 
/* 02C90 808CDA50 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 02C94 808CDA54 00000000 */  nop
/* 02C98 808CDA58 46805220 */  cvt.s.w $f8, $f10                  
/* 02C9C 808CDA5C 46164102 */  mul.s   $f4, $f8, $f22             
/* 02CA0 808CDA60 4600218D */  trunc.w.s $f6, $f4                   
/* 02CA4 808CDA64 44043000 */  mfc1    $a0, $f6                   
/* 02CA8 808CDA68 00000000 */  nop
/* 02CAC 808CDA6C 00042400 */  sll     $a0, $a0, 16               
/* 02CB0 808CDA70 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02CB4 808CDA74 00042403 */  sra     $a0, $a0, 16               
/* 02CB8 808CDA78 3C01808D */  lui     $at, %hi(D_808D1F30)       ## $at = 808D0000
/* 02CBC 808CDA7C C42A1F30 */  lwc1    $f10, %lo(D_808D1F30)($at) 
/* 02CC0 808CDA80 3C0144FA */  lui     $at, 0x44FA                ## $at = 44FA0000
/* 02CC4 808CDA84 44813000 */  mtc1    $at, $f6                   ## $f6 = 2000.00
/* 02CC8 808CDA88 460A0082 */  mul.s   $f2, $f0, $f10             
/* 02CCC 808CDA8C E7A200E4 */  swc1    $f2, 0x00E4($sp)           
/* 02CD0 808CDA90 E7A200E0 */  swc1    $f2, 0x00E0($sp)           
/* 02CD4 808CDA94 86C90224 */  lh      $t1, 0x0224($s6)           ## 00000224
/* 02CD8 808CDA98 44894000 */  mtc1    $t1, $f8                   ## $f8 = 0.00
/* 02CDC 808CDA9C 00000000 */  nop
/* 02CE0 808CDAA0 46804120 */  cvt.s.w $f4, $f8                   
/* 02CE4 808CDAA4 46062282 */  mul.s   $f10, $f4, $f6             
/* 02CE8 808CDAA8 4600520D */  trunc.w.s $f8, $f10                  
/* 02CEC 808CDAAC 44044000 */  mfc1    $a0, $f8                   
/* 02CF0 808CDAB0 00000000 */  nop
/* 02CF4 808CDAB4 00042400 */  sll     $a0, $a0, 16               
/* 02CF8 808CDAB8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02CFC 808CDABC 00042403 */  sra     $a0, $a0, 16               
/* 02D00 808CDAC0 3C01457A */  lui     $at, 0x457A                ## $at = 457A0000
/* 02D04 808CDAC4 4481A000 */  mtc1    $at, $f20                  ## $f20 = 4000.00
/* 02D08 808CDAC8 3C01808D */  lui     $at, %hi(D_808D1F34)       ## $at = 808D0000
/* 02D0C 808CDACC C4381F34 */  lwc1    $f24, %lo(D_808D1F34)($at) 
/* 02D10 808CDAD0 46140102 */  mul.s   $f4, $f0, $f20             
/* 02D14 808CDAD4 E7A400EC */  swc1    $f4, 0x00EC($sp)           
/* 02D18 808CDAD8 86CB0224 */  lh      $t3, 0x0224($s6)           ## 00000224
/* 02D1C 808CDADC 448B3000 */  mtc1    $t3, $f6                   ## $f6 = 0.00
/* 02D20 808CDAE0 00000000 */  nop
/* 02D24 808CDAE4 468032A0 */  cvt.s.w $f10, $f6                  
/* 02D28 808CDAE8 46185202 */  mul.s   $f8, $f10, $f24            
/* 02D2C 808CDAEC 4600410D */  trunc.w.s $f4, $f8                   
/* 02D30 808CDAF0 44042000 */  mfc1    $a0, $f4                   
/* 02D34 808CDAF4 00000000 */  nop
/* 02D38 808CDAF8 00042400 */  sll     $a0, $a0, 16               
/* 02D3C 808CDAFC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02D40 808CDB00 00042403 */  sra     $a0, $a0, 16               
/* 02D44 808CDB04 46140182 */  mul.s   $f6, $f0, $f20             
/* 02D48 808CDB08 3C01808D */  lui     $at, %hi(D_808D1F38)       ## $at = 808D0000
/* 02D4C 808CDB0C C43A1F38 */  lwc1    $f26, %lo(D_808D1F38)($at) 
/* 02D50 808CDB10 E7A600F0 */  swc1    $f6, 0x00F0($sp)           
/* 02D54 808CDB14 86CD0224 */  lh      $t5, 0x0224($s6)           ## 00000224
/* 02D58 808CDB18 448D5000 */  mtc1    $t5, $f10                  ## $f10 = 0.00
/* 02D5C 808CDB1C 00000000 */  nop
/* 02D60 808CDB20 46805220 */  cvt.s.w $f8, $f10                  
/* 02D64 808CDB24 461A4102 */  mul.s   $f4, $f8, $f26             
/* 02D68 808CDB28 4600218D */  trunc.w.s $f6, $f4                   
/* 02D6C 808CDB2C 44043000 */  mfc1    $a0, $f6                   
/* 02D70 808CDB30 00000000 */  nop
/* 02D74 808CDB34 00042400 */  sll     $a0, $a0, 16               
/* 02D78 808CDB38 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02D7C 808CDB3C 00042403 */  sra     $a0, $a0, 16               
/* 02D80 808CDB40 3C01808D */  lui     $at, %hi(D_808D1F3C)       ## $at = 808D0000
/* 02D84 808CDB44 C4341F3C */  lwc1    $f20, %lo(D_808D1F3C)($at) 
/* 02D88 808CDB48 3C0144FA */  lui     $at, 0x44FA                ## $at = 44FA0000
/* 02D8C 808CDB4C 44815000 */  mtc1    $at, $f10                  ## $f10 = 2000.00
/* 02D90 808CDB50 00000000 */  nop
/* 02D94 808CDB54 460A0202 */  mul.s   $f8, $f0, $f10             
/* 02D98 808CDB58 E7A800F8 */  swc1    $f8, 0x00F8($sp)           
/* 02D9C 808CDB5C 86CF0224 */  lh      $t7, 0x0224($s6)           ## 00000224
/* 02DA0 808CDB60 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 02DA4 808CDB64 00000000 */  nop
/* 02DA8 808CDB68 468021A0 */  cvt.s.w $f6, $f4                   
/* 02DAC 808CDB6C 46143282 */  mul.s   $f10, $f6, $f20            
/* 02DB0 808CDB70 4600520D */  trunc.w.s $f8, $f10                  
/* 02DB4 808CDB74 44044000 */  mfc1    $a0, $f8                   
/* 02DB8 808CDB78 00000000 */  nop
/* 02DBC 808CDB7C 00042400 */  sll     $a0, $a0, 16               
/* 02DC0 808CDB80 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02DC4 808CDB84 00042403 */  sra     $a0, $a0, 16               
/* 02DC8 808CDB88 3C0144FA */  lui     $at, 0x44FA                ## $at = 44FA0000
/* 02DCC 808CDB8C 44812000 */  mtc1    $at, $f4                   ## $f4 = 2000.00
/* 02DD0 808CDB90 00000000 */  nop
/* 02DD4 808CDB94 46040182 */  mul.s   $f6, $f0, $f4              
/* 02DD8 808CDB98 E7A600FC */  swc1    $f6, 0x00FC($sp)           
/* 02DDC 808CDB9C 86D90224 */  lh      $t9, 0x0224($s6)           ## 00000224
/* 02DE0 808CDBA0 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 02DE4 808CDBA4 00000000 */  nop
/* 02DE8 808CDBA8 46805220 */  cvt.s.w $f8, $f10                  
/* 02DEC 808CDBAC 46164102 */  mul.s   $f4, $f8, $f22             
/* 02DF0 808CDBB0 4600218D */  trunc.w.s $f6, $f4                   
/* 02DF4 808CDBB4 44043000 */  mfc1    $a0, $f6                   
/* 02DF8 808CDBB8 00000000 */  nop
/* 02DFC 808CDBBC 00042400 */  sll     $a0, $a0, 16               
/* 02E00 808CDBC0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02E04 808CDBC4 00042403 */  sra     $a0, $a0, 16               
/* 02E08 808CDBC8 3C01808D */  lui     $at, %hi(D_808D1F40)       ## $at = 808D0000
/* 02E0C 808CDBCC C4361F40 */  lwc1    $f22, %lo(D_808D1F40)($at) 
/* 02E10 808CDBD0 46160082 */  mul.s   $f2, $f0, $f22             
/* 02E14 808CDBD4 E7A200C0 */  swc1    $f2, 0x00C0($sp)           
/* 02E18 808CDBD8 E7A200BC */  swc1    $f2, 0x00BC($sp)           
/* 02E1C 808CDBDC 86C90224 */  lh      $t1, 0x0224($s6)           ## 00000224
/* 02E20 808CDBE0 44895000 */  mtc1    $t1, $f10                  ## $f10 = 0.00
/* 02E24 808CDBE4 00000000 */  nop
/* 02E28 808CDBE8 46805220 */  cvt.s.w $f8, $f10                  
/* 02E2C 808CDBEC 46184102 */  mul.s   $f4, $f8, $f24             
/* 02E30 808CDBF0 4600218D */  trunc.w.s $f6, $f4                   
/* 02E34 808CDBF4 44043000 */  mfc1    $a0, $f6                   
/* 02E38 808CDBF8 00000000 */  nop
/* 02E3C 808CDBFC 00042400 */  sll     $a0, $a0, 16               
/* 02E40 808CDC00 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02E44 808CDC04 00042403 */  sra     $a0, $a0, 16               
/* 02E48 808CDC08 3C01C57A */  lui     $at, 0xC57A                ## $at = C57A0000
/* 02E4C 808CDC0C 4481B000 */  mtc1    $at, $f22                  ## $f22 = -4000.00
/* 02E50 808CDC10 3C0144FA */  lui     $at, 0x44FA                ## $at = 44FA0000
/* 02E54 808CDC14 44813000 */  mtc1    $at, $f6                   ## $f6 = 2000.00
/* 02E58 808CDC18 46160282 */  mul.s   $f10, $f0, $f22            
/* 02E5C 808CDC1C E7AA00C8 */  swc1    $f10, 0x00C8($sp)          
/* 02E60 808CDC20 86CB0224 */  lh      $t3, 0x0224($s6)           ## 00000224
/* 02E64 808CDC24 448B4000 */  mtc1    $t3, $f8                   ## $f8 = 0.00
/* 02E68 808CDC28 00000000 */  nop
/* 02E6C 808CDC2C 46804120 */  cvt.s.w $f4, $f8                   
/* 02E70 808CDC30 46062282 */  mul.s   $f10, $f4, $f6             
/* 02E74 808CDC34 4600520D */  trunc.w.s $f8, $f10                  
/* 02E78 808CDC38 44044000 */  mfc1    $a0, $f8                   
/* 02E7C 808CDC3C 00000000 */  nop
/* 02E80 808CDC40 00042400 */  sll     $a0, $a0, 16               
/* 02E84 808CDC44 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02E88 808CDC48 00042403 */  sra     $a0, $a0, 16               
/* 02E8C 808CDC4C 46160102 */  mul.s   $f4, $f0, $f22             
/* 02E90 808CDC50 E7A400CC */  swc1    $f4, 0x00CC($sp)           
/* 02E94 808CDC54 86CD0224 */  lh      $t5, 0x0224($s6)           ## 00000224
/* 02E98 808CDC58 448D3000 */  mtc1    $t5, $f6                   ## $f6 = 0.00
/* 02E9C 808CDC5C 00000000 */  nop
/* 02EA0 808CDC60 468032A0 */  cvt.s.w $f10, $f6                  
/* 02EA4 808CDC64 46145202 */  mul.s   $f8, $f10, $f20            
/* 02EA8 808CDC68 4600410D */  trunc.w.s $f4, $f8                   
/* 02EAC 808CDC6C 44042000 */  mfc1    $a0, $f4                   
/* 02EB0 808CDC70 00000000 */  nop
/* 02EB4 808CDC74 00042400 */  sll     $a0, $a0, 16               
/* 02EB8 808CDC78 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02EBC 808CDC7C 00042403 */  sra     $a0, $a0, 16               
/* 02EC0 808CDC80 3C01C4FA */  lui     $at, 0xC4FA                ## $at = C4FA0000
/* 02EC4 808CDC84 4481A000 */  mtc1    $at, $f20                  ## $f20 = -2000.00
/* 02EC8 808CDC88 00000000 */  nop
/* 02ECC 808CDC8C 46140182 */  mul.s   $f6, $f0, $f20             
/* 02ED0 808CDC90 E7A600D4 */  swc1    $f6, 0x00D4($sp)           
/* 02ED4 808CDC94 86CF0224 */  lh      $t7, 0x0224($s6)           ## 00000224
/* 02ED8 808CDC98 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 02EDC 808CDC9C 00000000 */  nop
/* 02EE0 808CDCA0 46805220 */  cvt.s.w $f8, $f10                  
/* 02EE4 808CDCA4 461A4102 */  mul.s   $f4, $f8, $f26             
/* 02EE8 808CDCA8 4600218D */  trunc.w.s $f6, $f4                   
/* 02EEC 808CDCAC 44043000 */  mfc1    $a0, $f6                   
/* 02EF0 808CDCB0 00000000 */  nop
/* 02EF4 808CDCB4 00042400 */  sll     $a0, $a0, 16               
/* 02EF8 808CDCB8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02EFC 808CDCBC 00042403 */  sra     $a0, $a0, 16               
/* 02F00 808CDCC0 46140282 */  mul.s   $f10, $f0, $f20            
/* 02F04 808CDCC4 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 02F08 808CDCC8 27B500BC */  addiu   $s5, $sp, 0x00BC           ## $s5 = FFFFFEEC
/* 02F0C 808CDCCC 27B400E0 */  addiu   $s4, $sp, 0x00E0           ## $s4 = FFFFFF10
/* 02F10 808CDCD0 E7AA00D8 */  swc1    $f10, 0x00D8($sp)          
/* 02F14 808CDCD4 00138880 */  sll     $s1, $s3,  2               
.L808CDCD8:
/* 02F18 808CDCD8 02338823 */  subu    $s1, $s1, $s3              
/* 02F1C 808CDCDC 00118880 */  sll     $s1, $s1,  2               
/* 02F20 808CDCE0 02D18021 */  addu    $s0, $s6, $s1              
/* 02F24 808CDCE4 02919021 */  addu    $s2, $s4, $s1              
/* 02F28 808CDCE8 4406F000 */  mfc1    $a2, $f30                  
/* 02F2C 808CDCEC 8E450000 */  lw      $a1, 0x0000($s2)           ## 808D19F8
/* 02F30 808CDCF0 26040C3C */  addiu   $a0, $s0, 0x0C3C           ## $a0 = 00000C3C
/* 02F34 808CDCF4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02F38 808CDCF8 3C07447A */  lui     $a3, 0x447A                ## $a3 = 447A0000
/* 02F3C 808CDCFC 4406F000 */  mfc1    $a2, $f30                  
/* 02F40 808CDD00 26040C40 */  addiu   $a0, $s0, 0x0C40           ## $a0 = 00000C40
/* 02F44 808CDD04 8E450004 */  lw      $a1, 0x0004($s2)           ## 808D19FC
/* 02F48 808CDD08 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02F4C 808CDD0C 3C07447A */  lui     $a3, 0x447A                ## $a3 = 447A0000
/* 02F50 808CDD10 02B19021 */  addu    $s2, $s5, $s1              
/* 02F54 808CDD14 4406F000 */  mfc1    $a2, $f30                  
/* 02F58 808CDD18 8E450000 */  lw      $a1, 0x0000($s2)           ## 808D19F8
/* 02F5C 808CDD1C 26040C6C */  addiu   $a0, $s0, 0x0C6C           ## $a0 = 00000C6C
/* 02F60 808CDD20 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02F64 808CDD24 3C07447A */  lui     $a3, 0x447A                ## $a3 = 447A0000
/* 02F68 808CDD28 4406F000 */  mfc1    $a2, $f30                  
/* 02F6C 808CDD2C 26040C70 */  addiu   $a0, $s0, 0x0C70           ## $a0 = 00000C70
/* 02F70 808CDD30 8E450004 */  lw      $a1, 0x0004($s2)           ## 808D19FC
/* 02F74 808CDD34 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02F78 808CDD38 3C07447A */  lui     $a3, 0x447A                ## $a3 = 447A0000
/* 02F7C 808CDD3C 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 02F80 808CDD40 00139C00 */  sll     $s3, $s3, 16               
/* 02F84 808CDD44 00139C03 */  sra     $s3, $s3, 16               
/* 02F88 808CDD48 2A610003 */  slti    $at, $s3, 0x0003           
/* 02F8C 808CDD4C 5420FFE2 */  bnel    $at, $zero, .L808CDCD8     
/* 02F90 808CDD50 00138880 */  sll     $s1, $s3,  2               
/* 02F94 808CDD54 10000027 */  beq     $zero, $zero, .L808CDDF4   
/* 02F98 808CDD58 8FBF007C */  lw      $ra, 0x007C($sp)           
.L808CDD5C:
/* 02F9C 808CDD5C C4361F44 */  lwc1    $f22, %lo(D_808D1F44)($at) 
/* 02FA0 808CDD60 0010C880 */  sll     $t9, $s0,  2               
.L808CDD64:
/* 02FA4 808CDD64 0330C823 */  subu    $t9, $t9, $s0              
/* 02FA8 808CDD68 0019C880 */  sll     $t9, $t9,  2               
/* 02FAC 808CDD6C 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 02FB0 808CDD70 02D98821 */  addu    $s1, $s6, $t9              
/* 02FB4 808CDD74 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 02FB8 808CDD78 4406E000 */  mfc1    $a2, $f28                  
/* 02FBC 808CDD7C 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 02FC0 808CDD80 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 02FC4 808CDD84 26240C40 */  addiu   $a0, $s1, 0x0C40           ## $a0 = 00000B78
/* 02FC8 808CDD88 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 02FCC 808CDD8C 4406E000 */  mfc1    $a2, $f28                  
/* 02FD0 808CDD90 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 02FD4 808CDD94 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 02FD8 808CDD98 26240C70 */  addiu   $a0, $s1, 0x0C70           ## $a0 = 00000BA8
/* 02FDC 808CDD9C 16000002 */  bne     $s0, $zero, .L808CDDA8     
/* 02FE0 808CDDA0 26240C3C */  addiu   $a0, $s1, 0x0C3C           ## $a0 = 00000B74
/* 02FE4 808CDDA4 4600B506 */  mov.s   $f20, $f22                 
.L808CDDA8:
/* 02FE8 808CDDA8 4405A000 */  mfc1    $a1, $f20                  
/* 02FEC 808CDDAC 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 02FF0 808CDDB0 4407E000 */  mfc1    $a3, $f28                  
/* 02FF4 808CDDB4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02FF8 808CDDB8 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 02FFC 808CDDBC 4600A207 */  neg.s   $f8, $f20                  
/* 03000 808CDDC0 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 03004 808CDDC4 44054000 */  mfc1    $a1, $f8                   
/* 03008 808CDDC8 4407E000 */  mfc1    $a3, $f28                  
/* 0300C 808CDDCC 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 03010 808CDDD0 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 03014 808CDDD4 26240C6C */  addiu   $a0, $s1, 0x0C6C           ## $a0 = 00000BA4
/* 03018 808CDDD8 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 0301C 808CDDDC 00108400 */  sll     $s0, $s0, 16               
/* 03020 808CDDE0 00108403 */  sra     $s0, $s0, 16               
/* 03024 808CDDE4 2A010003 */  slti    $at, $s0, 0x0003           
/* 03028 808CDDE8 5420FFDE */  bnel    $at, $zero, .L808CDD64     
/* 0302C 808CDDEC 0010C880 */  sll     $t9, $s0,  2               
.L808CDDF0:
/* 03030 808CDDF0 8FBF007C */  lw      $ra, 0x007C($sp)           
.L808CDDF4:
/* 03034 808CDDF4 D7B40030 */  ldc1    $f20, 0x0030($sp)          
/* 03038 808CDDF8 D7B60038 */  ldc1    $f22, 0x0038($sp)          
/* 0303C 808CDDFC D7B80040 */  ldc1    $f24, 0x0040($sp)          
/* 03040 808CDE00 D7BA0048 */  ldc1    $f26, 0x0048($sp)          
/* 03044 808CDE04 D7BC0050 */  ldc1    $f28, 0x0050($sp)          
/* 03048 808CDE08 D7BE0058 */  ldc1    $f30, 0x0058($sp)          
/* 0304C 808CDE0C 8FB00060 */  lw      $s0, 0x0060($sp)           
/* 03050 808CDE10 8FB10064 */  lw      $s1, 0x0064($sp)           
/* 03054 808CDE14 8FB20068 */  lw      $s2, 0x0068($sp)           
/* 03058 808CDE18 8FB3006C */  lw      $s3, 0x006C($sp)           
/* 0305C 808CDE1C 8FB40070 */  lw      $s4, 0x0070($sp)           
/* 03060 808CDE20 8FB50074 */  lw      $s5, 0x0074($sp)           
/* 03064 808CDE24 8FB60078 */  lw      $s6, 0x0078($sp)           
/* 03068 808CDE28 03E00008 */  jr      $ra                        
/* 0306C 808CDE2C 27BD01D0 */  addiu   $sp, $sp, 0x01D0           ## $sp = 00000000
