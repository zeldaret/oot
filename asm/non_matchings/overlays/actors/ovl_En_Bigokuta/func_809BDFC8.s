glabel func_809BDFC8
/* 01368 809BDFC8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0136C 809BDFCC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01370 809BDFD0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01374 809BDFD4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01378 809BDFD8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0137C 809BDFDC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01380 809BDFE0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01384 809BDFE4 86030196 */  lh      $v1, 0x0196($s0)           ## 00000196
/* 01388 809BDFE8 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 0138C 809BDFEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01390 809BDFF0 10600003 */  beq     $v1, $zero, .L809BE000     
/* 01394 809BDFF4 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 01398 809BDFF8 A60E0196 */  sh      $t6, 0x0196($s0)           ## 00000196
/* 0139C 809BDFFC 86030196 */  lh      $v1, 0x0196($s0)           ## 00000196
.L809BE000:
/* 013A0 809BE000 14610004 */  bne     $v1, $at, .L809BE014       
/* 013A4 809BE004 00000000 */  nop
/* 013A8 809BE008 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 013AC 809BE00C 24053906 */  addiu   $a1, $zero, 0x3906         ## $a1 = 00003906
/* 013B0 809BE010 86030196 */  lh      $v1, 0x0196($s0)           ## 00000196
.L809BE014:
/* 013B4 809BE014 1460000B */  bne     $v1, $zero, .L809BE044     
/* 013B8 809BE018 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 013BC 809BE01C 86050030 */  lh      $a1, 0x0030($s0)           ## 00000030
/* 013C0 809BE020 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 013C4 809BE024 24060800 */  addiu   $a2, $zero, 0x0800         ## $a2 = 00000800
/* 013C8 809BE028 50400007 */  beql    $v0, $zero, .L809BE048     
/* 013CC 809BE02C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 013D0 809BE030 820F0194 */  lb      $t7, 0x0194($s0)           ## 00000194
/* 013D4 809BE034 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013D8 809BE038 000FC023 */  subu    $t8, $zero, $t7            
/* 013DC 809BE03C 0C26F4FE */  jal     func_809BD3F8              
/* 013E0 809BE040 A2180194 */  sb      $t8, 0x0194($s0)           ## 00000194
.L809BE044:
/* 013E4 809BE044 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809BE048:
/* 013E8 809BE048 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 013EC 809BE04C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 013F0 809BE050 03E00008 */  jr      $ra                        
/* 013F4 809BE054 00000000 */  nop


