.late_rodata
glabel D_80A66930
    .float 0.4

glabel D_80A66934
 .word 0x3EF0A3D7
glabel D_80A66938
    .float 0.4

glabel D_80A6693C
 .word 0x3EF0A3D7
glabel D_80A66940
    .float 0.3

glabel D_80A66944
    .float 0.1

.text
glabel func_80A61A28
/* 06738 80A61A28 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 0673C 80A61A2C AFBF002C */  sw      $ra, 0x002C($sp)
/* 06740 80A61A30 AFB00028 */  sw      $s0, 0x0028($sp)
/* 06744 80A61A34 AFA50064 */  sw      $a1, 0x0064($sp)
/* 06748 80A61A38 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 0674C 80A61A3C 3C188016 */  lui     $t8, %hi(gGameInfo)
/* 06750 80A61A40 8F18FA90 */  lw      $t8, %lo(gGameInfo)($t8)
/* 06754 80A61A44 AFAF005C */  sw      $t7, 0x005C($sp)
/* 06758 80A61A48 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0675C 80A61A4C 871905BE */  lh      $t9, 0x05BE($t8)           ## 801605BE
/* 06760 80A61A50 17200005 */  bne     $t9, $zero, .L80A61A68
/* 06764 80A61A54 00000000 */  nop
/* 06768 80A61A58 8C880158 */  lw      $t0, 0x0158($a0)           ## 00000158
/* 0676C 80A61A5C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 06770 80A61A60 5501000E */  bnel    $t0, $at, .L80A61A9C
/* 06774 80A61A64 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
.L80A61A68:
/* 06778 80A61A68 0C297CF7 */  jal     func_80A5F3DC
/* 0677C 80A61A6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 06780 80A61A70 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 06784 80A61A74 3C098013 */  lui     $t1, %hi(D_801333E8)
/* 06788 80A61A78 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 0678C 80A61A7C 252933E8 */  addiu   $t1, %lo(D_801333E8)
/* 06790 80A61A80 AFA90014 */  sw      $t1, 0x0014($sp)
/* 06794 80A61A84 AFA70010 */  sw      $a3, 0x0010($sp)
/* 06798 80A61A88 24042805 */  addiu   $a0, $zero, 0x2805         ## $a0 = 00002805
/* 0679C 80A61A8C 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 067A0 80A61A90 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 067A4 80A61A94 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 067A8 80A61A98 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
.L80A61A9C:
/* 067AC 80A61A9C 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 067B0 80A61AA0 AFA50034 */  sw      $a1, 0x0034($sp)
/* 067B4 80A61AA4 0C032D9E */  jal     Math3D_Vec3f_DistXYZ
/* 067B8 80A61AA8 AFA40038 */  sw      $a0, 0x0038($sp)
/* 067BC 80A61AAC 8FA4005C */  lw      $a0, 0x005C($sp)
/* 067C0 80A61AB0 E7A00058 */  swc1    $f0, 0x0058($sp)
/* 067C4 80A61AB4 8FA50038 */  lw      $a1, 0x0038($sp)
/* 067C8 80A61AB8 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 067CC 80A61ABC 0C032D9E */  jal     Math3D_Vec3f_DistXYZ
/* 067D0 80A61AC0 AFA40030 */  sw      $a0, 0x0030($sp)
/* 067D4 80A61AC4 8FA40030 */  lw      $a0, 0x0030($sp)
/* 067D8 80A61AC8 E7A00054 */  swc1    $f0, 0x0054($sp)
/* 067DC 80A61ACC 0C032D9E */  jal     Math3D_Vec3f_DistXYZ
/* 067E0 80A61AD0 8FA50034 */  lw      $a1, 0x0034($sp)
/* 067E4 80A61AD4 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 067E8 80A61AD8 44816000 */  mtc1    $at, $f12                  ## $f12 = 300.00
/* 067EC 80A61ADC C7A40054 */  lwc1    $f4, 0x0054($sp)
/* 067F0 80A61AE0 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 067F4 80A61AE4 C7A80058 */  lwc1    $f8, 0x0058($sp)
/* 067F8 80A61AE8 4604603C */  c.lt.s  $f12, $f4
/* 067FC 80A61AEC 00000000 */  nop
/* 06800 80A61AF0 45020026 */  bc1fl   .L80A61B8C
/* 06804 80A61AF4 460C003C */  c.lt.s  $f0, $f12
/* 06808 80A61AF8 44813000 */  mtc1    $at, $f6                   ## $f6 = 150.00
/* 0680C 80A61AFC 3C0180A6 */  lui     $at, %hi(D_80A66934)       ## $at = 80A60000
/* 06810 80A61B00 4608303C */  c.lt.s  $f6, $f8
/* 06814 80A61B04 00000000 */  nop
/* 06818 80A61B08 45020011 */  bc1fl   .L80A61B50
/* 0681C 80A61B0C C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 06820 80A61B10 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 06824 80A61B14 44811000 */  mtc1    $at, $f2                   ## $f2 = 8.00
/* 06828 80A61B18 3C0180A6 */  lui     $at, %hi(D_80A66930)       ## $at = 80A60000
/* 0682C 80A61B1C C4306930 */  lwc1    $f16, %lo(D_80A66930)($at)
/* 06830 80A61B20 C60A0068 */  lwc1    $f10, 0x0068($s0)          ## 00000068
/* 06834 80A61B24 46105480 */  add.s   $f18, $f10, $f16
/* 06838 80A61B28 E6120068 */  swc1    $f18, 0x0068($s0)          ## 00000068
/* 0683C 80A61B2C C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 06840 80A61B30 4600103C */  c.lt.s  $f2, $f0
/* 06844 80A61B34 00000000 */  nop
/* 06848 80A61B38 45020035 */  bc1fl   .L80A61C10
/* 0684C 80A61B3C 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 06850 80A61B40 E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
/* 06854 80A61B44 10000031 */  beq     $zero, $zero, .L80A61C0C
/* 06858 80A61B48 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 0685C 80A61B4C C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
.L80A61B50:
/* 06860 80A61B50 C4266934 */  lwc1    $f6, %lo(D_80A66934)($at)
/* 06864 80A61B54 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 06868 80A61B58 46062201 */  sub.s   $f8, $f4, $f6
/* 0686C 80A61B5C E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 06870 80A61B60 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 06874 80A61B64 460A003C */  c.lt.s  $f0, $f10
/* 06878 80A61B68 00000000 */  nop
/* 0687C 80A61B6C 45020028 */  bc1fl   .L80A61C10
/* 06880 80A61B70 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 06884 80A61B74 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 06888 80A61B78 00000000 */  nop
/* 0688C 80A61B7C E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
/* 06890 80A61B80 10000022 */  beq     $zero, $zero, .L80A61C0C
/* 06894 80A61B84 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 06898 80A61B88 460C003C */  c.lt.s  $f0, $f12
.L80A61B8C:
/* 0689C 80A61B8C 3C0180A6 */  lui     $at, %hi(D_80A6693C)       ## $at = 80A60000
/* 068A0 80A61B90 45020011 */  bc1fl   .L80A61BD8
/* 068A4 80A61B94 C6080068 */  lwc1    $f8, 0x0068($s0)           ## 00000068
/* 068A8 80A61B98 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 068AC 80A61B9C 44811000 */  mtc1    $at, $f2                   ## $f2 = 8.00
/* 068B0 80A61BA0 3C0180A6 */  lui     $at, %hi(D_80A66938)       ## $at = 80A60000
/* 068B4 80A61BA4 C4246938 */  lwc1    $f4, %lo(D_80A66938)($at)
/* 068B8 80A61BA8 C6120068 */  lwc1    $f18, 0x0068($s0)          ## 00000068
/* 068BC 80A61BAC 46049180 */  add.s   $f6, $f18, $f4
/* 068C0 80A61BB0 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 068C4 80A61BB4 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 068C8 80A61BB8 4600103C */  c.lt.s  $f2, $f0
/* 068CC 80A61BBC 00000000 */  nop
/* 068D0 80A61BC0 45020013 */  bc1fl   .L80A61C10
/* 068D4 80A61BC4 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 068D8 80A61BC8 E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
/* 068DC 80A61BCC 1000000F */  beq     $zero, $zero, .L80A61C0C
/* 068E0 80A61BD0 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 068E4 80A61BD4 C6080068 */  lwc1    $f8, 0x0068($s0)           ## 00000068
.L80A61BD8:
/* 068E8 80A61BD8 C42A693C */  lwc1    $f10, %lo(D_80A6693C)($at)
/* 068EC 80A61BDC 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 068F0 80A61BE0 460A4401 */  sub.s   $f16, $f8, $f10
/* 068F4 80A61BE4 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
/* 068F8 80A61BE8 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 068FC 80A61BEC 4612003C */  c.lt.s  $f0, $f18
/* 06900 80A61BF0 00000000 */  nop
/* 06904 80A61BF4 45020006 */  bc1fl   .L80A61C10
/* 06908 80A61BF8 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 0690C 80A61BFC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 06910 80A61C00 00000000 */  nop
/* 06914 80A61C04 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 06918 80A61C08 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
.L80A61C0C:
/* 0691C 80A61C0C 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
.L80A61C10:
/* 06920 80A61C10 44813000 */  mtc1    $at, $f6                   ## $f6 = 6.00
/* 06924 80A61C14 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 06928 80A61C18 4600303E */  c.le.s  $f6, $f0
/* 0692C 80A61C1C 00000000 */  nop
/* 06930 80A61C20 45020008 */  bc1fl   .L80A61C44
/* 06934 80A61C24 44818000 */  mtc1    $at, $f16                  ## $f16 = 3.00
/* 06938 80A61C28 3C0180A6 */  lui     $at, %hi(D_80A66940)       ## $at = 80A60000
/* 0693C 80A61C2C C4286940 */  lwc1    $f8, %lo(D_80A66940)($at)
/* 06940 80A61C30 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 06944 80A61C34 46080282 */  mul.s   $f10, $f0, $f8
/* 06948 80A61C38 10000032 */  beq     $zero, $zero, .L80A61D04
/* 0694C 80A61C3C E60A01C8 */  swc1    $f10, 0x01C8($s0)          ## 000001C8
/* 06950 80A61C40 44818000 */  mtc1    $at, $f16                  ## $f16 = -0.00
.L80A61C44:
/* 06954 80A61C44 3C0180A6 */  lui     $at, %hi(D_80A66944)       ## $at = 80A60000
/* 06958 80A61C48 4600803E */  c.le.s  $f16, $f0
/* 0695C 80A61C4C 00000000 */  nop
/* 06960 80A61C50 45000007 */  bc1f    .L80A61C70
/* 06964 80A61C54 00000000 */  nop
/* 06968 80A61C58 3C013EC0 */  lui     $at, 0x3EC0                ## $at = 3EC00000
/* 0696C 80A61C5C 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.38
/* 06970 80A61C60 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 06974 80A61C64 46120102 */  mul.s   $f4, $f0, $f18
/* 06978 80A61C68 10000026 */  beq     $zero, $zero, .L80A61D04
/* 0697C 80A61C6C E60401C8 */  swc1    $f4, 0x01C8($s0)           ## 000001C8
.L80A61C70:
/* 06980 80A61C70 C4266944 */  lwc1    $f6, %lo(D_80A66944)($at)
/* 06984 80A61C74 3C013F40 */  lui     $at, 0x3F40                ## $at = 3F400000
/* 06988 80A61C78 4600303C */  c.lt.s  $f6, $f0
/* 0698C 80A61C7C 00000000 */  nop
/* 06990 80A61C80 4500000C */  bc1f    .L80A61CB4
/* 06994 80A61C84 00000000 */  nop
/* 06998 80A61C88 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.75
/* 0699C 80A61C8C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 069A0 80A61C90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 069A4 80A61C94 46080282 */  mul.s   $f10, $f0, $f8
/* 069A8 80A61C98 E60A01C8 */  swc1    $f10, 0x01C8($s0)          ## 000001C8
/* 069AC 80A61C9C 0C296E72 */  jal     func_80A5B9C8
/* 069B0 80A61CA0 AFA6004C */  sw      $a2, 0x004C($sp)
/* 069B4 80A61CA4 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 069B8 80A61CA8 44816000 */  mtc1    $at, $f12                  ## $f12 = 300.00
/* 069BC 80A61CAC 10000015 */  beq     $zero, $zero, .L80A61D04
/* 069C0 80A61CB0 8FA6004C */  lw      $a2, 0x004C($sp)
.L80A61CB4:
/* 069C4 80A61CB4 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 069C8 80A61CB8 00000000 */  nop
/* 069CC 80A61CBC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 069D0 80A61CC0 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 069D4 80A61CC4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 069D8 80A61CC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 069DC 80A61CCC 4600803C */  c.lt.s  $f16, $f0
/* 069E0 80A61CD0 8FA50064 */  lw      $a1, 0x0064($sp)
/* 069E4 80A61CD4 45000003 */  bc1f    .L80A61CE4
/* 069E8 80A61CD8 00000000 */  nop
/* 069EC 80A61CDC 10000001 */  beq     $zero, $zero, .L80A61CE4
/* 069F0 80A61CE0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
.L80A61CE4:
/* 069F4 80A61CE4 0C296F1A */  jal     func_80A5BC68
/* 069F8 80A61CE8 AFA6004C */  sw      $a2, 0x004C($sp)
/* 069FC 80A61CEC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 06A00 80A61CF0 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 06A04 80A61CF4 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 06A08 80A61CF8 8FA6004C */  lw      $a2, 0x004C($sp)
/* 06A0C 80A61CFC 44816000 */  mtc1    $at, $f12                  ## $f12 = 300.00
/* 06A10 80A61D00 E61201C8 */  swc1    $f18, 0x01C8($s0)          ## 000001C8
.L80A61D04:
/* 06A14 80A61D04 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 06A18 80A61D08 10C10006 */  beq     $a2, $at, .L80A61D24
/* 06A1C 80A61D0C C7A40054 */  lwc1    $f4, 0x0054($sp)
/* 06A20 80A61D10 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 06A24 80A61D14 10C10003 */  beq     $a2, $at, .L80A61D24
/* 06A28 80A61D18 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 06A2C 80A61D1C 54C1002F */  bnel    $a2, $at, .L80A61DDC
/* 06A30 80A61D20 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
.L80A61D24:
/* 06A34 80A61D24 460C203C */  c.lt.s  $f4, $f12
/* 06A38 80A61D28 8FA40034 */  lw      $a0, 0x0034($sp)
/* 06A3C 80A61D2C 8FA50038 */  lw      $a1, 0x0038($sp)
/* 06A40 80A61D30 45000014 */  bc1f    .L80A61D84
/* 06A44 80A61D34 00000000 */  nop
/* 06A48 80A61D38 8FA5005C */  lw      $a1, 0x005C($sp)
/* 06A4C 80A61D3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 06A50 80A61D40 84A300B6 */  lh      $v1, 0x00B6($a1)           ## 000000B6
/* 06A54 80A61D44 AFA6004C */  sw      $a2, 0x004C($sp)
/* 06A58 80A61D48 0C00B69E */  jal     func_8002DA78
/* 06A5C 80A61D4C A7A30046 */  sh      $v1, 0x0046($sp)
/* 06A60 80A61D50 87A30046 */  lh      $v1, 0x0046($sp)
/* 06A64 80A61D54 18400003 */  blez    $v0, .L80A61D64
/* 06A68 80A61D58 8FA6004C */  lw      $a2, 0x004C($sp)
/* 06A6C 80A61D5C 10000002 */  beq     $zero, $zero, .L80A61D68
/* 06A70 80A61D60 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A61D64:
/* 06A74 80A61D64 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L80A61D68:
/* 06A78 80A61D68 00025B80 */  sll     $t3, $v0, 14
/* 06A7C 80A61D6C 01625823 */  subu    $t3, $t3, $v0
/* 06A80 80A61D70 006B1821 */  addu    $v1, $v1, $t3
/* 06A84 80A61D74 00031C00 */  sll     $v1, $v1, 16
/* 06A88 80A61D78 00031C03 */  sra     $v1, $v1, 16
/* 06A8C 80A61D7C 10000008 */  beq     $zero, $zero, .L80A61DA0
/* 06A90 80A61D80 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
.L80A61D84:
/* 06A94 80A61D84 0C01E01A */  jal     Math_Vec3f_Yaw

