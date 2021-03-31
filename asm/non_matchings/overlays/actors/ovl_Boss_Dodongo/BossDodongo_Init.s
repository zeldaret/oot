.late_rodata
glabel D_808CA644
 .word 0x4478C000
glabel D_808CA648
 .word 0x460FC000
glabel D_808CA64C
 .word 0xC45E8000
glabel D_808CA650
 .word 0xC4BE7852
glabel D_808CA654
 .word 0xC54E8000
glabel D_808CA658
 .word 0xC4BE7852
glabel D_808CA65C
 .word 0xC54E8000
glabel D_808CA660
 .word 0xC4BE7852
glabel D_808CA664
 .word 0xC54E8000

.text
glabel BossDodongo_Init
/* 007E0 808C1970 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 007E4 808C1974 AFB30040 */  sw      $s3, 0x0040($sp)
/* 007E8 808C1978 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 007EC 808C197C 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 007F0 808C1980 00250821 */  addu    $at, $at, $a1
/* 007F4 808C1984 AFBF0044 */  sw      $ra, 0x0044($sp)
/* 007F8 808C1988 AFB2003C */  sw      $s2, 0x003C($sp)
/* 007FC 808C198C AFB10038 */  sw      $s1, 0x0038($sp)
/* 00800 808C1990 AFB00034 */  sw      $s0, 0x0034($sp)
/* 00804 808C1994 248E0920 */  addiu   $t6, $a0, 0x0920           ## $t6 = 00000920
/* 00808 808C1998 3C05808D */  lui     $a1, %hi(D_808CA3C8)       ## $a1 = 808D0000
/* 0080C 808C199C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00810 808C19A0 AC2E1E10 */  sw      $t6, 0x1E10($at)           ## 00011E10
/* 00814 808C19A4 0C01E037 */  jal     Actor_ProcessInitChain

/* 00818 808C19A8 24A5A3C8 */  addiu   $a1, $a1, %lo(D_808CA3C8)  ## $a1 = 808CA3C8
/* 0081C 808C19AC 3C05460F */  lui     $a1, 0x460F                ## $a1 = 460F0000
/* 00820 808C19B0 3C068003 */  lui     $a2, %hi(ActorShadow_DrawCircle)
/* 00824 808C19B4 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawCircle)
/* 00828 808C19B8 34A5C000 */  ori     $a1, $a1, 0xC000           ## $a1 = 460FC000
/* 0082C 808C19BC 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00830 808C19C0 0C00AC78 */  jal     ActorShape_Init

/* 00834 808C19C4 3C07437A */  lui     $a3, 0x437A                ## $a3 = 437A0000
/* 00838 808C19C8 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 0083C 808C19CC 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00840 808C19D0 0C00B58B */  jal     Actor_SetScale

/* 00844 808C19D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00848 808C19D8 3C120601 */  lui     $s2, %hi(D_0600F0D8)                ## $s2 = 06010000
/* 0084C 808C19DC 2652F0D8 */  addiu   $s2, $s2, %lo(D_0600F0D8)           ## $s2 = 0600F0D8
/* 00850 808C19E0 2611014C */  addiu   $s1, $s0, 0x014C           ## $s1 = 0000014C
/* 00854 808C19E4 3C060602 */  lui     $a2, %hi(D_0601B310)                ## $a2 = 06020000
/* 00858 808C19E8 24C6B310 */  addiu   $a2, $a2, %lo(D_0601B310)           ## $a2 = 0601B310
/* 0085C 808C19EC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 0000014C
/* 00860 808C19F0 02403825 */  or      $a3, $s2, $zero            ## $a3 = 0600F0D8
/* 00864 808C19F4 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00868 808C19F8 AFA00010 */  sw      $zero, 0x0010($sp)
/* 0086C 808C19FC AFA00014 */  sw      $zero, 0x0014($sp)
/* 00870 808C1A00 0C02915F */  jal     SkelAnime_Init

