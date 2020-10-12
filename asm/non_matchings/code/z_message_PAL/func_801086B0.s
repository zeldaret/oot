.rdata
glabel D_8015401C
    # Timer (%x) (%x)
    .asciz "タイマー (%x) (%x)"
    .balign 4

glabel D_80154030
    # Total wct=%x(%d)
    .asciz "合計wct=%x(%d)\n"
    .balign 4

glabel D_80154040
    # Sound (SFX)
    .asciz "サウンド（ＳＥ）\n"
    .balign 4

.late_rodata
glabel jtbl_80154B48
    .word L801087EC
    .word L801095F0
    .word L801097E4
    .word L801088E8
    .word L8010887C
    .word L80108984
    .word L801089B8
    .word L80108A2C
    .word L80108AD4
    .word L80109724
    .word L8010977C
    .word L80108B34
    .word L80108AE0
    .word L801096B4
    .word L801097E4
    .word L80109680
    .word L80108B70
    .word L80108C0C
    .word L80108CB8
    .word L801094E4
    .word L80108D00
    .word L801097E4
    .word L801097E4
    .word L801097E4
    .word L801097E4
    .word L80109510
    .word L80109528
    .word L8010958C
    .word L801097E4
    .word L801097E4
    .word L801097E4
    .word L801088CC

.text
glabel func_801086B0
/* B7F850 801086B0 27BDFEC8 */  addiu $sp, $sp, -0x138
/* B7F854 801086B4 AFB7003C */  sw    $s7, 0x3c($sp)
/* B7F858 801086B8 3C178016 */  lui   $s7, %hi(gGameInfo) # $s7, 0x8016
/* B7F85C 801086BC AFBF0044 */  sw    $ra, 0x44($sp)
/* B7F860 801086C0 AFBE0040 */  sw    $fp, 0x40($sp)
/* B7F864 801086C4 AFB60038 */  sw    $s6, 0x38($sp)
/* B7F868 801086C8 AFB50034 */  sw    $s5, 0x34($sp)
/* B7F86C 801086CC AFB40030 */  sw    $s4, 0x30($sp)
/* B7F870 801086D0 AFB3002C */  sw    $s3, 0x2c($sp)
/* B7F874 801086D4 AFB20028 */  sw    $s2, 0x28($sp)
/* B7F878 801086D8 AFB10024 */  sw    $s1, 0x24($sp)
/* B7F87C 801086DC AFB00020 */  sw    $s0, 0x20($sp)
/* B7F880 801086E0 AFA5013C */  sw    $a1, 0x13c($sp)
/* B7F884 801086E4 8CAF0000 */  lw    $t7, ($a1)
/* B7F888 801086E8 26F7FA90 */  addiu $s7, %lo(gGameInfo) # addiu $s7, $s7, -0x570
/* B7F88C 801086EC 8EF80000 */  lw    $t8, ($s7)
/* B7F890 801086F0 AFAF0120 */  sw    $t7, 0x120($sp)
/* B7F894 801086F4 3C010001 */  lui   $at, 1
/* B7F898 801086F8 87190B00 */  lh    $t9, 0xb00($t8)
/* B7F89C 801086FC 00240821 */  addu  $at, $at, $a0
/* B7F8A0 80108700 3C0E8015 */  lui   $t6, %hi(D_8014B308) # $t6, 0x8015
/* B7F8A4 80108704 A43904B0 */  sh    $t9, 0x4b0($at)
/* B7F8A8 80108708 85CEB308 */  lh    $t6, %lo(D_8014B308)($t6)
/* B7F8AC 8010870C 249120D8 */  addiu $s1, $a0, 0x20d8
/* B7F8B0 80108710 0220B025 */  move  $s6, $s1
/* B7F8B4 80108714 15C00006 */  bnez  $t6, .L80108730
/* B7F8B8 80108718 34158000 */   li    $s5, 32768
/* B7F8BC 8010871C 8EEF0000 */  lw    $t7, ($s7)
/* B7F8C0 80108720 26217FFF */  addiu $at, $s1, 0x7fff
/* B7F8C4 80108724 85F80B02 */  lh    $t8, 0xb02($t7)
/* B7F8C8 80108728 10000005 */  b     .L80108740
/* B7F8CC 8010872C A43863DB */   sh    $t8, 0x63db($at)
.L80108730:
/* B7F8D0 80108730 8EF90000 */  lw    $t9, ($s7)
/* B7F8D4 80108734 26217FFF */  addiu $at, $s1, 0x7fff
/* B7F8D8 80108738 872E0496 */  lh    $t6, 0x496($t9)
/* B7F8DC 8010873C A42E63DB */  sh    $t6, 0x63db($at)
.L80108740:
/* B7F8E0 80108740 02358021 */  addu  $s0, $s1, $s5
/* B7F8E4 80108744 920F62FD */  lbu   $t7, 0x62fd($s0)
/* B7F8E8 80108748 24010005 */  li    $at, 5
/* B7F8EC 8010874C 241800FF */  li    $t8, 255
/* B7F8F0 80108750 15E10007 */  bne   $t7, $at, .L80108770
/* B7F8F4 80108754 241E0002 */   li    $fp, 2
/* B7F8F8 80108758 26217FFF */  addiu $at, $s1, 0x7fff
/* B7F8FC 8010875C A42063E1 */  sh    $zero, 0x63e1($at)
/* B7F900 80108760 860763E0 */  lh    $a3, 0x63e0($s0)
/* B7F904 80108764 A42763DF */  sh    $a3, 0x63df($at)
/* B7F908 80108768 10000006 */  b     .L80108784
/* B7F90C 8010876C A42763DD */   sh    $a3, 0x63dd($at)
.L80108770:
/* B7F910 80108770 26217FFF */  addiu $at, $s1, 0x7fff
/* B7F914 80108774 A43863E1 */  sh    $t8, 0x63e1($at)
/* B7F918 80108778 860763E0 */  lh    $a3, 0x63e0($s0)
/* B7F91C 8010877C A42763DF */  sh    $a3, 0x63df($at)
/* B7F920 80108780 A42763DD */  sh    $a3, 0x63dd($at)
.L80108784:
/* B7F924 80108784 26217FFF */  addiu $at, $s1, 0x7fff
/* B7F928 80108788 A42063D1 */  sh    $zero, 0x63d1($at)
/* B7F92C 8010878C A7A00128 */  sh    $zero, 0x128($sp)
/* B7F930 80108790 961963D2 */  lhu   $t9, 0x63d2($s0)
/* B7F934 80108794 00009025 */  move  $s2, $zero
/* B7F938 80108798 24140006 */  li    $s4, 6
/* B7F93C 8010879C 1B200458 */  blez  $t9, .L80109900
/* B7F940 801087A0 240D0004 */   li    $t5, 4
/* B7F944 801087A4 AFA40138 */  sw    $a0, 0x138($sp)
/* B7F948 801087A8 240C000D */  li    $t4, 13
/* B7F94C 801087AC 240B000C */  li    $t3, 12
/* B7F950 801087B0 240A000B */  li    $t2, 11
/* B7F954 801087B4 2409000A */  li    $t1, 10
/* B7F958 801087B8 24080009 */  li    $t0, 9
/* B7F95C 801087BC 02327021 */  addu  $t6, $s1, $s2
.L801087C0:
/* B7F960 801087C0 01D57821 */  addu  $t7, $t6, $s5
/* B7F964 801087C4 91E26306 */  lbu   $v0, 0x6306($t7)
/* B7F968 801087C8 2458FFFF */  addiu $t8, $v0, -1
/* B7F96C 801087CC 2F010020 */  sltiu $at, $t8, 0x20
/* B7F970 801087D0 10200404 */  beqz  $at, .L801097E4
/* B7F974 801087D4 0018C080 */   sll   $t8, $t8, 2
/* B7F978 801087D8 3C018015 */  lui   $at, %hi(jtbl_80154B48)
/* B7F97C 801087DC 00380821 */  addu  $at, $at, $t8
/* B7F980 801087E0 8C384B48 */  lw    $t8, %lo(jtbl_80154B48)($at)
/* B7F984 801087E4 03000008 */  jr    $t8
/* B7F988 801087E8 00000000 */   nop   

glabel L801087EC
/* B7F98C 801087EC 8EF90000 */  lw    $t9, ($s7)
/* B7F990 801087F0 26217FFF */  addiu $at, $s1, 0x7fff
/* B7F994 801087F4 872E0B00 */  lh    $t6, 0xb00($t9)
/* B7F998 801087F8 A42E63D9 */  sh    $t6, 0x63d9($at)
/* B7F99C 801087FC 920263E6 */  lbu   $v0, 0x63e6($s0)
/* B7F9A0 80108800 34018000 */  li    $at, 32768
/* B7F9A4 80108804 02C19821 */  addu  $s3, $s6, $at
/* B7F9A8 80108808 24010001 */  li    $at, 1
/* B7F9AC 8010880C 10410003 */  beq   $v0, $at, .L8010881C
/* B7F9B0 80108810 24010003 */   li    $at, 3
/* B7F9B4 80108814 14410006 */  bne   $v0, $at, .L80108830
/* B7F9B8 80108818 00000000 */   nop   
.L8010881C:
/* B7F9BC 8010881C 860F63D8 */  lh    $t7, 0x63d8($s0)
/* B7F9C0 80108820 26217FFF */  addiu $at, $s1, 0x7fff
/* B7F9C4 80108824 25F80020 */  addiu $t8, $t7, 0x20
/* B7F9C8 80108828 A43863D9 */  sh    $t8, 0x63d9($at)
/* B7F9CC 8010882C 920263E6 */  lbu   $v0, 0x63e6($s0)
.L80108830:
/* B7F9D0 80108830 57C2000B */  bnel  $fp, $v0, .L80108860
/* B7F9D4 80108834 8EEF0000 */   lw    $t7, ($s7)
/* B7F9D8 80108838 8EEE0000 */  lw    $t6, ($s7)
/* B7F9DC 8010883C 861963DA */  lh    $t9, 0x63da($s0)
/* B7F9E0 80108840 85CF0B02 */  lh    $t7, 0xb02($t6)
/* B7F9E4 80108844 532F0006 */  beql  $t9, $t7, .L80108860
/* B7F9E8 80108848 8EEF0000 */   lw    $t7, ($s7)
/* B7F9EC 8010884C 861863D8 */  lh    $t8, 0x63d8($s0)
/* B7F9F0 80108850 26217FFF */  addiu $at, $s1, 0x7fff
/* B7F9F4 80108854 270E0020 */  addiu $t6, $t8, 0x20
/* B7F9F8 80108858 A42E63D9 */  sh    $t6, 0x63d9($at)
/* B7F9FC 8010885C 8EEF0000 */  lw    $t7, ($s7)
.L80108860:
/* B7FA00 80108860 861963DA */  lh    $t9, 0x63da($s0)
/* B7FA04 80108864 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FA08 80108868 85F80B04 */  lh    $t8, 0xb04($t7)
/* B7FA0C 8010886C 03387021 */  addu  $t6, $t9, $t8
/* B7FA10 80108870 A42E63DB */  sh    $t6, 0x63db($at)
/* B7FA14 80108874 1000041D */  b     .L801098EC
/* B7FA18 80108878 966363D2 */   lhu   $v1, 0x63d2($s3)

glabel L8010887C
/* B7FA1C 8010887C 26420001 */  addiu $v0, $s2, 1
/* B7FA20 80108880 3047FFFF */  andi  $a3, $v0, 0xffff
/* B7FA24 80108884 02277821 */  addu  $t7, $s1, $a3
/* B7FA28 80108888 01F5C821 */  addu  $t9, $t7, $s5
/* B7FA2C 8010888C 93256306 */  lbu   $a1, 0x6306($t9)
/* B7FA30 80108890 34018000 */  li    $at, 32768
/* B7FA34 80108894 02C19821 */  addu  $s3, $s6, $at
/* B7FA38 80108898 30A5000F */  andi  $a1, $a1, 0xf
/* B7FA3C 8010889C 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B7FA40 801088A0 3052FFFF */  andi  $s2, $v0, 0xffff
/* B7FA44 801088A4 0C041DB3 */  jal   func_801076CC
/* B7FA48 801088A8 02202025 */   move  $a0, $s1
/* B7FA4C 801088AC 24080009 */  li    $t0, 9
/* B7FA50 801088B0 2409000A */  li    $t1, 10
/* B7FA54 801088B4 240A000B */  li    $t2, 11
/* B7FA58 801088B8 240B000C */  li    $t3, 12
/* B7FA5C 801088BC 240C000D */  li    $t4, 13
/* B7FA60 801088C0 240D0004 */  li    $t5, 4
/* B7FA64 801088C4 10000409 */  b     .L801098EC
/* B7FA68 801088C8 966363D2 */   lhu   $v1, 0x63d2($s3)