/* 06A98 80A61D88 AFA6004C */  sw      $a2, 0x004C($sp)
/* 06A9C 80A61D8C 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 06AA0 80A61D90 8FA6004C */  lw      $a2, 0x004C($sp)
/* 06AA4 80A61D94 00441823 */  subu    $v1, $v0, $a0
/* 06AA8 80A61D98 00031C00 */  sll     $v1, $v1, 16
/* 06AAC 80A61D9C 00031C03 */  sra     $v1, $v1, 16
.L80A61DA0:
/* 06AB0 80A61DA0 28610191 */  slti    $at, $v1, 0x0191
/* 06AB4 80A61DA4 14200003 */  bne     $at, $zero, .L80A61DB4
/* 06AB8 80A61DA8 248C0190 */  addiu   $t4, $a0, 0x0190           ## $t4 = 00000190
/* 06ABC 80A61DAC 10000008 */  beq     $zero, $zero, .L80A61DD0
/* 06AC0 80A61DB0 A60C0032 */  sh      $t4, 0x0032($s0)           ## 00000032
.L80A61DB4:
/* 06AC4 80A61DB4 2861FE70 */  slti    $at, $v1, 0xFE70
/* 06AC8 80A61DB8 10200004 */  beq     $at, $zero, .L80A61DCC
/* 06ACC 80A61DBC 00837021 */  addu    $t6, $a0, $v1
/* 06AD0 80A61DC0 248DFE70 */  addiu   $t5, $a0, 0xFE70           ## $t5 = FFFFFE70
/* 06AD4 80A61DC4 10000002 */  beq     $zero, $zero, .L80A61DD0
/* 06AD8 80A61DC8 A60D0032 */  sh      $t5, 0x0032($s0)           ## 00000032
.L80A61DCC:
/* 06ADC 80A61DCC A60E0032 */  sh      $t6, 0x0032($s0)           ## 00000032
.L80A61DD0:
/* 06AE0 80A61DD0 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 06AE4 80A61DD4 A60F00B6 */  sh      $t7, 0x00B6($s0)           ## 000000B6
/* 06AE8 80A61DD8 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
.L80A61DDC:
/* 06AEC 80A61DDC AFA40034 */  sw      $a0, 0x0034($sp)
/* 06AF0 80A61DE0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 06AF4 80A61DE4 AFA6004C */  sw      $a2, 0x004C($sp)
/* 06AF8 80A61DE8 8E030210 */  lw      $v1, 0x0210($s0)           ## 00000210
/* 06AFC 80A61DEC 8FA6004C */  lw      $a2, 0x004C($sp)
/* 06B00 80A61DF0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 06B04 80A61DF4 50600003 */  beql    $v1, $zero, .L80A61E04
/* 06B08 80A61DF8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 06B0C 80A61DFC 14610035 */  bne     $v1, $at, .L80A61ED4
/* 06B10 80A61E00 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
.L80A61E04:
/* 06B14 80A61E04 10C10005 */  beq     $a2, $at, .L80A61E1C
/* 06B18 80A61E08 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 06B1C 80A61E0C 10C10003 */  beq     $a2, $at, .L80A61E1C
/* 06B20 80A61E10 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 06B24 80A61E14 14C1002F */  bne     $a2, $at, .L80A61ED4
/* 06B28 80A61E18 00000000 */  nop
.L80A61E1C:
/* 06B2C 80A61E1C 8E180158 */  lw      $t8, 0x0158($s0)           ## 00000158
/* 06B30 80A61E20 3C0880A6 */  lui     $t0, %hi(D_80A65E58)       ## $t0 = 80A60000
/* 06B34 80A61E24 AE060210 */  sw      $a2, 0x0210($s0)           ## 00000210
/* 06B38 80A61E28 0018C880 */  sll     $t9, $t8,  2
/* 06B3C 80A61E2C 01194021 */  addu    $t0, $t0, $t9
/* 06B40 80A61E30 8D085E58 */  lw      $t0, %lo(D_80A65E58)($t0)
/* 06B44 80A61E34 00064880 */  sll     $t1, $a2,  2
/* 06B48 80A61E38 01095021 */  addu    $t2, $t0, $t1
/* 06B4C 80A61E3C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 06B50 80A61E40 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 06B54 80A61E44 8E0B0158 */  lw      $t3, 0x0158($s0)           ## 00000158
/* 06B58 80A61E48 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 06B5C 80A61E4C 3C0D80A6 */  lui     $t5, %hi(D_80A65E58)       ## $t5 = 80A60000
/* 06B60 80A61E50 000B6080 */  sll     $t4, $t3,  2
/* 06B64 80A61E54 8E0E0210 */  lw      $t6, 0x0210($s0)           ## 00000210
/* 06B68 80A61E58 01AC6821 */  addu    $t5, $t5, $t4
/* 06B6C 80A61E5C 8DAD5E58 */  lw      $t5, %lo(D_80A65E58)($t5)
/* 06B70 80A61E60 46803220 */  cvt.s.w $f8, $f6
/* 06B74 80A61E64 000E7880 */  sll     $t7, $t6,  2
/* 06B78 80A61E68 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 06B7C 80A61E6C 01AFC021 */  addu    $t8, $t5, $t7
/* 06B80 80A61E70 44815000 */  mtc1    $at, $f10                  ## $f10 = -3.00
/* 06B84 80A61E74 8F050000 */  lw      $a1, 0x0000($t8)           ## 00000000
/* 06B88 80A61E78 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 06B8C 80A61E7C AFB90014 */  sw      $t9, 0x0014($sp)
/* 06B90 80A61E80 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 06B94 80A61E84 8FA40034 */  lw      $a0, 0x0034($sp)
/* 06B98 80A61E88 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 06B9C 80A61E8C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 06BA0 80A61E90 0C029468 */  jal     SkelAnime_ChangeAnim

