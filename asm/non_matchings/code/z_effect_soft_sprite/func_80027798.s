.rdata
glabel D_801357F8
    .asciz "type < EFFECT_SS2_TYPE_LAST_LABEL"
    .balign 4

glabel D_8013581C
    .asciz "../z_effect_soft_sprite.c"
    .balign 4

glabel D_80135838
    .asciz "EffectSoftSprite2_makeEffect():オーバーレイではありません。\n"
    # EUC-JP: オーバーレイではありません。| Not an overlay
    .balign 4

glabel D_80135878
    .asciz "../z_effect_soft_sprite.c"
    .balign 4

glabel D_80135894
    .asciz "\x1b[31m"
    .balign 4

glabel D_8013589C
    .asciz "EffectSoftSprite2_makeEffect():zelda_malloc_r()により,%dbyteのメモリ確保ができま\nせん。そのため、プログラムのロードも\n出来ません。ただいま危険な状態です！\nもちろん,エフェクトも出ません。\n"
    # EUC-JP: により,%dbyteのメモリ確保ができま せん。そのため、プログラムのロードも 出来ません。ただいま危険な状態です！ もちろん,エフェクトも出ません。 | , The memory of% dbyte cannot be secured. Therefore, the program cannot be loaded. I'm in danger right now! Of course, there are no effects.
    .balign 4

glabel D_80135958
    .asciz "\x1b[m"
    .balign 4

glabel D_8013595C
    .asciz "\x1b[32m"
    .balign 4

glabel D_80135964
    .asciz "EFFECT SS OVL:SegRom %08x %08x, Seg %08x %08x, RamStart %08x, type: %d\n"
    .balign 4

glabel D_801359AC
    .asciz "\x1b[m"
    .balign 4

glabel D_801359B0
    .asciz "EffectSoftSprite2_makeEffect():すでにエフェクトはロード済みで\nすが,コンストラクターがNULLなので追加をやめます。\n直してください。（メモリーの無駄) %08x %d\n"
    # EUC-JP: すでにエフェクトはロード済みで すが,コンストラクターがNULLなので追加をやめます。 直してください。（メモリーの無駄) | The effects have already been loaded, but we stop adding them because the constructor is NULL. please fix this. (Waste of memory)
    .balign 4

glabel D_80135A4C
    .asciz "\x1b[32m"
    .balign 4

glabel D_80135A54
    .asciz "EffectSoftSprite2_makeEffect():何らかの理由でコンストラクト失敗。コンストラクターがエラーを返しました。エフェクトの追加を中止します。\n"
    # EUC-JP: 何らかの理由でコンストラクト失敗。コンストラクターがエラーを返しました。エフェクトの追加を中止します | Construct failed for some reason. The constructor returned an error. Stop adding effects
    .balign 4

glabel D_80135ADC
    .asciz "\x1b[m"
    .balign 4