glabel L801088CC
/* B7FA6C 801088CC 861863D8 */  lh    $t8, 0x63d8($s0)
/* B7FA70 801088D0 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FA74 801088D4 26C37FFF */  addiu $v1, $s6, 0x7fff
/* B7FA78 801088D8 270E0006 */  addiu $t6, $t8, 6
/* B7FA7C 801088DC A42E63D9 */  sh    $t6, 0x63d9($at)
/* B7FA80 801088E0 10000402 */  b     .L801098EC
/* B7FA84 801088E4 946363D3 */   lhu   $v1, 0x63d3($v1)

glabel L801088E8
/* B7FA88 801088E8 920F6304 */  lbu   $t7, 0x6304($s0)
/* B7FA8C 801088EC 3C198015 */  lui   $t9, %hi(D_8014B300) # $t9, 0x8015
/* B7FA90 801088F0 568F0021 */  bnel  $s4, $t7, .L80108978
/* B7FA94 801088F4 8FB80120 */   lw    $t8, 0x120($sp)
/* B7FA98 801088F8 9339B300 */  lbu   $t9, %lo(D_8014B300)($t9)
/* B7FA9C 801088FC 00002025 */  move  $a0, $zero
/* B7FAA0 80108900 240E0004 */  li    $t6, 4
/* B7FAA4 80108904 17200016 */  bnez  $t9, .L80108960
/* B7FAA8 80108908 26217FFF */   addiu $at, $s1, 0x7fff
/* B7FAAC 8010890C 8FAF0138 */  lw    $t7, 0x138($sp)
/* B7FAB0 80108910 3C188013 */  lui   $t8, %hi(D_801333E0)
/* B7FAB4 80108914 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B7FAB8 80108918 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B7FABC 8010891C 270733E0 */  addiu $a3, $t8, %lo(D_801333E0)
/* B7FAC0 80108920 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B7FAC4 80108924 25F92200 */  addiu $t9, $t7, 0x2200
/* B7FAC8 80108928 AFB90058 */  sw    $t9, 0x58($sp)
/* B7FACC 8010892C 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B7FAD0 80108930 AFA70010 */  sw    $a3, 0x10($sp)
/* B7FAD4 80108934 AFAE0014 */  sw    $t6, 0x14($sp)
/* B7FAD8 80108938 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B7FADC 8010893C 24060004 */   li    $a2, 4
/* B7FAE0 80108940 24180034 */  li    $t8, 52
/* B7FAE4 80108944 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FAE8 80108948 A0386305 */  sb    $t8, 0x6305($at)
/* B7FAEC 8010894C 8FA40058 */  lw    $a0, 0x58($sp)
/* B7FAF0 80108950 0C01BBAF */  jal   Font_LoadMessageBoxEndIcon
/* B7FAF4 80108954 00002825 */   move  $a1, $zero
/* B7FAF8 80108958 10000007 */  b     .L80108978
/* B7FAFC 8010895C 8FB80120 */   lw    $t8, 0x120($sp)
.L80108960:
/* B7FB00 80108960 A02E6305 */  sb    $t6, 0x6305($at)
/* B7FB04 80108964 A42063D7 */  sh    $zero, 0x63d7($at)
/* B7FB08 80108968 960F63CE */  lhu   $t7, 0x63ce($s0)
/* B7FB0C 8010896C 25F90001 */  addiu $t9, $t7, 1
/* B7FB10 80108970 A43963CF */  sh    $t9, 0x63cf($at)
/* B7FB14 80108974 8FB80120 */  lw    $t8, 0x120($sp)
.L80108978:
/* B7FB18 80108978 8FAE013C */  lw    $t6, 0x13c($sp)
/* B7FB1C 8010897C 100003EE */  b     .L80109938
/* B7FB20 80108980 ADD80000 */   sw    $t8, ($t6)

glabel L80108984
/* B7FB24 80108984 26420001 */  addiu $v0, $s2, 1
/* B7FB28 80108988 3047FFFF */  andi  $a3, $v0, 0xffff
/* B7FB2C 8010898C 0227C821 */  addu  $t9, $s1, $a3
/* B7FB30 80108990 0335C021 */  addu  $t8, $t9, $s5
/* B7FB34 80108994 930E6306 */  lbu   $t6, 0x6306($t8)
/* B7FB38 80108998 860F63D8 */  lh    $t7, 0x63d8($s0)
/* B7FB3C 8010899C 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FB40 801089A0 26C37FFF */  addiu $v1, $s6, 0x7fff
/* B7FB44 801089A4 01EEC821 */  addu  $t9, $t7, $t6
/* B7FB48 801089A8 A43963D9 */  sh    $t9, 0x63d9($at)
/* B7FB4C 801089AC 3052FFFF */  andi  $s2, $v0, 0xffff
/* B7FB50 801089B0 100003CE */  b     .L801098EC
/* B7FB54 801089B4 946363D3 */   lhu   $v1, 0x63d3($v1)

glabel L801089B8
/* B7FB58 801089B8 24180030 */  li    $t8, 48
/* B7FB5C 801089BC 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FB60 801089C0 A03863E5 */  sb    $t8, 0x63e5($at)
/* B7FB64 801089C4 920F6304 */  lbu   $t7, 0x6304($s0)
/* B7FB68 801089C8 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B7FB6C 801089CC 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B7FB70 801089D0 168F0012 */  bne   $s4, $t7, .L80108A1C
/* B7FB74 801089D4 00002025 */   move  $a0, $zero
/* B7FB78 801089D8 8FB80138 */  lw    $t8, 0x138($sp)
/* B7FB7C 801089DC 3C0E8013 */  lui   $t6, %hi(D_801333E0)
/* B7FB80 801089E0 3C198013 */  lui   $t9, %hi(D_801333E8) # $t9, 0x8013
/* B7FB84 801089E4 273933E8 */  addiu $t9, %lo(D_801333E8) # addiu $t9, $t9, 0x33e8
/* B7FB88 801089E8 25C733E0 */  addiu $a3, $t6, %lo(D_801333E0)
/* B7FB8C 801089EC 270F2200 */  addiu $t7, $t8, 0x2200
/* B7FB90 801089F0 AFAF0058 */  sw    $t7, 0x58($sp)
/* B7FB94 801089F4 AFA70010 */  sw    $a3, 0x10($sp)
/* B7FB98 801089F8 AFB90014 */  sw    $t9, 0x14($sp)
/* B7FB9C 801089FC 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B7FBA0 80108A00 24060004 */   li    $a2, 4
/* B7FBA4 80108A04 240E0035 */  li    $t6, 53
/* B7FBA8 80108A08 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FBAC 80108A0C A02E6305 */  sb    $t6, 0x6305($at)
/* B7FBB0 80108A10 8FA40058 */  lw    $a0, 0x58($sp)
/* B7FBB4 80108A14 0C01BBAF */  jal   Font_LoadMessageBoxEndIcon
/* B7FBB8 80108A18 00002825 */   move  $a1, $zero
.L80108A1C:
/* B7FBBC 80108A1C 8FB90120 */  lw    $t9, 0x120($sp)
/* B7FBC0 80108A20 8FB8013C */  lw    $t8, 0x13c($sp)
/* B7FBC4 80108A24 100003C4 */  b     .L80109938
/* B7FBC8 80108A28 AF190000 */   sw    $t9, ($t8)

glabel L80108A2C
/* B7FBCC 80108A2C 960F63D2 */  lhu   $t7, 0x63d2($s0)
/* B7FBD0 80108A30 264E0001 */  addiu $t6, $s2, 1
/* B7FBD4 80108A34 55EE0028 */  bnel  $t7, $t6, .L80108AD8
/* B7FBD8 80108A38 26C37FFF */   addiu $v1, $s6, 0x7fff
/* B7FBDC 80108A3C 92026304 */  lbu   $v0, 0x6304($s0)
/* B7FBE0 80108A40 3244FFFF */  andi  $a0, $s2, 0xffff
/* B7FBE4 80108A44 12820005 */  beq   $s4, $v0, .L80108A5C
/* B7FBE8 80108A48 28410009 */   slti  $at, $v0, 9
/* B7FBEC 80108A4C 14200021 */  bnez  $at, .L80108AD4
/* B7FBF0 80108A50 28410021 */   slti  $at, $v0, 0x21
/* B7FBF4 80108A54 50200020 */  beql  $at, $zero, .L80108AD8
/* B7FBF8 80108A58 26C37FFF */   addiu $v1, $s6, 0x7fff
.L80108A5C:
/* B7FBFC 80108A5C 0224C821 */  addu  $t9, $s1, $a0
/* B7FC00 80108A60 0335C021 */  addu  $t8, $t9, $s5
/* B7FC04 80108A64 93026306 */  lbu   $v0, 0x6306($t8)
/* B7FC08 80108A68 16820004 */  bne   $s4, $v0, .L80108A7C
/* B7FC0C 80108A6C 00000000 */   nop   
/* B7FC10 80108A70 24840002 */  addiu $a0, $a0, 2
/* B7FC14 80108A74 1000FFF9 */  b     .L80108A5C
/* B7FC18 80108A78 3084FFFF */   andi  $a0, $a0, 0xffff
.L80108A7C:
/* B7FC1C 80108A7C 51020011 */  beql  $t0, $v0, .L80108AC4
/* B7FC20 80108A80 248FFFFF */   addiu $t7, $a0, -1
/* B7FC24 80108A84 5122000F */  beql  $t1, $v0, .L80108AC4
/* B7FC28 80108A88 248FFFFF */   addiu $t7, $a0, -1
/* B7FC2C 80108A8C 5142000D */  beql  $t2, $v0, .L80108AC4
/* B7FC30 80108A90 248FFFFF */   addiu $t7, $a0, -1
/* B7FC34 80108A94 5162000B */  beql  $t3, $v0, .L80108AC4
/* B7FC38 80108A98 248FFFFF */   addiu $t7, $a0, -1
/* B7FC3C 80108A9C 51820009 */  beql  $t4, $v0, .L80108AC4
/* B7FC40 80108AA0 248FFFFF */   addiu $t7, $a0, -1
/* B7FC44 80108AA4 51A20007 */  beql  $t5, $v0, .L80108AC4
/* B7FC48 80108AA8 248FFFFF */   addiu $t7, $a0, -1
/* B7FC4C 80108AAC 53C20005 */  beql  $fp, $v0, .L80108AC4
/* B7FC50 80108AB0 248FFFFF */   addiu $t7, $a0, -1
/* B7FC54 80108AB4 24840001 */  addiu $a0, $a0, 1
/* B7FC58 80108AB8 1000FFE8 */  b     .L80108A5C
/* B7FC5C 80108ABC 3084FFFF */   andi  $a0, $a0, 0xffff
/* B7FC60 80108AC0 248FFFFF */  addiu $t7, $a0, -1
.L80108AC4:
/* B7FC64 80108AC4 25EE0001 */  addiu $t6, $t7, 1
/* B7FC68 80108AC8 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FC6C 80108ACC 31F2FFFF */  andi  $s2, $t7, 0xffff
/* B7FC70 80108AD0 A42E63D3 */  sh    $t6, 0x63d3($at)
.L80108AD4:
glabel L80108AD4
/* B7FC74 80108AD4 26C37FFF */  addiu $v1, $s6, 0x7fff
.L80108AD8:
/* B7FC78 80108AD8 10000384 */  b     .L801098EC
/* B7FC7C 80108ADC 946363D3 */   lhu   $v1, 0x63d3($v1)

glabel L80108AE0
/* B7FC80 80108AE0 961963D2 */  lhu   $t9, 0x63d2($s0)
/* B7FC84 80108AE4 26580001 */  addiu $t8, $s2, 1
/* B7FC88 80108AE8 26C37FFF */  addiu $v1, $s6, 0x7fff
/* B7FC8C 80108AEC 1738000F */  bne   $t9, $t8, .L80108B2C
/* B7FC90 80108AF0 00000000 */   nop   
/* B7FC94 80108AF4 920F6304 */  lbu   $t7, 0x6304($s0)
/* B7FC98 80108AF8 240E0007 */  li    $t6, 7
/* B7FC9C 80108AFC 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FCA0 80108B00 568F0007 */  bnel  $s4, $t7, .L80108B20
/* B7FCA4 80108B04 8FB90120 */   lw    $t9, 0x120($sp)
/* B7FCA8 80108B08 A02E6305 */  sb    $t6, 0x6305($at)
/* B7FCAC 80108B0C 8FA40138 */  lw    $a0, 0x138($sp)
/* B7FCB0 80108B10 00002825 */  move  $a1, $zero
/* B7FCB4 80108B14 0C01BBAF */  jal   Font_LoadMessageBoxEndIcon
/* B7FCB8 80108B18 24842200 */   addiu $a0, $a0, 0x2200
/* B7FCBC 80108B1C 8FB90120 */  lw    $t9, 0x120($sp)
.L80108B20:
/* B7FCC0 80108B20 8FB8013C */  lw    $t8, 0x13c($sp)
/* B7FCC4 80108B24 10000384 */  b     .L80109938
/* B7FCC8 80108B28 AF190000 */   sw    $t9, ($t8)
.L80108B2C:
/* B7FCCC 80108B2C 1000036F */  b     .L801098EC
/* B7FCD0 80108B30 946363D3 */   lhu   $v1, 0x63d3($v1)