/* 06BA4 80A61E94 E7AA0018 */  swc1    $f10, 0x0018($sp)
/* 06BA8 80A61E98 8E030210 */  lw      $v1, 0x0210($s0)           ## 00000210
/* 06BAC 80A61E9C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 06BB0 80A61EA0 54610006 */  bnel    $v1, $at, .L80A61EBC
/* 06BB4 80A61EA4 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 06BB8 80A61EA8 0C296EB3 */  jal     func_80A5BACC
/* 06BBC 80A61EAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 06BC0 80A61EB0 100000ED */  beq     $zero, $zero, .L80A62268
/* 06BC4 80A61EB4 8FBF002C */  lw      $ra, 0x002C($sp)
/* 06BC8 80A61EB8 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
.L80A61EBC:
/* 06BCC 80A61EBC 546100EA */  bnel    $v1, $at, .L80A62268
/* 06BD0 80A61EC0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 06BD4 80A61EC4 0C296EA1 */  jal     func_80A5BA84
/* 06BD8 80A61EC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 06BDC 80A61ECC 100000E6 */  beq     $zero, $zero, .L80A62268
/* 06BE0 80A61ED0 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A61ED4:
/* 06BE4 80A61ED4 104000BE */  beq     $v0, $zero, .L80A621D0
/* 06BE8 80A61ED8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 06BEC 80A61EDC 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 06BF0 80A61EE0 14C10006 */  bne     $a2, $at, .L80A61EFC
/* 06BF4 80A61EE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 06BF8 80A61EE8 0C296EB3 */  jal     func_80A5BACC
/* 06BFC 80A61EEC AFA6004C */  sw      $a2, 0x004C($sp)
/* 06C00 80A61EF0 8FA6004C */  lw      $a2, 0x004C($sp)
/* 06C04 80A61EF4 10000008 */  beq     $zero, $zero, .L80A61F18
/* 06C08 80A61EF8 8E030210 */  lw      $v1, 0x0210($s0)           ## 00000210
.L80A61EFC:
/* 06C0C 80A61EFC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 06C10 80A61F00 14C10005 */  bne     $a2, $at, .L80A61F18
/* 06C14 80A61F04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 06C18 80A61F08 0C296EA1 */  jal     func_80A5BA84
/* 06C1C 80A61F0C AFA6004C */  sw      $a2, 0x004C($sp)
/* 06C20 80A61F10 8FA6004C */  lw      $a2, 0x004C($sp)
/* 06C24 80A61F14 8E030210 */  lw      $v1, 0x0210($s0)           ## 00000210
.L80A61F18:
/* 06C28 80A61F18 10600003 */  beq     $v1, $zero, .L80A61F28
/* 06C2C 80A61F1C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 06C30 80A61F20 14610069 */  bne     $v1, $at, .L80A620C8
/* 06C34 80A61F24 00000000 */  nop
.L80A61F28:
/* 06C38 80A61F28 10C30022 */  beq     $a2, $v1, .L80A61FB4
/* 06C3C 80A61F2C 00000000 */  nop
/* 06C40 80A61F30 8E080158 */  lw      $t0, 0x0158($s0)           ## 00000158
/* 06C44 80A61F34 3C0A80A6 */  lui     $t2, %hi(D_80A65E58)       ## $t2 = 80A60000
/* 06C48 80A61F38 AE060210 */  sw      $a2, 0x0210($s0)           ## 00000210
/* 06C4C 80A61F3C 00084880 */  sll     $t1, $t0,  2
/* 06C50 80A61F40 01495021 */  addu    $t2, $t2, $t1
/* 06C54 80A61F44 8D4A5E58 */  lw      $t2, %lo(D_80A65E58)($t2)
/* 06C58 80A61F48 00065880 */  sll     $t3, $a2,  2
/* 06C5C 80A61F4C 014B6021 */  addu    $t4, $t2, $t3
/* 06C60 80A61F50 0C028800 */  jal     SkelAnime_GetFrameCount

