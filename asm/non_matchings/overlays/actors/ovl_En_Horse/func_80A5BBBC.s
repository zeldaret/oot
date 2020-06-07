.late_rodata
glabel D_80A66874
    .float 0.008

.text
glabel func_80A5BBBC
/* 008CC 80A5BBBC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 008D0 80A5BBC0 AFA50034 */  sw      $a1, 0x0034($sp)
/* 008D4 80A5BBC4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 008D8 80A5BBC8 AFA60038 */  sw      $a2, 0x0038($sp)
/* 008DC 80A5BBCC 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 008E0 80A5BBD0 AFA40030 */  sw      $a0, 0x0030($sp)
/* 008E4 80A5BBD4 27A60024 */  addiu   $a2, $sp, 0x0024           ## $a2 = FFFFFFF4
/* 008E8 80A5BBD8 0C296EE4 */  jal     func_80A5BB90
/* 008EC 80A5BBDC 27A70020 */  addiu   $a3, $sp, 0x0020           ## $a3 = FFFFFFF0
/* 008F0 80A5BBE0 C7A00020 */  lwc1    $f0, 0x0020($sp)
/* 008F4 80A5BBE4 3C0180A6 */  lui     $at, %hi(D_80A66874)       ## $at = 80A60000
/* 008F8 80A5BBE8 C4246874 */  lwc1    $f4, %lo(D_80A66874)($at)
/* 008FC 80A5BBEC 46000005 */  abs.s   $f0, $f0
/* 00900 80A5BBF0 8FA50030 */  lw      $a1, 0x0030($sp)
/* 00904 80A5BBF4 4604003C */  c.lt.s  $f0, $f4
/* 00908 80A5BBF8 24A500E0 */  addiu   $a1, $a1, 0x00E0           ## $a1 = 000000E0
/* 0090C 80A5BBFC 45000003 */  bc1f    .L80A5BC0C
/* 00910 80A5BC00 00000000 */  nop
/* 00914 80A5BC04 10000014 */  beq     $zero, $zero, .L80A5BC58
/* 00918 80A5BC08 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A5BC0C:
/* 0091C 80A5BC0C 0C032D9E */  jal     Math3D_Vec3f_DistXYZ
/* 00920 80A5BC10 8FA40038 */  lw      $a0, 0x0038($sp)
/* 00924 80A5BC14 E7A0001C */  swc1    $f0, 0x001C($sp)
/* 00928 80A5BC18 8FA40030 */  lw      $a0, 0x0030($sp)
/* 0092C 80A5BC1C 8FA50034 */  lw      $a1, 0x0034($sp)
/* 00930 80A5BC20 27A60024 */  addiu   $a2, $sp, 0x0024           ## $a2 = FFFFFFF4
/* 00934 80A5BC24 0C00C535 */  jal     func_800314D4
/* 00938 80A5BC28 8FA70020 */  lw      $a3, 0x0020($sp)
/* 0093C 80A5BC2C 0002102B */  sltu    $v0, $zero, $v0
/* 00940 80A5BC30 14400009 */  bne     $v0, $zero, .L80A5BC58
/* 00944 80A5BC34 C7A6001C */  lwc1    $f6, 0x001C($sp)
/* 00948 80A5BC38 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0094C 80A5BC3C 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 00950 80A5BC40 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00954 80A5BC44 4608303C */  c.lt.s  $f6, $f8
/* 00958 80A5BC48 00000000 */  nop
/* 0095C 80A5BC4C 45020003 */  bc1fl   .L80A5BC5C
/* 00960 80A5BC50 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00964 80A5BC54 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A5BC58:
/* 00968 80A5BC58 8FBF0014 */  lw      $ra, 0x0014($sp)
.L80A5BC5C:
/* 0096C 80A5BC5C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00970 80A5BC60 03E00008 */  jr      $ra
/* 00974 80A5BC64 00000000 */  nop
