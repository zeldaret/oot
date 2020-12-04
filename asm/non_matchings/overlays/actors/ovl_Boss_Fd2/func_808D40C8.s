.late_rodata
glabel jtbl_808D648C
.word L808D4124
.word L808D41FC
.word L808D43D4
.word L808D4420
.word L808D4594
.word L808D4728
glabel D_808D64A4
    .float 0.1

glabel D_808D64A8
    .float 0.02

glabel D_808D64AC
    .float 3.14159274101

glabel D_808D64B0
    .float 0.2

glabel D_808D64B4
    .float 0.02

glabel D_808D64B8
    .float 0.02

.text
glabel func_808D40C8
/* 01A58 808D40C8 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 01A5C 808D40CC AFBF003C */  sw      $ra, 0x003C($sp)
/* 01A60 808D40D0 AFB00038 */  sw      $s0, 0x0038($sp)
/* 01A64 808D40D4 AFA50084 */  sw      $a1, 0x0084($sp)
/* 01A68 808D40D8 8C8E0118 */  lw      $t6, 0x0118($a0)           ## 00000118
/* 01A6C 808D40DC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01A70 808D40E0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01A74 808D40E4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01A78 808D40E8 0C030129 */  jal     Gameplay_GetCamera
/* 01A7C 808D40EC AFAE0060 */  sw      $t6, 0x0060($sp)
/* 01A80 808D40F0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01A84 808D40F4 AFA2005C */  sw      $v0, 0x005C($sp)
/* 01A88 808D40F8 0C02927F */  jal     SkelAnime_Update