/* 06C64 80A61F54 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 06C68 80A61F58 8E0E0158 */  lw      $t6, 0x0158($s0)           ## 00000158
/* 06C6C 80A61F5C 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 06C70 80A61F60 3C0F80A6 */  lui     $t7, %hi(D_80A65E58)       ## $t7 = 80A60000
/* 06C74 80A61F64 000E6880 */  sll     $t5, $t6,  2
/* 06C78 80A61F68 8E180210 */  lw      $t8, 0x0210($s0)           ## 00000210
/* 06C7C 80A61F6C 01ED7821 */  addu    $t7, $t7, $t5
/* 06C80 80A61F70 8DEF5E58 */  lw      $t7, %lo(D_80A65E58)($t7)
/* 06C84 80A61F74 468084A0 */  cvt.s.w $f18, $f16
/* 06C88 80A61F78 0018C880 */  sll     $t9, $t8,  2
/* 06C8C 80A61F7C 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 06C90 80A61F80 01F94021 */  addu    $t0, $t7, $t9
/* 06C94 80A61F84 44812000 */  mtc1    $at, $f4                   ## $f4 = -3.00
/* 06C98 80A61F88 8D050000 */  lw      $a1, 0x0000($t0)           ## 00000000
/* 06C9C 80A61F8C 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 06CA0 80A61F90 AFA90014 */  sw      $t1, 0x0014($sp)
/* 06CA4 80A61F94 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 06CA8 80A61F98 8FA40034 */  lw      $a0, 0x0034($sp)
/* 06CAC 80A61F9C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 06CB0 80A61FA0 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 06CB4 80A61FA4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 06CB8 80A61FA8 E7A40018 */  swc1    $f4, 0x0018($sp)
/* 06CBC 80A61FAC 100000AE */  beq     $zero, $zero, .L80A62268
/* 06CC0 80A61FB0 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A61FB4:
/* 06CC4 80A61FB4 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 06CC8 80A61FB8 00000000 */  nop
/* 06CCC 80A61FBC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 06CD0 80A61FC0 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 06CD4 80A61FC4 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 06CD8 80A61FC8 4600303C */  c.lt.s  $f6, $f0
/* 06CDC 80A61FCC 00000000 */  nop
/* 06CE0 80A61FD0 45020008 */  bc1fl   .L80A61FF4
/* 06CE4 80A61FD4 8E0D0228 */  lw      $t5, 0x0228($s0)           ## 00000228
/* 06CE8 80A61FD8 8E0A01F0 */  lw      $t2, 0x01F0($s0)           ## 000001F0
/* 06CEC 80A61FDC 2401EFFF */  addiu   $at, $zero, 0xEFFF         ## $at = FFFFEFFF
/* 06CF0 80A61FE0 AE000210 */  sw      $zero, 0x0210($s0)         ## 00000210
/* 06CF4 80A61FE4 01415824 */  and     $t3, $t2, $at
/* 06CF8 80A61FE8 10000016 */  beq     $zero, $zero, .L80A62044
/* 06CFC 80A61FEC AE0B01F0 */  sw      $t3, 0x01F0($s0)           ## 000001F0
/* 06D00 80A61FF0 8E0D0228 */  lw      $t5, 0x0228($s0)           ## 00000228
.L80A61FF4:
/* 06D04 80A61FF4 AE0C0210 */  sw      $t4, 0x0210($s0)           ## 00000210
/* 06D08 80A61FF8 2605021C */  addiu   $a1, $s0, 0x021C           ## $a1 = 0000021C
/* 06D0C 80A61FFC ACAD0000 */  sw      $t5, 0x0000($a1)           ## 0000021C
/* 06D10 80A62000 8E0E022C */  lw      $t6, 0x022C($s0)           ## 0000022C
/* 06D14 80A62004 3C198013 */  lui     $t9, %hi(D_801333E0)
/* 06D18 80A62008 3C088013 */  lui     $t0, %hi(D_801333E8)
/* 06D1C 80A6200C ACAE0004 */  sw      $t6, 0x0004($a1)           ## 00000220
/* 06D20 80A62010 8E0D0230 */  lw      $t5, 0x0230($s0)           ## 00000230
/* 06D24 80A62014 250833E8 */  addiu   $t0, %lo(D_801333E8)
/* 06D28 80A62018 272733E0 */  addiu   $a3, $t9, %lo(D_801333E0)
/* 06D2C 80A6201C ACAD0008 */  sw      $t5, 0x0008($a1)           ## 00000224
/* 06D30 80A62020 8E1801F0 */  lw      $t8, 0x01F0($s0)           ## 000001F0
/* 06D34 80A62024 24042816 */  addiu   $a0, $zero, 0x2816         ## $a0 = 00002816
/* 06D38 80A62028 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 06D3C 80A6202C 00187900 */  sll     $t7, $t8,  4
/* 06D40 80A62030 05E30005 */  bgezl   $t7, .L80A62048
/* 06D44 80A62034 8E090158 */  lw      $t1, 0x0158($s0)           ## 00000158
/* 06D48 80A62038 AFA70010 */  sw      $a3, 0x0010($sp)
/* 06D4C 80A6203C 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 06D50 80A62040 AFA80014 */  sw      $t0, 0x0014($sp)
.L80A62044:
/* 06D54 80A62044 8E090158 */  lw      $t1, 0x0158($s0)           ## 00000158
.L80A62048:
/* 06D58 80A62048 3C0B80A6 */  lui     $t3, %hi(D_80A65E58)       ## $t3 = 80A60000
/* 06D5C 80A6204C 8E0C0210 */  lw      $t4, 0x0210($s0)           ## 00000210
/* 06D60 80A62050 00095080 */  sll     $t2, $t1,  2
/* 06D64 80A62054 016A5821 */  addu    $t3, $t3, $t2
/* 06D68 80A62058 8D6B5E58 */  lw      $t3, %lo(D_80A65E58)($t3)
/* 06D6C 80A6205C 000C7080 */  sll     $t6, $t4,  2
/* 06D70 80A62060 016E6821 */  addu    $t5, $t3, $t6
/* 06D74 80A62064 0C028800 */  jal     SkelAnime_GetFrameCount

