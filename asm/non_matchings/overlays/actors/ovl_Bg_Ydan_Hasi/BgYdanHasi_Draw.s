.rdata
glabel D_808BEC30
    .asciz "../z_bg_ydan_hasi.c"
    .balign 4

glabel D_808BEC44
    .asciz "../z_bg_ydan_hasi.c"
    .balign 4

glabel D_808BEC58
    .asciz "../z_bg_ydan_hasi.c"
    .balign 4

.text
glabel BgYdanHasi_Draw
/* 00590 808BEA90 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 00594 808BEA94 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00598 808BEA98 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 0059C 808BEA9C AFB00034 */  sw      $s0, 0x0034($sp)           
/* 005A0 808BEAA0 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 005A4 808BEAA4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 005A8 808BEAA8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 005AC 808BEAAC 10400003 */  beq     $v0, $zero, .L808BEABC     
/* 005B0 808BEAB0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 005B4 808BEAB4 14410008 */  bne     $v0, $at, .L808BEAD8       
/* 005B8 808BEAB8 3C06808C */  lui     $a2, %hi(D_808BEC30)       ## $a2 = 808C0000
.L808BEABC:
/* 005BC 808BEABC 00027080 */  sll     $t6, $v0,  2               
/* 005C0 808BEAC0 3C05808C */  lui     $a1, %hi(D_808BEC24)       ## $a1 = 808C0000
/* 005C4 808BEAC4 00AE2821 */  addu    $a1, $a1, $t6              
/* 005C8 808BEAC8 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 005CC 808BEACC 8CA5EC24 */  lw      $a1, %lo(D_808BEC24)($a1)  
/* 005D0 808BEAD0 10000044 */  beq     $zero, $zero, .L808BEBE4   
/* 005D4 808BEAD4 8FBF003C */  lw      $ra, 0x003C($sp)           
.L808BEAD8:
/* 005D8 808BEAD8 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 005DC 808BEADC 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFE8
/* 005E0 808BEAE0 24C6EC30 */  addiu   $a2, $a2, %lo(D_808BEC30)  ## $a2 = FFFFEC30
/* 005E4 808BEAE4 24070241 */  addiu   $a3, $zero, 0x0241         ## $a3 = 00000241
/* 005E8 808BEAE8 0C031AB1 */  jal     Graph_OpenDisps              
/* 005EC 808BEAEC 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 005F0 808BEAF0 0C024F61 */  jal     func_80093D84              
/* 005F4 808BEAF4 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 005F8 808BEAF8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 005FC 808BEAFC 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 00600 808BEB00 37180020 */  ori     $t8, $t8, 0x0020           ## $t8 = DB060020
/* 00604 808BEB04 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00608 808BEB08 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 0060C 808BEB0C 3C030001 */  lui     $v1, 0x0001                ## $v1 = 00010000
/* 00610 808BEB10 00711821 */  addu    $v1, $v1, $s1              
/* 00614 808BEB14 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00618 808BEB18 8C631DE4 */  lw      $v1, 0x1DE4($v1)           ## 00011DE4
/* 0061C 808BEB1C 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00620 808BEB20 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 00624 808BEB24 24090020 */  addiu   $t1, $zero, 0x0020         ## $t1 = 00000020
/* 00628 808BEB28 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 0062C 808BEB2C 240B0020 */  addiu   $t3, $zero, 0x0020         ## $t3 = 00000020
/* 00630 808BEB30 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 00634 808BEB34 00033023 */  subu    $a2, $zero, $v1            
/* 00638 808BEB38 3067007F */  andi    $a3, $v1, 0x007F           ## $a3 = 00000000
/* 0063C 808BEB3C AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00640 808BEB40 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00644 808BEB44 30C6007F */  andi    $a2, $a2, 0x007F           ## $a2 = 00000000
/* 00648 808BEB48 AFAC0028 */  sw      $t4, 0x0028($sp)           
/* 0064C 808BEB4C AFAB0024 */  sw      $t3, 0x0024($sp)           
/* 00650 808BEB50 AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 00654 808BEB54 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00658 808BEB58 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 0065C 808BEB5C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00660 808BEB60 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 00664 808BEB64 AFA2004C */  sw      $v0, 0x004C($sp)           
/* 00668 808BEB68 8FA8004C */  lw      $t0, 0x004C($sp)           
/* 0066C 808BEB6C 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 00670 808BEB70 35CE0003 */  ori     $t6, $t6, 0x0003           ## $t6 = DA380003
/* 00674 808BEB74 AD020004 */  sw      $v0, 0x0004($t0)           ## 00000004
/* 00678 808BEB78 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0067C 808BEB7C 3C05808C */  lui     $a1, %hi(D_808BEC44)       ## $a1 = 808C0000
/* 00680 808BEB80 24A5EC44 */  addiu   $a1, $a1, %lo(D_808BEC44)  ## $a1 = 808BEC44
/* 00684 808BEB84 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 00688 808BEB88 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 0068C 808BEB8C AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 00690 808BEB90 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00694 808BEB94 24060250 */  addiu   $a2, $zero, 0x0250         ## $a2 = 00000250
/* 00698 808BEB98 0C0346A2 */  jal     Matrix_NewMtx              
/* 0069C 808BEB9C AFA20048 */  sw      $v0, 0x0048($sp)           
/* 006A0 808BEBA0 8FA30048 */  lw      $v1, 0x0048($sp)           
/* 006A4 808BEBA4 3C190600 */  lui     $t9, 0x0600                ## $t9 = 06000000
/* 006A8 808BEBA8 27395DE0 */  addiu   $t9, $t9, 0x5DE0           ## $t9 = 06005DE0
/* 006AC 808BEBAC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 006B0 808BEBB0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 006B4 808BEBB4 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 006B8 808BEBB8 3C06808C */  lui     $a2, %hi(D_808BEC58)       ## $a2 = 808C0000
/* 006BC 808BEBBC 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 006C0 808BEBC0 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 006C4 808BEBC4 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 006C8 808BEBC8 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 006CC 808BEBCC 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 006D0 808BEBD0 24C6EC58 */  addiu   $a2, $a2, %lo(D_808BEC58)  ## $a2 = 808BEC58
/* 006D4 808BEBD4 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFE8
/* 006D8 808BEBD8 0C031AD5 */  jal     Graph_CloseDisps              
/* 006DC 808BEBDC 24070255 */  addiu   $a3, $zero, 0x0255         ## $a3 = 00000255
/* 006E0 808BEBE0 8FBF003C */  lw      $ra, 0x003C($sp)           
.L808BEBE4:
/* 006E4 808BEBE4 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 006E8 808BEBE8 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 006EC 808BEBEC 03E00008 */  jr      $ra                        
/* 006F0 808BEBF0 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 006F4 808BEBF4 00000000 */  nop
/* 006F8 808BEBF8 00000000 */  nop
/* 006FC 808BEBFC 00000000 */  nop
