glabel func_80A2FC70
/* 00AF0 80A2FC70 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00AF4 80A2FC74 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00AF8 80A2FC78 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AFC 80A2FC7C AFBF002C */  sw      $ra, 0x002C($sp)
/* 00B00 80A2FC80 3C040601 */  lui     $a0, %hi(D_0600C8EC)                ## $a0 = 06010000
/* 00B04 80A2FC84 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00B08 80A2FC88 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00B0C 80A2FC8C 2484C8EC */  addiu   $a0, $a0, %lo(D_0600C8EC)           ## $a0 = 0600C8EC
/* 00B10 80A2FC90 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00B14 80A2FC94 C600017C */  lwc1    $f0, 0x017C($s0)           ## 0000017C
/* 00B18 80A2FC98 3C040600 */  lui     $a0, %hi(D_0600049C)                ## $a0 = 06000000
/* 00B1C 80A2FC9C 468021A0 */  cvt.s.w $f6, $f4
/* 00B20 80A2FCA0 3C014190 */  lui     $at, 0x4190                ## $at = 41900000
/* 00B24 80A2FCA4 46060032 */  c.eq.s  $f0, $f6
/* 00B28 80A2FCA8 00000000 */  nop
/* 00B2C 80A2FCAC 45020014 */  bc1fl   .L80A2FD00
/* 00B30 80A2FCB0 44818000 */  mtc1    $at, $f16                  ## $f16 = 18.00
/* 00B34 80A2FCB4 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00B38 80A2FCB8 2484049C */  addiu   $a0, $a0, %lo(D_0600049C)           ## $a0 = 0600049C
/* 00B3C 80A2FCBC 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 00B40 80A2FCC0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00B44 80A2FCC4 3C050600 */  lui     $a1, %hi(D_0600049C)                ## $a1 = 06000000
/* 00B48 80A2FCC8 468042A0 */  cvt.s.w $f10, $f8
/* 00B4C 80A2FCCC 44070000 */  mfc1    $a3, $f0
/* 00B50 80A2FCD0 24A5049C */  addiu   $a1, $a1, %lo(D_0600049C)           ## $a1 = 0600049C
/* 00B54 80A2FCD4 26040164 */  addiu   $a0, $s0, 0x0164           ## $a0 = 00000164
/* 00B58 80A2FCD8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00B5C 80A2FCDC AFA00014 */  sw      $zero, 0x0014($sp)
/* 00B60 80A2FCE0 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 00B64 80A2FCE4 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00B68 80A2FCE8 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00B6C 80A2FCEC 3C0E80A3 */  lui     $t6, %hi(func_80A2F83C)    ## $t6 = 80A30000
/* 00B70 80A2FCF0 25CEF83C */  addiu   $t6, $t6, %lo(func_80A2F83C) ## $t6 = 80A2F83C
/* 00B74 80A2FCF4 1000001A */  beq     $zero, $zero, .L80A2FD60
/* 00B78 80A2FCF8 AE0E0238 */  sw      $t6, 0x0238($s0)           ## 00000238
/* 00B7C 80A2FCFC 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.00
.L80A2FD00:
/* 00B80 80A2FD00 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
/* 00B84 80A2FD04 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 00B88 80A2FD08 46008032 */  c.eq.s  $f16, $f0
/* 00B8C 80A2FD0C 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 00B90 80A2FD10 45020014 */  bc1fl   .L80A2FD64
/* 00B94 80A2FD14 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00B98 80A2FD18 44816000 */  mtc1    $at, $f12                  ## $f12 = 600.00
/* 00B9C 80A2FD1C A20303B5 */  sb      $v1, 0x03B5($s0)           ## 000003B5
/* 00BA0 80A2FD20 A20403B7 */  sb      $a0, 0x03B7($s0)           ## 000003B7
/* 00BA4 80A2FD24 A20303E1 */  sb      $v1, 0x03E1($s0)           ## 000003E1
/* 00BA8 80A2FD28 A20403E3 */  sb      $a0, 0x03E3($s0)           ## 000003E3
/* 00BAC 80A2FD2C A203040D */  sb      $v1, 0x040D($s0)           ## 0000040D
/* 00BB0 80A2FD30 A204040F */  sb      $a0, 0x040F($s0)           ## 0000040F
/* 00BB4 80A2FD34 A2030389 */  sb      $v1, 0x0389($s0)           ## 00000389
/* 00BB8 80A2FD38 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 00BBC 80A2FD3C A204038B */  sb      $a0, 0x038B($s0)           ## 0000038B
/* 00BC0 80A2FD40 4600048D */  trunc.w.s $f18, $f0
/* 00BC4 80A2FD44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BC8 80A2FD48 24052873 */  addiu   $a1, $zero, 0x2873         ## $a1 = 00002873
/* 00BCC 80A2FD4C 44089000 */  mfc1    $t0, $f18
/* 00BD0 80A2FD50 00000000 */  nop
/* 00BD4 80A2FD54 25090258 */  addiu   $t1, $t0, 0x0258           ## $t1 = 00000258
/* 00BD8 80A2FD58 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00BDC 80A2FD5C A6090382 */  sh      $t1, 0x0382($s0)           ## 00000382
.L80A2FD60:
/* 00BE0 80A2FD60 8FBF002C */  lw      $ra, 0x002C($sp)
.L80A2FD64:
/* 00BE4 80A2FD64 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00BE8 80A2FD68 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00BEC 80A2FD6C 03E00008 */  jr      $ra
/* 00BF0 80A2FD70 00000000 */  nop