/* 00874 808C1A04 AFA00018 */  sw      $zero, 0x0018($sp)
/* 00878 808C1A08 02202025 */  or      $a0, $s1, $zero            ## $a0 = 0000014C
/* 0087C 808C1A0C 0C0294BE */  jal     Animation_PlayLoop
/* 00880 808C1A10 02402825 */  or      $a1, $s2, $zero            ## $a1 = 0600F0D8
/* 00884 808C1A14 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00888 808C1A18 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 0088C 808C1A1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00890 808C1A20 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 00894 808C1A24 0C230720 */  jal     func_808C1C80
/* 00898 808C1A28 E60401F8 */  swc1    $f4, 0x01F8($s0)           ## 000001F8
/* 0089C 808C1A2C 240F000C */  addiu   $t7, $zero, 0x000C         ## $t7 = 0000000C
/* 008A0 808C1A30 A60F0194 */  sh      $t7, 0x0194($s0)           ## 00000194
/* 008A4 808C1A34 3C01808D */  lui     $at, %hi(D_808CA644)       ## $at = 808D0000
/* 008A8 808C1A38 C426A644 */  lwc1    $f6, %lo(D_808CA644)($at)
/* 008AC 808C1A3C 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 008B0 808C1A40 44814000 */  mtc1    $at, $f8                   ## $f8 = 1000.00
/* 008B4 808C1A44 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 008B8 808C1A48 44815000 */  mtc1    $at, $f10                  ## $f10 = 2.00
/* 008BC 808C1A4C 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 008C0 808C1A50 A21800AE */  sb      $t8, 0x00AE($s0)           ## 000000AE
/* 008C4 808C1A54 3C01808D */  lui     $at, %hi(D_808CA648)       ## $at = 808D0000
/* 008C8 808C1A58 E606021C */  swc1    $f6, 0x021C($s0)           ## 0000021C
/* 008CC 808C1A5C E6080220 */  swc1    $f8, 0x0220($s0)           ## 00000220
/* 008D0 808C1A60 E60A0224 */  swc1    $f10, 0x0224($s0)          ## 00000224
/* 008D4 808C1A64 C430A648 */  lwc1    $f16, %lo(D_808CA648)($at)
/* 008D8 808C1A68 26110440 */  addiu   $s1, $s0, 0x0440           ## $s1 = 00000440
/* 008DC 808C1A6C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000440
/* 008E0 808C1A70 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 008E4 808C1A74 0C016EFE */  jal     Collider_InitJntSph
/* 008E8 808C1A78 E6100228 */  swc1    $f16, 0x0228($s0)          ## 00000228
/* 008EC 808C1A7C 3C07808C */  lui     $a3, %hi(D_808C73AC)       ## $a3 = 808C0000
/* 008F0 808C1A80 26190460 */  addiu   $t9, $s0, 0x0460           ## $t9 = 00000460
/* 008F4 808C1A84 AFB90010 */  sw      $t9, 0x0010($sp)
/* 008F8 808C1A88 24E773AC */  addiu   $a3, $a3, %lo(D_808C73AC)  ## $a3 = 808C73AC
/* 008FC 808C1A8C 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00900 808C1A90 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000440
/* 00904 808C1A94 0C017014 */  jal     Collider_SetJntSph
/* 00908 808C1A98 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0090C 808C1A9C 3C050001 */  lui     $a1, 0x0001                ## $a1 = 00010000
/* 00910 808C1AA0 00B32821 */  addu    $a1, $a1, $s3
/* 00914 808C1AA4 80A51CBC */  lb      $a1, 0x1CBC($a1)           ## 00011CBC
/* 00918 808C1AA8 0C00B337 */  jal     Flags_GetClear