glabel L80108B34
/* B7FCD4 80108B34 920F6304 */  lbu   $t7, 0x6304($s0)
/* B7FCD8 80108B38 26470001 */  addiu $a3, $s2, 1
/* B7FCDC 80108B3C 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B7FCE0 80108B40 168F0007 */  bne   $s4, $t7, .L80108B60
/* B7FCE4 80108B44 02277021 */   addu  $t6, $s1, $a3
/* B7FCE8 80108B48 01D5C821 */  addu  $t9, $t6, $s5
/* B7FCEC 80108B4C 93386306 */  lbu   $t8, 0x6306($t9)
/* B7FCF0 80108B50 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FCF4 80108B54 240F0008 */  li    $t7, 8
/* B7FCF8 80108B58 A02F6305 */  sb    $t7, 0x6305($at)
/* B7FCFC 80108B5C A03863E8 */  sb    $t8, 0x63e8($at)
.L80108B60:
/* B7FD00 80108B60 8FAE0120 */  lw    $t6, 0x120($sp)
/* B7FD04 80108B64 8FB9013C */  lw    $t9, 0x13c($sp)
/* B7FD08 80108B68 10000373 */  b     .L80109938
/* B7FD0C 80108B6C AF2E0000 */   sw    $t6, ($t9)

glabel L80108B70
/* B7FD10 80108B70 92186304 */  lbu   $t8, 0x6304($s0)
/* B7FD14 80108B74 240F0035 */  li    $t7, 53
/* B7FD18 80108B78 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FD1C 80108B7C 1698001F */  bne   $s4, $t8, .L80108BFC
/* B7FD20 80108B80 240E0060 */   li    $t6, 96
/* B7FD24 80108B84 0232C821 */  addu  $t9, $s1, $s2
/* B7FD28 80108B88 A02F6305 */  sb    $t7, 0x6305($at)
/* B7FD2C 80108B8C A02E63E5 */  sb    $t6, 0x63e5($at)
/* B7FD30 80108B90 03351821 */  addu  $v1, $t9, $s5
/* B7FD34 80108B94 3C048015 */  lui   $a0, %hi(D_8015401C) # $a0, 0x8015
/* B7FD38 80108B98 2484401C */  addiu $a0, %lo(D_8015401C) # addiu $a0, $a0, 0x401c
/* B7FD3C 80108B9C 90656307 */  lbu   $a1, 0x6307($v1)
/* B7FD40 80108BA0 0C00084C */  jal   osSyncPrintf
/* B7FD44 80108BA4 90666308 */   lbu   $a2, 0x6308($v1)
/* B7FD48 80108BA8 26420001 */  addiu $v0, $s2, 1
/* B7FD4C 80108BAC 3047FFFF */  andi  $a3, $v0, 0xffff
/* B7FD50 80108BB0 0227C021 */  addu  $t8, $s1, $a3
/* B7FD54 80108BB4 03157821 */  addu  $t7, $t8, $s5
/* B7FD58 80108BB8 91EE6306 */  lbu   $t6, 0x6306($t7)
/* B7FD5C 80108BBC 24470001 */  addiu $a3, $v0, 1
/* B7FD60 80108BC0 26217FFF */  addiu $at, $s1, 0x7fff
/* B7FD64 80108BC4 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B7FD68 80108BC8 000ECA00 */  sll   $t9, $t6, 8
/* B7FD6C 80108BCC A03963E8 */  sb    $t9, 0x63e8($at)
/* B7FD70 80108BD0 02277821 */  addu  $t7, $s1, $a3
/* B7FD74 80108BD4 01F57021 */  addu  $t6, $t7, $s5
/* B7FD78 80108BD8 91D96306 */  lbu   $t9, 0x6306($t6)
/* B7FD7C 80108BDC 921863E7 */  lbu   $t8, 0x63e7($s0)
/* B7FD80 80108BE0 3C048015 */  lui   $a0, %hi(D_80154030) # $a0, 0x8015
/* B7FD84 80108BE4 24844030 */  addiu $a0, %lo(D_80154030) # addiu $a0, $a0, 0x4030
/* B7FD88 80108BE8 03197825 */  or    $t7, $t8, $t9
/* B7FD8C 80108BEC A02F63E8 */  sb    $t7, 0x63e8($at)
/* B7FD90 80108BF0 920563E7 */  lbu   $a1, 0x63e7($s0)
/* B7FD94 80108BF4 0C00084C */  jal   osSyncPrintf
/* B7FD98 80108BF8 00A03025 */   move  $a2, $a1
.L80108BFC:
/* B7FD9C 80108BFC 8FAE0120 */  lw    $t6, 0x120($sp)
/* B7FDA0 80108C00 8FB8013C */  lw    $t8, 0x13c($sp)
/* B7FDA4 80108C04 1000034C */  b     .L80109938
/* B7FDA8 80108C08 AF0E0000 */   sw    $t6, ($t8)

glabel L80108C0C
/* B7FDAC 80108C0C AFB20050 */  sw    $s2, 0x50($sp)
/* B7FDB0 80108C10 92196304 */  lbu   $t9, 0x6304($s0)
/* B7FDB4 80108C14 34018000 */  li    $at, 32768
/* B7FDB8 80108C18 02C19821 */  addu  $s3, $s6, $at
/* B7FDBC 80108C1C 16990021 */  bne   $s4, $t9, .L80108CA4
/* B7FDC0 80108C20 3C0F8015 */   lui   $t7, %hi(D_8014B318) # $t7, 0x8015
/* B7FDC4 80108C24 85EFB318 */  lh    $t7, %lo(D_8014B318)($t7)
/* B7FDC8 80108C28 240E0001 */  li    $t6, 1
/* B7FDCC 80108C2C 3C018015 */  lui   $at, %hi(D_8014B318) # $at, 0x8015
/* B7FDD0 80108C30 15E0001C */  bnez  $t7, .L80108CA4
/* B7FDD4 80108C34 3C048015 */   lui   $a0, %hi(D_80154040) # $a0, 0x8015
/* B7FDD8 80108C38 A42EB318 */  sh    $t6, %lo(D_8014B318)($at)
/* B7FDDC 80108C3C 0C00084C */  jal   osSyncPrintf
/* B7FDE0 80108C40 24844040 */   addiu $a0, %lo(D_80154040) # addiu $a0, $a0, 0x4040
/* B7FDE4 80108C44 8FB80050 */  lw    $t8, 0x50($sp)
/* B7FDE8 80108C48 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B7FDEC 80108C4C 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B7FDF0 80108C50 0238C821 */  addu  $t9, $s1, $t8
/* B7FDF4 80108C54 03351821 */  addu  $v1, $t9, $s5
/* B7FDF8 80108C58 90626307 */  lbu   $v0, 0x6307($v1)
/* B7FDFC 80108C5C 906F6308 */  lbu   $t7, 0x6308($v1)
/* B7FE00 80108C60 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B7FE04 80108C64 00021200 */  sll   $v0, $v0, 8
/* B7FE08 80108C68 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B7FE0C 80108C6C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B7FE10 80108C70 01E22025 */  or    $a0, $t7, $v0
/* B7FE14 80108C74 3084FFFF */  andi  $a0, $a0, 0xffff
/* B7FE18 80108C78 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B7FE1C 80108C7C AFAE0014 */  sw    $t6, 0x14($sp)
/* B7FE20 80108C80 AFA70010 */  sw    $a3, 0x10($sp)
/* B7FE24 80108C84 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B7FE28 80108C88 24060004 */   li    $a2, 4
/* B7FE2C 80108C8C 24080009 */  li    $t0, 9
/* B7FE30 80108C90 2409000A */  li    $t1, 10
/* B7FE34 80108C94 240A000B */  li    $t2, 11
/* B7FE38 80108C98 240B000C */  li    $t3, 12
/* B7FE3C 80108C9C 240C000D */  li    $t4, 13
/* B7FE40 80108CA0 240D0004 */  li    $t5, 4
.L80108CA4:
/* B7FE44 80108CA4 8FB20050 */  lw    $s2, 0x50($sp)
/* B7FE48 80108CA8 966363D2 */  lhu   $v1, 0x63d2($s3)
/* B7FE4C 80108CAC 26520002 */  addiu $s2, $s2, 2
/* B7FE50 80108CB0 1000030E */  b     .L801098EC
/* B7FE54 80108CB4 3252FFFF */   andi  $s2, $s2, 0xffff

glabel L80108CB8
/* B7FE58 80108CB8 0232C021 */  addu  $t8, $s1, $s2
/* B7FE5C 80108CBC 0315C821 */  addu  $t9, $t8, $s5
/* B7FE60 80108CC0 34018000 */  li    $at, 32768
/* B7FE64 80108CC4 02C19821 */  addu  $s3, $s6, $at
/* B7FE68 80108CC8 93256307 */  lbu   $a1, 0x6307($t9)
/* B7FE6C 80108CCC 8FA40138 */  lw    $a0, 0x138($sp)
/* B7FE70 80108CD0 27A60120 */  addiu $a2, $sp, 0x120
/* B7FE74 80108CD4 0C04202D */  jal   func_801080B4
/* B7FE78 80108CD8 3247FFFF */   andi  $a3, $s2, 0xffff
/* B7FE7C 80108CDC 24080009 */  li    $t0, 9
/* B7FE80 80108CE0 2409000A */  li    $t1, 10
/* B7FE84 80108CE4 240A000B */  li    $t2, 11
/* B7FE88 80108CE8 240B000C */  li    $t3, 12
/* B7FE8C 80108CEC 240C000D */  li    $t4, 13
/* B7FE90 80108CF0 240D0004 */  li    $t5, 4
/* B7FE94 80108CF4 3052FFFF */  andi  $s2, $v0, 0xffff
/* B7FE98 80108CF8 100002FC */  b     .L801098EC
/* B7FE9C 80108CFC 966363D2 */   lhu   $v1, 0x63d2($s3)

