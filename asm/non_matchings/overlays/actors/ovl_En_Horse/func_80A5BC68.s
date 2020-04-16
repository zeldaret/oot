glabel func_80A5BC68
/* 00978 80A5BC68 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0097C 80A5BC6C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00980 80A5BC70 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00984 80A5BC74 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00988 80A5BC78 8C830210 */  lw      $v1, 0x0210($a0)           ## 00000210
/* 0098C 80A5BC7C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00990 80A5BC80 3C01420C */  lui     $at, 0x420C                ## $at = 420C0000
/* 00994 80A5BC84 54600027 */  bnel    $v1, $zero, .L80A5BD24     
/* 00998 80A5BC88 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0099C 80A5BC8C C4800214 */  lwc1    $f0, 0x0214($a0)           ## 00000214
/* 009A0 80A5BC90 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.00
/* 009A4 80A5BC94 3C0141E0 */  lui     $at, 0x41E0                ## $at = 41E00000
/* 009A8 80A5BC98 4600203C */  c.lt.s  $f4, $f0                   
/* 009AC 80A5BC9C 00000000 */  nop
/* 009B0 80A5BCA0 45020005 */  bc1fl   .L80A5BCB8                 
/* 009B4 80A5BCA4 44813000 */  mtc1    $at, $f6                   ## $f6 = 28.00
/* 009B8 80A5BCA8 8C8E0158 */  lw      $t6, 0x0158($a0)           ## 00000158
/* 009BC 80A5BCAC 51C0000C */  beql    $t6, $zero, .L80A5BCE0     
/* 009C0 80A5BCB0 8E0201F0 */  lw      $v0, 0x01F0($s0)           ## 000001F0
/* 009C4 80A5BCB4 44813000 */  mtc1    $at, $f6                   ## $f6 = 28.00
.L80A5BCB8:
/* 009C8 80A5BCB8 00000000 */  nop
/* 009CC 80A5BCBC 4600303C */  c.lt.s  $f6, $f0                   
/* 009D0 80A5BCC0 00000000 */  nop
/* 009D4 80A5BCC4 45020017 */  bc1fl   .L80A5BD24                 
/* 009D8 80A5BCC8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 009DC 80A5BCCC 8E0F0158 */  lw      $t7, 0x0158($s0)           ## 00000158
/* 009E0 80A5BCD0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 009E4 80A5BCD4 55E10013 */  bnel    $t7, $at, .L80A5BD24       
/* 009E8 80A5BCD8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 009EC 80A5BCDC 8E0201F0 */  lw      $v0, 0x01F0($s0)           ## 000001F0
.L80A5BCE0:
/* 009F0 80A5BCE0 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 009F4 80A5BCE4 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 009F8 80A5BCE8 30581000 */  andi    $t8, $v0, 0x1000           ## $t8 = 00000000
/* 009FC 80A5BCEC 1700000C */  bne     $t8, $zero, .L80A5BD20     
/* 00A00 80A5BCF0 34591000 */  ori     $t9, $v0, 0x1000           ## $t9 = 00001000
/* 00A04 80A5BCF4 3C088013 */  lui     $t0, 0x8013                ## $t0 = 80130000
/* 00A08 80A5BCF8 AE1901F0 */  sw      $t9, 0x01F0($s0)           ## 000001F0
/* 00A0C 80A5BCFC 250833E8 */  addiu   $t0, $t0, 0x33E8           ## $t0 = 801333E8
/* 00A10 80A5BD00 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00A14 80A5BD04 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00A18 80A5BD08 2404282C */  addiu   $a0, $zero, 0x282C         ## $a0 = 0000282C
/* 00A1C 80A5BD0C 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 00A20 80A5BD10 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00A24 80A5BD14 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00A28 80A5BD18 1000001A */  beq     $zero, $zero, .L80A5BD84   
/* 00A2C 80A5BD1C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A5BD20:
/* 00A30 80A5BD20 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
.L80A5BD24:
/* 00A34 80A5BD24 14610016 */  bne     $v1, $at, .L80A5BD80       
/* 00A38 80A5BD28 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 00A3C 80A5BD2C 44814000 */  mtc1    $at, $f8                   ## $f8 = 25.00
/* 00A40 80A5BD30 C60A0214 */  lwc1    $f10, 0x0214($s0)          ## 00000214
/* 00A44 80A5BD34 460A403C */  c.lt.s  $f8, $f10                  
/* 00A48 80A5BD38 00000000 */  nop
/* 00A4C 80A5BD3C 45020011 */  bc1fl   .L80A5BD84                 
/* 00A50 80A5BD40 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00A54 80A5BD44 8E0201F0 */  lw      $v0, 0x01F0($s0)           ## 000001F0
/* 00A58 80A5BD48 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 00A5C 80A5BD4C 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 00A60 80A5BD50 30490800 */  andi    $t1, $v0, 0x0800           ## $t1 = 00000000
/* 00A64 80A5BD54 1520000A */  bne     $t1, $zero, .L80A5BD80     
/* 00A68 80A5BD58 344A0800 */  ori     $t2, $v0, 0x0800           ## $t2 = 00000800
/* 00A6C 80A5BD5C 3C0B8013 */  lui     $t3, 0x8013                ## $t3 = 80130000
/* 00A70 80A5BD60 AE0A01F0 */  sw      $t2, 0x01F0($s0)           ## 000001F0
/* 00A74 80A5BD64 256B33E8 */  addiu   $t3, $t3, 0x33E8           ## $t3 = 801333E8
/* 00A78 80A5BD68 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00A7C 80A5BD6C AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00A80 80A5BD70 2404282B */  addiu   $a0, $zero, 0x282B         ## $a0 = 0000282B
/* 00A84 80A5BD74 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 00A88 80A5BD78 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00A8C 80A5BD7C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
.L80A5BD80:
/* 00A90 80A5BD80 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A5BD84:
/* 00A94 80A5BD84 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00A98 80A5BD88 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00A9C 80A5BD8C 03E00008 */  jr      $ra                        
/* 00AA0 80A5BD90 00000000 */  nop