/* 0091C 808C1AAC 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00920 808C1AB0 1040005A */  beq     $v0, $zero, .L808C1C1C
/* 00924 808C1AB4 3C058016 */  lui     $a1, %hi(gSegments)
/* 00928 808C1AB8 3C020300 */  lui     $v0, %hi(D_030021D8)                ## $v0 = 03000000
/* 0092C 808C1ABC 3C03808D */  lui     $v1, %hi(D_808C93C8)       ## $v1 = 808D0000
/* 00930 808C1AC0 244221D8 */  addiu   $v0, $v0, %lo(D_030021D8)           ## $v0 = 030021D8
/* 00934 808C1AC4 246393C8 */  addiu   $v1, $v1, %lo(D_808C93C8)  ## $v1 = 808C93C8
/* 00938 808C1AC8 00024100 */  sll     $t0, $v0,  4
/* 0093C 808C1ACC 00037900 */  sll     $t7, $v1,  4
/* 00940 808C1AD0 24A56FA8 */  addiu   $a1, %lo(gSegments)
/* 00944 808C1AD4 00084F02 */  srl     $t1, $t0, 28
/* 00948 808C1AD8 000FC702 */  srl     $t8, $t7, 28
/* 0094C 808C1ADC 00095080 */  sll     $t2, $t1,  2
/* 00950 808C1AE0 0018C880 */  sll     $t9, $t8,  2
/* 00954 808C1AE4 3C0600FF */  lui     $a2, 0x00FF                ## $a2 = 00FF0000
/* 00958 808C1AE8 00AA5821 */  addu    $t3, $a1, $t2
/* 0095C 808C1AEC 00B94021 */  addu    $t0, $a1, $t9
/* 00960 808C1AF0 8D6C0000 */  lw      $t4, 0x0000($t3)           ## 00000000
/* 00964 808C1AF4 8D090000 */  lw      $t1, 0x0000($t0)           ## 00000000
/* 00968 808C1AF8 34C6FFFF */  ori     $a2, $a2, 0xFFFF           ## $a2 = 00FFFFFF
/* 0096C 808C1AFC 00466824 */  and     $t5, $v0, $a2
/* 00970 808C1B00 00665024 */  and     $t2, $v1, $a2
/* 00974 808C1B04 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 00978 808C1B08 018D7021 */  addu    $t6, $t4, $t5
/* 0097C 808C1B0C 012A5821 */  addu    $t3, $t1, $t2
/* 00980 808C1B10 01C78821 */  addu    $s1, $t6, $a3
/* 00984 808C1B14 01679021 */  addu    $s2, $t3, $a3
/* 00988 808C1B18 0C00B55C */  jal     Actor_Kill

/* 0098C 808C1B1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00990 808C1B20 3C01808D */  lui     $at, %hi(D_808CA64C)       ## $at = 808D0000
/* 00994 808C1B24 C432A64C */  lwc1    $f18, %lo(D_808CA64C)($at)
/* 00998 808C1B28 3C01808D */  lui     $at, %hi(D_808CA650)       ## $at = 808D0000
/* 0099C 808C1B2C C424A650 */  lwc1    $f4, %lo(D_808CA650)($at)
/* 009A0 808C1B30 3C01808D */  lui     $at, %hi(D_808CA654)       ## $at = 808D0000
/* 009A4 808C1B34 C426A654 */  lwc1    $f6, %lo(D_808CA654)($at)
/* 009A8 808C1B38 26641C24 */  addiu   $a0, $s3, 0x1C24           ## $a0 = 00001C24
/* 009AC 808C1B3C AFA40048 */  sw      $a0, 0x0048($sp)
/* 009B0 808C1B40 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 009B4 808C1B44 02603025 */  or      $a2, $s3, $zero            ## $a2 = 00000000
/* 009B8 808C1B48 2407005D */  addiu   $a3, $zero, 0x005D         ## $a3 = 0000005D
/* 009BC 808C1B4C AFA0001C */  sw      $zero, 0x001C($sp)
/* 009C0 808C1B50 AFA00020 */  sw      $zero, 0x0020($sp)
/* 009C4 808C1B54 AFA00024 */  sw      $zero, 0x0024($sp)
/* 009C8 808C1B58 AFA00028 */  sw      $zero, 0x0028($sp)
/* 009CC 808C1B5C E7B20010 */  swc1    $f18, 0x0010($sp)
/* 009D0 808C1B60 E7A40014 */  swc1    $f4, 0x0014($sp)
/* 009D4 808C1B64 0C00C916 */  jal     Actor_SpawnAsChild