glabel L80108D00
/* B7FEA0 80108D00 920F6304 */  lbu   $t7, 0x6304($s0)
/* B7FEA4 80108D04 34018000 */  li    $at, 32768
/* B7FEA8 80108D08 02C19821 */  addu  $s3, $s6, $at
/* B7FEAC 80108D0C 168F0011 */  bne   $s4, $t7, .L80108D54
/* B7FEB0 80108D10 3C078013 */   lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B7FEB4 80108D14 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B7FEB8 80108D18 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B7FEBC 80108D1C 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B7FEC0 80108D20 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B7FEC4 80108D24 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B7FEC8 80108D28 AFA70010 */  sw    $a3, 0x10($sp)
/* B7FECC 80108D2C AFAE0014 */  sw    $t6, 0x14($sp)
/* B7FED0 80108D30 00002025 */  move  $a0, $zero
/* B7FED4 80108D34 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B7FED8 80108D38 24060004 */   li    $a2, 4
/* B7FEDC 80108D3C 24080009 */  li    $t0, 9
/* B7FEE0 80108D40 2409000A */  li    $t1, 10
/* B7FEE4 80108D44 240A000B */  li    $t2, 11
/* B7FEE8 80108D48 240B000C */  li    $t3, 12
/* B7FEEC 80108D4C 240C000D */  li    $t4, 13
/* B7FEF0 80108D50 240D0004 */  li    $t5, 4
.L80108D54:
/* B7FEF4 80108D54 8FB80120 */  lw    $t8, 0x120($sp)
/* B7FEF8 80108D58 3C0FE700 */  lui   $t7, 0xe700
/* B7FEFC 80108D5C 3C01E400 */  lui   $at, 0xe400
/* B7FF00 80108D60 27190008 */  addiu $t9, $t8, 8
/* B7FF04 80108D64 AFB90120 */  sw    $t9, 0x120($sp)
/* B7FF08 80108D68 AF000004 */  sw    $zero, 4($t8)
/* B7FF0C 80108D6C AF0F0000 */  sw    $t7, ($t8)
/* B7FF10 80108D70 8FAE0120 */  lw    $t6, 0x120($sp)
/* B7FF14 80108D74 3C0FFF2F */  lui   $t7, (0xFF2FFFFF >> 16) # lui $t7, 0xff2f
/* B7FF18 80108D78 3C19FC11 */  lui   $t9, (0xFC119623 >> 16) # lui $t9, 0xfc11
/* B7FF1C 80108D7C 25D80008 */  addiu $t8, $t6, 8
/* B7FF20 80108D80 AFB80120 */  sw    $t8, 0x120($sp)
/* B7FF24 80108D84 37399623 */  ori   $t9, (0xFC119623 & 0xFFFF) # ori $t9, $t9, 0x9623
/* B7FF28 80108D88 35EFFFFF */  ori   $t7, (0xFF2FFFFF & 0xFFFF) # ori $t7, $t7, 0xffff
/* B7FF2C 80108D8C ADCF0004 */  sw    $t7, 4($t6)
/* B7FF30 80108D90 ADD90000 */  sw    $t9, ($t6)
/* B7FF34 80108D94 8FA30120 */  lw    $v1, 0x120($sp)
/* B7FF38 80108D98 3C19FA00 */  lui   $t9, 0xfa00
/* B7FF3C 80108D9C 24780008 */  addiu $t8, $v1, 8
/* B7FF40 80108DA0 AFB80120 */  sw    $t8, 0x120($sp)
/* B7FF44 80108DA4 AC790000 */  sw    $t9, ($v1)
/* B7FF48 80108DA8 920F63F9 */  lbu   $t7, 0x63f9($s0)
/* B7FF4C 80108DAC 3C188015 */  lui   $t8, %hi(D_80153930) # $t8, 0x8015
/* B7FF50 80108DB0 27183930 */  addiu $t8, %lo(D_80153930) # addiu $t8, $t8, 0x3930
/* B7FF54 80108DB4 000F7080 */  sll   $t6, $t7, 2
/* B7FF58 80108DB8 01CF7023 */  subu  $t6, $t6, $t7
/* B7FF5C 80108DBC 000E7040 */  sll   $t6, $t6, 1
/* B7FF60 80108DC0 01D81021 */  addu  $v0, $t6, $t8
/* B7FF64 80108DC4 84590004 */  lh    $t9, 4($v0)
/* B7FF68 80108DC8 332F00FF */  andi  $t7, $t9, 0xff
/* B7FF6C 80108DCC 84590000 */  lh    $t9, ($v0)
/* B7FF70 80108DD0 000F7200 */  sll   $t6, $t7, 8
/* B7FF74 80108DD4 00197E00 */  sll   $t7, $t9, 0x18
/* B7FF78 80108DD8 84590002 */  lh    $t9, 2($v0)
/* B7FF7C 80108DDC 01CFC025 */  or    $t8, $t6, $t7
/* B7FF80 80108DE0 332E00FF */  andi  $t6, $t9, 0xff
/* B7FF84 80108DE4 000E7C00 */  sll   $t7, $t6, 0x10
/* B7FF88 80108DE8 860E63E2 */  lh    $t6, 0x63e2($s0)
/* B7FF8C 80108DEC 030FC825 */  or    $t9, $t8, $t7
/* B7FF90 80108DF0 31D800FF */  andi  $t8, $t6, 0xff
/* B7FF94 80108DF4 03387825 */  or    $t7, $t9, $t8
/* B7FF98 80108DF8 AC6F0004 */  sw    $t7, 4($v1)
/* B7FF9C 80108DFC 8FA20120 */  lw    $v0, 0x120($sp)
/* B7FFA0 80108E00 3C18FD90 */  lui   $t8, 0xfd90
/* B7FFA4 80108E04 3C038015 */  lui   $v1, %hi(D_80153948) # $v1, 0x8015
/* B7FFA8 80108E08 24590008 */  addiu $t9, $v0, 8
/* B7FFAC 80108E0C AFB90120 */  sw    $t9, 0x120($sp)
/* B7FFB0 80108E10 AC580000 */  sw    $t8, ($v0)
/* B7FFB4 80108E14 8E0F62B0 */  lw    $t7, 0x62b0($s0)
/* B7FFB8 80108E18 24633948 */  addiu $v1, %lo(D_80153948) # addiu $v1, $v1, 0x3948
/* B7FFBC 80108E1C 25EE1000 */  addiu $t6, $t7, 0x1000
/* B7FFC0 80108E20 AC4E0004 */  sw    $t6, 4($v0)
/* B7FFC4 80108E24 8FB90120 */  lw    $t9, 0x120($sp)
/* B7FFC8 80108E28 3C0E0700 */  lui   $t6, 0x700
/* B7FFCC 80108E2C 3C0FF590 */  lui   $t7, 0xf590
/* B7FFD0 80108E30 27380008 */  addiu $t8, $t9, 8
/* B7FFD4 80108E34 AFB80120 */  sw    $t8, 0x120($sp)
/* B7FFD8 80108E38 AF2E0004 */  sw    $t6, 4($t9)
/* B7FFDC 80108E3C AF2F0000 */  sw    $t7, ($t9)
/* B7FFE0 80108E40 8FB90120 */  lw    $t9, 0x120($sp)
/* B7FFE4 80108E44 3C0FE600 */  lui   $t7, 0xe600
/* B7FFE8 80108E48 27380008 */  addiu $t8, $t9, 8
/* B7FFEC 80108E4C AFB80120 */  sw    $t8, 0x120($sp)
/* B7FFF0 80108E50 AF200004 */  sw    $zero, 4($t9)
/* B7FFF4 80108E54 AF2F0000 */  sw    $t7, ($t9)
/* B7FFF8 80108E58 8FAE0120 */  lw    $t6, 0x120($sp)
/* B7FFFC 80108E5C 3C0F0747 */  lui   $t7, (0x0747F156 >> 16) # lui $t7, 0x747
/* B80000 80108E60 35EFF156 */  ori   $t7, (0x0747F156 & 0xFFFF) # ori $t7, $t7, 0xf156
/* B80004 80108E64 25D90008 */  addiu $t9, $t6, 8
/* B80008 80108E68 AFB90120 */  sw    $t9, 0x120($sp)
/* B8000C 80108E6C 3C18F300 */  lui   $t8, 0xf300
/* B80010 80108E70 ADD80000 */  sw    $t8, ($t6)
/* B80014 80108E74 ADCF0004 */  sw    $t7, 4($t6)
/* B80018 80108E78 8FAE0120 */  lw    $t6, 0x120($sp)
/* B8001C 80108E7C 3C18E700 */  lui   $t8, 0xe700
/* B80020 80108E80 25D90008 */  addiu $t9, $t6, 8
/* B80024 80108E84 AFB90120 */  sw    $t9, 0x120($sp)
/* B80028 80108E88 ADC00004 */  sw    $zero, 4($t6)
/* B8002C 80108E8C ADD80000 */  sw    $t8, ($t6)
/* B80030 80108E90 8FAF0120 */  lw    $t7, 0x120($sp)
/* B80034 80108E94 3C19F580 */  lui   $t9, (0xF5800C00 >> 16) # lui $t9, 0xf580
/* B80038 80108E98 37390C00 */  ori   $t9, (0xF5800C00 & 0xFFFF) # ori $t9, $t9, 0xc00
/* B8003C 80108E9C 25EE0008 */  addiu $t6, $t7, 8
/* B80040 80108EA0 AFAE0120 */  sw    $t6, 0x120($sp)
/* B80044 80108EA4 ADE00004 */  sw    $zero, 4($t7)
/* B80048 80108EA8 ADF90000 */  sw    $t9, ($t7)
/* B8004C 80108EAC 8FB80120 */  lw    $t8, 0x120($sp)
/* B80050 80108EB0 3C190017 */  lui   $t9, (0x0017C0BC >> 16) # lui $t9, 0x17
/* B80054 80108EB4 3739C0BC */  ori   $t9, (0x0017C0BC & 0xFFFF) # ori $t9, $t9, 0xc0bc
/* B80058 80108EB8 270F0008 */  addiu $t7, $t8, 8
/* B8005C 80108EBC AFAF0120 */  sw    $t7, 0x120($sp)
/* B80060 80108EC0 3C0EF200 */  lui   $t6, 0xf200
/* B80064 80108EC4 AF0E0000 */  sw    $t6, ($t8)
/* B80068 80108EC8 AF190004 */  sw    $t9, 4($t8)
/* B8006C 80108ECC 8FA20120 */  lw    $v0, 0x120($sp)
/* B80070 80108ED0 244F0008 */  addiu $t7, $v0, 8
/* B80074 80108ED4 AFAF0120 */  sw    $t7, 0x120($sp)
/* B80078 80108ED8 920E63FA */  lbu   $t6, 0x63fa($s0)
/* B8007C 80108EDC 000EC840 */  sll   $t9, $t6, 1
/* B80080 80108EE0 8EEE0000 */  lw    $t6, ($s7)
/* B80084 80108EE4 0079C021 */  addu  $t8, $v1, $t9
/* B80088 80108EE8 870F0000 */  lh    $t7, ($t8)
/* B8008C 80108EEC 85D90B0E */  lh    $t9, 0xb0e($t6)
/* B80090 80108EF0 01F9C021 */  addu  $t8, $t7, $t9
/* B80094 80108EF4 270E0030 */  addiu $t6, $t8, 0x30
/* B80098 80108EF8 000E7880 */  sll   $t7, $t6, 2
/* B8009C 80108EFC 860E63D8 */  lh    $t6, 0x63d8($s0)
/* B800A0 80108F00 31F90FFF */  andi  $t9, $t7, 0xfff
/* B800A4 80108F04 0321C025 */  or    $t8, $t9, $at
/* B800A8 80108F08 25CF0061 */  addiu $t7, $t6, 0x61
/* B800AC 80108F0C 000FC880 */  sll   $t9, $t7, 2
/* B800B0 80108F10 332E0FFF */  andi  $t6, $t9, 0xfff
/* B800B4 80108F14 000E7B00 */  sll   $t7, $t6, 0xc
/* B800B8 80108F18 030FC825 */  or    $t9, $t8, $t7
/* B800BC 80108F1C AC590000 */  sw    $t9, ($v0)
/* B800C0 80108F20 920E63FA */  lbu   $t6, 0x63fa($s0)
/* B800C4 80108F24 000EC040 */  sll   $t8, $t6, 1
/* B800C8 80108F28 8EEE0000 */  lw    $t6, ($s7)
/* B800CC 80108F2C 00787821 */  addu  $t7, $v1, $t8
/* B800D0 80108F30 85F90000 */  lh    $t9, ($t7)
/* B800D4 80108F34 85D80B0E */  lh    $t8, 0xb0e($t6)
/* B800D8 80108F38 3C038015 */  lui   $v1, %hi(D_80153948) # $v1, 0x8015
/* B800DC 80108F3C 24633948 */  addiu $v1, %lo(D_80153948) # addiu $v1, $v1, 0x3948
/* B800E0 80108F40 03387821 */  addu  $t7, $t9, $t8
/* B800E4 80108F44 861863D8 */  lh    $t8, 0x63d8($s0)
/* B800E8 80108F48 000F7080 */  sll   $t6, $t7, 2
/* B800EC 80108F4C 31D90FFF */  andi  $t9, $t6, 0xfff
/* B800F0 80108F50 270F0001 */  addiu $t7, $t8, 1
/* B800F4 80108F54 000F7080 */  sll   $t6, $t7, 2
/* B800F8 80108F58 31D80FFF */  andi  $t8, $t6, 0xfff
/* B800FC 80108F5C 00187B00 */  sll   $t7, $t8, 0xc
/* B80100 80108F60 032F7025 */  or    $t6, $t9, $t7
/* B80104 80108F64 AC4E0004 */  sw    $t6, 4($v0)
/* B80108 80108F68 8FB80120 */  lw    $t8, 0x120($sp)
/* B8010C 80108F6C 3C0FE100 */  lui   $t7, 0xe100
/* B80110 80108F70 27190008 */  addiu $t9, $t8, 8
/* B80114 80108F74 AFB90120 */  sw    $t9, 0x120($sp)
/* B80118 80108F78 AF000004 */  sw    $zero, 4($t8)
/* B8011C 80108F7C AF0F0000 */  sw    $t7, ($t8)
/* B80120 80108F80 8FAE0120 */  lw    $t6, 0x120($sp)
/* B80124 80108F84 3C0F0400 */  lui   $t7, (0x04000400 >> 16) # lui $t7, 0x400
/* B80128 80108F88 35EF0400 */  ori   $t7, (0x04000400 & 0xFFFF) # ori $t7, $t7, 0x400
/* B8012C 80108F8C 25D80008 */  addiu $t8, $t6, 8
/* B80130 80108F90 AFB80120 */  sw    $t8, 0x120($sp)
/* B80134 80108F94 3C19F100 */  lui   $t9, 0xf100
/* B80138 80108F98 ADD90000 */  sw    $t9, ($t6)
/* B8013C 80108F9C ADCF0004 */  sw    $t7, 4($t6)
/* B80140 80108FA0 8FA20120 */  lw    $v0, 0x120($sp)
/* B80144 80108FA4 3C19FD90 */  lui   $t9, 0xfd90
/* B80148 80108FA8 24580008 */  addiu $t8, $v0, 8
/* B8014C 80108FAC AFB80120 */  sw    $t8, 0x120($sp)
/* B80150 80108FB0 AC590000 */  sw    $t9, ($v0)
/* B80154 80108FB4 8E0F62B0 */  lw    $t7, 0x62b0($s0)
/* B80158 80108FB8 25EE1900 */  addiu $t6, $t7, 0x1900
/* B8015C 80108FBC AC4E0004 */  sw    $t6, 4($v0)
/* B80160 80108FC0 8FB80120 */  lw    $t8, 0x120($sp)
/* B80164 80108FC4 3C0E0700 */  lui   $t6, 0x700
/* B80168 80108FC8 3C0FF590 */  lui   $t7, 0xf590
/* B8016C 80108FCC 27190008 */  addiu $t9, $t8, 8
/* B80170 80108FD0 AFB90120 */  sw    $t9, 0x120($sp)
/* B80174 80108FD4 AF0E0004 */  sw    $t6, 4($t8)
/* B80178 80108FD8 AF0F0000 */  sw    $t7, ($t8)
/* B8017C 80108FDC 8FB80120 */  lw    $t8, 0x120($sp)
/* B80180 80108FE0 3C0FE600 */  lui   $t7, 0xe600
/* B80184 80108FE4 27190008 */  addiu $t9, $t8, 8
/* B80188 80108FE8 AFB90120 */  sw    $t9, 0x120($sp)
/* B8018C 80108FEC AF000004 */  sw    $zero, 4($t8)
/* B80190 80108FF0 AF0F0000 */  sw    $t7, ($t8)
/* B80194 80108FF4 8FAE0120 */  lw    $t6, 0x120($sp)
/* B80198 80108FF8 3C0F0747 */  lui   $t7, (0x0747F156 >> 16) # lui $t7, 0x747
/* B8019C 80108FFC 35EFF156 */  ori   $t7, (0x0747F156 & 0xFFFF) # ori $t7, $t7, 0xf156
/* B801A0 80109000 25D80008 */  addiu $t8, $t6, 8
/* B801A4 80109004 AFB80120 */  sw    $t8, 0x120($sp)
/* B801A8 80109008 3C19F300 */  lui   $t9, 0xf300
/* B801AC 8010900C ADD90000 */  sw    $t9, ($t6)
/* B801B0 80109010 ADCF0004 */  sw    $t7, 4($t6)
/* B801B4 80109014 8FAE0120 */  lw    $t6, 0x120($sp)
/* B801B8 80109018 3C19E700 */  lui   $t9, 0xe700
/* B801BC 8010901C 25D80008 */  addiu $t8, $t6, 8
/* B801C0 80109020 AFB80120 */  sw    $t8, 0x120($sp)
/* B801C4 80109024 ADC00004 */  sw    $zero, 4($t6)
/* B801C8 80109028 ADD90000 */  sw    $t9, ($t6)
/* B801CC 8010902C 8FAF0120 */  lw    $t7, 0x120($sp)
/* B801D0 80109030 3C18F580 */  lui   $t8, (0xF5800C00 >> 16) # lui $t8, 0xf580
/* B801D4 80109034 37180C00 */  ori   $t8, (0xF5800C00 & 0xFFFF) # ori $t8, $t8, 0xc00
/* B801D8 80109038 25EE0008 */  addiu $t6, $t7, 8
/* B801DC 8010903C AFAE0120 */  sw    $t6, 0x120($sp)
/* B801E0 80109040 ADE00004 */  sw    $zero, 4($t7)
/* B801E4 80109044 ADF80000 */  sw    $t8, ($t7)
/* B801E8 80109048 8FB90120 */  lw    $t9, 0x120($sp)
/* B801EC 8010904C 3C180017 */  lui   $t8, (0x0017C0BC >> 16) # lui $t8, 0x17
/* B801F0 80109050 3718C0BC */  ori   $t8, (0x0017C0BC & 0xFFFF) # ori $t8, $t8, 0xc0bc
/* B801F4 80109054 272F0008 */  addiu $t7, $t9, 8
/* B801F8 80109058 AFAF0120 */  sw    $t7, 0x120($sp)
/* B801FC 8010905C 3C0EF200 */  lui   $t6, 0xf200
/* B80200 80109060 AF2E0000 */  sw    $t6, ($t9)
/* B80204 80109064 AF380004 */  sw    $t8, 4($t9)
/* B80208 80109068 8FA20120 */  lw    $v0, 0x120($sp)
/* B8020C 8010906C 244F0008 */  addiu $t7, $v0, 8
/* B80210 80109070 AFAF0120 */  sw    $t7, 0x120($sp)
/* B80214 80109074 920E63FA */  lbu   $t6, 0x63fa($s0)
/* B80218 80109078 000EC040 */  sll   $t8, $t6, 1
/* B8021C 8010907C 8EEE0000 */  lw    $t6, ($s7)
/* B80220 80109080 0078C821 */  addu  $t9, $v1, $t8
/* B80224 80109084 872F0000 */  lh    $t7, ($t9)
/* B80228 80109088 85D80B0E */  lh    $t8, 0xb0e($t6)
/* B8022C 8010908C 01F8C821 */  addu  $t9, $t7, $t8
/* B80230 80109090 272E0030 */  addiu $t6, $t9, 0x30
/* B80234 80109094 000E7880 */  sll   $t7, $t6, 2
/* B80238 80109098 860E63D8 */  lh    $t6, 0x63d8($s0)
/* B8023C 8010909C 31F80FFF */  andi  $t8, $t7, 0xfff
/* B80240 801090A0 0301C825 */  or    $t9, $t8, $at
/* B80244 801090A4 25CF00C2 */  addiu $t7, $t6, 0xc2
/* B80248 801090A8 000FC080 */  sll   $t8, $t7, 2
/* B8024C 801090AC 330E0FFF */  andi  $t6, $t8, 0xfff
/* B80250 801090B0 000E7B00 */  sll   $t7, $t6, 0xc
/* B80254 801090B4 032FC025 */  or    $t8, $t9, $t7
/* B80258 801090B8 AC580000 */  sw    $t8, ($v0)
/* B8025C 801090BC 920E63FA */  lbu   $t6, 0x63fa($s0)
/* B80260 801090C0 000EC840 */  sll   $t9, $t6, 1
/* B80264 801090C4 8EEE0000 */  lw    $t6, ($s7)
/* B80268 801090C8 00797821 */  addu  $t7, $v1, $t9
/* B8026C 801090CC 85F80000 */  lh    $t8, ($t7)
/* B80270 801090D0 85D90B0E */  lh    $t9, 0xb0e($t6)
/* B80274 801090D4 03197821 */  addu  $t7, $t8, $t9
/* B80278 801090D8 861963D8 */  lh    $t9, 0x63d8($s0)
/* B8027C 801090DC 000F7080 */  sll   $t6, $t7, 2
/* B80280 801090E0 31D80FFF */  andi  $t8, $t6, 0xfff
/* B80284 801090E4 272F0061 */  addiu $t7, $t9, 0x61
/* B80288 801090E8 000F7080 */  sll   $t6, $t7, 2
/* B8028C 801090EC 31D90FFF */  andi  $t9, $t6, 0xfff
/* B80290 801090F0 00197B00 */  sll   $t7, $t9, 0xc
/* B80294 801090F4 030F7025 */  or    $t6, $t8, $t7
/* B80298 801090F8 AC4E0004 */  sw    $t6, 4($v0)
/* B8029C 801090FC 8FB90120 */  lw    $t9, 0x120($sp)
/* B802A0 80109100 3C0FE100 */  lui   $t7, 0xe100
/* B802A4 80109104 27380008 */  addiu $t8, $t9, 8
/* B802A8 80109108 AFB80120 */  sw    $t8, 0x120($sp)
/* B802AC 8010910C AF200004 */  sw    $zero, 4($t9)
/* B802B0 80109110 AF2F0000 */  sw    $t7, ($t9)
/* B802B4 80109114 8FAE0120 */  lw    $t6, 0x120($sp)
/* B802B8 80109118 3C0F0400 */  lui   $t7, (0x04000400 >> 16) # lui $t7, 0x400
/* B802BC 8010911C 35EF0400 */  ori   $t7, (0x04000400 & 0xFFFF) # ori $t7, $t7, 0x400
/* B802C0 80109120 25D90008 */  addiu $t9, $t6, 8
/* B802C4 80109124 AFB90120 */  sw    $t9, 0x120($sp)
/* B802C8 80109128 3C18F100 */  lui   $t8, 0xf100
/* B802CC 8010912C ADD80000 */  sw    $t8, ($t6)
/* B802D0 80109130 ADCF0004 */  sw    $t7, 4($t6)
/* B802D4 80109134 8FAE0120 */  lw    $t6, 0x120($sp)
/* B802D8 80109138 3C18E700 */  lui   $t8, 0xe700
/* B802DC 8010913C 25D90008 */  addiu $t9, $t6, 8
/* B802E0 80109140 AFB90120 */  sw    $t9, 0x120($sp)
/* B802E4 80109144 ADC00004 */  sw    $zero, 4($t6)
/* B802E8 80109148 ADD80000 */  sw    $t8, ($t6)
/* B802EC 8010914C 8FAF0120 */  lw    $t7, 0x120($sp)
/* B802F0 80109150 3C19FA00 */  lui   $t9, 0xfa00
/* B802F4 80109154 01E01825 */  move  $v1, $t7
/* B802F8 80109158 25EE0008 */  addiu $t6, $t7, 8
/* B802FC 8010915C AFAE0120 */  sw    $t6, 0x120($sp)
/* B80300 80109160 AC790000 */  sw    $t9, ($v1)
/* B80304 80109164 921863F8 */  lbu   $t8, 0x63f8($s0)
/* B80308 80109168 3C0E8015 */  lui   $t6, %hi(D_80153900) # $t6, 0x8015
/* B8030C 8010916C 25CE3900 */  addiu $t6, %lo(D_80153900) # addiu $t6, $t6, 0x3900
/* B80310 80109170 00187880 */  sll   $t7, $t8, 2
/* B80314 80109174 01F87823 */  subu  $t7, $t7, $t8
/* B80318 80109178 000F7840 */  sll   $t7, $t7, 1
/* B8031C 8010917C 01EE1021 */  addu  $v0, $t7, $t6
/* B80320 80109180 84590004 */  lh    $t9, 4($v0)
/* B80324 80109184 3C01E400 */  lui   $at, 0xe400
/* B80328 80109188 333800FF */  andi  $t8, $t9, 0xff
/* B8032C 8010918C 84590000 */  lh    $t9, ($v0)
/* B80330 80109190 00187A00 */  sll   $t7, $t8, 8
/* B80334 80109194 0019C600 */  sll   $t8, $t9, 0x18
/* B80338 80109198 84590002 */  lh    $t9, 2($v0)
/* B8033C 8010919C 01F87025 */  or    $t6, $t7, $t8
/* B80340 801091A0 332F00FF */  andi  $t7, $t9, 0xff
/* B80344 801091A4 000FC400 */  sll   $t8, $t7, 0x10
/* B80348 801091A8 860F63E2 */  lh    $t7, 0x63e2($s0)
/* B8034C 801091AC 01D8C825 */  or    $t9, $t6, $t8
/* B80350 801091B0 31EE00FF */  andi  $t6, $t7, 0xff
/* B80354 801091B4 032EC025 */  or    $t8, $t9, $t6
/* B80358 801091B8 AC780004 */  sw    $t8, 4($v1)
/* B8035C 801091BC 8FA20120 */  lw    $v0, 0x120($sp)
/* B80360 801091C0 3C0EFD90 */  lui   $t6, 0xfd90
/* B80364 801091C4 24590008 */  addiu $t9, $v0, 8
/* B80368 801091C8 AFB90120 */  sw    $t9, 0x120($sp)
/* B8036C 801091CC AC4E0000 */  sw    $t6, ($v0)
/* B80370 801091D0 8E1862B0 */  lw    $t8, 0x62b0($s0)
/* B80374 801091D4 270F1000 */  addiu $t7, $t8, 0x1000
/* B80378 801091D8 AC4F0004 */  sw    $t7, 4($v0)
/* B8037C 801091DC 8FB90120 */  lw    $t9, 0x120($sp)
/* B80380 801091E0 3C0F0700 */  lui   $t7, 0x700
/* B80384 801091E4 3C18F590 */  lui   $t8, 0xf590
/* B80388 801091E8 272E0008 */  addiu $t6, $t9, 8
/* B8038C 801091EC AFAE0120 */  sw    $t6, 0x120($sp)
/* B80390 801091F0 AF2F0004 */  sw    $t7, 4($t9)
/* B80394 801091F4 AF380000 */  sw    $t8, ($t9)
/* B80398 801091F8 8FB90120 */  lw    $t9, 0x120($sp)
/* B8039C 801091FC 3C18E600 */  lui   $t8, 0xe600
/* B803A0 80109200 272E0008 */  addiu $t6, $t9, 8
/* B803A4 80109204 AFAE0120 */  sw    $t6, 0x120($sp)
/* B803A8 80109208 AF200004 */  sw    $zero, 4($t9)
/* B803AC 8010920C AF380000 */  sw    $t8, ($t9)
/* B803B0 80109210 8FAF0120 */  lw    $t7, 0x120($sp)
/* B803B4 80109214 3C180747 */  lui   $t8, (0x0747F156 >> 16) # lui $t8, 0x747
/* B803B8 80109218 3718F156 */  ori   $t8, (0x0747F156 & 0xFFFF) # ori $t8, $t8, 0xf156
/* B803BC 8010921C 25F90008 */  addiu $t9, $t7, 8
/* B803C0 80109220 AFB90120 */  sw    $t9, 0x120($sp)
/* B803C4 80109224 3C0EF300 */  lui   $t6, 0xf300
/* B803C8 80109228 ADEE0000 */  sw    $t6, ($t7)
/* B803CC 8010922C ADF80004 */  sw    $t8, 4($t7)
/* B803D0 80109230 8FAF0120 */  lw    $t7, 0x120($sp)
/* B803D4 80109234 3C0EE700 */  lui   $t6, 0xe700
/* B803D8 80109238 25F90008 */  addiu $t9, $t7, 8
/* B803DC 8010923C AFB90120 */  sw    $t9, 0x120($sp)
/* B803E0 80109240 ADE00004 */  sw    $zero, 4($t7)
/* B803E4 80109244 ADEE0000 */  sw    $t6, ($t7)
/* B803E8 80109248 8FB80120 */  lw    $t8, 0x120($sp)
/* B803EC 8010924C 3C19F580 */  lui   $t9, (0xF5800C00 >> 16) # lui $t9, 0xf580
/* B803F0 80109250 37390C00 */  ori   $t9, (0xF5800C00 & 0xFFFF) # ori $t9, $t9, 0xc00
/* B803F4 80109254 270F0008 */  addiu $t7, $t8, 8
/* B803F8 80109258 AFAF0120 */  sw    $t7, 0x120($sp)
/* B803FC 8010925C AF000004 */  sw    $zero, 4($t8)
/* B80400 80109260 AF190000 */  sw    $t9, ($t8)
/* B80404 80109264 8FAE0120 */  lw    $t6, 0x120($sp)
/* B80408 80109268 3C190017 */  lui   $t9, (0x0017C0BC >> 16) # lui $t9, 0x17
/* B8040C 8010926C 3739C0BC */  ori   $t9, (0x0017C0BC & 0xFFFF) # ori $t9, $t9, 0xc0bc
/* B80410 80109270 25D80008 */  addiu $t8, $t6, 8
/* B80414 80109274 AFB80120 */  sw    $t8, 0x120($sp)
/* B80418 80109278 3C0FF200 */  lui   $t7, 0xf200
/* B8041C 8010927C ADCF0000 */  sw    $t7, ($t6)
/* B80420 80109280 ADD90004 */  sw    $t9, 4($t6)
/* B80424 80109284 8FA20120 */  lw    $v0, 0x120($sp)
/* B80428 80109288 8EEF0000 */  lw    $t7, ($s7)
/* B8042C 8010928C 24580008 */  addiu $t8, $v0, 8
/* B80430 80109290 AFB80120 */  sw    $t8, 0x120($sp)
/* B80434 80109294 85F90B0E */  lh    $t9, 0xb0e($t7)
/* B80438 80109298 272E0030 */  addiu $t6, $t9, 0x30
/* B8043C 8010929C 000EC080 */  sll   $t8, $t6, 2
/* B80440 801092A0 860E63D8 */  lh    $t6, 0x63d8($s0)
/* B80444 801092A4 330F0FFF */  andi  $t7, $t8, 0xfff
/* B80448 801092A8 01E1C825 */  or    $t9, $t7, $at
/* B8044C 801092AC 25D80060 */  addiu $t8, $t6, 0x60
/* B80450 801092B0 00187880 */  sll   $t7, $t8, 2
/* B80454 801092B4 31EE0FFF */  andi  $t6, $t7, 0xfff
/* B80458 801092B8 000EC300 */  sll   $t8, $t6, 0xc
/* B8045C 801092BC 03387825 */  or    $t7, $t9, $t8
/* B80460 801092C0 AC4F0000 */  sw    $t7, ($v0)
/* B80464 801092C4 8EEE0000 */  lw    $t6, ($s7)
/* B80468 801092C8 85D90B0E */  lh    $t9, 0xb0e($t6)
/* B8046C 801092CC 860E63D8 */  lh    $t6, 0x63d8($s0)
/* B80470 801092D0 0019C080 */  sll   $t8, $t9, 2
/* B80474 801092D4 330F0FFF */  andi  $t7, $t8, 0xfff
/* B80478 801092D8 000EC880 */  sll   $t9, $t6, 2
/* B8047C 801092DC 33380FFF */  andi  $t8, $t9, 0xfff
/* B80480 801092E0 00187300 */  sll   $t6, $t8, 0xc
/* B80484 801092E4 01EEC825 */  or    $t9, $t7, $t6
/* B80488 801092E8 AC590004 */  sw    $t9, 4($v0)
/* B8048C 801092EC 8FB80120 */  lw    $t8, 0x120($sp)
/* B80490 801092F0 3C0EE100 */  lui   $t6, 0xe100
/* B80494 801092F4 270F0008 */  addiu $t7, $t8, 8
/* B80498 801092F8 AFAF0120 */  sw    $t7, 0x120($sp)
/* B8049C 801092FC AF000004 */  sw    $zero, 4($t8)
/* B804A0 80109300 AF0E0000 */  sw    $t6, ($t8)
/* B804A4 80109304 8FB90120 */  lw    $t9, 0x120($sp)
/* B804A8 80109308 3C0E0400 */  lui   $t6, (0x04000400 >> 16) # lui $t6, 0x400
/* B804AC 8010930C 35CE0400 */  ori   $t6, (0x04000400 & 0xFFFF) # ori $t6, $t6, 0x400
/* B804B0 80109310 27380008 */  addiu $t8, $t9, 8
/* B804B4 80109314 AFB80120 */  sw    $t8, 0x120($sp)
/* B804B8 80109318 3C0FF100 */  lui   $t7, 0xf100
/* B804BC 8010931C AF2F0000 */  sw    $t7, ($t9)
/* B804C0 80109320 AF2E0004 */  sw    $t6, 4($t9)
/* B804C4 80109324 8FA20120 */  lw    $v0, 0x120($sp)
/* B804C8 80109328 3C0FFD90 */  lui   $t7, 0xfd90
/* B804CC 8010932C 24580008 */  addiu $t8, $v0, 8
/* B804D0 80109330 AFB80120 */  sw    $t8, 0x120($sp)
/* B804D4 80109334 AC4F0000 */  sw    $t7, ($v0)
/* B804D8 80109338 8E0E62B0 */  lw    $t6, 0x62b0($s0)
/* B804DC 8010933C 25D91900 */  addiu $t9, $t6, 0x1900
/* B804E0 80109340 AC590004 */  sw    $t9, 4($v0)
/* B804E4 80109344 8FB80120 */  lw    $t8, 0x120($sp)
/* B804E8 80109348 3C190700 */  lui   $t9, 0x700
/* B804EC 8010934C 3C0EF590 */  lui   $t6, 0xf590
/* B804F0 80109350 270F0008 */  addiu $t7, $t8, 8
/* B804F4 80109354 AFAF0120 */  sw    $t7, 0x120($sp)
/* B804F8 80109358 AF190004 */  sw    $t9, 4($t8)
/* B804FC 8010935C AF0E0000 */  sw    $t6, ($t8)
/* B80500 80109360 8FB80120 */  lw    $t8, 0x120($sp)
/* B80504 80109364 3C0EE600 */  lui   $t6, 0xe600
/* B80508 80109368 270F0008 */  addiu $t7, $t8, 8
/* B8050C 8010936C AFAF0120 */  sw    $t7, 0x120($sp)
/* B80510 80109370 AF000004 */  sw    $zero, 4($t8)
/* B80514 80109374 AF0E0000 */  sw    $t6, ($t8)
/* B80518 80109378 8FB90120 */  lw    $t9, 0x120($sp)
/* B8051C 8010937C 3C0E0747 */  lui   $t6, (0x0747F156 >> 16) # lui $t6, 0x747
/* B80520 80109380 35CEF156 */  ori   $t6, (0x0747F156 & 0xFFFF) # ori $t6, $t6, 0xf156
/* B80524 80109384 27380008 */  addiu $t8, $t9, 8
/* B80528 80109388 AFB80120 */  sw    $t8, 0x120($sp)
/* B8052C 8010938C 3C0FF300 */  lui   $t7, 0xf300
/* B80530 80109390 AF2F0000 */  sw    $t7, ($t9)
/* B80534 80109394 AF2E0004 */  sw    $t6, 4($t9)
/* B80538 80109398 8FB90120 */  lw    $t9, 0x120($sp)
/* B8053C 8010939C 3C0FE700 */  lui   $t7, 0xe700
/* B80540 801093A0 27380008 */  addiu $t8, $t9, 8
/* B80544 801093A4 AFB80120 */  sw    $t8, 0x120($sp)
/* B80548 801093A8 AF200004 */  sw    $zero, 4($t9)
/* B8054C 801093AC AF2F0000 */  sw    $t7, ($t9)
/* B80550 801093B0 8FAE0120 */  lw    $t6, 0x120($sp)
/* B80554 801093B4 3C18F580 */  lui   $t8, (0xF5800C00 >> 16) # lui $t8, 0xf580
/* B80558 801093B8 37180C00 */  ori   $t8, (0xF5800C00 & 0xFFFF) # ori $t8, $t8, 0xc00
/* B8055C 801093BC 25D90008 */  addiu $t9, $t6, 8
/* B80560 801093C0 AFB90120 */  sw    $t9, 0x120($sp)
/* B80564 801093C4 ADC00004 */  sw    $zero, 4($t6)
/* B80568 801093C8 ADD80000 */  sw    $t8, ($t6)
/* B8056C 801093CC 8FAF0120 */  lw    $t7, 0x120($sp)
/* B80570 801093D0 3C180017 */  lui   $t8, (0x0017C0BC >> 16) # lui $t8, 0x17
/* B80574 801093D4 3718C0BC */  ori   $t8, (0x0017C0BC & 0xFFFF) # ori $t8, $t8, 0xc0bc
/* B80578 801093D8 25EE0008 */  addiu $t6, $t7, 8
/* B8057C 801093DC AFAE0120 */  sw    $t6, 0x120($sp)
/* B80580 801093E0 3C19F200 */  lui   $t9, 0xf200
/* B80584 801093E4 ADF90000 */  sw    $t9, ($t7)
/* B80588 801093E8 ADF80004 */  sw    $t8, 4($t7)
/* B8058C 801093EC 8FA20120 */  lw    $v0, 0x120($sp)
/* B80590 801093F0 8EF90000 */  lw    $t9, ($s7)
/* B80594 801093F4 244E0008 */  addiu $t6, $v0, 8
/* B80598 801093F8 AFAE0120 */  sw    $t6, 0x120($sp)
/* B8059C 801093FC 87380B0E */  lh    $t8, 0xb0e($t9)
/* B805A0 80109400 270F0030 */  addiu $t7, $t8, 0x30
/* B805A4 80109404 000F7080 */  sll   $t6, $t7, 2
/* B805A8 80109408 860F63D8 */  lh    $t7, 0x63d8($s0)
/* B805AC 8010940C 31D90FFF */  andi  $t9, $t6, 0xfff
/* B805B0 80109410 0321C025 */  or    $t8, $t9, $at
/* B805B4 80109414 25EE00C0 */  addiu $t6, $t7, 0xc0
/* B805B8 80109418 000EC880 */  sll   $t9, $t6, 2
/* B805BC 8010941C 332F0FFF */  andi  $t7, $t9, 0xfff
/* B805C0 80109420 000F7300 */  sll   $t6, $t7, 0xc
/* B805C4 80109424 030EC825 */  or    $t9, $t8, $t6
/* B805C8 80109428 AC590000 */  sw    $t9, ($v0)
/* B805CC 8010942C 8EEF0000 */  lw    $t7, ($s7)
/* B805D0 80109430 26217FFF */  addiu $at, $s1, 0x7fff
/* B805D4 80109434 85F80B0E */  lh    $t8, 0xb0e($t7)
/* B805D8 80109438 860F63D8 */  lh    $t7, 0x63d8($s0)
/* B805DC 8010943C 00187080 */  sll   $t6, $t8, 2
/* B805E0 80109440 31D90FFF */  andi  $t9, $t6, 0xfff
/* B805E4 80109444 25F80060 */  addiu $t8, $t7, 0x60
/* B805E8 80109448 00187080 */  sll   $t6, $t8, 2
/* B805EC 8010944C 31CF0FFF */  andi  $t7, $t6, 0xfff
/* B805F0 80109450 000FC300 */  sll   $t8, $t7, 0xc
/* B805F4 80109454 03387025 */  or    $t6, $t9, $t8
/* B805F8 80109458 AC4E0004 */  sw    $t6, 4($v0)
/* B805FC 8010945C 8FAF0120 */  lw    $t7, 0x120($sp)
/* B80600 80109460 3C18E100 */  lui   $t8, 0xe100
/* B80604 80109464 25F90008 */  addiu $t9, $t7, 8
/* B80608 80109468 AFB90120 */  sw    $t9, 0x120($sp)
/* B8060C 8010946C ADE00004 */  sw    $zero, 4($t7)
/* B80610 80109470 ADF80000 */  sw    $t8, ($t7)
/* B80614 80109474 8FAE0120 */  lw    $t6, 0x120($sp)
/* B80618 80109478 3C180400 */  lui   $t8, (0x04000400 >> 16) # lui $t8, 0x400
/* B8061C 8010947C 37180400 */  ori   $t8, (0x04000400 & 0xFFFF) # ori $t8, $t8, 0x400
/* B80620 80109480 25CF0008 */  addiu $t7, $t6, 8
/* B80624 80109484 AFAF0120 */  sw    $t7, 0x120($sp)
/* B80628 80109488 3C19F100 */  lui   $t9, 0xf100
/* B8062C 8010948C ADD90000 */  sw    $t9, ($t6)
/* B80630 80109490 ADD80004 */  sw    $t8, 4($t6)
/* B80634 80109494 8FAE0120 */  lw    $t6, 0x120($sp)
/* B80638 80109498 3C19E700 */  lui   $t9, 0xe700
/* B8063C 8010949C 25CF0008 */  addiu $t7, $t6, 8
/* B80640 801094A0 AFAF0120 */  sw    $t7, 0x120($sp)
/* B80644 801094A4 ADC00004 */  sw    $zero, 4($t6)
/* B80648 801094A8 ADD90000 */  sw    $t9, ($t6)
/* B8064C 801094AC 8FB80120 */  lw    $t8, 0x120($sp)
/* B80650 801094B0 3C19FF2D */  lui   $t9, (0xFF2DFEFF >> 16) # lui $t9, 0xff2d
/* B80654 801094B4 3C0FFCFF */  lui   $t7, (0xFCFF97FF >> 16) # lui $t7, 0xfcff
/* B80658 801094B8 270E0008 */  addiu $t6, $t8, 8
/* B8065C 801094BC AFAE0120 */  sw    $t6, 0x120($sp)
/* B80660 801094C0 35EF97FF */  ori   $t7, (0xFCFF97FF & 0xFFFF) # ori $t7, $t7, 0x97ff
/* B80664 801094C4 3739FEFF */  ori   $t9, (0xFF2DFEFF & 0xFFFF) # ori $t9, $t9, 0xfeff
/* B80668 801094C8 AF190004 */  sw    $t9, 4($t8)
/* B8066C 801094CC AF0F0000 */  sw    $t7, ($t8)
/* B80670 801094D0 861863D8 */  lh    $t8, 0x63d8($s0)
/* B80674 801094D4 270E0020 */  addiu $t6, $t8, 0x20
/* B80678 801094D8 A42E63D9 */  sh    $t6, 0x63d9($at)
/* B8067C 801094DC 10000103 */  b     .L801098EC
/* B80680 801094E0 966363D2 */   lhu   $v1, 0x63d2($s3)

