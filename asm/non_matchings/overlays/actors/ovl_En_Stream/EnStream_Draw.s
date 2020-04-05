glabel EnStream_Draw
/* 003AC 80B0BB4C 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 003B0 80B0BB50 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 003B4 80B0BB54 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 003B8 80B0BB58 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 003BC 80B0BB5C AFB00034 */  sw      $s0, 0x0034($sp)           
/* 003C0 80B0BB60 AFA40070 */  sw      $a0, 0x0070($sp)           
/* 003C4 80B0BB64 01C57021 */  addu    $t6, $t6, $a1              
/* 003C8 80B0BB68 8DCE1DE4 */  lw      $t6, 0x1DE4($t6)           ## 00011DE4
/* 003CC 80B0BB6C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 003D0 80B0BB70 3C0680B1 */  lui     $a2, %hi(D_80B0BCD0)       ## $a2 = 80B10000
/* 003D4 80B0BB74 AFAE0068 */  sw      $t6, 0x0068($sp)           
/* 003D8 80B0BB78 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 003DC 80B0BB7C 24C6BCD0 */  addiu   $a2, $a2, %lo(D_80B0BCD0)  ## $a2 = 80B0BCD0
/* 003E0 80B0BB80 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFE4
/* 003E4 80B0BB84 24070127 */  addiu   $a3, $zero, 0x0127         ## $a3 = 00000127
/* 003E8 80B0BB88 0C031AB1 */  jal     Graph_OpenDisps              
/* 003EC 80B0BB8C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 003F0 80B0BB90 0C024F61 */  jal     func_80093D84              
/* 003F4 80B0BB94 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 003F8 80B0BB98 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 003FC 80B0BB9C 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 00400 80B0BBA0 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 00404 80B0BBA4 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00408 80B0BBA8 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 0040C 80B0BBAC AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00410 80B0BBB0 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00414 80B0BBB4 3C0580B1 */  lui     $a1, %hi(D_80B0BCE4)       ## $a1 = 80B10000
/* 00418 80B0BBB8 24A5BCE4 */  addiu   $a1, $a1, %lo(D_80B0BCE4)  ## $a1 = 80B0BCE4
/* 0041C 80B0BBBC 2406012B */  addiu   $a2, $zero, 0x012B         ## $a2 = 0000012B
/* 00420 80B0BBC0 0C0346A2 */  jal     Matrix_NewMtx              
/* 00424 80B0BBC4 AFA20050 */  sw      $v0, 0x0050($sp)           
/* 00428 80B0BBC8 8FA30050 */  lw      $v1, 0x0050($sp)           
/* 0042C 80B0BBCC 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 00430 80B0BBD0 354A0020 */  ori     $t2, $t2, 0x0020           ## $t2 = DB060020
/* 00434 80B0BBD4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00438 80B0BBD8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0043C 80B0BBDC 8FA90068 */  lw      $t1, 0x0068($sp)           
/* 00440 80B0BBE0 240B0040 */  addiu   $t3, $zero, 0x0040         ## $t3 = 00000040
/* 00444 80B0BBE4 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 00448 80B0BBE8 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 0044C 80B0BBEC AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 00450 80B0BBF0 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00454 80B0BBF4 00091880 */  sll     $v1, $t1,  2               
/* 00458 80B0BBF8 00691821 */  addu    $v1, $v1, $t1              
/* 0045C 80B0BBFC 00031880 */  sll     $v1, $v1,  2               
/* 00460 80B0BC00 00093100 */  sll     $a2, $t1,  4               
/* 00464 80B0BC04 00033823 */  subu    $a3, $zero, $v1            
/* 00468 80B0BC08 240C0040 */  addiu   $t4, $zero, 0x0040         ## $t4 = 00000040
/* 0046C 80B0BC0C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 00470 80B0BC10 240E0040 */  addiu   $t6, $zero, 0x0040         ## $t6 = 00000040
/* 00474 80B0BC14 240F0040 */  addiu   $t7, $zero, 0x0040         ## $t7 = 00000040
/* 00478 80B0BC18 00C93023 */  subu    $a2, $a2, $t1              
/* 0047C 80B0BC1C 00063040 */  sll     $a2, $a2,  1               
/* 00480 80B0BC20 AFAF0028 */  sw      $t7, 0x0028($sp)           
/* 00484 80B0BC24 AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 00488 80B0BC28 AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 0048C 80B0BC2C AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 00490 80B0BC30 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00494 80B0BC34 AFA3001C */  sw      $v1, 0x001C($sp)           
/* 00498 80B0BC38 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 0049C 80B0BC3C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 004A0 80B0BC40 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 004A4 80B0BC44 AFA2004C */  sw      $v0, 0x004C($sp)           
/* 004A8 80B0BC48 8FA8004C */  lw      $t0, 0x004C($sp)           
/* 004AC 80B0BC4C 3C0A0600 */  lui     $t2, 0x0600                ## $t2 = 06000000
/* 004B0 80B0BC50 254A0950 */  addiu   $t2, $t2, 0x0950           ## $t2 = 06000950
/* 004B4 80B0BC54 AD020004 */  sw      $v0, 0x0004($t0)           ## 00000004
/* 004B8 80B0BC58 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 004BC 80B0BC5C 3C19DE00 */  lui     $t9, 0xDE00                ## $t9 = DE000000
/* 004C0 80B0BC60 3C0680B1 */  lui     $a2, %hi(D_80B0BCF8)       ## $a2 = 80B10000
/* 004C4 80B0BC64 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 004C8 80B0BC68 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 004CC 80B0BC6C AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 004D0 80B0BC70 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 004D4 80B0BC74 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 004D8 80B0BC78 24C6BCF8 */  addiu   $a2, $a2, %lo(D_80B0BCF8)  ## $a2 = 80B0BCF8
/* 004DC 80B0BC7C 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFE4
/* 004E0 80B0BC80 0C031AD5 */  jal     Graph_CloseDisps              
/* 004E4 80B0BC84 24070136 */  addiu   $a3, $zero, 0x0136         ## $a3 = 00000136
/* 004E8 80B0BC88 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 004EC 80B0BC8C 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 004F0 80B0BC90 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 004F4 80B0BC94 03E00008 */  jr      $ra                        
/* 004F8 80B0BC98 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
/* 004FC 80B0BC9C 00000000 */  nop