/* 06D78 80A62068 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 06D7C 80A6206C 8E180158 */  lw      $t8, 0x0158($s0)           ## 00000158
/* 06D80 80A62070 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 06D84 80A62074 3C1980A6 */  lui     $t9, %hi(D_80A65E58)       ## $t9 = 80A60000
/* 06D88 80A62078 00187880 */  sll     $t7, $t8,  2
/* 06D8C 80A6207C 8E080210 */  lw      $t0, 0x0210($s0)           ## 00000210
/* 06D90 80A62080 032FC821 */  addu    $t9, $t9, $t7
/* 06D94 80A62084 8F395E58 */  lw      $t9, %lo(D_80A65E58)($t9)
/* 06D98 80A62088 468042A0 */  cvt.s.w $f10, $f8
/* 06D9C 80A6208C 00084880 */  sll     $t1, $t0,  2
/* 06DA0 80A62090 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 06DA4 80A62094 03295021 */  addu    $t2, $t9, $t1
/* 06DA8 80A62098 44818000 */  mtc1    $at, $f16                  ## $f16 = -3.00
/* 06DAC 80A6209C 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
/* 06DB0 80A620A0 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 06DB4 80A620A4 AFAC0014 */  sw      $t4, 0x0014($sp)
/* 06DB8 80A620A8 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 06DBC 80A620AC 8FA40034 */  lw      $a0, 0x0034($sp)
/* 06DC0 80A620B0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 06DC4 80A620B4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 06DC8 80A620B8 0C029468 */  jal     SkelAnime_ChangeAnim

