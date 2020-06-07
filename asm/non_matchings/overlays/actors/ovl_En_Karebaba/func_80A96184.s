glabel func_80A96184
/* 00E34 80A96184 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E38 80A96188 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00E3C 80A9618C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00E40 80A96190 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E44 80A96194 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00E48 80A96198 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 00E4C 80A9619C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00E50 80A961A0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00E54 80A961A4 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00E58 80A961A8 84A2001C */  lh      $v0, 0x001C($a1)           ## 0000001C
/* 00E5C 80A961AC 10400003 */  beq     $v0, $zero, .L80A961BC     
/* 00E60 80A961B0 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00E64 80A961B4 A4AE001C */  sh      $t6, 0x001C($a1)           ## 0000001C
/* 00E68 80A961B8 84A2001C */  lh      $v0, 0x001C($a1)           ## 0000001C
.L80A961BC:
/* 00E6C 80A961BC 54400004 */  bnel    $v0, $zero, .L80A961D0     
/* 00E70 80A961C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E74 80A961C4 0C2A563B */  jal     func_80A958EC              
/* 00E78 80A961C8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00E7C 80A961CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A961D0:
/* 00E80 80A961D0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E84 80A961D4 03E00008 */  jr      $ra                        
/* 00E88 80A961D8 00000000 */  nop
