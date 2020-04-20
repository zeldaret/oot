glabel func_80A6BD7C
/* 00B2C 80A6BD7C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00B30 80A6BD80 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00B34 80A6BD84 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00B38 80A6BD88 8C830150 */  lw      $v1, 0x0150($a0)           ## 00000150
/* 00B3C 80A6BD8C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B40 80A6BD90 C48001B8 */  lwc1    $f0, 0x01B8($a0)           ## 000001B8
/* 00B44 80A6BD94 14600018 */  bne     $v1, $zero, .L80A6BDF8     
/* 00B48 80A6BD98 3C0141E0 */  lui     $at, 0x41E0                ## $at = 41E00000
/* 00B4C 80A6BD9C 44812000 */  mtc1    $at, $f4                   ## $f4 = 28.00
/* 00B50 80A6BDA0 00000000 */  nop
/* 00B54 80A6BDA4 4600203C */  c.lt.s  $f4, $f0                   
/* 00B58 80A6BDA8 00000000 */  nop
/* 00B5C 80A6BDAC 45020013 */  bc1fl   .L80A6BDFC                 
/* 00B60 80A6BDB0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00B64 80A6BDB4 948201E4 */  lhu     $v0, 0x01E4($a0)           ## 000001E4
/* 00B68 80A6BDB8 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 00B6C 80A6BDBC 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 00B70 80A6BDC0 304E0001 */  andi    $t6, $v0, 0x0001           ## $t6 = 00000000
/* 00B74 80A6BDC4 15C0000C */  bne     $t6, $zero, .L80A6BDF8     
/* 00B78 80A6BDC8 344F0001 */  ori     $t7, $v0, 0x0001           ## $t7 = 00000001
/* 00B7C 80A6BDCC A48F01E4 */  sh      $t7, 0x01E4($a0)           ## 000001E4
/* 00B80 80A6BDD0 3C188013 */  lui     $t8, %hi(D_801333E8)
/* 00B84 80A6BDD4 271833E8 */  addiu   $t8, %lo(D_801333E8)
/* 00B88 80A6BDD8 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00B8C 80A6BDDC AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00B90 80A6BDE0 2404282C */  addiu   $a0, $zero, 0x282C         ## $a0 = 0000282C
/* 00B94 80A6BDE4 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 00B98 80A6BDE8 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00B9C 80A6BDEC 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00BA0 80A6BDF0 1000001A */  beq     $zero, $zero, .L80A6BE5C   
/* 00BA4 80A6BDF4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A6BDF8:
/* 00BA8 80A6BDF8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
.L80A6BDFC:
/* 00BAC 80A6BDFC 14610016 */  bne     $v1, $at, .L80A6BE58       
/* 00BB0 80A6BE00 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 00BB4 80A6BE04 44813000 */  mtc1    $at, $f6                   ## $f6 = 25.00
/* 00BB8 80A6BE08 00000000 */  nop
/* 00BBC 80A6BE0C 4600303C */  c.lt.s  $f6, $f0                   
/* 00BC0 80A6BE10 00000000 */  nop
/* 00BC4 80A6BE14 45020011 */  bc1fl   .L80A6BE5C                 
/* 00BC8 80A6BE18 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00BCC 80A6BE1C 960201E4 */  lhu     $v0, 0x01E4($s0)           ## 000001E4
/* 00BD0 80A6BE20 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 00BD4 80A6BE24 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 00BD8 80A6BE28 30590002 */  andi    $t9, $v0, 0x0002           ## $t9 = 00000000
/* 00BDC 80A6BE2C 1720000A */  bne     $t9, $zero, .L80A6BE58     
/* 00BE0 80A6BE30 34480002 */  ori     $t0, $v0, 0x0002           ## $t0 = 00000002
/* 00BE4 80A6BE34 3C098013 */  lui     $t1, %hi(D_801333E8)
/* 00BE8 80A6BE38 A60801E4 */  sh      $t0, 0x01E4($s0)           ## 000001E4
/* 00BEC 80A6BE3C 252933E8 */  addiu   $t1, %lo(D_801333E8)
/* 00BF0 80A6BE40 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00BF4 80A6BE44 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00BF8 80A6BE48 2404282B */  addiu   $a0, $zero, 0x282B         ## $a0 = 0000282B
/* 00BFC 80A6BE4C 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 00C00 80A6BE50 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00C04 80A6BE54 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
.L80A6BE58:
/* 00C08 80A6BE58 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A6BE5C:
/* 00C0C 80A6BE5C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00C10 80A6BE60 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00C14 80A6BE64 03E00008 */  jr      $ra                        
/* 00C18 80A6BE68 00000000 */  nop