/* 06DCC 80A620BC E7B00018 */  swc1    $f16, 0x0018($sp)
/* 06DD0 80A620C0 10000069 */  beq     $zero, $zero, .L80A62268
/* 06DD4 80A620C4 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A620C8:
/* 06DD8 80A620C8 50C30023 */  beql    $a2, $v1, .L80A62158
/* 06DDC 80A620CC 8E0D0158 */  lw      $t5, 0x0158($s0)           ## 00000158
/* 06DE0 80A620D0 8E0B0158 */  lw      $t3, 0x0158($s0)           ## 00000158
/* 06DE4 80A620D4 3C0D80A6 */  lui     $t5, %hi(D_80A65E58)       ## $t5 = 80A60000
/* 06DE8 80A620D8 AE060210 */  sw      $a2, 0x0210($s0)           ## 00000210
/* 06DEC 80A620DC 000B7080 */  sll     $t6, $t3,  2
/* 06DF0 80A620E0 01AE6821 */  addu    $t5, $t5, $t6
/* 06DF4 80A620E4 8DAD5E58 */  lw      $t5, %lo(D_80A65E58)($t5)
/* 06DF8 80A620E8 0006C080 */  sll     $t8, $a2,  2
/* 06DFC 80A620EC 01B87821 */  addu    $t7, $t5, $t8
/* 06E00 80A620F0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 06E04 80A620F4 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 06E08 80A620F8 8E080158 */  lw      $t0, 0x0158($s0)           ## 00000158
/* 06E0C 80A620FC 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 06E10 80A62100 3C0980A6 */  lui     $t1, %hi(D_80A65E58)       ## $t1 = 80A60000
/* 06E14 80A62104 0008C880 */  sll     $t9, $t0,  2
/* 06E18 80A62108 8E0A0210 */  lw      $t2, 0x0210($s0)           ## 00000210
/* 06E1C 80A6210C 01394821 */  addu    $t1, $t1, $t9
/* 06E20 80A62110 8D295E58 */  lw      $t1, %lo(D_80A65E58)($t1)
/* 06E24 80A62114 46809120 */  cvt.s.w $f4, $f18
/* 06E28 80A62118 000A6080 */  sll     $t4, $t2,  2
/* 06E2C 80A6211C 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 06E30 80A62120 012C5821 */  addu    $t3, $t1, $t4
/* 06E34 80A62124 44813000 */  mtc1    $at, $f6                   ## $f6 = -3.00
/* 06E38 80A62128 8D650000 */  lw      $a1, 0x0000($t3)           ## 00000000
/* 06E3C 80A6212C 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 06E40 80A62130 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 06E44 80A62134 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 06E48 80A62138 8FA40034 */  lw      $a0, 0x0034($sp)
/* 06E4C 80A6213C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 06E50 80A62140 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 06E54 80A62144 0C029468 */  jal     SkelAnime_ChangeAnim

