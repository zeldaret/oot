glabel func_80A37DEC
/* 02ADC 80A37DEC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02AE0 80A37DF0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02AE4 80A37DF4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02AE8 80A37DF8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02AEC 80A37DFC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02AF0 80A37E00 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02AF4 80A37E04 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 02AF8 80A37E08 1040002C */  beq     $v0, $zero, .L80A37EBC     
/* 02AFC 80A37E0C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 02B00 80A37E10 0C00CEAE */  jal     func_80033AB8              
/* 02B04 80A37E14 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02B08 80A37E18 1440001A */  bne     $v0, $zero, .L80A37E84     
/* 02B0C 80A37E1C 3C01432A */  lui     $at, 0x432A                ## $at = 432A0000
/* 02B10 80A37E20 C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 02B14 80A37E24 44812000 */  mtc1    $at, $f4                   ## $f4 = 170.00
/* 02B18 80A37E28 3C01430C */  lui     $at, 0x430C                ## $at = 430C0000
/* 02B1C 80A37E2C 4604003C */  c.lt.s  $f0, $f4                   
/* 02B20 80A37E30 00000000 */  nop
/* 02B24 80A37E34 45020014 */  bc1fl   .L80A37E88                 
/* 02B28 80A37E38 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 02B2C 80A37E3C 44813000 */  mtc1    $at, $f6                   ## $f6 = 140.00
/* 02B30 80A37E40 00000000 */  nop
/* 02B34 80A37E44 4600303C */  c.lt.s  $f6, $f0                   
/* 02B38 80A37E48 00000000 */  nop
/* 02B3C 80A37E4C 4502000E */  bc1fl   .L80A37E88                 
/* 02B40 80A37E50 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 02B44 80A37E54 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 02B48 80A37E58 00000000 */  nop
/* 02B4C 80A37E5C 3C0180A4 */  lui     $at, %hi(D_80A3A254)       ## $at = 80A40000
/* 02B50 80A37E60 C428A254 */  lwc1    $f8, %lo(D_80A3A254)($at)  
/* 02B54 80A37E64 4608003C */  c.lt.s  $f0, $f8                   
/* 02B58 80A37E68 00000000 */  nop
/* 02B5C 80A37E6C 45020006 */  bc1fl   .L80A37E88                 
/* 02B60 80A37E70 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 02B64 80A37E74 0C28DE4B */  jal     func_80A3792C              
/* 02B68 80A37E78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02B6C 80A37E7C 10000010 */  beq     $zero, $zero, .L80A37EC0   
/* 02B70 80A37E80 8FB90024 */  lw      $t9, 0x0024($sp)           
.L80A37E84:
/* 02B74 80A37E84 8FAE0024 */  lw      $t6, 0x0024($sp)           
.L80A37E88:
/* 02B78 80A37E88 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 02B7C 80A37E8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02B80 80A37E90 01EE7821 */  addu    $t7, $t7, $t6              
/* 02B84 80A37E94 8DEF1DE4 */  lw      $t7, 0x1DE4($t7)           ## 00011DE4
/* 02B88 80A37E98 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 02B8C 80A37E9C 13000005 */  beq     $t8, $zero, .L80A37EB4     
/* 02B90 80A37EA0 00000000 */  nop
/* 02B94 80A37EA4 0C28E1F4 */  jal     func_80A387D0              
/* 02B98 80A37EA8 01C02825 */  or      $a1, $t6, $zero            ## $a1 = 00000000
/* 02B9C 80A37EAC 10000004 */  beq     $zero, $zero, .L80A37EC0   
/* 02BA0 80A37EB0 8FB90024 */  lw      $t9, 0x0024($sp)           
.L80A37EB4:
/* 02BA4 80A37EB4 0C28D752 */  jal     func_80A35D48              
/* 02BA8 80A37EB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A37EBC:
/* 02BAC 80A37EBC 8FB90024 */  lw      $t9, 0x0024($sp)           
.L80A37EC0:
/* 02BB0 80A37EC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02BB4 80A37EC4 8F28009C */  lw      $t0, 0x009C($t9)           ## 0000009C
/* 02BB8 80A37EC8 3109005F */  andi    $t1, $t0, 0x005F           ## $t1 = 00000000
/* 02BBC 80A37ECC 55200004 */  bnel    $t1, $zero, .L80A37EE0     
/* 02BC0 80A37ED0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02BC4 80A37ED4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02BC8 80A37ED8 240539C6 */  addiu   $a1, $zero, 0x39C6         ## $a1 = 000039C6
/* 02BCC 80A37EDC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A37EE0:
/* 02BD0 80A37EE0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02BD4 80A37EE4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02BD8 80A37EE8 03E00008 */  jr      $ra                        
/* 02BDC 80A37EEC 00000000 */  nop


