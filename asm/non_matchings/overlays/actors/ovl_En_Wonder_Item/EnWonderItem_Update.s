glabel EnWonderItem_Update
/* 00B8C 80B38BEC 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 00B90 80B38BF0 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 00B94 80B38BF4 AFB00048 */  sw      $s0, 0x0048($sp)           
/* 00B98 80B38BF8 AFA50064 */  sw      $a1, 0x0064($sp)           
/* 00B9C 80B38BFC 8482015C */  lh      $v0, 0x015C($a0)           ## 0000015C
/* 00BA0 80B38C00 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BA4 80B38C04 10400002 */  beq     $v0, $zero, .L80B38C10     
/* 00BA8 80B38C08 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00BAC 80B38C0C A48E015C */  sh      $t6, 0x015C($a0)           ## 0000015C
.L80B38C10:
/* 00BB0 80B38C10 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
/* 00BB4 80B38C14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BB8 80B38C18 8FA50064 */  lw      $a1, 0x0064($sp)           
/* 00BBC 80B38C1C 0320F809 */  jalr    $ra, $t9                   
/* 00BC0 80B38C20 00000000 */  nop
/* 00BC4 80B38C24 86020154 */  lh      $v0, 0x0154($s0)           ## 00000154
/* 00BC8 80B38C28 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00BCC 80B38C2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BD0 80B38C30 54410005 */  bnel    $v0, $at, .L80B38C48       
/* 00BD4 80B38C34 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00BD8 80B38C38 0C00B56E */  jal     Actor_SetHeight
              
/* 00BDC 80B38C3C 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 00BE0 80B38C40 86020154 */  lh      $v0, 0x0154($s0)           ## 00000154
/* 00BE4 80B38C44 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
.L80B38C48:
/* 00BE8 80B38C48 10410003 */  beq     $v0, $at, .L80B38C58       
/* 00BEC 80B38C4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BF0 80B38C50 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00BF4 80B38C54 1441000B */  bne     $v0, $at, .L80B38C84       
.L80B38C58:
/* 00BF8 80B38C58 26060180 */  addiu   $a2, $s0, 0x0180           ## $a2 = 00000180
/* 00BFC 80B38C5C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000180
/* 00C00 80B38C60 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00C04 80B38C64 AFA60050 */  sw      $a2, 0x0050($sp)           
/* 00C08 80B38C68 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 00C0C 80B38C6C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00C10 80B38C70 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00C14 80B38C74 8FA60050 */  lw      $a2, 0x0050($sp)           
/* 00C18 80B38C78 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00C1C 80B38C7C 00812821 */  addu    $a1, $a0, $at              
/* 00C20 80B38C80 86020154 */  lh      $v0, 0x0154($s0)           ## 00000154
.L80B38C84:
/* 00C24 80B38C84 2841000D */  slti    $at, $v0, 0x000D           
/* 00C28 80B38C88 14200002 */  bne     $at, $zero, .L80B38C94     
/* 00C2C 80B38C8C 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 00C30 80B38C90 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80B38C94:
/* 00C34 80B38C94 3C0F8016 */  lui     $t7, %hi(gGameInfo)
/* 00C38 80B38C98 8DEFFA90 */  lw      $t7, %lo(gGameInfo)($t7)
/* 00C3C 80B38C9C 3C0B80B4 */  lui     $t3, %hi(D_80B38DC0)       ## $t3 = 80B40000
/* 00C40 80B38CA0 256B8DC0 */  addiu   $t3, $t3, %lo(D_80B38DC0)  ## $t3 = 80B38DC0
/* 00C44 80B38CA4 85F812D4 */  lh      $t8, 0x12D4($t7)           ## 801612D4
/* 00C48 80B38CA8 00035040 */  sll     $t2, $v1,  1               
/* 00C4C 80B38CAC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00C50 80B38CB0 1300001B */  beq     $t8, $zero, .L80B38D20     
/* 00C54 80B38CB4 014B1021 */  addu    $v0, $t2, $t3              
/* 00C58 80B38CB8 86080032 */  lh      $t0, 0x0032($s0)           ## 00000032
/* 00C5C 80B38CBC C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 00000024
/* 00C60 80B38CC0 C60E0028 */  lwc1    $f14, 0x0028($s0)          ## 00000028
/* 00C64 80B38CC4 8E06002C */  lw      $a2, 0x002C($s0)           ## 0000002C
/* 00C68 80B38CC8 86070030 */  lh      $a3, 0x0030($s0)           ## 00000030
/* 00C6C 80B38CCC AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00C70 80B38CD0 86090034 */  lh      $t1, 0x0034($s0)           ## 00000034
/* 00C74 80B38CD4 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00C78 80B38CD8 844C0000 */  lh      $t4, 0x0000($v0)           ## 00000000
/* 00C7C 80B38CDC 844D0002 */  lh      $t5, 0x0002($v0)           ## 00000002
/* 00C80 80B38CE0 844E0004 */  lh      $t6, 0x0004($v0)           ## 00000004
/* 00C84 80B38CE4 8FB80064 */  lw      $t8, 0x0064($sp)           
/* 00C88 80B38CE8 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 00C8C 80B38CEC 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 00C90 80B38CF0 AFAF0034 */  sw      $t7, 0x0034($sp)           
/* 00C94 80B38CF4 AFB90030 */  sw      $t9, 0x0030($sp)           
/* 00C98 80B38CF8 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00C9C 80B38CFC AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 00CA0 80B38D00 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 00CA4 80B38D04 E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 00CA8 80B38D08 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 00CAC 80B38D0C AFAD0028 */  sw      $t5, 0x0028($sp)           
/* 00CB0 80B38D10 AFAE002C */  sw      $t6, 0x002C($sp)           
/* 00CB4 80B38D14 8F080000 */  lw      $t0, 0x0000($t8)           ## 00000000
/* 00CB8 80B38D18 0C018FA7 */  jal     DebugDisplay_AddObject
              
/* 00CBC 80B38D1C AFA80038 */  sw      $t0, 0x0038($sp)           
.L80B38D20:
/* 00CC0 80B38D20 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 00CC4 80B38D24 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 00CC8 80B38D28 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 00CCC 80B38D2C 03E00008 */  jr      $ra                        
/* 00CD0 80B38D30 00000000 */  nop
/* 00CD4 80B38D34 00000000 */  nop
/* 00CD8 80B38D38 00000000 */  nop
/* 00CDC 80B38D3C 00000000 */  nop