/* 06E58 80A62148 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 06E5C 80A6214C 10000046 */  beq     $zero, $zero, .L80A62268
/* 06E60 80A62150 8FBF002C */  lw      $ra, 0x002C($sp)
/* 06E64 80A62154 8E0D0158 */  lw      $t5, 0x0158($s0)           ## 00000158
.L80A62158:
/* 06E68 80A62158 3C0F80A6 */  lui     $t7, %hi(D_80A65E58)       ## $t7 = 80A60000
/* 06E6C 80A6215C 00034080 */  sll     $t0, $v1,  2
/* 06E70 80A62160 000DC080 */  sll     $t8, $t5,  2
/* 06E74 80A62164 01F87821 */  addu    $t7, $t7, $t8
/* 06E78 80A62168 8DEF5E58 */  lw      $t7, %lo(D_80A65E58)($t7)
/* 06E7C 80A6216C 01E8C821 */  addu    $t9, $t7, $t0
/* 06E80 80A62170 0C028800 */  jal     SkelAnime_GetFrameCount

/* 06E84 80A62174 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 06E88 80A62178 8E0A0158 */  lw      $t2, 0x0158($s0)           ## 00000158
/* 06E8C 80A6217C 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 06E90 80A62180 3C0C80A6 */  lui     $t4, %hi(D_80A65E58)       ## $t4 = 80A60000
/* 06E94 80A62184 000A4880 */  sll     $t1, $t2,  2
/* 06E98 80A62188 8E0B0210 */  lw      $t3, 0x0210($s0)           ## 00000210
/* 06E9C 80A6218C 01896021 */  addu    $t4, $t4, $t1
/* 06EA0 80A62190 8D8C5E58 */  lw      $t4, %lo(D_80A65E58)($t4)
/* 06EA4 80A62194 468042A0 */  cvt.s.w $f10, $f8
/* 06EA8 80A62198 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 06EAC 80A6219C 000B7080 */  sll     $t6, $t3,  2
/* 06EB0 80A621A0 018E6821 */  addu    $t5, $t4, $t6
/* 06EB4 80A621A4 8DA50000 */  lw      $a1, 0x0000($t5)           ## 00000000
/* 06EB8 80A621A8 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 06EBC 80A621AC 44070000 */  mfc1    $a3, $f0
/* 06EC0 80A621B0 AFB80014 */  sw      $t8, 0x0014($sp)
/* 06EC4 80A621B4 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 06EC8 80A621B8 8FA40034 */  lw      $a0, 0x0034($sp)
/* 06ECC 80A621BC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 06ED0 80A621C0 0C029468 */  jal     SkelAnime_ChangeAnim