/* 01A8C 808D40FC AFA40044 */  sw      $a0, 0x0044($sp)
/* 01A90 808D4100 960F1390 */  lhu     $t7, 0x1390($s0)           ## 00001390
/* 01A94 808D4104 2DE10006 */  sltiu   $at, $t7, 0x0006
/* 01A98 808D4108 10200187 */  beq     $at, $zero, .L808D4728
/* 01A9C 808D410C 000F7880 */  sll     $t7, $t7,  2
/* 01AA0 808D4110 3C01808D */  lui     $at, %hi(jtbl_808D648C)       ## $at = 808D0000
/* 01AA4 808D4114 002F0821 */  addu    $at, $at, $t7
/* 01AA8 808D4118 8C2F648C */  lw      $t7, %lo(jtbl_808D648C)($at)
/* 01AAC 808D411C 01E00008 */  jr      $t7
/* 01AB0 808D4120 00000000 */  nop
glabel L808D4124
/* 01AB4 808D4124 8FA40084 */  lw      $a0, 0x0084($sp)
/* 01AB8 808D4128 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 01ABC 808D412C A6181390 */  sh      $t8, 0x1390($s0)           ## 00001390
/* 01AC0 808D4130 0C019148 */  jal     func_80064520
/* 01AC4 808D4134 24851D64 */  addiu   $a1, $a0, 0x1D64           ## $a1 = 00001D64
/* 01AC8 808D4138 8FA40084 */  lw      $a0, 0x0084($sp)
/* 01ACC 808D413C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01AD0 808D4140 0C00B7D5 */  jal     func_8002DF54
/* 01AD4 808D4144 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01AD8 808D4148 0C03008C */  jal     Gameplay_CreateSubCamera
/* 01ADC 808D414C 8FA40084 */  lw      $a0, 0x0084($sp)
/* 01AE0 808D4150 A6021392 */  sh      $v0, 0x1392($s0)           ## 00001392
/* 01AE4 808D4154 8FA40084 */  lw      $a0, 0x0084($sp)
/* 01AE8 808D4158 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01AEC 808D415C 0C0300C5 */  jal     Gameplay_ChangeCameraStatus
/* 01AF0 808D4160 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01AF4 808D4164 8FA40084 */  lw      $a0, 0x0084($sp)
/* 01AF8 808D4168 86051392 */  lh      $a1, 0x1392($s0)           ## 00001392
/* 01AFC 808D416C 0C0300C5 */  jal     Gameplay_ChangeCameraStatus
/* 01B00 808D4170 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 01B04 808D4174 8FA3005C */  lw      $v1, 0x005C($sp)
/* 01B08 808D4178 3C01808D */  lui     $at, %hi(D_808D64A4)       ## $at = 808D0000
/* 01B0C 808D417C C42064A4 */  lwc1    $f0, %lo(D_808D64A4)($at)
/* 01B10 808D4180 8C68005C */  lw      $t0, 0x005C($v1)           ## 0000005C
/* 01B14 808D4184 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01B18 808D4188 44811000 */  mtc1    $at, $f2                   ## $f2 = 100.00
/* 01B1C 808D418C AE081394 */  sw      $t0, 0x1394($s0)           ## 00001394
/* 01B20 808D4190 8C790060 */  lw      $t9, 0x0060($v1)           ## 00000060
/* 01B24 808D4194 3C01808D */  lui     $at, %hi(D_808D64A8)       ## $at = 808D0000
/* 01B28 808D4198 AE191398 */  sw      $t9, 0x1398($s0)           ## 00001398
/* 01B2C 808D419C 8C680064 */  lw      $t0, 0x0064($v1)           ## 00000064
/* 01B30 808D41A0 AE08139C */  sw      $t0, 0x139C($s0)           ## 0000139C
/* 01B34 808D41A4 8C6A0050 */  lw      $t2, 0x0050($v1)           ## 00000050
/* 01B38 808D41A8 AE0A13A0 */  sw      $t2, 0x13A0($s0)           ## 000013A0
/* 01B3C 808D41AC 8C690054 */  lw      $t1, 0x0054($v1)           ## 00000054
/* 01B40 808D41B0 AE0913A4 */  sw      $t1, 0x13A4($s0)           ## 000013A4
/* 01B44 808D41B4 8C6A0058 */  lw      $t2, 0x0058($v1)           ## 00000058
/* 01B48 808D41B8 E60213C4 */  swc1    $f2, 0x13C4($s0)           ## 000013C4
/* 01B4C 808D41BC E60213C8 */  swc1    $f2, 0x13C8($s0)           ## 000013C8
/* 01B50 808D41C0 E60213CC */  swc1    $f2, 0x13CC($s0)           ## 000013CC
/* 01B54 808D41C4 E60213D0 */  swc1    $f2, 0x13D0($s0)           ## 000013D0
/* 01B58 808D41C8 E60213D4 */  swc1    $f2, 0x13D4($s0)           ## 000013D4
/* 01B5C 808D41CC E60213D8 */  swc1    $f2, 0x13D8($s0)           ## 000013D8
/* 01B60 808D41D0 AE0A13A8 */  sw      $t2, 0x13A8($s0)           ## 000013A8
/* 01B64 808D41D4 C42464A8 */  lwc1    $f4, %lo(D_808D64A8)($at)
/* 01B68 808D41D8 A60001BC */  sh      $zero, 0x01BC($s0)         ## 000001BC
/* 01B6C 808D41DC A60001A8 */  sh      $zero, 0x01A8($s0)         ## 000001A8
/* 01B70 808D41E0 E60013E8 */  swc1    $f0, 0x13E8($s0)           ## 000013E8
/* 01B74 808D41E4 E60013EC */  swc1    $f0, 0x13EC($s0)           ## 000013EC
/* 01B78 808D41E8 E60013F0 */  swc1    $f0, 0x13F0($s0)           ## 000013F0
/* 01B7C 808D41EC E6001400 */  swc1    $f0, 0x1400($s0)           ## 00001400
/* 01B80 808D41F0 E6001404 */  swc1    $f0, 0x1404($s0)           ## 00001404
/* 01B84 808D41F4 E6001408 */  swc1    $f0, 0x1408($s0)           ## 00001408
/* 01B88 808D41F8 E6041410 */  swc1    $f4, 0x1410($s0)           ## 00001410
glabel L808D41FC
/* 01B8C 808D41FC 860B01A8 */  lh      $t3, 0x01A8($s0)           ## 000001A8
/* 01B90 808D4200 240D0014 */  addiu   $t5, $zero, 0x0014         ## $t5 = 00000014
/* 01B94 808D4204 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 01B98 808D4208 A60C01A8 */  sh      $t4, 0x01A8($s0)           ## 000001A8
/* 01B9C 808D420C 860201A8 */  lh      $v0, 0x01A8($s0)           ## 000001A8
/* 01BA0 808D4210 2841000F */  slti    $at, $v0, 0x000F
/* 01BA4 808D4214 10200004 */  beq     $at, $zero, .L808D4228
/* 01BA8 808D4218 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01BAC 808D421C 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 01BB0 808D4220 1000000B */  beq     $zero, $zero, .L808D4250
/* 01BB4 808D4224 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L808D4228:
/* 01BB8 808D4228 28410014 */  slti    $at, $v0, 0x0014
/* 01BBC 808D422C 10200004 */  beq     $at, $zero, .L808D4240
/* 01BC0 808D4230 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01BC4 808D4234 44810000 */  mtc1    $at, $f0                   ## $f0 = 0.50
/* 01BC8 808D4238 10000005 */  beq     $zero, $zero, .L808D4250
/* 01BCC 808D423C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L808D4240:
/* 01BD0 808D4240 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 01BD4 808D4244 44810000 */  mtc1    $at, $f0                   ## $f0 = 0.25
/* 01BD8 808D4248 00000000 */  nop
/* 01BDC 808D424C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L808D4250:
/* 01BE0 808D4250 10410002 */  beq     $v0, $at, .L808D425C
/* 01BE4 808D4254 24010028 */  addiu   $at, $zero, 0x0028         ## $at = 00000028
/* 01BE8 808D4258 1441000C */  bne     $v0, $at, .L808D428C
.L808D425C:
/* 01BEC 808D425C 24010028 */  addiu   $at, $zero, 0x0028         ## $at = 00000028
/* 01BF0 808D4260 14410005 */  bne     $v0, $at, .L808D4278
/* 01BF4 808D4264 A60D01A4 */  sh      $t5, 0x01A4($s0)           ## 000001A4
/* 01BF8 808D4268 240438D9 */  addiu   $a0, $zero, 0x38D9         ## $a0 = 000038D9
/* 01BFC 808D426C 0C03E341 */  jal     func_800F8D04
/* 01C00 808D4270 E7A0007C */  swc1    $f0, 0x007C($sp)
/* 01C04 808D4274 C7A0007C */  lwc1    $f0, 0x007C($sp)
.L808D4278:
/* 01C08 808D4278 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C0C 808D427C 240538D6 */  addiu   $a1, $zero, 0x38D6         ## $a1 = 000038D6
/* 01C10 808D4280 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01C14 808D4284 E7A0007C */  swc1    $f0, 0x007C($sp)
/* 01C18 808D4288 C7A0007C */  lwc1    $f0, 0x007C($sp)
.L808D428C:
/* 01C1C 808D428C 44050000 */  mfc1    $a1, $f0
/* 01C20 808D4290 26040168 */  addiu   $a0, $s0, 0x0168           ## $a0 = 00000168
/* 01C24 808D4294 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01C28 808D4298 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01C2C 808D429C 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 01C30 808D42A0 860E008A */  lh      $t6, 0x008A($s0)           ## 0000008A
/* 01C34 808D42A4 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 01C38 808D42A8 44815000 */  mtc1    $at, $f10                  ## $f10 = 32768.00
/* 01C3C 808D42AC 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 01C40 808D42B0 3C01808D */  lui     $at, %hi(D_808D64AC)       ## $at = 808D0000
/* 01C44 808D42B4 C43264AC */  lwc1    $f18, %lo(D_808D64AC)($at)
/* 01C48 808D42B8 46803220 */  cvt.s.w $f8, $f6
/* 01C4C 808D42BC 3C01808D */  lui     $at, %hi(D_808D64B0)       ## $at = 808D0000
/* 01C50 808D42C0 C42664B0 */  lwc1    $f6, %lo(D_808D64B0)($at)
/* 01C54 808D42C4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01C58 808D42C8 460A4403 */  div.s   $f16, $f8, $f10
/* 01C5C 808D42CC 46128102 */  mul.s   $f4, $f16, $f18
/* 01C60 808D42D0 0C034348 */  jal     Matrix_RotateY
/* 01C64 808D42D4 46062300 */  add.s   $f12, $f4, $f6
/* 01C68 808D42D8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01C6C 808D42DC 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 01C70 808D42E0 44814000 */  mtc1    $at, $f8                   ## $f8 = 250.00
/* 01C74 808D42E4 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFF0
/* 01C78 808D42E8 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFE4
/* 01C7C 808D42EC E7A00070 */  swc1    $f0, 0x0070($sp)
/* 01C80 808D42F0 E7A00074 */  swc1    $f0, 0x0074($sp)
/* 01C84 808D42F4 0C0346BD */  jal     Matrix_MultVec3f
/* 01C88 808D42F8 E7A80078 */  swc1    $f8, 0x0078($sp)
/* 01C8C 808D42FC C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 01C90 808D4300 C7B00064 */  lwc1    $f16, 0x0064($sp)
/* 01C94 808D4304 3C01430C */  lui     $at, 0x430C                ## $at = 430C0000
/* 01C98 808D4308 44812000 */  mtc1    $at, $f4                   ## $f4 = 140.00
/* 01C9C 808D430C 46105480 */  add.s   $f18, $f10, $f16
/* 01CA0 808D4310 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 01CA4 808D4314 44818000 */  mtc1    $at, $f16                  ## $f16 = 90.00
/* 01CA8 808D4318 C600003C */  lwc1    $f0, 0x003C($s0)           ## 0000003C
/* 01CAC 808D431C E61213DC */  swc1    $f18, 0x13DC($s0)          ## 000013DC
/* 01CB0 808D4320 E60413E0 */  swc1    $f4, 0x13E0($s0)           ## 000013E0
/* 01CB4 808D4324 C7A8006C */  lwc1    $f8, 0x006C($sp)
/* 01CB8 808D4328 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 01CBC 808D432C 4600803E */  c.le.s  $f16, $f0
/* 01CC0 808D4330 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01CC4 808D4334 46083280 */  add.s   $f10, $f6, $f8
/* 01CC8 808D4338 3C054170 */  lui     $a1, 0x4170                ## $a1 = 41700000
/* 01CCC 808D433C 45000006 */  bc1f    .L808D4358
/* 01CD0 808D4340 E60A13E4 */  swc1    $f10, 0x13E4($s0)          ## 000013E4
/* 01CD4 808D4344 C6120038 */  lwc1    $f18, 0x0038($s0)          ## 00000038
/* 01CD8 808D4348 C6040040 */  lwc1    $f4, 0x0040($s0)           ## 00000040
/* 01CDC 808D434C E60013F8 */  swc1    $f0, 0x13F8($s0)           ## 000013F8
/* 01CE0 808D4350 E61213F4 */  swc1    $f18, 0x13F4($s0)          ## 000013F4
/* 01CE4 808D4354 E60413FC */  swc1    $f4, 0x13FC($s0)           ## 000013FC
.L808D4358:
/* 01CE8 808D4358 860F01BC */  lh      $t7, 0x01BC($s0)           ## 000001BC
/* 01CEC 808D435C 15E00013 */  bne     $t7, $zero, .L808D43AC
/* 01CF0 808D4360 00000000 */  nop
/* 01CF4 808D4364 44811000 */  mtc1    $at, $f2                   ## $f2 = 20.00
/* 01CF8 808D4368 8FA40044 */  lw      $a0, 0x0044($sp)
/* 01CFC 808D436C 44051000 */  mfc1    $a1, $f2
/* 01D00 808D4370 0C0295B2 */  jal     SkelAnime_StopAtFrame
/* 01D04 808D4374 00000000 */  nop
/* 01D08 808D4378 10400003 */  beq     $v0, $zero, .L808D4388
/* 01D0C 808D437C 8FB90060 */  lw      $t9, 0x0060($sp)
/* 01D10 808D4380 2418003C */  addiu   $t8, $zero, 0x003C         ## $t8 = 0000003C
/* 01D14 808D4384 A7380250 */  sh      $t8, 0x0250($t9)           ## 00000250
.L808D4388:
/* 01D18 808D4388 860801A8 */  lh      $t0, 0x01A8($s0)           ## 000001A8
/* 01D1C 808D438C 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 01D20 808D4390 240A0032 */  addiu   $t2, $zero, 0x0032         ## $t2 = 00000032
/* 01D24 808D4394 29010064 */  slti    $at, $t0, 0x0064
/* 01D28 808D4398 542000E4 */  bnel    $at, $zero, .L808D472C
/* 01D2C 808D439C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D30 808D43A0 A6091390 */  sh      $t1, 0x1390($s0)           ## 00001390
/* 01D34 808D43A4 100000E0 */  beq     $zero, $zero, .L808D4728
/* 01D38 808D43A8 A60A01BC */  sh      $t2, 0x01BC($s0)           ## 000001BC
.L808D43AC:
/* 01D3C 808D43AC 0C0295B2 */  jal     SkelAnime_StopAtFrame
/* 01D40 808D43B0 8FA40044 */  lw      $a0, 0x0044($sp)
/* 01D44 808D43B4 104000DC */  beq     $v0, $zero, .L808D4728
/* 01D48 808D43B8 8FA40044 */  lw      $a0, 0x0044($sp)
/* 01D4C 808D43BC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01D50 808D43C0 24A589DC */  addiu   $a1, $a1, 0x89DC           ## $a1 = 060089DC
/* 01D54 808D43C4 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 01D58 808D43C8 3C06C120 */  lui     $a2, 0xC120                ## $a2 = C1200000
/* 01D5C 808D43CC 100000D7 */  beq     $zero, $zero, .L808D472C
/* 01D60 808D43D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
glabel L808D43D4
/* 01D64 808D43D4 860B01BC */  lh      $t3, 0x01BC($s0)           ## 000001BC
/* 01D68 808D43D8 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 01D6C 808D43DC 3C05C2C8 */  lui     $a1, 0xC2C8                ## $a1 = C2C80000
/* 01D70 808D43E0 1560000B */  bne     $t3, $zero, .L808D4410
/* 01D74 808D43E4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01D78 808D43E8 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 01D7C 808D43EC AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
/* 01D80 808D43F0 A60C1390 */  sh      $t4, 0x1390($s0)           ## 00001390
/* 01D84 808D43F4 8FAE0060 */  lw      $t6, 0x0060($sp)
/* 01D88 808D43F8 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01D8C 808D43FC 240D0002 */  addiu   $t5, $zero, 0x0002         ## $t5 = 00000002
/* 01D90 808D4400 A1CD02D8 */  sb      $t5, 0x02D8($t6)           ## 000002D8
/* 01D94 808D4404 A6000198 */  sh      $zero, 0x0198($s0)         ## 00000198
/* 01D98 808D4408 100000C7 */  beq     $zero, $zero, .L808D4728
/* 01D9C 808D440C E606140C */  swc1    $f6, 0x140C($s0)           ## 0000140C
.L808D4410:
/* 01DA0 808D4410 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01DA4 808D4414 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 01DA8 808D4418 100000C4 */  beq     $zero, $zero, .L808D472C
/* 01DAC 808D441C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
glabel L808D4420
/* 01DB0 808D4420 8FA20060 */  lw      $v0, 0x0060($sp)
/* 01DB4 808D4424 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 01DB8 808D4428 44810000 */  mtc1    $at, $f0                   ## $f0 = 80.00
/* 01DBC 808D442C C4480028 */  lwc1    $f8, 0x0028($v0)           ## 00000028
/* 01DC0 808D4430 260413E0 */  addiu   $a0, $s0, 0x13E0           ## $a0 = 000013E0
/* 01DC4 808D4434 4600403C */  c.lt.s  $f8, $f0
/* 01DC8 808D4438 00000000 */  nop
/* 01DCC 808D443C 45020018 */  bc1fl   .L808D44A0
/* 01DD0 808D4440 8C490024 */  lw      $t1, 0x0024($v0)           ## 00000024
/* 01DD4 808D4444 844F0030 */  lh      $t7, 0x0030($v0)           ## 00000030
/* 01DD8 808D4448 29E13001 */  slti    $at, $t7, 0x3001
/* 01DDC 808D444C 54200038 */  bnel    $at, $zero, .L808D4530
/* 01DE0 808D4450 8FA20060 */  lw      $v0, 0x0060($sp)
/* 01DE4 808D4454 8C590024 */  lw      $t9, 0x0024($v0)           ## 00000024
/* 01DE8 808D4458 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 01DEC 808D445C 44818000 */  mtc1    $at, $f16                  ## $f16 = 150.00
/* 01DF0 808D4460 AE1913F4 */  sw      $t9, 0x13F4($s0)           ## 000013F4
/* 01DF4 808D4464 8C580028 */  lw      $t8, 0x0028($v0)           ## 00000028
/* 01DF8 808D4468 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 01DFC 808D446C 44812000 */  mtc1    $at, $f4                   ## $f4 = 300.00
/* 01E00 808D4470 AE1813F8 */  sw      $t8, 0x13F8($s0)           ## 000013F8
/* 01E04 808D4474 8C59002C */  lw      $t9, 0x002C($v0)           ## 0000002C
/* 01E08 808D4478 E60013F8 */  swc1    $f0, 0x13F8($s0)           ## 000013F8
/* 01E0C 808D447C AE1913FC */  sw      $t9, 0x13FC($s0)           ## 000013FC
/* 01E10 808D4480 C44A0024 */  lwc1    $f10, 0x0024($v0)          ## 00000024
/* 01E14 808D4484 E61013E0 */  swc1    $f16, 0x13E0($s0)          ## 000013E0
/* 01E18 808D4488 E60A13DC */  swc1    $f10, 0x13DC($s0)          ## 000013DC
/* 01E1C 808D448C C452002C */  lwc1    $f18, 0x002C($v0)          ## 0000002C
/* 01E20 808D4490 46049180 */  add.s   $f6, $f18, $f4
/* 01E24 808D4494 10000025 */  beq     $zero, $zero, .L808D452C
/* 01E28 808D4498 E60613E4 */  swc1    $f6, 0x13E4($s0)           ## 000013E4
/* 01E2C 808D449C 8C490024 */  lw      $t1, 0x0024($v0)           ## 00000024
.L808D44A0:
/* 01E30 808D44A0 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 01E34 808D44A4 3C054348 */  lui     $a1, 0x4348                ## $a1 = 43480000
/* 01E38 808D44A8 AE0913F4 */  sw      $t1, 0x13F4($s0)           ## 000013F4
/* 01E3C 808D44AC 8C480028 */  lw      $t0, 0x0028($v0)           ## 00000028
/* 01E40 808D44B0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01E44 808D44B4 3C074000 */  lui     $a3, 0x4000                ## $a3 = 40000000
/* 01E48 808D44B8 AE0813F8 */  sw      $t0, 0x13F8($s0)           ## 000013F8
/* 01E4C 808D44BC 8C49002C */  lw      $t1, 0x002C($v0)           ## 0000002C
/* 01E50 808D44C0 E60813DC */  swc1    $f8, 0x13DC($s0)           ## 000013DC
/* 01E54 808D44C4 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01E58 808D44C8 AE0913FC */  sw      $t1, 0x13FC($s0)           ## 000013FC
/* 01E5C 808D44CC 8FAA0060 */  lw      $t2, 0x0060($sp)
/* 01E60 808D44D0 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 01E64 808D44D4 44818000 */  mtc1    $at, $f16                  ## $f16 = 200.00
/* 01E68 808D44D8 C54A002C */  lwc1    $f10, 0x002C($t2)          ## 0000002C
/* 01E6C 808D44DC 260413E4 */  addiu   $a0, $s0, 0x13E4           ## $a0 = 000013E4
/* 01E70 808D44E0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01E74 808D44E4 46105480 */  add.s   $f18, $f10, $f16
/* 01E78 808D44E8 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 01E7C 808D44EC 44059000 */  mfc1    $a1, $f18
/* 01E80 808D44F0 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01E84 808D44F4 00000000 */  nop
/* 01E88 808D44F8 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
/* 01E8C 808D44FC 1440000B */  bne     $v0, $zero, .L808D452C
/* 01E90 808D4500 244B0001 */  addiu   $t3, $v0, 0x0001           ## $t3 = 00000001
/* 01E94 808D4504 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01E98 808D4508 A60B0198 */  sh      $t3, 0x0198($s0)           ## 00000198
/* 01E9C 808D450C 3C01808D */  lui     $at, %hi(D_808D64B4)       ## $at = 808D0000
/* 01EA0 808D4510 E604140C */  swc1    $f4, 0x140C($s0)           ## 0000140C
/* 01EA4 808D4514 C42664B4 */  lwc1    $f6, %lo(D_808D64B4)($at)
/* 01EA8 808D4518 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01EAC 808D451C E6061410 */  swc1    $f6, 0x1410($s0)           ## 00001410
/* 01EB0 808D4520 8FA50060 */  lw      $a1, 0x0060($sp)
/* 01EB4 808D4524 0C00B7D5 */  jal     func_8002DF54
/* 01EB8 808D4528 8FA40084 */  lw      $a0, 0x0084($sp)
.L808D452C:
/* 01EBC 808D452C 8FA20060 */  lw      $v0, 0x0060($sp)
.L808D4530:
/* 01EC0 808D4530 240100CA */  addiu   $at, $zero, 0x00CA         ## $at = 000000CA
/* 01EC4 808D4534 844C0222 */  lh      $t4, 0x0222($v0)           ## 00000222
/* 01EC8 808D4538 5581007C */  bnel    $t4, $at, .L808D472C
/* 01ECC 808D453C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01ED0 808D4540 844D0248 */  lh      $t5, 0x0248($v0)           ## 00000248
/* 01ED4 808D4544 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01ED8 808D4548 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 01EDC 808D454C 55A10077 */  bnel    $t5, $at, .L808D472C
/* 01EE0 808D4550 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EE4 808D4554 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01EE8 808D4558 A60E1390 */  sh      $t6, 0x1390($s0)           ## 00001390
/* 01EEC 808D455C 3C01808D */  lui     $at, %hi(D_808D64B8)       ## $at = 808D0000
/* 01EF0 808D4560 E608140C */  swc1    $f8, 0x140C($s0)           ## 0000140C
/* 01EF4 808D4564 C42A64B8 */  lwc1    $f10, %lo(D_808D64B8)($at)
/* 01EF8 808D4568 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 01EFC 808D456C 44818000 */  mtc1    $at, $f16                  ## $f16 = 150.00
/* 01F00 808D4570 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 01F04 808D4574 E60A1410 */  swc1    $f10, 0x1410($s0)          ## 00001410
/* 01F08 808D4578 E61013E0 */  swc1    $f16, 0x13E0($s0)          ## 000013E0
/* 01F0C 808D457C C452002C */  lwc1    $f18, 0x002C($v0)          ## 0000002C
/* 01F10 808D4580 44812000 */  mtc1    $at, $f4                   ## $f4 = 300.00
/* 01F14 808D4584 00000000 */  nop
/* 01F18 808D4588 46049180 */  add.s   $f6, $f18, $f4
/* 01F1C 808D458C 10000066 */  beq     $zero, $zero, .L808D4728
/* 01F20 808D4590 E60613E4 */  swc1    $f6, 0x13E4($s0)           ## 000013E4
glabel L808D4594
/* 01F24 808D4594 260413F8 */  addiu   $a0, $s0, 0x13F8           ## $a0 = 000013F8
/* 01F28 808D4598 3C0542C8 */  lui     $a1, 0x42C8                ## $a1 = 42C80000
/* 01F2C 808D459C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01F30 808D45A0 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01F34 808D45A4 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 01F38 808D45A8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01F3C 808D45AC 3C01430C */  lui     $at, 0x430C                ## $at = 430C0000
/* 01F40 808D45B0 44814000 */  mtc1    $at, $f8                   ## $f8 = 140.00
/* 01F44 808D45B4 3C073F93 */  lui     $a3, 0x3F93                ## $a3 = 3F930000
/* 01F48 808D45B8 34E73333 */  ori     $a3, $a3, 0x3333           ## $a3 = 3F933333
/* 01F4C 808D45BC 260413E4 */  addiu   $a0, $s0, 0x13E4           ## $a0 = 000013E4
/* 01F50 808D45C0 3C05435C */  lui     $a1, 0x435C                ## $a1 = 435C0000
/* 01F54 808D45C4 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01F58 808D45C8 E60013F4 */  swc1    $f0, 0x13F4($s0)           ## 000013F4
/* 01F5C 808D45CC E60013FC */  swc1    $f0, 0x13FC($s0)           ## 000013FC
/* 01F60 808D45D0 E60013DC */  swc1    $f0, 0x13DC($s0)           ## 000013DC
/* 01F64 808D45D4 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01F68 808D45D8 E60813E0 */  swc1    $f8, 0x13E0($s0)           ## 000013E0
/* 01F6C 808D45DC 8FA30060 */  lw      $v1, 0x0060($sp)
/* 01F70 808D45E0 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 01F74 808D45E4 84620242 */  lh      $v0, 0x0242($v1)           ## 00000242
/* 01F78 808D45E8 10400016 */  beq     $v0, $zero, .L808D4644
/* 01F7C 808D45EC 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 01F80 808D45F0 A46F0242 */  sh      $t7, 0x0242($v1)           ## 00000242
/* 01F84 808D45F4 84620242 */  lh      $v0, 0x0242($v1)           ## 00000242
/* 01F88 808D45F8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01F8C 808D45FC 44811000 */  mtc1    $at, $f2                   ## $f2 = 20.00
/* 01F90 808D4600 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 01F94 808D4604 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01F98 808D4608 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 01F9C 808D460C 46805420 */  cvt.s.w $f16, $f10
/* 01FA0 808D4610 30580001 */  andi    $t8, $v0, 0x0001           ## $t8 = 00000000
/* 01FA4 808D4614 46128003 */  div.s   $f0, $f16, $f18
/* 01FA8 808D4618 4600103E */  c.le.s  $f2, $f0
/* 01FAC 808D461C 00000000 */  nop
/* 01FB0 808D4620 45000002 */  bc1f    .L808D462C
/* 01FB4 808D4624 00000000 */  nop
/* 01FB8 808D4628 46001006 */  mov.s   $f0, $f2
.L808D462C:
/* 01FBC 808D462C 53000004 */  beql    $t8, $zero, .L808D4640
/* 01FC0 808D4630 46000107 */  neg.s   $f4, $f0
/* 01FC4 808D4634 10000003 */  beq     $zero, $zero, .L808D4644
/* 01FC8 808D4638 E6001414 */  swc1    $f0, 0x1414($s0)           ## 00001414
/* 01FCC 808D463C 46000107 */  neg.s   $f4, $f0
.L808D4640:
/* 01FD0 808D4640 E6041414 */  swc1    $f4, 0x1414($s0)           ## 00001414
.L808D4644:
/* 01FD4 808D4644 84790222 */  lh      $t9, 0x0222($v1)           ## 00000222
/* 01FD8 808D4648 240100CD */  addiu   $at, $zero, 0x00CD         ## $at = 000000CD
/* 01FDC 808D464C 8FA3005C */  lw      $v1, 0x005C($sp)
/* 01FE0 808D4650 17210035 */  bne     $t9, $at, .L808D4728
/* 01FE4 808D4654 26021394 */  addiu   $v0, $s0, 0x1394           ## $v0 = 00001394
/* 01FE8 808D4658 A6081390 */  sh      $t0, 0x1390($s0)           ## 00001390
/* 01FEC 808D465C 8C4A0000 */  lw      $t2, 0x0000($v0)           ## 00001394
/* 01FF0 808D4660 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01FF4 808D4664 AC6A005C */  sw      $t2, 0x005C($v1)           ## 0000005C
/* 01FF8 808D4668 8C490004 */  lw      $t1, 0x0004($v0)           ## 00001398
/* 01FFC 808D466C AC690060 */  sw      $t1, 0x0060($v1)           ## 00000060
/* 02000 808D4670 8C4A0008 */  lw      $t2, 0x0008($v0)           ## 0000139C
/* 02004 808D4674 AC6A0064 */  sw      $t2, 0x0064($v1)           ## 00000064
/* 02008 808D4678 8C4C0000 */  lw      $t4, 0x0000($v0)           ## 00001394
/* 0200C 808D467C AC6C0074 */  sw      $t4, 0x0074($v1)           ## 00000074
/* 02010 808D4680 8C4B0004 */  lw      $t3, 0x0004($v0)           ## 00001398
/* 02014 808D4684 AC6B0078 */  sw      $t3, 0x0078($v1)           ## 00000078
/* 02018 808D4688 8C4C0008 */  lw      $t4, 0x0008($v0)           ## 0000139C
/* 0201C 808D468C AC6C007C */  sw      $t4, 0x007C($v1)           ## 0000007C
/* 02020 808D4690 8E0E13A0 */  lw      $t6, 0x13A0($s0)           ## 000013A0
/* 02024 808D4694 AC6E0050 */  sw      $t6, 0x0050($v1)           ## 00000050
/* 02028 808D4698 8E0D13A4 */  lw      $t5, 0x13A4($s0)           ## 000013A4
/* 0202C 808D469C AC6D0054 */  sw      $t5, 0x0054($v1)           ## 00000054
/* 02030 808D46A0 8E0E13A8 */  lw      $t6, 0x13A8($s0)           ## 000013A8
/* 02034 808D46A4 AC6E0058 */  sw      $t6, 0x0058($v1)           ## 00000058
/* 02038 808D46A8 86051392 */  lh      $a1, 0x1392($s0)           ## 00001392
/* 0203C 808D46AC 0C03022B */  jal     func_800C08AC
/* 02040 808D46B0 8FA40084 */  lw      $a0, 0x0084($sp)
/* 02044 808D46B4 8FA40084 */  lw      $a0, 0x0084($sp)
/* 02048 808D46B8 A6001392 */  sh      $zero, 0x1392($s0)         ## 00001392
/* 0204C 808D46BC 0C01914D */  jal     func_80064534
/* 02050 808D46C0 24851D64 */  addiu   $a1, $a0, 0x1D64           ## $a1 = 00001D64
/* 02054 808D46C4 8FA40084 */  lw      $a0, 0x0084($sp)
/* 02058 808D46C8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0205C 808D46CC 0C00B7D5 */  jal     func_8002DF54
/* 02060 808D46D0 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 02064 808D46D4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 02068 808D46D8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0206C 808D46DC 8FA60084 */  lw      $a2, 0x0084($sp)
/* 02070 808D46E0 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 02074 808D46E4 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 02078 808D46E8 AFAF0028 */  sw      $t7, 0x0028($sp)
/* 0207C 808D46EC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02080 808D46F0 2407005D */  addiu   $a3, $zero, 0x005D         ## $a3 = 0000005D
/* 02084 808D46F4 AFA0001C */  sw      $zero, 0x001C($sp)
/* 02088 808D46F8 AFA00020 */  sw      $zero, 0x0020($sp)
/* 0208C 808D46FC AFA00024 */  sw      $zero, 0x0024($sp)
/* 02090 808D4700 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 02094 808D4704 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 02098 808D4708 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 0209C 808D470C 0C00C916 */  jal     Actor_SpawnAsChild

/* 020A0 808D4710 E7A60014 */  swc1    $f6, 0x0014($sp)
/* 020A4 808D4714 8FA40084 */  lw      $a0, 0x0084($sp)
/* 020A8 808D4718 3C050001 */  lui     $a1, 0x0001                ## $a1 = 00010000
/* 020AC 808D471C 00A42821 */  addu    $a1, $a1, $a0
/* 020B0 808D4720 0C00B33C */  jal     Flags_SetClear

/* 020B4 808D4724 80A51CBC */  lb      $a1, 0x1CBC($a1)           ## 00011CBC
glabel L808D4728
.L808D4728:
/* 020B8 808D4728 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L808D472C:
/* 020BC 808D472C 0C234FD6 */  jal     func_808D3F58
/* 020C0 808D4730 8FA50084 */  lw      $a1, 0x0084($sp)
/* 020C4 808D4734 8FBF003C */  lw      $ra, 0x003C($sp)
/* 020C8 808D4738 8FB00038 */  lw      $s0, 0x0038($sp)
/* 020CC 808D473C 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
/* 020D0 808D4740 03E00008 */  jr      $ra
/* 020D4 808D4744 00000000 */  nop
