glabel func_808AB700
/* 00A20 808AB700 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00A24 808AB704 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A28 808AB708 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00A2C 808AB70C AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00A30 808AB710 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00A34 808AB714 8CB00000 */  lw      $s0, 0x0000($a1)           ## 00000000
/* 00A38 808AB718 3C06808B */  lui     $a2, %hi(D_808AB938)       ## $a2 = 808B0000
/* 00A3C 808AB71C 24C6B938 */  addiu   $a2, $a2, %lo(D_808AB938)  ## $a2 = 808AB938
/* 00A40 808AB720 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 00A44 808AB724 240702B1 */  addiu   $a3, $zero, 0x02B1         ## $a3 = 000002B1
/* 00A48 808AB728 0C031AB1 */  jal     func_800C6AC4              
/* 00A4C 808AB72C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00A50 808AB730 0C024F46 */  jal     func_80093D18              
/* 00A54 808AB734 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A58 808AB738 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 00A5C 808AB73C 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 00A60 808AB740 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 00A64 808AB744 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 00A68 808AB748 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 00A6C 808AB74C 3C05808B */  lui     $a1, %hi(D_808AB954)       ## $a1 = 808B0000
/* 00A70 808AB750 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 00A74 808AB754 24A5B954 */  addiu   $a1, $a1, %lo(D_808AB954)  ## $a1 = 808AB954
/* 00A78 808AB758 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A7C 808AB75C 240602BB */  addiu   $a2, $zero, 0x02BB         ## $a2 = 000002BB
/* 00A80 808AB760 0C0346A2 */  jal     Matrix_NewMtx              
/* 00A84 808AB764 AFA3002C */  sw      $v1, 0x002C($sp)           
/* 00A88 808AB768 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 00A8C 808AB76C ACE20004 */  sw      $v0, 0x0004($a3)           ## 00000004
/* 00A90 808AB770 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 00A94 808AB774 0C22ABCD */  jal     func_808AAF34              
/* 00A98 808AB778 8FA40048 */  lw      $a0, 0x0048($sp)           
/* 00A9C 808AB77C 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 00AA0 808AB780 3C090600 */  lui     $t1, 0x0600                ## $t1 = 06000000
/* 00AA4 808AB784 25290420 */  addiu   $t1, $t1, 0x0420           ## $t1 = 06000420
/* 00AA8 808AB788 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 00AAC 808AB78C AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 00AB0 808AB790 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 00AB4 808AB794 3C06808B */  lui     $a2, %hi(D_808AB970)       ## $a2 = 808B0000
/* 00AB8 808AB798 24C6B970 */  addiu   $a2, $a2, %lo(D_808AB970)  ## $a2 = 808AB970
/* 00ABC 808AB79C 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 00AC0 808AB7A0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00AC4 808AB7A4 240702C4 */  addiu   $a3, $zero, 0x02C4         ## $a3 = 000002C4
/* 00AC8 808AB7A8 AC680000 */  sw      $t0, 0x0000($v1)           ## 00000000
/* 00ACC 808AB7AC 0C031AD5 */  jal     func_800C6B54              
/* 00AD0 808AB7B0 AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
/* 00AD4 808AB7B4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00AD8 808AB7B8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00ADC 808AB7BC 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00AE0 808AB7C0 03E00008 */  jr      $ra                        
/* 00AE4 808AB7C4 00000000 */  nop


