.rdata
glabel D_80A076AC
    .asciz "\x1b[32m☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n\x1b[m"
    .balign 4

glabel D_80A076DC
    .asciz "\x1b[32m☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n\x1b[m"
    .balign 4

glabel D_80A0770C
    .asciz "\x1b[32m☆☆☆☆☆ 発生できません！ ☆☆☆☆☆\n\x1b[m"
    .balign 4

.late_rodata
glabel D_80A0785C
    .float 1300.0

glabel D_80A07860
 .word 0x407F5C29
glabel D_80A07864
 .word 0x403F5C29, 0x00000000, 0x00000000

.text
glabel func_80A0693C
/* 0021C 80A0693C 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 00220 80A06940 AFBF005C */  sw      $ra, 0x005C($sp)           
/* 00224 80A06944 AFB60058 */  sw      $s6, 0x0058($sp)           
/* 00228 80A06948 AFB50054 */  sw      $s5, 0x0054($sp)           
/* 0022C 80A0694C AFB40050 */  sw      $s4, 0x0050($sp)           
/* 00230 80A06950 AFB3004C */  sw      $s3, 0x004C($sp)           
/* 00234 80A06954 AFB20048 */  sw      $s2, 0x0048($sp)           
/* 00238 80A06958 AFB10044 */  sw      $s1, 0x0044($sp)           
/* 0023C 80A0695C AFB00040 */  sw      $s0, 0x0040($sp)           
/* 00240 80A06960 F7B40038 */  sdc1    $f20, 0x0038($sp)          
/* 00244 80A06964 8C980024 */  lw      $t8, 0x0024($a0)           ## 00000024
/* 00248 80A06968 8CB31C44 */  lw      $s3, 0x1C44($a1)           ## 00001C44
/* 0024C 80A0696C A480015A */  sh      $zero, 0x015A($a0)         ## 0000015A
/* 00250 80A06970 27AE0078 */  addiu   $t6, $sp, 0x0078           ## $t6 = FFFFFFE0
/* 00254 80A06974 ADD80000 */  sw      $t8, 0x0000($t6)           ## FFFFFFE0
/* 00258 80A06978 8C8F0028 */  lw      $t7, 0x0028($a0)           ## 00000028
/* 0025C 80A0697C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00260 80A06980 00A0B025 */  or      $s6, $a1, $zero            ## $s6 = 00000000
/* 00264 80A06984 ADCF0004 */  sw      $t7, 0x0004($t6)           ## FFFFFFE4
/* 00268 80A06988 8C98002C */  lw      $t8, 0x002C($a0)           ## 0000002C
/* 0026C 80A0698C ADD80008 */  sw      $t8, 0x0008($t6)           ## FFFFFFE8
/* 00270 80A06990 84990164 */  lh      $t9, 0x0164($a0)           ## 00000164
/* 00274 80A06994 572000C4 */  bnel    $t9, $zero, .L80A06CA8     
/* 00278 80A06998 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 0027C 80A0699C 90A81D6C */  lbu     $t0, 0x1D6C($a1)           ## 00001D6C
/* 00280 80A069A0 550000C1 */  bnel    $t0, $zero, .L80A06CA8     
/* 00284 80A069A4 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 00288 80A069A8 84820152 */  lh      $v0, 0x0152($a0)           ## 00000152
/* 0028C 80A069AC 84890150 */  lh      $t1, 0x0150($a0)           ## 00000150
/* 00290 80A069B0 0122082A */  slt     $at, $t1, $v0              
/* 00294 80A069B4 142000BB */  bne     $at, $zero, .L80A06CA4     
/* 00298 80A069B8 28410005 */  slti    $at, $v0, 0x0005           
/* 0029C 80A069BC 102000B9 */  beq     $at, $zero, .L80A06CA4     
/* 002A0 80A069C0 24A407C0 */  addiu   $a0, $a1, 0x07C0           ## $a0 = 000007C0
/* 002A4 80A069C4 8E650078 */  lw      $a1, 0x0078($s3)           ## 00000078
/* 002A8 80A069C8 9266007D */  lbu     $a2, 0x007D($s3)           ## 0000007D
/* 002AC 80A069CC 0C010753 */  jal     func_80041D4C              
/* 002B0 80A069D0 AFA40060 */  sw      $a0, 0x0060($sp)           
/* 002B4 80A069D4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 002B8 80A069D8 10410007 */  beq     $v0, $at, .L80A069F8       
/* 002BC 80A069DC 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 002C0 80A069E0 10410005 */  beq     $v0, $at, .L80A069F8       
/* 002C4 80A069E4 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 002C8 80A069E8 50410004 */  beql    $v0, $at, .L80A069FC       
/* 002CC 80A069EC 92020166 */  lbu     $v0, 0x0166($s0)           ## 00000166
/* 002D0 80A069F0 100000AC */  beq     $zero, $zero, .L80A06CA4   
/* 002D4 80A069F4 A6000160 */  sh      $zero, 0x0160($s0)         ## 00000160
.L80A069F8:
/* 002D8 80A069F8 92020166 */  lbu     $v0, 0x0166($s0)           ## 00000166
.L80A069FC:
/* 002DC 80A069FC 3C0180A0 */  lui     $at, %hi(D_80A0785C)       ## $at = 80A00000
/* 002E0 80A06A00 240A0005 */  addiu   $t2, $zero, 0x0005         ## $t2 = 00000005
/* 002E4 80A06A04 10400007 */  beq     $v0, $zero, .L80A06A24     
/* 002E8 80A06A08 00000000 */  nop
/* 002EC 80A06A0C C424785C */  lwc1    $f4, %lo(D_80A0785C)($at)  
/* 002F0 80A06A10 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 002F4 80A06A14 4606203C */  c.lt.s  $f4, $f6                   
/* 002F8 80A06A18 00000000 */  nop
/* 002FC 80A06A1C 450300A2 */  bc1tl   .L80A06CA8                 
/* 00300 80A06A20 8FBF005C */  lw      $ra, 0x005C($sp)           
.L80A06A24:
/* 00304 80A06A24 10400003 */  beq     $v0, $zero, .L80A06A34     
/* 00308 80A06A28 A7AA0086 */  sh      $t2, 0x0086($sp)           
/* 0030C 80A06A2C 240B0003 */  addiu   $t3, $zero, 0x0003         ## $t3 = 00000003
/* 00310 80A06A30 A7AB0086 */  sh      $t3, 0x0086($sp)           
.L80A06A34:
/* 00314 80A06A34 86020152 */  lh      $v0, 0x0152($s0)           ## 00000152
/* 00318 80A06A38 860C0150 */  lh      $t4, 0x0150($s0)           ## 00000150
/* 0031C 80A06A3C 87AD0086 */  lh      $t5, 0x0086($sp)           
/* 00320 80A06A40 004C082A */  slt     $at, $v0, $t4              
/* 00324 80A06A44 10200097 */  beq     $at, $zero, .L80A06CA4     
/* 00328 80A06A48 004D082A */  slt     $at, $v0, $t5              
/* 0032C 80A06A4C 50200096 */  beql    $at, $zero, .L80A06CA8     
/* 00330 80A06A50 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 00334 80A06A54 860E0164 */  lh      $t6, 0x0164($s0)           ## 00000164
/* 00338 80A06A58 3C1580A0 */  lui     $s5, %hi(D_80A07450)       ## $s5 = 80A00000
/* 0033C 80A06A5C 26B57450 */  addiu   $s5, $s5, %lo(D_80A07450)  ## $s5 = 80A07450
/* 00340 80A06A60 15C00090 */  bne     $t6, $zero, .L80A06CA4     
/* 00344 80A06A64 3C1480A0 */  lui     $s4, %hi(D_80A0745C)       ## $s4 = 80A00000
/* 00348 80A06A68 2694745C */  addiu   $s4, $s4, %lo(D_80A0745C)  ## $s4 = 80A0745C
/* 0034C 80A06A6C 86020162 */  lh      $v0, 0x0162($s0)           ## 00000162
.L80A06A70:
/* 00350 80A06A70 866A00B6 */  lh      $t2, 0x00B6($s3)           ## 000000B6
/* 00354 80A06A74 860B015E */  lh      $t3, 0x015E($s0)           ## 0000015E
/* 00358 80A06A78 0002C840 */  sll     $t9, $v0,  1               
/* 0035C 80A06A7C 02B94021 */  addu    $t0, $s5, $t9              
/* 00360 80A06A80 85090000 */  lh      $t1, 0x0000($t0)           ## 00000000
/* 00364 80A06A84 00027880 */  sll     $t7, $v0,  2               
/* 00368 80A06A88 028FC021 */  addu    $t8, $s4, $t7              
/* 0036C 80A06A8C 012A8821 */  addu    $s1, $t1, $t2              
/* 00370 80A06A90 00118C00 */  sll     $s1, $s1, 16               
/* 00374 80A06A94 2961000A */  slti    $at, $t3, 0x000A           
/* 00378 80A06A98 C7140000 */  lwc1    $f20, 0x0000($t8)          ## 00000000
/* 0037C 80A06A9C 00118C03 */  sra     $s1, $s1, 16               
/* 00380 80A06AA0 1420000A */  bne     $at, $zero, .L80A06ACC     
/* 00384 80A06AA4 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 00388 80A06AA8 8E0C016C */  lw      $t4, 0x016C($s0)           ## 0000016C
/* 0038C 80A06AAC 55800008 */  bnel    $t4, $zero, .L80A06AD0     
/* 00390 80A06AB0 00112400 */  sll     $a0, $s1, 16               
/* 00394 80A06AB4 A6000160 */  sh      $zero, 0x0160($s0)         ## 00000160
/* 00398 80A06AB8 860D0160 */  lh      $t5, 0x0160($s0)           ## 00000160
/* 0039C 80A06ABC 24120001 */  addiu   $s2, $zero, 0x0001         ## $s2 = 00000001
/* 003A0 80A06AC0 A60D015E */  sh      $t5, 0x015E($s0)           ## 0000015E
/* 003A4 80A06AC4 86B10000 */  lh      $s1, 0x0000($s5)           ## 80A07450
/* 003A8 80A06AC8 C6940008 */  lwc1    $f20, 0x0008($s4)          ## 80A07464
.L80A06ACC:
/* 003AC 80A06ACC 00112400 */  sll     $a0, $s1, 16               
.L80A06AD0:
/* 003B0 80A06AD0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 003B4 80A06AD4 00042403 */  sra     $a0, $a0, 16               
/* 003B8 80A06AD8 46140202 */  mul.s   $f8, $f0, $f20             
/* 003BC 80A06ADC C66A0024 */  lwc1    $f10, 0x0024($s3)          ## 00000024
/* 003C0 80A06AE0 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 003C4 80A06AE4 44812000 */  mtc1    $at, $f4                   ## $f4 = 120.00
/* 003C8 80A06AE8 00112400 */  sll     $a0, $s1, 16               
/* 003CC 80A06AEC 00042403 */  sra     $a0, $a0, 16               
/* 003D0 80A06AF0 460A4400 */  add.s   $f16, $f8, $f10            
/* 003D4 80A06AF4 E7B00078 */  swc1    $f16, 0x0078($sp)          
/* 003D8 80A06AF8 C6720080 */  lwc1    $f18, 0x0080($s3)          ## 00000080
/* 003DC 80A06AFC 46049180 */  add.s   $f6, $f18, $f4             
/* 003E0 80A06B00 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 003E4 80A06B04 E7A6007C */  swc1    $f6, 0x007C($sp)           
/* 003E8 80A06B08 46140202 */  mul.s   $f8, $f0, $f20             
/* 003EC 80A06B0C C66A002C */  lwc1    $f10, 0x002C($s3)          ## 0000002C
/* 003F0 80A06B10 27AE0078 */  addiu   $t6, $sp, 0x0078           ## $t6 = FFFFFFE0
/* 003F4 80A06B14 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 003F8 80A06B18 8FA40060 */  lw      $a0, 0x0060($sp)           
/* 003FC 80A06B1C 27A50074 */  addiu   $a1, $sp, 0x0074           ## $a1 = FFFFFFDC
/* 00400 80A06B20 27A60070 */  addiu   $a2, $sp, 0x0070           ## $a2 = FFFFFFD8
/* 00404 80A06B24 460A4400 */  add.s   $f16, $f8, $f10            
/* 00408 80A06B28 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 0040C 80A06B2C 0C00F269 */  jal     func_8003C9A4              
/* 00410 80A06B30 E7B00080 */  swc1    $f16, 0x0080($sp)          
/* 00414 80A06B34 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
/* 00418 80A06B38 44819000 */  mtc1    $at, $f18                  ## $f18 = -32000.00
/* 0041C 80A06B3C 46000086 */  mov.s   $f2, $f0                   
/* 00420 80A06B40 26C41C24 */  addiu   $a0, $s6, 0x1C24           ## $a0 = 00001C24
/* 00424 80A06B44 4612003E */  c.le.s  $f0, $f18                  
/* 00428 80A06B48 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0042C 80A06B4C 02C03025 */  or      $a2, $s6, $zero            ## $a2 = 00000000
/* 00430 80A06B50 2407001C */  addiu   $a3, $zero, 0x001C         ## $a3 = 0000001C
/* 00434 80A06B54 45030054 */  bc1tl   .L80A06CA8                 
/* 00438 80A06B58 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 0043C 80A06B5C C7A40078 */  lwc1    $f4, 0x0078($sp)           
/* 00440 80A06B60 C7A60080 */  lwc1    $f6, 0x0080($sp)           
/* 00444 80A06B64 E7A2007C */  swc1    $f2, 0x007C($sp)           
/* 00448 80A06B68 E7A20014 */  swc1    $f2, 0x0014($sp)           
/* 0044C 80A06B6C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00450 80A06B70 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00454 80A06B74 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00458 80A06B78 AFB20028 */  sw      $s2, 0x0028($sp)           
/* 0045C 80A06B7C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00460 80A06B80 0C00C916 */  jal     Actor_SpawnChild
              