/* 06ED4 80A621C4 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 06ED8 80A621C8 10000027 */  beq     $zero, $zero, .L80A62268
/* 06EDC 80A621CC 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A621D0:
/* 06EE0 80A621D0 54610025 */  bnel    $v1, $at, .L80A62268
/* 06EE4 80A621D4 8FBF002C */  lw      $ra, 0x002C($sp)
/* 06EE8 80A621D8 10C00003 */  beq     $a2, $zero, .L80A621E8
/* 06EEC 80A621DC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 06EF0 80A621E0 54C10021 */  bnel    $a2, $at, .L80A62268
/* 06EF4 80A621E4 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A621E8:
/* 06EF8 80A621E8 8E0F0158 */  lw      $t7, 0x0158($s0)           ## 00000158
/* 06EFC 80A621EC 3C1980A6 */  lui     $t9, %hi(D_80A65E58)       ## $t9 = 80A60000
/* 06F00 80A621F0 AE060210 */  sw      $a2, 0x0210($s0)           ## 00000210
/* 06F04 80A621F4 000F4080 */  sll     $t0, $t7,  2
/* 06F08 80A621F8 0328C821 */  addu    $t9, $t9, $t0
/* 06F0C 80A621FC 8F395E58 */  lw      $t9, %lo(D_80A65E58)($t9)
/* 06F10 80A62200 00065080 */  sll     $t2, $a2,  2
/* 06F14 80A62204 032A4821 */  addu    $t1, $t9, $t2
/* 06F18 80A62208 0C028800 */  jal     SkelAnime_GetFrameCount

/* 06F1C 80A6220C 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 06F20 80A62210 8E0B0158 */  lw      $t3, 0x0158($s0)           ## 00000158
/* 06F24 80A62214 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 06F28 80A62218 3C0E80A6 */  lui     $t6, %hi(D_80A65E58)       ## $t6 = 80A60000
/* 06F2C 80A6221C 000B6080 */  sll     $t4, $t3,  2
/* 06F30 80A62220 8E0D0210 */  lw      $t5, 0x0210($s0)           ## 00000210
/* 06F34 80A62224 01CC7021 */  addu    $t6, $t6, $t4
/* 06F38 80A62228 8DCE5E58 */  lw      $t6, %lo(D_80A65E58)($t6)
/* 06F3C 80A6222C 468084A0 */  cvt.s.w $f18, $f16
/* 06F40 80A62230 000DC080 */  sll     $t8, $t5,  2
/* 06F44 80A62234 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 06F48 80A62238 01D87821 */  addu    $t7, $t6, $t8
/* 06F4C 80A6223C 44812000 */  mtc1    $at, $f4                   ## $f4 = -3.00
/* 06F50 80A62240 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
/* 06F54 80A62244 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 06F58 80A62248 AFA80014 */  sw      $t0, 0x0014($sp)
/* 06F5C 80A6224C E7B20010 */  swc1    $f18, 0x0010($sp)
/* 06F60 80A62250 8FA40034 */  lw      $a0, 0x0034($sp)
/* 06F64 80A62254 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 06F68 80A62258 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 06F6C 80A6225C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 06F70 80A62260 E7A40018 */  swc1    $f4, 0x0018($sp)
/* 06F74 80A62264 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A62268:
/* 06F78 80A62268 8FB00028 */  lw      $s0, 0x0028($sp)
/* 06F7C 80A6226C 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 06F80 80A62270 03E00008 */  jr      $ra
/* 06F84 80A62274 00000000 */  nop
