glabel EnSyatekiItm_Update
/* 00AA8 80B10158 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00AAC 80B1015C AFBF0044 */  sw      $ra, 0x0044($sp)           
/* 00AB0 80B10160 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00AB4 80B10164 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00AB8 80B10168 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 00ABC 80B1016C 0320F809 */  jalr    $ra, $t9                   
/* 00AC0 80B10170 00000000 */  nop
/* 00AC4 80B10174 8FA40048 */  lw      $a0, 0x0048($sp)           
/* 00AC8 80B10178 3C188016 */  lui     $t8, %hi(gGameInfo)
/* 00ACC 80B1017C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00AD0 80B10180 84820150 */  lh      $v0, 0x0150($a0)           ## 00000150
/* 00AD4 80B10184 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 00AD8 80B10188 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 00ADC 80B1018C 10400002 */  beq     $v0, $zero, .L80B10198     
/* 00AE0 80B10190 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00AE4 80B10194 A48E0150 */  sh      $t6, 0x0150($a0)           ## 00000150
.L80B10198:
/* 00AE8 80B10198 84820152 */  lh      $v0, 0x0152($a0)           ## 00000152
/* 00AEC 80B1019C 240D0004 */  addiu   $t5, $zero, 0x0004         ## $t5 = 00000004
/* 00AF0 80B101A0 10400002 */  beq     $v0, $zero, .L80B101AC     
/* 00AF4 80B101A4 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 00AF8 80B101A8 A48F0152 */  sh      $t7, 0x0152($a0)           ## 00000152
.L80B101AC:
/* 00AFC 80B101AC 8F18FA90 */  lw      $t8, %lo(gGameInfo)($t8)
/* 00B00 80B101B0 870812D4 */  lh      $t0, 0x12D4($t8)           ## 801612D4
/* 00B04 80B101B4 51000017 */  beql    $t0, $zero, .L80B10214     
/* 00B08 80B101B8 8FBF0044 */  lw      $ra, 0x0044($sp)           
/* 00B0C 80B101BC 84890032 */  lh      $t1, 0x0032($a0)           ## 00000032
/* 00B10 80B101C0 C48C0024 */  lwc1    $f12, 0x0024($a0)          ## 00000024
/* 00B14 80B101C4 C48E0028 */  lwc1    $f14, 0x0028($a0)          ## 00000028
/* 00B18 80B101C8 8C86002C */  lw      $a2, 0x002C($a0)           ## 0000002C
/* 00B1C 80B101CC 84870030 */  lh      $a3, 0x0030($a0)           ## 00000030
/* 00B20 80B101D0 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 00B24 80B101D4 848A0034 */  lh      $t2, 0x0034($a0)           ## 00000034
/* 00B28 80B101D8 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00B2C 80B101DC 8FB9004C */  lw      $t9, 0x004C($sp)           
/* 00B30 80B101E0 AFAD0034 */  sw      $t5, 0x0034($sp)           
/* 00B34 80B101E4 AFAC0030 */  sw      $t4, 0x0030($sp)           
/* 00B38 80B101E8 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 00B3C 80B101EC AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00B40 80B101F0 AFAB0024 */  sw      $t3, 0x0024($sp)           
/* 00B44 80B101F4 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 00B48 80B101F8 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 00B4C 80B101FC E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 00B50 80B10200 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 00B54 80B10204 8F2E0000 */  lw      $t6, 0x0000($t9)           ## 00000000
/* 00B58 80B10208 0C018FA7 */  jal     DebugDisplay_AddObject
              
/* 00B5C 80B1020C AFAE0038 */  sw      $t6, 0x0038($sp)           
/* 00B60 80B10210 8FBF0044 */  lw      $ra, 0x0044($sp)           
.L80B10214:
/* 00B64 80B10214 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00B68 80B10218 03E00008 */  jr      $ra                        
/* 00B6C 80B1021C 00000000 */  nop
