.late_rodata
glabel D_80A8E480
    .float 0.02
    .balign 4

.text
glabel func_80A89860
/* 000C0 80A89860 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 000C4 80A89864 AFBE0050 */  sw      $s8, 0x0050($sp)           
/* 000C8 80A89868 AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 000CC 80A8986C AFB7004C */  sw      $s7, 0x004C($sp)           
/* 000D0 80A89870 AFB60048 */  sw      $s6, 0x0048($sp)           
/* 000D4 80A89874 AFB50044 */  sw      $s5, 0x0044($sp)           
/* 000D8 80A89878 AFB40040 */  sw      $s4, 0x0040($sp)           
/* 000DC 80A8987C AFB3003C */  sw      $s3, 0x003C($sp)           
/* 000E0 80A89880 AFB20038 */  sw      $s2, 0x0038($sp)           
/* 000E4 80A89884 AFB10034 */  sw      $s1, 0x0034($sp)           
/* 000E8 80A89888 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 000EC 80A8988C F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 000F0 80A89890 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 000F4 80A89894 AFA50084 */  sw      $a1, 0x0084($sp)           
/* 000F8 80A89898 249E0024 */  addiu   $s8, $a0, 0x0024           ## $s8 = 00000024
/* 000FC 80A8989C 8FD80000 */  lw      $t8, 0x0000($s8)           ## 00000024
/* 00100 80A898A0 27AE0068 */  addiu   $t6, $sp, 0x0068           ## $t6 = FFFFFFE8
/* 00104 80A898A4 3C0280A9 */  lui     $v0, %hi(D_80A8BA98)       ## $v0 = 80A90000
/* 00108 80A898A8 ADD80000 */  sw      $t8, 0x0000($t6)           ## FFFFFFE8
/* 0010C 80A898AC 8FCF0004 */  lw      $t7, 0x0004($s8)           ## 00000028
/* 00110 80A898B0 2442BA98 */  addiu   $v0, $v0, %lo(D_80A8BA98)  ## $v0 = 80A8BA98
/* 00114 80A898B4 3C0380A9 */  lui     $v1, %hi(D_80A8C398)       ## $v1 = 80A90000
/* 00118 80A898B8 ADCF0004 */  sw      $t7, 0x0004($t6)           ## FFFFFFEC
/* 0011C 80A898BC 8FD80008 */  lw      $t8, 0x0008($s8)           ## 0000002C
/* 00120 80A898C0 0002C900 */  sll     $t9, $v0,  4               
/* 00124 80A898C4 2463C398 */  addiu   $v1, $v1, %lo(D_80A8C398)  ## $v1 = 80A8C398
/* 00128 80A898C8 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 0012C 80A898CC 00194F02 */  srl     $t1, $t9, 28               
/* 00130 80A898D0 00037900 */  sll     $t7, $v1,  4               
/* 00134 80A898D4 ADD80008 */  sw      $t8, 0x0008($t6)           ## FFFFFFF0
/* 00138 80A898D8 24C66FA8 */  addiu   $a2, $a2, 0x6FA8           ## $a2 = 80166FA8
/* 0013C 80A898DC 00095080 */  sll     $t2, $t1,  2               
/* 00140 80A898E0 000FC702 */  srl     $t8, $t7, 28               
/* 00144 80A898E4 00CA5821 */  addu    $t3, $a2, $t2              
/* 00148 80A898E8 0018C880 */  sll     $t9, $t8,  2               
/* 0014C 80A898EC 8D6C0000 */  lw      $t4, 0x0000($t3)           ## 00000000
/* 00150 80A898F0 3C0700FF */  lui     $a3, 0x00FF                ## $a3 = 00FF0000
/* 00154 80A898F4 00D94821 */  addu    $t1, $a2, $t9              
/* 00158 80A898F8 8D2A0000 */  lw      $t2, 0x0000($t1)           ## 00000000
/* 0015C 80A898FC 34E7FFFF */  ori     $a3, $a3, 0xFFFF           ## $a3 = 00FFFFFF
/* 00160 80A89900 3C0180A9 */  lui     $at, %hi(D_80A8E480)       ## $at = 80A90000
/* 00164 80A89904 00476824 */  and     $t5, $v0, $a3              
/* 00168 80A89908 C436E480 */  lwc1    $f22, %lo(D_80A8E480)($at) 
/* 0016C 80A8990C 3C088000 */  lui     $t0, 0x8000                ## $t0 = 80000000
/* 00170 80A89910 00675824 */  and     $t3, $v1, $a3              
/* 00174 80A89914 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00178 80A89918 018D7021 */  addu    $t6, $t4, $t5              
/* 0017C 80A8991C 3C1480A9 */  lui     $s4, %hi(D_80A8EE10)       ## $s4 = 80A90000
/* 00180 80A89920 014B6021 */  addu    $t4, $t2, $t3              
/* 00184 80A89924 4481A000 */  mtc1    $at, $f20                  ## $f20 = 10.00
/* 00188 80A89928 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 0018C 80A8992C 01C88021 */  addu    $s0, $t6, $t0              
/* 00190 80A89930 01889021 */  addu    $s2, $t4, $t0              
/* 00194 80A89934 2694EE10 */  addiu   $s4, $s4, %lo(D_80A8EE10)  ## $s4 = 80A8EE10
/* 00198 80A89938 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 0019C 80A8993C 24150006 */  addiu   $s5, $zero, 0x0006         ## $s5 = 00000006
/* 001A0 80A89940 24160001 */  addiu   $s6, $zero, 0x0001         ## $s6 = 00000001
/* 001A4 80A89944 24170585 */  addiu   $s7, $zero, 0x0585         ## $s7 = 00000585
.L80A89948:
/* 001A8 80A89948 02750019 */  multu   $s3, $s5                   
/* 001AC 80A8994C 860E0000 */  lh      $t6, 0x0000($s0)           ## 00000000
/* 001B0 80A89950 00006812 */  mflo    $t5                        
/* 001B4 80A89954 028D1021 */  addu    $v0, $s4, $t5              
/* 001B8 80A89958 A44E0000 */  sh      $t6, 0x0000($v0)           ## 80A8BA98
/* 001BC 80A8995C 860F0004 */  lh      $t7, 0x0004($s0)           ## 00000004
/* 001C0 80A89960 A44F0004 */  sh      $t7, 0x0004($v0)           ## 80A8BA9C
/* 001C4 80A89964 8638001C */  lh      $t8, 0x001C($s1)           ## 0000001C
/* 001C8 80A89968 56D80006 */  bnel    $s6, $t8, .L80A89984       
/* 001CC 80A8996C 86090000 */  lh      $t1, 0x0000($s0)           ## 00000000
/* 001D0 80A89970 A6570002 */  sh      $s7, 0x0002($s2)           ## 00000002
/* 001D4 80A89974 86590002 */  lh      $t9, 0x0002($s2)           ## 00000002
/* 001D8 80A89978 10000027 */  beq     $zero, $zero, .L80A89A18   
/* 001DC 80A8997C A6190002 */  sh      $t9, 0x0002($s0)           ## 00000002
/* 001E0 80A89980 86090000 */  lh      $t1, 0x0000($s0)           ## 00000000
.L80A89984:
/* 001E4 80A89984 C7AA0068 */  lwc1    $f10, 0x0068($sp)          
/* 001E8 80A89988 4406A000 */  mfc1    $a2, $f20                  
/* 001EC 80A8998C 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 001F0 80A89990 4407A000 */  mfc1    $a3, $f20                  
/* 001F4 80A89994 240B0004 */  addiu   $t3, $zero, 0x0004         ## $t3 = 00000004
/* 001F8 80A89998 468021A0 */  cvt.s.w $f6, $f4                   
/* 001FC 80A8999C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00200 80A899A0 46163202 */  mul.s   $f8, $f6, $f22             
/* 00204 80A899A4 460A4400 */  add.s   $f16, $f8, $f10            
/* 00208 80A899A8 E6300024 */  swc1    $f16, 0x0024($s1)          ## 00000024
/* 0020C 80A899AC 860A0004 */  lh      $t2, 0x0004($s0)           ## 00000004
/* 00210 80A899B0 C7A80070 */  lwc1    $f8, 0x0070($sp)           
/* 00214 80A899B4 448A9000 */  mtc1    $t2, $f18                  ## $f18 = 0.00
/* 00218 80A899B8 00000000 */  nop
/* 0021C 80A899BC 46809120 */  cvt.s.w $f4, $f18                  
/* 00220 80A899C0 46162182 */  mul.s   $f6, $f4, $f22             
/* 00224 80A899C4 46083280 */  add.s   $f10, $f6, $f8             
/* 00228 80A899C8 E62A002C */  swc1    $f10, 0x002C($s1)          ## 0000002C
/* 0022C 80A899CC AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00230 80A899D0 E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 00234 80A899D4 0C00B92D */  jal     func_8002E4B4              
/* 00238 80A899D8 8FA40084 */  lw      $a0, 0x0084($sp)           
/* 0023C 80A899DC C6300080 */  lwc1    $f16, 0x0080($s1)          ## 00000080
/* 00240 80A899E0 27AD0068 */  addiu   $t5, $sp, 0x0068           ## $t5 = FFFFFFE8
/* 00244 80A899E4 4600848D */  trunc.w.s $f18, $f16                 
/* 00248 80A899E8 44029000 */  mfc1    $v0, $f18                  
/* 0024C 80A899EC 00000000 */  nop
/* 00250 80A899F0 00021400 */  sll     $v0, $v0, 16               
/* 00254 80A899F4 00021403 */  sra     $v0, $v0, 16               
/* 00258 80A899F8 A6420002 */  sh      $v0, 0x0002($s2)           ## 00000002
/* 0025C 80A899FC A6020002 */  sh      $v0, 0x0002($s0)           ## 00000002
/* 00260 80A89A00 8DAF0000 */  lw      $t7, 0x0000($t5)           ## FFFFFFE8
/* 00264 80A89A04 AFCF0000 */  sw      $t7, 0x0000($s8)           ## 00000024
/* 00268 80A89A08 8DAE0004 */  lw      $t6, 0x0004($t5)           ## FFFFFFEC
/* 0026C 80A89A0C AFCE0004 */  sw      $t6, 0x0004($s8)           ## 00000028
/* 00270 80A89A10 8DAF0008 */  lw      $t7, 0x0008($t5)           ## FFFFFFF0
/* 00274 80A89A14 AFCF0008 */  sw      $t7, 0x0008($s8)           ## 0000002C
.L80A89A18:
/* 00278 80A89A18 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 0027C 80A89A1C 00139C00 */  sll     $s3, $s3, 16               
/* 00280 80A89A20 00139C03 */  sra     $s3, $s3, 16               
/* 00284 80A89A24 2A610090 */  slti    $at, $s3, 0x0090           
/* 00288 80A89A28 26100010 */  addiu   $s0, $s0, 0x0010           ## $s0 = 00000010
/* 0028C 80A89A2C 1420FFC6 */  bne     $at, $zero, .L80A89948     
/* 00290 80A89A30 26520010 */  addiu   $s2, $s2, 0x0010           ## $s2 = 00000010
/* 00294 80A89A34 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 00298 80A89A38 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 0029C 80A89A3C D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 002A0 80A89A40 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 002A4 80A89A44 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 002A8 80A89A48 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 002AC 80A89A4C 8FB3003C */  lw      $s3, 0x003C($sp)           
/* 002B0 80A89A50 8FB40040 */  lw      $s4, 0x0040($sp)           
/* 002B4 80A89A54 8FB50044 */  lw      $s5, 0x0044($sp)           
/* 002B8 80A89A58 8FB60048 */  lw      $s6, 0x0048($sp)           
/* 002BC 80A89A5C 8FB7004C */  lw      $s7, 0x004C($sp)           
/* 002C0 80A89A60 8FBE0050 */  lw      $s8, 0x0050($sp)           
/* 002C4 80A89A64 03E00008 */  jr      $ra                        
/* 002C8 80A89A68 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000


