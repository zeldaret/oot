glabel func_80AA6AC8
/* 00A78 80AA6AC8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00A7C 80AA6ACC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00A80 80AA6AD0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A84 80AA6AD4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A88 80AA6AD8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00A8C 80AA6ADC 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00A90 80AA6AE0 24842C10 */  addiu   $a0, $a0, 0x2C10           ## $a0 = 06002C10
/* 00A94 80AA6AE4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00A98 80AA6AE8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00A9C 80AA6AEC 24A52C10 */  addiu   $a1, $a1, 0x2C10           ## $a1 = 06002C10
/* 00AA0 80AA6AF0 468021A0 */  cvt.s.w $f6, $f4                   
/* 00AA4 80AA6AF4 2604018C */  addiu   $a0, $s0, 0x018C           ## $a0 = 0000018C
/* 00AA8 80AA6AF8 3C06C080 */  lui     $a2, 0xC080                ## $a2 = C0800000
/* 00AAC 80AA6AFC 0C029490 */  jal     func_800A5240              
/* 00AB0 80AA6B00 E7A60024 */  swc1    $f6, 0x0024($sp)           
/* 00AB4 80AA6B04 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00AB8 80AA6B08 240E000A */  addiu   $t6, $zero, 0x000A         ## $t6 = 0000000A
/* 00ABC 80AA6B0C AE0E0320 */  sw      $t6, 0x0320($s0)           ## 00000320
/* 00AC0 80AA6B10 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 00AC4 80AA6B14 C7AA0024 */  lwc1    $f10, 0x0024($sp)          
/* 00AC8 80AA6B18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00ACC 80AA6B1C 240538BC */  addiu   $a1, $zero, 0x38BC         ## $a1 = 000038BC
/* 00AD0 80AA6B20 4600540D */  trunc.w.s $f16, $f10                 
/* 00AD4 80AA6B24 44088000 */  mfc1    $t0, $f16                  
/* 00AD8 80AA6B28 00000000 */  nop
/* 00ADC 80AA6B2C 25090006 */  addiu   $t1, $t0, 0x0006           ## $t1 = 00000006
/* 00AE0 80AA6B30 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00AE4 80AA6B34 A609032E */  sh      $t1, 0x032E($s0)           ## 0000032E
/* 00AE8 80AA6B38 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 00AEC 80AA6B3C 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00AF0 80AA6B40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AF4 80AA6B44 15410007 */  bne     $t2, $at, .L80AA6B64       
/* 00AF8 80AA6B48 3C0580AA */  lui     $a1, %hi(func_80AA7CAC)    ## $a1 = 80AA0000
/* 00AFC 80AA6B4C 3C0580AA */  lui     $a1, %hi(func_80AA77D0)    ## $a1 = 80AA0000
/* 00B00 80AA6B50 24A577D0 */  addiu   $a1, $a1, %lo(func_80AA77D0) ## $a1 = 80AA77D0
/* 00B04 80AA6B54 0C2A9814 */  jal     func_80AA6050              
/* 00B08 80AA6B58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B0C 80AA6B5C 10000004 */  beq     $zero, $zero, .L80AA6B70   
/* 00B10 80AA6B60 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AA6B64:
/* 00B14 80AA6B64 0C2A9814 */  jal     func_80AA6050              
/* 00B18 80AA6B68 24A57CAC */  addiu   $a1, $a1, %lo(func_80AA7CAC) ## $a1 = 00007CAC
/* 00B1C 80AA6B6C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AA6B70:
/* 00B20 80AA6B70 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00B24 80AA6B74 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00B28 80AA6B78 03E00008 */  jr      $ra                        
/* 00B2C 80AA6B7C 00000000 */  nop