/* 009D8 808C1B68 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 009DC 808C1B6C 3C01808D */  lui     $at, %hi(D_808CA658)       ## $at = 808D0000
/* 009E0 808C1B70 C428A658 */  lwc1    $f8, %lo(D_808CA658)($at)
/* 009E4 808C1B74 3C01808D */  lui     $at, %hi(D_808CA65C)       ## $at = 808D0000
/* 009E8 808C1B78 C42AA65C */  lwc1    $f10, %lo(D_808CA65C)($at)
/* 009EC 808C1B7C 3C07C45E */  lui     $a3, 0xC45E                ## $a3 = C45E0000
/* 009F0 808C1B80 240C6000 */  addiu   $t4, $zero, 0x6000         ## $t4 = 00006000
/* 009F4 808C1B84 AFAC0024 */  sw      $t4, 0x0024($sp)
/* 009F8 808C1B88 34E78000 */  ori     $a3, $a3, 0x8000           ## $a3 = C45E8000
/* 009FC 808C1B8C 8FA40048 */  lw      $a0, 0x0048($sp)
/* 00A00 808C1B90 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 00A04 808C1B94 24060059 */  addiu   $a2, $zero, 0x0059         ## $a2 = 00000059
/* 00A08 808C1B98 AFA00018 */  sw      $zero, 0x0018($sp)
/* 00A0C 808C1B9C AFA0001C */  sw      $zero, 0x001C($sp)
/* 00A10 808C1BA0 AFA00020 */  sw      $zero, 0x0020($sp)
/* 00A14 808C1BA4 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 00A18 808C1BA8 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00A1C 808C1BAC E7AA0014 */  swc1    $f10, 0x0014($sp)
/* 00A20 808C1BB0 3C01808D */  lui     $at, %hi(D_808CA660)       ## $at = 808D0000
/* 00A24 808C1BB4 C430A660 */  lwc1    $f16, %lo(D_808CA660)($at)
/* 00A28 808C1BB8 3C01808D */  lui     $at, %hi(D_808CA664)       ## $at = 808D0000
/* 00A2C 808C1BBC C432A664 */  lwc1    $f18, %lo(D_808CA664)($at)
/* 00A30 808C1BC0 3C07C42C */  lui     $a3, 0xC42C                ## $a3 = C42C0000
/* 00A34 808C1BC4 34E78000 */  ori     $a3, $a3, 0x8000           ## $a3 = C42C8000
/* 00A38 808C1BC8 8FA40048 */  lw      $a0, 0x0048($sp)
/* 00A3C 808C1BCC 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 00A40 808C1BD0 2406005F */  addiu   $a2, $zero, 0x005F         ## $a2 = 0000005F
/* 00A44 808C1BD4 AFA00018 */  sw      $zero, 0x0018($sp)
/* 00A48 808C1BD8 AFA0001C */  sw      $zero, 0x001C($sp)
/* 00A4C 808C1BDC AFA00020 */  sw      $zero, 0x0020($sp)
/* 00A50 808C1BE0 AFA00024 */  sw      $zero, 0x0024($sp)
/* 00A54 808C1BE4 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 00A58 808C1BE8 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00A5C 808C1BEC E7B20014 */  swc1    $f18, 0x0014($sp)
/* 00A60 808C1BF0 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L808C1BF4:
/* 00A64 808C1BF4 00031040 */  sll     $v0, $v1,  1
/* 00A68 808C1BF8 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000001
/* 00A6C 808C1BFC 00031C00 */  sll     $v1, $v1, 16
/* 00A70 808C1C00 02426821 */  addu    $t5, $s2, $v0
/* 00A74 808C1C04 95AE0000 */  lhu     $t6, 0x0000($t5)           ## 00000000
/* 00A78 808C1C08 00031C03 */  sra     $v1, $v1, 16
/* 00A7C 808C1C0C 28610800 */  slti    $at, $v1, 0x0800
/* 00A80 808C1C10 02227821 */  addu    $t7, $s1, $v0
/* 00A84 808C1C14 1420FFF7 */  bne     $at, $zero, .L808C1BF4
/* 00A88 808C1C18 A5EE0000 */  sh      $t6, 0x0000($t7)           ## 00000000
.L808C1C1C:
/* 00A8C 808C1C1C 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 00A90 808C1C20 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00A94 808C1C24 0301C824 */  and     $t9, $t8, $at
/* 00A98 808C1C28 AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 00A9C 808C1C2C 8FBF0044 */  lw      $ra, 0x0044($sp)
/* 00AA0 808C1C30 8FB30040 */  lw      $s3, 0x0040($sp)
/* 00AA4 808C1C34 8FB2003C */  lw      $s2, 0x003C($sp)
/* 00AA8 808C1C38 8FB10038 */  lw      $s1, 0x0038($sp)
/* 00AAC 808C1C3C 8FB00034 */  lw      $s0, 0x0034($sp)
/* 00AB0 808C1C40 03E00008 */  jr      $ra
/* 00AB4 808C1C44 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
