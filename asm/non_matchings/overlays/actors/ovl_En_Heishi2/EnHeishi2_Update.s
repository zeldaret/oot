glabel EnHeishi2_Update
/* 01BD8 80A54A78 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 01BDC 80A54A7C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 01BE0 80A54A80 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01BE4 80A54A84 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01BE8 80A54A88 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 01BEC 80A54A8C 0C00B56E */  jal     Actor_SetHeight
              
/* 01BF0 80A54A90 8E0502E0 */  lw      $a1, 0x02E0($s0)           ## 000002E0
/* 01BF4 80A54A94 860202FE */  lh      $v0, 0x02FE($s0)           ## 000002FE
/* 01BF8 80A54A98 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01BFC 80A54A9C 10410002 */  beq     $v0, $at, .L80A54AA8       
/* 01C00 80A54AA0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01C04 80A54AA4 14410011 */  bne     $v0, $at, .L80A54AEC       
.L80A54AA8:
/* 01C08 80A54AA8 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 01C0C 80A54AAC 44810000 */  mtc1    $at, $f0                   ## $f0 = 70.00
/* 01C10 80A54AB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C14 80A54AB4 44050000 */  mfc1    $a1, $f0                   
/* 01C18 80A54AB8 0C00B56E */  jal     Actor_SetHeight
              
/* 01C1C 80A54ABC E600003C */  swc1    $f0, 0x003C($s0)           ## 0000003C
/* 01C20 80A54AC0 8E0F0038 */  lw      $t7, 0x0038($s0)           ## 00000038
/* 01C24 80A54AC4 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 01C28 80A54AC8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01C2C 80A54ACC AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 01C30 80A54AD0 8E0E003C */  lw      $t6, 0x003C($s0)           ## 0000003C
/* 01C34 80A54AD4 26060260 */  addiu   $a2, $s0, 0x0260           ## $a2 = 00000260
/* 01C38 80A54AD8 2607026C */  addiu   $a3, $s0, 0x026C           ## $a3 = 0000026C
/* 01C3C 80A54ADC AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 01C40 80A54AE0 8E0F0040 */  lw      $t7, 0x0040($s0)           ## 00000040
/* 01C44 80A54AE4 0C00E0A4 */  jal     func_80038290              
/* 01C48 80A54AE8 AFAF0018 */  sw      $t7, 0x0018($sp)           
.L80A54AEC:
/* 01C4C 80A54AEC 861802FC */  lh      $t8, 0x02FC($s0)           ## 000002FC
/* 01C50 80A54AF0 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 01C54 80A54AF4 02001025 */  or      $v0, $s0, $zero            ## $v0 = 00000000
/* 01C58 80A54AF8 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 01C5C 80A54AFC A61902FC */  sh      $t9, 0x02FC($s0)           ## 000002FC
/* 01C60 80A54B00 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
.L80A54B04:
/* 01C64 80A54B04 844402F2 */  lh      $a0, 0x02F2($v0)           ## 000002F2
/* 01C68 80A54B08 24630002 */  addiu   $v1, $v1, 0x0002           ## $v1 = 00000002
/* 01C6C 80A54B0C 10800002 */  beq     $a0, $zero, .L80A54B18     
/* 01C70 80A54B10 2488FFFF */  addiu   $t0, $a0, 0xFFFF           ## $t0 = FFFFFFFF
/* 01C74 80A54B14 A44802F2 */  sh      $t0, 0x02F2($v0)           ## 000002F2
.L80A54B18:
/* 01C78 80A54B18 1465FFFA */  bne     $v1, $a1, .L80A54B04       
/* 01C7C 80A54B1C 24420002 */  addiu   $v0, $v0, 0x0002           ## $v0 = 00000002
/* 01C80 80A54B20 8E19025C */  lw      $t9, 0x025C($s0)           ## 0000025C
/* 01C84 80A54B24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C88 80A54B28 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 01C8C 80A54B2C 0320F809 */  jalr    $ra, $t9                   
/* 01C90 80A54B30 00000000 */  nop
/* 01C94 80A54B34 0C00B638 */  jal     Actor_MoveForward
              
/* 01C98 80A54B38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C9C 80A54B3C 860202FE */  lh      $v0, 0x02FE($s0)           ## 000002FE
/* 01CA0 80A54B40 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 01CA4 80A54B44 10410019 */  beq     $v0, $at, .L80A54BAC       
/* 01CA8 80A54B48 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 01CAC 80A54B4C 10410017 */  beq     $v0, $at, .L80A54BAC       
/* 01CB0 80A54B50 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 01CB4 80A54B54 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01CB8 80A54B58 44810000 */  mtc1    $at, $f0                   ## $f0 = 10.00
/* 01CBC 80A54B5C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01CC0 80A54B60 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 01CC4 80A54B64 2409001D */  addiu   $t1, $zero, 0x001D         ## $t1 = 0000001D
/* 01CC8 80A54B68 44060000 */  mfc1    $a2, $f0                   
/* 01CCC 80A54B6C 44070000 */  mfc1    $a3, $f0                   
/* 01CD0 80A54B70 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 01CD4 80A54B74 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01CD8 80A54B78 0C00B92D */  jal     func_8002E4B4              
/* 01CDC 80A54B7C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01CE0 80A54B80 26060398 */  addiu   $a2, $s0, 0x0398           ## $a2 = 00000398
/* 01CE4 80A54B84 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000398
/* 01CE8 80A54B88 AFA60034 */  sw      $a2, 0x0034($sp)           
/* 01CEC 80A54B8C 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 01CF0 80A54B90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CF4 80A54B94 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 01CF8 80A54B98 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01CFC 80A54B9C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01D00 80A54BA0 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 01D04 80A54BA4 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 01D08 80A54BA8 00812821 */  addu    $a1, $a0, $at              
.L80A54BAC:
/* 01D0C 80A54BAC 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 01D10 80A54BB0 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 01D14 80A54BB4 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 01D18 80A54BB8 03E00008 */  jr      $ra                        
/* 01D1C 80A54BBC 00000000 */  nop
