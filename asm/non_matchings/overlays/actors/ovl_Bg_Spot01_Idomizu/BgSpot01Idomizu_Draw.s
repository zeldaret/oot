glabel BgSpot01Idomizu_Draw
/* 00178 808ABC58 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 0017C 808ABC5C AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00180 808ABC60 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00184 808ABC64 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00188 808ABC68 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 0018C 808ABC6C AFA40070 */  sw      $a0, 0x0070($sp)           
/* 00190 808ABC70 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00194 808ABC74 3C06808B */  lui     $a2, %hi(D_808ABDC0)       ## $a2 = 808B0000
/* 00198 808ABC78 24C6BDC0 */  addiu   $a2, $a2, %lo(D_808ABDC0)  ## $a2 = 808ABDC0
/* 0019C 808ABC7C 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFE8
/* 001A0 808ABC80 240700E4 */  addiu   $a3, $zero, 0x00E4         ## $a3 = 000000E4
/* 001A4 808ABC84 0C031AB1 */  jal     func_800C6AC4              
/* 001A8 808ABC88 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 001AC 808ABC8C 0C024F61 */  jal     func_80093D84              
/* 001B0 808ABC90 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 001B4 808ABC94 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 001B8 808ABC98 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 001BC 808ABC9C 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 001C0 808ABCA0 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 001C4 808ABCA4 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 001C8 808ABCA8 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 001CC 808ABCAC 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 001D0 808ABCB0 3C05808B */  lui     $a1, %hi(D_808ABDDC)       ## $a1 = 808B0000
/* 001D4 808ABCB4 24A5BDDC */  addiu   $a1, $a1, %lo(D_808ABDDC)  ## $a1 = 808ABDDC
/* 001D8 808ABCB8 240600E8 */  addiu   $a2, $zero, 0x00E8         ## $a2 = 000000E8
/* 001DC 808ABCBC 0C0346A2 */  jal     Matrix_NewMtx              
/* 001E0 808ABCC0 AFA20054 */  sw      $v0, 0x0054($sp)           
/* 001E4 808ABCC4 8FA30054 */  lw      $v1, 0x0054($sp)           
/* 001E8 808ABCC8 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 001EC 808ABCCC 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 001F0 808ABCD0 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 001F4 808ABCD4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 001F8 808ABCD8 8E28009C */  lw      $t0, 0x009C($s1)           ## 0000009C
/* 001FC 808ABCDC 240A007F */  addiu   $t2, $zero, 0x007F         ## $t2 = 0000007F
/* 00200 808ABCE0 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00204 808ABCE4 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 00208 808ABCE8 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 0020C 808ABCEC 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00210 808ABCF0 240B0020 */  addiu   $t3, $zero, 0x0020         ## $t3 = 00000020
/* 00214 808ABCF4 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 00218 808ABCF8 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 0021C 808ABCFC 240E0020 */  addiu   $t6, $zero, 0x0020         ## $t6 = 00000020
/* 00220 808ABD00 240F0020 */  addiu   $t7, $zero, 0x0020         ## $t7 = 00000020
/* 00224 808ABD04 3103007F */  andi    $v1, $t0, 0x007F           ## $v1 = 00000000
/* 00228 808ABD08 3107007F */  andi    $a3, $t0, 0x007F           ## $a3 = 00000000
/* 0022C 808ABD0C AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00230 808ABD10 01433023 */  subu    $a2, $t2, $v1              
/* 00234 808ABD14 AFA3001C */  sw      $v1, 0x001C($sp)           
/* 00238 808ABD18 AFAF0028 */  sw      $t7, 0x0028($sp)           
/* 0023C 808ABD1C AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 00240 808ABD20 AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 00244 808ABD24 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 00248 808ABD28 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 0024C 808ABD2C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00250 808ABD30 0C0253D0 */  jal     Draw_TwoTexScroll              
/* 00254 808ABD34 AFA20050 */  sw      $v0, 0x0050($sp)           
/* 00258 808ABD38 8FA90050 */  lw      $t1, 0x0050($sp)           
/* 0025C 808ABD3C 3C0A0600 */  lui     $t2, 0x0600                ## $t2 = 06000000
/* 00260 808ABD40 254A07D0 */  addiu   $t2, $t2, 0x07D0           ## $t2 = 060007D0
/* 00264 808ABD44 AD220004 */  sw      $v0, 0x0004($t1)           ## 00000004
/* 00268 808ABD48 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0026C 808ABD4C 3C19DE00 */  lui     $t9, 0xDE00                ## $t9 = DE000000
/* 00270 808ABD50 3C06808B */  lui     $a2, %hi(D_808ABDF8)       ## $a2 = 808B0000
/* 00274 808ABD54 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00278 808ABD58 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 0027C 808ABD5C AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 00280 808ABD60 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00284 808ABD64 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 00288 808ABD68 24C6BDF8 */  addiu   $a2, $a2, %lo(D_808ABDF8)  ## $a2 = 808ABDF8
/* 0028C 808ABD6C 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFE8
/* 00290 808ABD70 0C031AD5 */  jal     func_800C6B54              
/* 00294 808ABD74 240700F4 */  addiu   $a3, $zero, 0x00F4         ## $a3 = 000000F4
/* 00298 808ABD78 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 0029C 808ABD7C 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 002A0 808ABD80 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 002A4 808ABD84 03E00008 */  jr      $ra                        
/* 002A8 808ABD88 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
/* 002AC 808ABD8C 00000000 */  nop