glabel L801094E4
/* B80684 801094E4 26420001 */  addiu $v0, $s2, 1
/* B80688 801094E8 3047FFFF */  andi  $a3, $v0, 0xffff
/* B8068C 801094EC 02277821 */  addu  $t7, $s1, $a3
/* B80690 801094F0 01F5C821 */  addu  $t9, $t7, $s5
/* B80694 801094F4 93386306 */  lbu   $t8, 0x6306($t9)
/* B80698 801094F8 26217FFF */  addiu $at, $s1, 0x7fff
/* B8069C 801094FC 26C37FFF */  addiu $v1, $s6, 0x7fff
/* B806A0 80109500 A43863EB */  sh    $t8, 0x63eb($at)
/* B806A4 80109504 3052FFFF */  andi  $s2, $v0, 0xffff
/* B806A8 80109508 100000F8 */  b     .L801098EC
/* B806AC 8010950C 946363D3 */   lhu   $v1, 0x63d3($v1)

glabel L80109510
/* B806B0 80109510 240E0001 */  li    $t6, 1
/* B806B4 80109514 26217FFF */  addiu $at, $s1, 0x7fff
/* B806B8 80109518 A42E63D7 */  sh    $t6, 0x63d7($at)
/* B806BC 8010951C 26C37FFF */  addiu $v1, $s6, 0x7fff
/* B806C0 80109520 100000F2 */  b     .L801098EC
/* B806C4 80109524 946363D3 */   lhu   $v1, 0x63d3($v1)

