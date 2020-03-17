glabel EnDodojr_Draw
/* 01A50 809F7E10 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01A54 809F7E14 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01A58 809F7E18 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01A5C 809F7E1C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01A60 809F7E20 8C820190 */  lw      $v0, 0x0190($a0)           ## 00000190
/* 01A64 809F7E24 3C0E809F */  lui     $t6, %hi(func_809F73AC)    ## $t6 = 809F0000
/* 01A68 809F7E28 25CE73AC */  addiu   $t6, $t6, %lo(func_809F73AC) ## $t6 = 809F73AC
/* 01A6C 809F7E2C 11C20011 */  beq     $t6, $v0, .L809F7E74       
/* 01A70 809F7E30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01A74 809F7E34 3C0F809F */  lui     $t7, %hi(func_809F7BE4)    ## $t7 = 809F0000
/* 01A78 809F7E38 25EF7BE4 */  addiu   $t7, $t7, %lo(func_809F7BE4) ## $t7 = 809F7BE4
/* 01A7C 809F7E3C 51E2000E */  beql    $t7, $v0, .L809F7E78       
/* 01A80 809F7E40 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01A84 809F7E44 0C024F46 */  jal     func_80093D18              
/* 01A88 809F7E48 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 01A8C 809F7E4C 3C19809F */  lui     $t9, %hi(func_809F7DFC)    ## $t9 = 809F0000
/* 01A90 809F7E50 27397DFC */  addiu   $t9, $t9, %lo(func_809F7DFC) ## $t9 = 809F7DFC
/* 01A94 809F7E54 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 01A98 809F7E58 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 01A9C 809F7E5C 3C07809F */  lui     $a3, %hi(func_809F7D50)    ## $a3 = 809F0000
/* 01AA0 809F7E60 24E77D50 */  addiu   $a3, $a3, %lo(func_809F7D50) ## $a3 = 809F7D50
/* 01AA4 809F7E64 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 01AA8 809F7E68 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 01AAC 809F7E6C 0C028572 */  jal     SkelAnime_Draw
              
/* 01AB0 809F7E70 8FA4002C */  lw      $a0, 0x002C($sp)           
.L809F7E74:
/* 01AB4 809F7E74 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809F7E78:
/* 01AB8 809F7E78 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01ABC 809F7E7C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01AC0 809F7E80 03E00008 */  jr      $ra                        
/* 01AC4 809F7E84 00000000 */  nop
/* 01AC8 809F7E88 00000000 */  nop
/* 01ACC 809F7E8C 00000000 */  nop