/* 00464 80A06B84 E7A60018 */  swc1    $f6, 0x0018($sp)           
/* 00468 80A06B88 10400030 */  beq     $v0, $zero, .L80A06C4C     
/* 0046C 80A06B8C 240E0096 */  addiu   $t6, $zero, 0x0096         ## $t6 = 00000096
/* 00470 80A06B90 860F0152 */  lh      $t7, 0x0152($s0)           ## 00000152
/* 00474 80A06B94 86190162 */  lh      $t9, 0x0162($s0)           ## 00000162
/* 00478 80A06B98 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 0047C 80A06B9C A6180152 */  sh      $t8, 0x0152($s0)           ## 00000152
/* 00480 80A06BA0 A4590280 */  sh      $t9, 0x0280($v0)           ## 00000280
/* 00484 80A06BA4 86080162 */  lh      $t0, 0x0162($s0)           ## 00000162
/* 00488 80A06BA8 240F012C */  addiu   $t7, $zero, 0x012C         ## $t7 = 0000012C
/* 0048C 80A06BAC 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 00490 80A06BB0 A6090162 */  sh      $t1, 0x0162($s0)           ## 00000162
/* 00494 80A06BB4 860A0162 */  lh      $t2, 0x0162($s0)           ## 00000162
/* 00498 80A06BB8 29410005 */  slti    $at, $t2, 0x0005           
/* 0049C 80A06BBC 54200003 */  bnel    $at, $zero, .L80A06BCC     
/* 004A0 80A06BC0 860B0160 */  lh      $t3, 0x0160($s0)           ## 00000160
/* 004A4 80A06BC4 A6000162 */  sh      $zero, 0x0162($s0)         ## 00000162
/* 004A8 80A06BC8 860B0160 */  lh      $t3, 0x0160($s0)           ## 00000160
.L80A06BCC:
/* 004AC 80A06BCC 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 004B0 80A06BD0 A60C0160 */  sh      $t4, 0x0160($s0)           ## 00000160
/* 004B4 80A06BD4 860D0160 */  lh      $t5, 0x0160($s0)           ## 00000160
/* 004B8 80A06BD8 29A1000C */  slti    $at, $t5, 0x000C           
/* 004BC 80A06BDC 14200003 */  bne     $at, $zero, .L80A06BEC     
/* 004C0 80A06BE0 00000000 */  nop
/* 004C4 80A06BE4 A60E0164 */  sh      $t6, 0x0164($s0)           ## 00000164
/* 004C8 80A06BE8 A6000160 */  sh      $zero, 0x0160($s0)         ## 00000160
.L80A06BEC:
/* 004CC 80A06BEC 12400003 */  beq     $s2, $zero, .L80A06BFC     
/* 004D0 80A06BF0 3C0180A0 */  lui     $at, %hi(D_80A07864)       ## $at = 80A00000
/* 004D4 80A06BF4 A60F0164 */  sh      $t7, 0x0164($s0)           ## 00000164
/* 004D8 80A06BF8 AE02016C */  sw      $v0, 0x016C($s0)           ## 0000016C
.L80A06BFC:
/* 004DC 80A06BFC 92180166 */  lbu     $t8, 0x0166($s0)           ## 00000166
/* 004E0 80A06C00 1700000A */  bne     $t8, $zero, .L80A06C2C     
/* 004E4 80A06C04 00000000 */  nop
/* 004E8 80A06C08 3C0180A0 */  lui     $at, %hi(D_80A07860)       ## $at = 80A00000
/* 004EC 80A06C0C 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 004F0 80A06C10 C42C7860 */  lwc1    $f12, %lo(D_80A07860)($at) 
/* 004F4 80A06C14 4600020D */  trunc.w.s $f8, $f0                   
/* 004F8 80A06C18 440A4000 */  mfc1    $t2, $f8                   
/* 004FC 80A06C1C 00000000 */  nop
/* 00500 80A06C20 254B0002 */  addiu   $t3, $t2, 0x0002           ## $t3 = 00000002
/* 00504 80A06C24 10000014 */  beq     $zero, $zero, .L80A06C78   
/* 00508 80A06C28 A60B0150 */  sh      $t3, 0x0150($s0)           ## 00000150
.L80A06C2C:
/* 0050C 80A06C2C 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00510 80A06C30 C42C7864 */  lwc1    $f12, %lo(D_80A07864)($at) 
/* 00514 80A06C34 4600028D */  trunc.w.s $f10, $f0                  
/* 00518 80A06C38 440F5000 */  mfc1    $t7, $f10                  
/* 0051C 80A06C3C 00000000 */  nop
/* 00520 80A06C40 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00524 80A06C44 1000000C */  beq     $zero, $zero, .L80A06C78   
/* 00528 80A06C48 A6180150 */  sh      $t8, 0x0150($s0)           ## 00000150
.L80A06C4C:
/* 0052C 80A06C4C 3C0480A0 */  lui     $a0, %hi(D_80A076AC)       ## $a0 = 80A00000
/* 00530 80A06C50 0C00084C */  jal     osSyncPrintf
              