glabel L80109528
/* B806C8 80109528 240F0010 */  li    $t7, 16
/* B806CC 8010952C 26217FFF */  addiu $at, $s1, 0x7fff
/* B806D0 80109530 A02F63E5 */  sb    $t7, 0x63e5($at)
/* B806D4 80109534 92196304 */  lbu   $t9, 0x6304($s0)
/* B806D8 80109538 34018000 */  li    $at, 32768
/* B806DC 8010953C 02C19821 */  addu  $s3, $s6, $at
/* B806E0 80109540 16990010 */  bne   $s4, $t9, .L80109584
/* B806E4 80109544 26217FFF */   addiu $at, $s1, 0x7fff
/* B806E8 80109548 961862F8 */  lhu   $t8, 0x62f8($s0)
/* B806EC 8010954C 240E0004 */  li    $t6, 4
/* B806F0 80109550 A02E63E8 */  sb    $t6, 0x63e8($at)
/* B806F4 80109554 A02063E6 */  sb    $zero, 0x63e6($at)
/* B806F8 80109558 A43862FB */  sh    $t8, 0x62fb($at)
/* B806FC 8010955C 8FA40138 */  lw    $a0, 0x138($sp)
/* B80700 80109560 24050002 */  li    $a1, 2
/* B80704 80109564 0C01BBAF */  jal   Font_LoadMessageBoxEndIcon
/* B80708 80109568 24842200 */   addiu $a0, $a0, 0x2200
/* B8070C 8010956C 24080009 */  li    $t0, 9
/* B80710 80109570 2409000A */  li    $t1, 10
/* B80714 80109574 240A000B */  li    $t2, 11
/* B80718 80109578 240B000C */  li    $t3, 12
/* B8071C 8010957C 240C000D */  li    $t4, 13
/* B80720 80109580 240D0004 */  li    $t5, 4
.L80109584:
/* B80724 80109584 100000D9 */  b     .L801098EC
/* B80728 80109588 966363D2 */   lhu   $v1, 0x63d2($s3)