.text
glabel func_80027798
/* A9E938 80027798 27BDFFB8 */  addiu $sp, $sp, -0x48
/* A9E93C 8002779C 28A10025 */  slti  $at, $a1, 0x25
/* A9E940 800277A0 AFBF0024 */  sw    $ra, 0x24($sp)
/* A9E944 800277A4 AFA40048 */  sw    $a0, 0x48($sp)
/* A9E948 800277A8 AFA5004C */  sw    $a1, 0x4c($sp)
/* A9E94C 800277AC AFA60050 */  sw    $a2, 0x50($sp)
/* A9E950 800277B0 14200007 */  bnez  $at, .L800277D0
/* A9E954 800277B4 AFA70054 */   sw    $a3, 0x54($sp)
/* A9E958 800277B8 3C048013 */  lui   $a0, %hi(D_801357F8) # $a0, 0x8013
/* A9E95C 800277BC 3C058013 */  lui   $a1, %hi(D_8013581C) # $a1, 0x8013
/* A9E960 800277C0 24A5581C */  addiu $a1, %lo(D_8013581C) # addiu $a1, $a1, 0x581c
/* A9E964 800277C4 248457F8 */  addiu $a0, %lo(D_801357F8) # addiu $a0, $a0, 0x57f8
/* A9E968 800277C8 0C0007FC */  jal   __assert
/* A9E96C 800277CC 2406022C */   li    $a2, 556
.L800277D0:
/* A9E970 800277D0 8FA40050 */  lw    $a0, 0x50($sp)
/* A9E974 800277D4 0C009D74 */  jal   func_800275D0
/* A9E978 800277D8 27A50044 */   addiu $a1, $sp, 0x44
/* A9E97C 800277DC 14400094 */  bnez  $v0, .L80027A30
/* A9E980 800277E0 8FAF0044 */   lw    $t7, 0x44($sp)
/* A9E984 800277E4 8FB9004C */  lw    $t9, 0x4c($sp)
/* A9E988 800277E8 3C098011 */  lui   $t1, %hi(sParticleOverlayTable) # $t1, 0x8011
/* A9E98C 800277EC 25F80001 */  addiu $t8, $t7, 1
/* A9E990 800277F0 001940C0 */  sll   $t0, $t9, 3
/* A9E994 800277F4 01194023 */  subu  $t0, $t0, $t9
/* A9E998 800277F8 3C018011 */  lui   $at, %hi(D_801158B4) # $at, 0x8011
/* A9E99C 800277FC 00084080 */  sll   $t0, $t0, 2
/* A9E9A0 80027800 252959B0 */  addiu $t1, %lo(sParticleOverlayTable) # addiu $t1, $t1, 0x59b0
/* A9E9A4 80027804 AC3858B4 */  sw    $t8, %lo(D_801158B4)($at)
/* A9E9A8 80027808 01091821 */  addu  $v1, $t0, $t1
/* A9E9AC 8002780C 8C620008 */  lw    $v0, 8($v1)
/* A9E9B0 80027810 8C6A000C */  lw    $t2, 0xc($v1)
/* A9E9B4 80027814 14400009 */  bnez  $v0, .L8002783C
/* A9E9B8 80027818 01422023 */   subu  $a0, $t2, $v0
/* A9E9BC 8002781C 3C048013 */  lui   $a0, %hi(D_80135838) # $a0, 0x8013
/* A9E9C0 80027820 24845838 */  addiu $a0, %lo(D_80135838) # addiu $a0, $a0, 0x5838
/* A9E9C4 80027824 0C00084C */  jal   osSyncPrintf
/* A9E9C8 80027828 AFA30030 */   sw    $v1, 0x30($sp)
/* A9E9CC 8002782C 8FA30030 */  lw    $v1, 0x30($sp)
/* A9E9D0 80027830 8C6B0014 */  lw    $t3, 0x14($v1)
/* A9E9D4 80027834 1000003E */  b     .L80027930
/* A9E9D8 80027838 AFAB0038 */   sw    $t3, 0x38($sp)
.L8002783C:
/* A9E9DC 8002783C 8C6C0010 */  lw    $t4, 0x10($v1)
/* A9E9E0 80027840 3C058013 */  lui   $a1, %hi(D_80135878) # $a1, 0x8013
/* A9E9E4 80027844 24A55878 */  addiu $a1, %lo(D_80135878) # addiu $a1, $a1, 0x5878
/* A9E9E8 80027848 1580002F */  bnez  $t4, .L80027908
/* A9E9EC 8002784C 24060249 */   li    $a2, 585
/* A9E9F0 80027850 AFA30030 */  sw    $v1, 0x30($sp)
/* A9E9F4 80027854 0C01EBE3 */  jal   ZeldaArena_MallocRDebug
/* A9E9F8 80027858 AFA40040 */   sw    $a0, 0x40($sp)
/* A9E9FC 8002785C 8FA30030 */  lw    $v1, 0x30($sp)
/* A9EA00 80027860 3C048013 */  lui   $a0, %hi(D_80135894) # $a0, 0x8013
/* A9EA04 80027864 1440000C */  bnez  $v0, .L80027898
/* A9EA08 80027868 AC620010 */   sw    $v0, 0x10($v1)
/* A9EA0C 8002786C 0C00084C */  jal   osSyncPrintf
/* A9EA10 80027870 24845894 */   addiu $a0, %lo(D_80135894) # addiu $a0, $a0, 0x5894
/* A9EA14 80027874 3C048013 */  lui   $a0, %hi(D_8013589C) # $a0, 0x8013
/* A9EA18 80027878 2484589C */  addiu $a0, %lo(D_8013589C) # addiu $a0, $a0, 0x589c
/* A9EA1C 8002787C 0C00084C */  jal   osSyncPrintf
/* A9EA20 80027880 8FA50040 */   lw    $a1, 0x40($sp)
/* A9EA24 80027884 3C048013 */  lui   $a0, %hi(D_80135958) # $a0, 0x8013
/* A9EA28 80027888 0C00084C */  jal   osSyncPrintf
/* A9EA2C 8002788C 24845958 */   addiu $a0, %lo(D_80135958) # addiu $a0, $a0, 0x5958
/* A9EA30 80027890 10000068 */  b     .L80027A34
/* A9EA34 80027894 8FBF0024 */   lw    $ra, 0x24($sp)
.L80027898:
/* A9EA38 80027898 8C6D0010 */  lw    $t5, 0x10($v1)
/* A9EA3C 8002789C 8C640000 */  lw    $a0, ($v1)
/* A9EA40 800278A0 8C650004 */  lw    $a1, 4($v1)
/* A9EA44 800278A4 8C660008 */  lw    $a2, 8($v1)
/* A9EA48 800278A8 8C67000C */  lw    $a3, 0xc($v1)
/* A9EA4C 800278AC AFA30030 */  sw    $v1, 0x30($sp)
/* A9EA50 800278B0 0C03F188 */  jal   Overlay_Load
/* A9EA54 800278B4 AFAD0010 */   sw    $t5, 0x10($sp)
/* A9EA58 800278B8 3C048013 */  lui   $a0, %hi(D_8013595C) # $a0, 0x8013
/* A9EA5C 800278BC 0C00084C */  jal   osSyncPrintf
/* A9EA60 800278C0 2484595C */   addiu $a0, %lo(D_8013595C) # addiu $a0, $a0, 0x595c
/* A9EA64 800278C4 8FA30030 */  lw    $v1, 0x30($sp)
/* A9EA68 800278C8 8FB8004C */  lw    $t8, 0x4c($sp)
/* A9EA6C 800278CC 3C048013 */  lui   $a0, %hi(D_80135964) # $a0, 0x8013
/* A9EA70 800278D0 8C6E000C */  lw    $t6, 0xc($v1)
/* A9EA74 800278D4 8C650000 */  lw    $a1, ($v1)
/* A9EA78 800278D8 8C660004 */  lw    $a2, 4($v1)
/* A9EA7C 800278DC 8C670008 */  lw    $a3, 8($v1)
/* A9EA80 800278E0 AFAE0010 */  sw    $t6, 0x10($sp)
/* A9EA84 800278E4 8C6F0010 */  lw    $t7, 0x10($v1)
/* A9EA88 800278E8 24845964 */  addiu $a0, %lo(D_80135964) # addiu $a0, $a0, 0x5964
/* A9EA8C 800278EC AFB80018 */  sw    $t8, 0x18($sp)
/* A9EA90 800278F0 0C00084C */  jal   osSyncPrintf
/* A9EA94 800278F4 AFAF0014 */   sw    $t7, 0x14($sp)
/* A9EA98 800278F8 3C048013 */  lui   $a0, %hi(D_801359AC) # $a0, 0x8013
/* A9EA9C 800278FC 0C00084C */  jal   osSyncPrintf
/* A9EAA0 80027900 248459AC */   addiu $a0, %lo(D_801359AC) # addiu $a0, $a0, 0x59ac
/* A9EAA4 80027904 8FA30030 */  lw    $v1, 0x30($sp)
.L80027908:
/* A9EAA8 80027908 8C640014 */  lw    $a0, 0x14($v1)
/* A9EAAC 8002790C 00001025 */  move  $v0, $zero
/* A9EAB0 80027910 10800006 */  beqz  $a0, .L8002792C
/* A9EAB4 80027914 00000000 */   nop
/* A9EAB8 80027918 8C790008 */  lw    $t9, 8($v1)
/* A9EABC 8002791C 8C680010 */  lw    $t0, 0x10($v1)
/* A9EAC0 80027920 03284823 */  subu  $t1, $t9, $t0
/* A9EAC4 80027924 10000001 */  b     .L8002792C
/* A9EAC8 80027928 00891023 */   subu  $v0, $a0, $t1
.L8002792C:
/* A9EACC 8002792C AFA20038 */  sw    $v0, 0x38($sp)
.L80027930:
/* A9EAD0 80027930 8FAA0038 */  lw    $t2, 0x38($sp)
/* A9EAD4 80027934 8FAC0044 */  lw    $t4, 0x44($sp)
/* A9EAD8 80027938 3C048013 */  lui   $a0, %hi(D_801359B0) # $a0, 0x8013
/* A9EADC 8002793C 8D4B0004 */  lw    $t3, 4($t2)
/* A9EAE0 80027940 000C6880 */  sll   $t5, $t4, 2
/* A9EAE4 80027944 3C0E8011 */  lui   $t6, %hi(EffectSS2Info) # $t6, 0x8011
/* A9EAE8 80027948 15600007 */  bnez  $t3, .L80027968
/* A9EAEC 8002794C 01AC6823 */   subu  $t5, $t5, $t4
/* A9EAF0 80027950 248459B0 */  addiu $a0, %lo(D_801359B0) # addiu $a0, $a0, 0x59b0
/* A9EAF4 80027954 01402825 */  move  $a1, $t2
/* A9EAF8 80027958 0C00084C */  jal   osSyncPrintf
/* A9EAFC 8002795C 8FA6004C */   lw    $a2, 0x4c($sp)
/* A9EB00 80027960 10000034 */  b     .L80027A34
/* A9EB04 80027964 8FBF0024 */   lw    $ra, 0x24($sp)
.L80027968:
/* A9EB08 80027968 8DCE58B0 */  lw    $t6, %lo(EffectSS2Info)($t6)
/* A9EB0C 8002796C 000D6940 */  sll   $t5, $t5, 5
/* A9EB10 80027970 0C009D38 */  jal   Effect_SS_Delete
/* A9EB14 80027974 01AE2021 */   addu  $a0, $t5, $t6
/* A9EB18 80027978 8FB90044 */  lw    $t9, 0x44($sp)
/* A9EB1C 8002797C 24020060 */  li    $v0, 96
/* A9EB20 80027980 3C038011 */  lui   $v1, %hi(EffectSS2Info) # $v1, 0x8011
/* A9EB24 80027984 03220019 */  multu $t9, $v0
/* A9EB28 80027988 246358B0 */  addiu $v1, %lo(EffectSS2Info) # addiu $v1, $v1, 0x58b0
/* A9EB2C 8002798C 8C780000 */  lw    $t8, ($v1)
/* A9EB30 80027990 8FAF004C */  lw    $t7, 0x4c($sp)
/* A9EB34 80027994 00004012 */  mflo  $t0
/* A9EB38 80027998 03084821 */  addu  $t1, $t8, $t0
/* A9EB3C 8002799C A12F005F */  sb    $t7, 0x5f($t1)
/* A9EB40 800279A0 8FAC0044 */  lw    $t4, 0x44($sp)
/* A9EB44 800279A4 8C6A0000 */  lw    $t2, ($v1)
/* A9EB48 800279A8 8FAB0050 */  lw    $t3, 0x50($sp)
/* A9EB4C 800279AC 01820019 */  multu $t4, $v0
/* A9EB50 800279B0 00006812 */  mflo  $t5
/* A9EB54 800279B4 014D7021 */  addu  $t6, $t2, $t5
/* A9EB58 800279B8 A1CB005E */  sb    $t3, 0x5e($t6)
/* A9EB5C 800279BC 8FA50044 */  lw    $a1, 0x44($sp)
/* A9EB60 800279C0 8FAF0038 */  lw    $t7, 0x38($sp)
/* A9EB64 800279C4 8C680000 */  lw    $t0, ($v1)
/* A9EB68 800279C8 00A20019 */  multu $a1, $v0
/* A9EB6C 800279CC 8DF90004 */  lw    $t9, 4($t7)
/* A9EB70 800279D0 8FA70054 */  lw    $a3, 0x54($sp)
/* A9EB74 800279D4 8FA40048 */  lw    $a0, 0x48($sp)
/* A9EB78 800279D8 0000C012 */  mflo  $t8
/* A9EB7C 800279DC 03083021 */  addu  $a2, $t8, $t0
/* A9EB80 800279E0 0320F809 */  jalr  $t9
/* A9EB84 800279E4 00000000 */  nop
/* A9EB88 800279E8 14400011 */  bnez  $v0, .L80027A30
/* A9EB8C 800279EC 3C048013 */   lui   $a0, %hi(D_80135A4C) # $a0, 0x8013
/* A9EB90 800279F0 0C00084C */  jal   osSyncPrintf
/* A9EB94 800279F4 24845A4C */   addiu $a0, %lo(D_80135A4C) # addiu $a0, $a0, 0x5a4c
/* A9EB98 800279F8 3C048013 */  lui   $a0, %hi(D_80135A54) # $a0, 0x8013
/* A9EB9C 800279FC 0C00084C */  jal   osSyncPrintf
/* A9EBA0 80027A00 24845A54 */   addiu $a0, %lo(D_80135A54) # addiu $a0, $a0, 0x5a54
/* A9EBA4 80027A04 3C048013 */  lui   $a0, %hi(D_80135ADC) # $a0, 0x8013
/* A9EBA8 80027A08 0C00084C */  jal   osSyncPrintf
/* A9EBAC 80027A0C 24845ADC */   addiu $a0, %lo(D_80135ADC) # addiu $a0, $a0, 0x5adc
/* A9EBB0 80027A10 8FA90044 */  lw    $t1, 0x44($sp)
/* A9EBB4 80027A14 3C0A8011 */  lui   $t2, %hi(EffectSS2Info) # $t2, 0x8011
/* A9EBB8 80027A18 8D4A58B0 */  lw    $t2, %lo(EffectSS2Info)($t2)
/* A9EBBC 80027A1C 00096080 */  sll   $t4, $t1, 2
/* A9EBC0 80027A20 01896023 */  subu  $t4, $t4, $t1
/* A9EBC4 80027A24 000C6140 */  sll   $t4, $t4, 5
/* A9EBC8 80027A28 0C009D4F */  jal   Effect_SS_ResetEntry
/* A9EBCC 80027A2C 018A2021 */   addu  $a0, $t4, $t2
.L80027A30:
/* A9EBD0 80027A30 8FBF0024 */  lw    $ra, 0x24($sp)
.L80027A34:
/* A9EBD4 80027A34 27BD0048 */  addiu $sp, $sp, 0x48
/* A9EBD8 80027A38 03E00008 */  jr    $ra
/* A9EBDC 80027A3C 00000000 */   nop