/* 00534 80A06C54 248476AC */  addiu   $a0, $a0, %lo(D_80A076AC)  ## $a0 = 80A076AC
/* 00538 80A06C58 3C0480A0 */  lui     $a0, %hi(D_80A076DC)       ## $a0 = 80A00000
/* 0053C 80A06C5C 0C00084C */  jal     osSyncPrintf
              
/* 00540 80A06C60 248476DC */  addiu   $a0, $a0, %lo(D_80A076DC)  ## $a0 = 80A076DC
/* 00544 80A06C64 3C0480A0 */  lui     $a0, %hi(D_80A0770C)       ## $a0 = 80A00000
/* 00548 80A06C68 0C00084C */  jal     osSyncPrintf
              
/* 0054C 80A06C6C 2484770C */  addiu   $a0, $a0, %lo(D_80A0770C)  ## $a0 = 80A0770C
/* 00550 80A06C70 1000000D */  beq     $zero, $zero, .L80A06CA8   
/* 00554 80A06C74 8FBF005C */  lw      $ra, 0x005C($sp)           
.L80A06C78:
/* 00558 80A06C78 86020152 */  lh      $v0, 0x0152($s0)           ## 00000152
/* 0055C 80A06C7C 86190150 */  lh      $t9, 0x0150($s0)           ## 00000150
/* 00560 80A06C80 87A80086 */  lh      $t0, 0x0086($sp)           
/* 00564 80A06C84 0059082A */  slt     $at, $v0, $t9              
/* 00568 80A06C88 10200006 */  beq     $at, $zero, .L80A06CA4     
/* 0056C 80A06C8C 0048082A */  slt     $at, $v0, $t0              
/* 00570 80A06C90 50200005 */  beql    $at, $zero, .L80A06CA8     
/* 00574 80A06C94 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 00578 80A06C98 86090164 */  lh      $t1, 0x0164($s0)           ## 00000164
/* 0057C 80A06C9C 5120FF74 */  beql    $t1, $zero, .L80A06A70     
/* 00580 80A06CA0 86020162 */  lh      $v0, 0x0162($s0)           ## 00000162
.L80A06CA4:
/* 00584 80A06CA4 8FBF005C */  lw      $ra, 0x005C($sp)           
.L80A06CA8:
/* 00588 80A06CA8 D7B40038 */  ldc1    $f20, 0x0038($sp)          
/* 0058C 80A06CAC 8FB00040 */  lw      $s0, 0x0040($sp)           
/* 00590 80A06CB0 8FB10044 */  lw      $s1, 0x0044($sp)           
/* 00594 80A06CB4 8FB20048 */  lw      $s2, 0x0048($sp)           
/* 00598 80A06CB8 8FB3004C */  lw      $s3, 0x004C($sp)           
/* 0059C 80A06CBC 8FB40050 */  lw      $s4, 0x0050($sp)           
/* 005A0 80A06CC0 8FB50054 */  lw      $s5, 0x0054($sp)           
/* 005A4 80A06CC4 8FB60058 */  lw      $s6, 0x0058($sp)           
/* 005A8 80A06CC8 03E00008 */  jr      $ra                        
/* 005AC 80A06CCC 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000