glabel L8010958C
/* B8072C 8010958C 240F0020 */  li    $t7, 32
/* B80730 80109590 26217FFF */  addiu $at, $s1, 0x7fff
/* B80734 80109594 A02F63E5 */  sb    $t7, 0x63e5($at)
/* B80738 80109598 92196304 */  lbu   $t9, 0x6304($s0)
/* B8073C 8010959C 34018000 */  li    $at, 32768
/* B80740 801095A0 02C19821 */  addu  $s3, $s6, $at
/* B80744 801095A4 16990010 */  bne   $s4, $t9, .L801095E8
/* B80748 801095A8 26217FFF */   addiu $at, $s1, 0x7fff
/* B8074C 801095AC 961862F8 */  lhu   $t8, 0x62f8($s0)
/* B80750 801095B0 240E0004 */  li    $t6, 4
/* B80754 801095B4 A02E63E8 */  sb    $t6, 0x63e8($at)
/* B80758 801095B8 A02063E6 */  sb    $zero, 0x63e6($at)
/* B8075C 801095BC A43862FB */  sh    $t8, 0x62fb($at)
/* B80760 801095C0 8FA40138 */  lw    $a0, 0x138($sp)
/* B80764 801095C4 24050002 */  li    $a1, 2
/* B80768 801095C8 0C01BBAF */  jal   Font_LoadMessageBoxEndIcon
/* B8076C 801095CC 24842200 */   addiu $a0, $a0, 0x2200
/* B80770 801095D0 24080009 */  li    $t0, 9
/* B80774 801095D4 2409000A */  li    $t1, 10
/* B80778 801095D8 240A000B */  li    $t2, 11
/* B8077C 801095DC 240B000C */  li    $t3, 12
/* B80780 801095E0 240C000D */  li    $t4, 13
/* B80784 801095E4 240D0004 */  li    $t5, 4
.L801095E8:
/* B80788 801095E8 100000C0 */  b     .L801098EC
/* B8078C 801095EC 966363D2 */   lhu   $v1, 0x63d2($s3)

glabel L801095F0
/* B80790 801095F0 920F6304 */  lbu   $t7, 0x6304($s0)
/* B80794 801095F4 24190035 */  li    $t9, 53
/* B80798 801095F8 26217FFF */  addiu $at, $s1, 0x7fff
/* B8079C 801095FC 568F001D */  bnel  $s4, $t7, .L80109674
/* B807A0 80109600 8FB90120 */   lw    $t9, 0x120($sp)
/* B807A4 80109604 A0396305 */  sb    $t9, 0x6305($at)
/* B807A8 80109608 921863E4 */  lbu   $t8, 0x63e4($s0)
/* B807AC 8010960C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B807B0 80109610 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B807B4 80109614 17000016 */  bnez  $t8, .L80109670
/* B807B8 80109618 2404482E */   li    $a0, 18478
/* B807BC 8010961C 8FB90138 */  lw    $t9, 0x138($sp)
/* B807C0 80109620 3C0E8013 */  lui   $t6, %hi(D_801333E0)
/* B807C4 80109624 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* B807C8 80109628 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* B807CC 8010962C 25C733E0 */  addiu $a3, $t6, %lo(D_801333E0)
/* B807D0 80109630 27382200 */  addiu $t8, $t9, 0x2200
/* B807D4 80109634 AFB80058 */  sw    $t8, 0x58($sp)
/* B807D8 80109638 AFA70010 */  sw    $a3, 0x10($sp)
/* B807DC 8010963C AFAF0014 */  sw    $t7, 0x14($sp)
/* B807E0 80109640 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B807E4 80109644 24060004 */   li    $a2, 4
/* B807E8 80109648 8FA40058 */  lw    $a0, 0x58($sp)
/* B807EC 8010964C 0C01BBAF */  jal   Font_LoadMessageBoxEndIcon
/* B807F0 80109650 24050001 */   li    $a1, 1
/* B807F4 80109654 8FAE0138 */  lw    $t6, 0x138($sp)
/* B807F8 80109658 91CF1D6C */  lbu   $t7, 0x1d6c($t6)
/* B807FC 8010965C 01C02025 */  move  $a0, $t6
/* B80800 80109660 55E00004 */  bnezl $t7, .L80109674
/* B80804 80109664 8FB90120 */   lw    $t9, 0x120($sp)
/* B80808 80109668 0C021BC0 */  jal   Interface_SetDoAction
/* B8080C 8010966C 24050003 */   li    $a1, 3
.L80109670:
/* B80810 80109670 8FB90120 */  lw    $t9, 0x120($sp)
.L80109674:
/* B80814 80109674 8FB8013C */  lw    $t8, 0x13c($sp)
/* B80818 80109678 100000AF */  b     .L80109938
/* B8081C 8010967C AF190000 */   sw    $t9, ($t8)

glabel L80109680
/* B80820 80109680 960F63D2 */  lhu   $t7, 0x63d2($s0)
/* B80824 80109684 264E0001 */  addiu $t6, $s2, 1
/* B80828 80109688 26C37FFF */  addiu $v1, $s6, 0x7fff
/* B8082C 8010968C 15EE0007 */  bne   $t7, $t6, .L801096AC
/* B80830 80109690 00000000 */   nop   
/* B80834 80109694 0C0420FE */  jal   func_801083F8
/* B80838 80109698 8FA40138 */   lw    $a0, 0x138($sp)
/* B8083C 8010969C 8FB90120 */  lw    $t9, 0x120($sp)
/* B80840 801096A0 8FB8013C */  lw    $t8, 0x13c($sp)
/* B80844 801096A4 100000A4 */  b     .L80109938
/* B80848 801096A8 AF190000 */   sw    $t9, ($t8)
.L801096AC:
/* B8084C 801096AC 1000008F */  b     .L801098EC
/* B80850 801096B0 946363D3 */   lhu   $v1, 0x63d3($v1)

