glabel func_80930BC0
/* 045F0 80930BC0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 045F4 80930BC4 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 045F8 80930BC8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 045FC 80930BCC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 04600 80930BD0 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 04604 80930BD4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 04608 80930BD8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0460C 80930BDC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 04610 80930BE0 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 04614 80930BE4 3C054248 */  lui     $a1, 0x4248                ## $a1 = 42480000
/* 04618 80930BE8 0C01DE80 */  jal     Math_ApproxF
              
/* 0461C 80930BEC 3C064080 */  lui     $a2, 0x4080                ## $a2 = 40800000
/* 04620 80930BF0 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 04624 80930BF4 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 04628 80930BF8 860501A4 */  lh      $a1, 0x01A4($s0)           ## 000001A4
/* 0462C 80930BFC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 04630 80930C00 24060200 */  addiu   $a2, $zero, 0x0200         ## $a2 = 00000200
/* 04634 80930C04 02228824 */  and     $s1, $s1, $v0              
/* 04638 80930C08 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 0463C 80930C0C 860501A4 */  lh      $a1, 0x01A4($s0)           ## 000001A4
/* 04640 80930C10 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 04644 80930C14 24060400 */  addiu   $a2, $zero, 0x0400         ## $a2 = 00000400
/* 04648 80930C18 3C0E8094 */  lui     $t6, %hi(D_80938C90)       ## $t6 = 80940000
/* 0464C 80930C1C 8DCE8C90 */  lw      $t6, %lo(D_80938C90)($t6)  
/* 04650 80930C20 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 04654 80930C24 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 04658 80930C28 8DC50090 */  lw      $a1, 0x0090($t6)           ## 80940090
/* 0465C 80930C2C 02228824 */  and     $s1, $s1, $v0              
/* 04660 80930C30 260403C4 */  addiu   $a0, $s0, 0x03C4           ## $a0 = 000003C4
/* 04664 80930C34 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 04668 80930C38 3C074270 */  lui     $a3, 0x4270                ## $a3 = 42700000
/* 0466C 80930C3C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 04670 80930C40 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 04674 80930C44 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 04678 80930C48 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 0467C 80930C4C 00007825 */  or      $t7, $zero, $zero          ## $t7 = 00000000
/* 04680 80930C50 4606003C */  c.lt.s  $f0, $f6                   
/* 04684 80930C54 00000000 */  nop
/* 04688 80930C58 45020003 */  bc1fl   .L80930C68                 
/* 0468C 80930C5C 022F8824 */  and     $s1, $s1, $t7              
/* 04690 80930C60 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 04694 80930C64 022F8824 */  and     $s1, $s1, $t7              
.L80930C68:
/* 04698 80930C68 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 0469C 80930C6C 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 046A0 80930C70 C60803C4 */  lwc1    $f8, 0x03C4($s0)           ## 000003C4
/* 046A4 80930C74 3C188094 */  lui     $t8, %hi(D_80938C90)       ## $t8 = 80940000
/* 046A8 80930C78 8F188C90 */  lw      $t8, %lo(D_80938C90)($t8)  
/* 046AC 80930C7C 46080282 */  mul.s   $f10, $f0, $f8             
/* 046B0 80930C80 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 046B4 80930C84 C7100024 */  lwc1    $f16, 0x0024($t8)          ## 80940024
/* 046B8 80930C88 46105480 */  add.s   $f18, $f10, $f16           
/* 046BC 80930C8C 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 046C0 80930C90 E6120024 */  swc1    $f18, 0x0024($s0)          ## 00000024
/* 046C4 80930C94 C60403C4 */  lwc1    $f4, 0x03C4($s0)           ## 000003C4
/* 046C8 80930C98 3C198094 */  lui     $t9, %hi(D_80938C90)       ## $t9 = 80940000
/* 046CC 80930C9C 8F398C90 */  lw      $t9, %lo(D_80938C90)($t9)  
/* 046D0 80930CA0 46040182 */  mul.s   $f6, $f0, $f4              
/* 046D4 80930CA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 046D8 80930CA8 C728002C */  lwc1    $f8, 0x002C($t9)           ## 8094002C
/* 046DC 80930CAC 46083280 */  add.s   $f10, $f6, $f8             
/* 046E0 80930CB0 12200005 */  beq     $s1, $zero, .L80930CC8     
/* 046E4 80930CB4 E60A002C */  swc1    $f10, 0x002C($s0)          ## 0000002C
/* 046E8 80930CB8 0C24C339 */  jal     func_80930CE4              
/* 046EC 80930CBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 046F0 80930CC0 10000004 */  beq     $zero, $zero, .L80930CD4   
/* 046F4 80930CC4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80930CC8:
/* 046F8 80930CC8 0C00BE5D */  jal     func_8002F974              
/* 046FC 80930CCC 24053167 */  addiu   $a1, $zero, 0x3167         ## $a1 = 00003167
/* 04700 80930CD0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80930CD4:
/* 04704 80930CD4 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 04708 80930CD8 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 0470C 80930CDC 03E00008 */  jr      $ra                        
/* 04710 80930CE0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