glabel L801096B4
/* B80854 801096B4 920F6304 */  lbu   $t7, 0x6304($s0)
/* B80858 801096B8 240E0035 */  li    $t6, 53
/* B8085C 801096BC 26217FFF */  addiu $at, $s1, 0x7fff
/* B80860 801096C0 168F0014 */  bne   $s4, $t7, .L80109714
/* B80864 801096C4 24190060 */   li    $t9, 96
/* B80868 801096C8 26470001 */  addiu $a3, $s2, 1
/* B8086C 801096CC 30E7FFFF */  andi  $a3, $a3, 0xffff
/* B80870 801096D0 0227C021 */  addu  $t8, $s1, $a3
/* B80874 801096D4 A02E6305 */  sb    $t6, 0x6305($at)
/* B80878 801096D8 A03963E5 */  sb    $t9, 0x63e5($at)
/* B8087C 801096DC 03157821 */  addu  $t7, $t8, $s5
/* B80880 801096E0 91EE6306 */  lbu   $t6, 0x6306($t7)
/* B80884 801096E4 24050001 */  li    $a1, 1
/* B80888 801096E8 A02E63E8 */  sb    $t6, 0x63e8($at)
/* B8088C 801096EC 8FA40138 */  lw    $a0, 0x138($sp)
/* B80890 801096F0 0C01BBAF */  jal   Font_LoadMessageBoxEndIcon
/* B80894 801096F4 24842200 */   addiu $a0, $a0, 0x2200
/* B80898 801096F8 8FB90138 */  lw    $t9, 0x138($sp)
/* B8089C 801096FC 93381D6C */  lbu   $t8, 0x1d6c($t9)
/* B808A0 80109700 03202025 */  move  $a0, $t9
/* B808A4 80109704 57000004 */  bnezl $t8, .L80109718
/* B808A8 80109708 8FAF0120 */   lw    $t7, 0x120($sp)
/* B808AC 8010970C 0C021BC0 */  jal   Interface_SetDoAction
/* B808B0 80109710 24050003 */   li    $a1, 3
.L80109714:
/* B808B4 80109714 8FAF0120 */  lw    $t7, 0x120($sp)
.L80109718:
/* B808B8 80109718 8FAE013C */  lw    $t6, 0x13c($sp)
/* B808BC 8010971C 10000086 */  b     .L80109938
/* B808C0 80109720 ADCF0000 */   sw    $t7, ($t6)

glabel L80109724
/* B808C4 80109724 92186304 */  lbu   $t8, 0x6304($s0)
/* B808C8 80109728 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B808CC 8010972C 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B808D0 80109730 1698000E */  bne   $s4, $t8, .L8010976C
/* B808D4 80109734 00002025 */   move  $a0, $zero
/* B808D8 80109738 3C198013 */  lui   $t9, %hi(D_801333E0)
/* B808DC 8010973C 3C0F8013 */  lui   $t7, %hi(D_801333E8) # $t7, 0x8013
/* B808E0 80109740 25EF33E8 */  addiu $t7, %lo(D_801333E8) # addiu $t7, $t7, 0x33e8
/* B808E4 80109744 272733E0 */  addiu $a3, $t9, %lo(D_801333E0)
/* B808E8 80109748 AFA70010 */  sw    $a3, 0x10($sp)
/* B808EC 8010974C AFAF0014 */  sw    $t7, 0x14($sp)
/* B808F0 80109750 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B808F4 80109754 24060004 */   li    $a2, 4
/* B808F8 80109758 26217FFF */  addiu $at, $s1, 0x7fff
/* B808FC 8010975C 240E0035 */  li    $t6, 53
/* B80900 80109760 24180040 */  li    $t8, 64
/* B80904 80109764 A02E6305 */  sb    $t6, 0x6305($at)
/* B80908 80109768 A03863E5 */  sb    $t8, 0x63e5($at)
.L8010976C:
/* B8090C 8010976C 8FB90120 */  lw    $t9, 0x120($sp)
/* B80910 80109770 8FAF013C */  lw    $t7, 0x13c($sp)
/* B80914 80109774 10000070 */  b     .L80109938
/* B80918 80109778 ADF90000 */   sw    $t9, ($t7)

glabel L8010977C
/* B8091C 8010977C 920E6304 */  lbu   $t6, 0x6304($s0)
/* B80920 80109780 24180035 */  li    $t8, 53
/* B80924 80109784 26217FFF */  addiu $at, $s1, 0x7fff
/* B80928 80109788 168E0012 */  bne   $s4, $t6, .L801097D4
/* B8092C 8010978C 24190050 */   li    $t9, 80
/* B80930 80109790 A0386305 */  sb    $t8, 0x6305($at)
/* B80934 80109794 A03963E5 */  sb    $t9, 0x63e5($at)
/* B80938 80109798 8FA40138 */  lw    $a0, 0x138($sp)
/* B8093C 8010979C 00002825 */  move  $a1, $zero
/* B80940 801097A0 0C01BBAF */  jal   Font_LoadMessageBoxEndIcon
/* B80944 801097A4 24842200 */   addiu $a0, $a0, 0x2200
/* B80948 801097A8 3C0F8013 */  lui   $t7, %hi(D_801333E0)
/* B8094C 801097AC 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B80950 801097B0 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B80954 801097B4 25E733E0 */  addiu $a3, $t7, %lo(D_801333E0)
/* B80958 801097B8 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B8095C 801097BC 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B80960 801097C0 AFA70010 */  sw    $a3, 0x10($sp)
/* B80964 801097C4 AFAE0014 */  sw    $t6, 0x14($sp)
/* B80968 801097C8 2404482E */  li    $a0, 18478
/* B8096C 801097CC 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B80970 801097D0 24060004 */   li    $a2, 4
.L801097D4:
/* B80974 801097D4 8FB80120 */  lw    $t8, 0x120($sp)
/* B80978 801097D8 8FB9013C */  lw    $t9, 0x13c($sp)
/* B8097C 801097DC 10000056 */  b     .L80109938
/* B80980 801097E0 AF380000 */   sw    $t8, ($t9)
.L801097E4:
glabel L801097E4
/* B80984 801097E4 8FAF0138 */  lw    $t7, 0x138($sp)
/* B80988 801097E8 34018000 */  li    $at, 32768
/* B8098C 801097EC 02C19821 */  addu  $s3, $s6, $at
/* B80990 801097F0 25EE2200 */  addiu $t6, $t7, 0x2200
/* B80994 801097F4 AFAE0058 */  sw    $t6, 0x58($sp)
/* B80998 801097F8 92186304 */  lbu   $t8, 0x6304($s0)
/* B8099C 801097FC 56980016 */  bnel  $s4, $t8, .L80109858
/* B809A0 80109800 8FAF0058 */   lw    $t7, 0x58($sp)
/* B809A4 80109804 961963D2 */  lhu   $t9, 0x63d2($s0)
/* B809A8 80109808 264F0001 */  addiu $t7, $s2, 1
/* B809AC 8010980C 572F0012 */  bnel  $t9, $t7, .L80109858
/* B809B0 80109810 8FAF0058 */   lw    $t7, 0x58($sp)
/* B809B4 80109814 960E63EA */  lhu   $t6, 0x63ea($s0)
/* B809B8 80109818 961863E8 */  lhu   $t8, 0x63e8($s0)
/* B809BC 8010981C 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B809C0 80109820 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B809C4 80109824 15D8000B */  bne   $t6, $t8, .L80109854
/* B809C8 80109828 00002025 */   move  $a0, $zero
/* B809CC 8010982C 3C198013 */  lui   $t9, %hi(D_801333E8) # $t9, 0x8013
/* B809D0 80109830 273933E8 */  addiu $t9, %lo(D_801333E8) # addiu $t9, $t9, 0x33e8
/* B809D4 80109834 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B809D8 80109838 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B809DC 8010983C AFB90014 */  sw    $t9, 0x14($sp)
/* B809E0 80109840 24060004 */  li    $a2, 4
/* B809E4 80109844 AFA70010 */  sw    $a3, 0x10($sp)
/* B809E8 80109848 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B809EC 8010984C AFA20050 */   sw    $v0, 0x50($sp)
/* B809F0 80109850 8FA20050 */  lw    $v0, 0x50($sp)
.L80109854:
/* B809F4 80109854 8FAF0058 */  lw    $t7, 0x58($sp)
.L80109858:
/* B809F8 80109858 97AE0128 */  lhu   $t6, 0x128($sp)
/* B809FC 8010985C 8FA40138 */  lw    $a0, 0x138($sp)
/* B80A00 80109860 27A60120 */  addiu $a2, $sp, 0x120
/* B80A04 80109864 01EE2821 */  addu  $a1, $t7, $t6
/* B80A08 80109868 24A50008 */  addiu $a1, $a1, 8
/* B80A0C 8010986C 0C041BC7 */  jal   func_80106F1C
/* B80A10 80109870 AFA20050 */   sw    $v0, 0x50($sp)
/* B80A14 80109874 97B80128 */  lhu   $t8, 0x128($sp)
/* B80A18 80109878 8EEF0000 */  lw    $t7, ($s7)
/* B80A1C 8010987C 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* B80A20 80109880 27190080 */  addiu $t9, $t8, 0x80
/* B80A24 80109884 A7B90128 */  sh    $t9, 0x128($sp)
/* B80A28 80109888 85EE0B06 */  lh    $t6, 0xb06($t7)
/* B80A2C 8010988C 44814000 */  mtc1  $at, $f8
/* B80A30 80109890 8FA20050 */  lw    $v0, 0x50($sp)
/* B80A34 80109894 448E2000 */  mtc1  $t6, $f4
/* B80A38 80109898 3C018015 */  lui   $at, %hi(D_80153980)
/* B80A3C 8010989C 0002C080 */  sll   $t8, $v0, 2
/* B80A40 801098A0 468021A0 */  cvt.s.w $f6, $f4
/* B80A44 801098A4 00380821 */  addu  $at, $at, $t8
/* B80A48 801098A8 C4303980 */  lwc1  $f16, %lo(D_80153980)($at)
/* B80A4C 801098AC 860E63D8 */  lh    $t6, 0x63d8($s0)
/* B80A50 801098B0 26217FFF */  addiu $at, $s1, 0x7fff
/* B80A54 801098B4 24080009 */  li    $t0, 9
/* B80A58 801098B8 46083283 */  div.s $f10, $f6, $f8
/* B80A5C 801098BC 2409000A */  li    $t1, 10
/* B80A60 801098C0 240A000B */  li    $t2, 11
/* B80A64 801098C4 240B000C */  li    $t3, 12
/* B80A68 801098C8 240C000D */  li    $t4, 13
/* B80A6C 801098CC 240D0004 */  li    $t5, 4
/* B80A70 801098D0 460A8482 */  mul.s $f18, $f16, $f10
/* B80A74 801098D4 4600910D */  trunc.w.s $f4, $f18
/* B80A78 801098D8 440F2000 */  mfc1  $t7, $f4
/* B80A7C 801098DC 00000000 */  nop   
/* B80A80 801098E0 01CFC021 */  addu  $t8, $t6, $t7
/* B80A84 801098E4 A43863D9 */  sh    $t8, 0x63d9($at)
/* B80A88 801098E8 966363D2 */  lhu   $v1, 0x63d2($s3)
.L801098EC:
/* B80A8C 801098EC 26520001 */  addiu $s2, $s2, 1
/* B80A90 801098F0 3252FFFF */  andi  $s2, $s2, 0xffff
/* B80A94 801098F4 0243082A */  slt   $at, $s2, $v1
/* B80A98 801098F8 5420FBB1 */  bnezl $at, .L801087C0
/* B80A9C 801098FC 02327021 */   addu  $t6, $s1, $s2
.L80109900:
/* B80AA0 80109900 960263E8 */  lhu   $v0, 0x63e8($s0)
/* B80AA4 80109904 14400006 */  bnez  $v0, .L80109920
/* B80AA8 80109908 26590001 */   addiu $t9, $s2, 1
/* B80AAC 8010990C 26217FFF */  addiu $at, $s1, 0x7fff
/* B80AB0 80109910 A43963D3 */  sh    $t9, 0x63d3($at)
/* B80AB4 80109914 960E63EA */  lhu   $t6, 0x63ea($s0)
/* B80AB8 80109918 10000004 */  b     .L8010992C
/* B80ABC 8010991C A42E63E9 */   sh    $t6, 0x63e9($at)
.L80109920:
/* B80AC0 80109920 244FFFFF */  addiu $t7, $v0, -1
/* B80AC4 80109924 26217FFF */  addiu $at, $s1, 0x7fff
/* B80AC8 80109928 A42F63E9 */  sh    $t7, 0x63e9($at)
.L8010992C:
/* B80ACC 8010992C 8FB80120 */  lw    $t8, 0x120($sp)
/* B80AD0 80109930 8FB9013C */  lw    $t9, 0x13c($sp)
/* B80AD4 80109934 AF380000 */  sw    $t8, ($t9)
.L80109938:
/* B80AD8 80109938 8FBF0044 */  lw    $ra, 0x44($sp)
/* B80ADC 8010993C 8FB00020 */  lw    $s0, 0x20($sp)
/* B80AE0 80109940 8FB10024 */  lw    $s1, 0x24($sp)
/* B80AE4 80109944 8FB20028 */  lw    $s2, 0x28($sp)
/* B80AE8 80109948 8FB3002C */  lw    $s3, 0x2c($sp)
/* B80AEC 8010994C 8FB40030 */  lw    $s4, 0x30($sp)
/* B80AF0 80109950 8FB50034 */  lw    $s5, 0x34($sp)
/* B80AF4 80109954 8FB60038 */  lw    $s6, 0x38($sp)
/* B80AF8 80109958 8FB7003C */  lw    $s7, 0x3c($sp)
/* B80AFC 8010995C 8FBE0040 */  lw    $fp, 0x40($sp)
/* B80B00 80109960 03E00008 */  jr    $ra
/* B80B04 80109964 27BD0138 */   addiu $sp, $sp, 0x138


