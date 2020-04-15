.late_rodata
glabel D_80A1A5B4
    .float 3000.0

glabel D_80A1A5B8
    .float 2500.0

.text
glabel EnFloormas_Update
/* 029B4 80A19EC4 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 029B8 80A19EC8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 029BC 80A19ECC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 029C0 80A19ED0 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 029C4 80A19ED4 8C8F0190 */  lw      $t7, 0x0190($a0)           ## 00000190
/* 029C8 80A19ED8 3C0E80A2 */  lui     $t6, %hi(func_80A19B9C)    ## $t6 = 80A20000
/* 029CC 80A19EDC 25CE9B9C */  addiu   $t6, $t6, %lo(func_80A19B9C) ## $t6 = 80A19B9C
/* 029D0 80A19EE0 11CF008C */  beq     $t6, $t7, .L80A1A114       
/* 029D4 80A19EE4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 029D8 80A19EE8 908202D8 */  lbu     $v0, 0x02D8($a0)           ## 000002D8
/* 029DC 80A19EEC 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 029E0 80A19EF0 30580002 */  andi    $t8, $v0, 0x0002           ## $t8 = 00000000
/* 029E4 80A19EF4 53000017 */  beql    $t8, $zero, .L80A19F54     
/* 029E8 80A19EF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 029EC 80A19EFC 44811000 */  mtc1    $at, $f2                   ## $f2 = -5.00
/* 029F0 80A19F00 3C01BF00 */  lui     $at, 0xBF00                ## $at = BF000000
/* 029F4 80A19F04 44813000 */  mtc1    $at, $f6                   ## $f6 = -0.50
/* 029F8 80A19F08 C4840068 */  lwc1    $f4, 0x0068($a0)           ## 00000068
/* 029FC 80A19F0C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02A00 80A19F10 3059FFFD */  andi    $t9, $v0, 0xFFFD           ## $t9 = 00000000
/* 02A04 80A19F14 46062202 */  mul.s   $f8, $f4, $f6              
/* 02A08 80A19F18 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 02A0C 80A19F1C A09902D8 */  sb      $t9, 0x02D8($a0)           ## 000002D8
/* 02A10 80A19F20 E4880068 */  swc1    $f8, 0x0068($a0)           ## 00000068
/* 02A14 80A19F24 C4800068 */  lwc1    $f0, 0x0068($a0)           ## 00000068
/* 02A18 80A19F28 4600103C */  c.lt.s  $f2, $f0                   
/* 02A1C 80A19F2C 00000000 */  nop
/* 02A20 80A19F30 45020004 */  bc1fl   .L80A19F44                 
/* 02A24 80A19F34 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 02A28 80A19F38 10000002 */  beq     $zero, $zero, .L80A19F44   
/* 02A2C 80A19F3C E4820068 */  swc1    $f2, 0x0068($a0)           ## 00000068
/* 02A30 80A19F40 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
.L80A19F44:
/* 02A34 80A19F44 E60A0060 */  swc1    $f10, 0x0060($s0)          ## 00000060
/* 02A38 80A19F48 0C285ED0 */  jal     func_80A17B40              
/* 02A3C 80A19F4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A40 80A19F50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A19F54:
/* 02A44 80A19F54 0C286746 */  jal     func_80A19D18              
/* 02A48 80A19F58 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 02A4C 80A19F5C 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 02A50 80A19F60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A54 80A19F64 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 02A58 80A19F68 0320F809 */  jalr    $ra, $t9                   
/* 02A5C 80A19F6C 00000000 */  nop
/* 02A60 80A19F70 3C0880A2 */  lui     $t0, %hi(func_80A19BA8)    ## $t0 = 80A20000
/* 02A64 80A19F74 25089BA8 */  addiu   $t0, $t0, %lo(func_80A19BA8) ## $t0 = 80A19BA8
/* 02A68 80A19F78 AFA80030 */  sw      $t0, 0x0030($sp)           
/* 02A6C 80A19F7C 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 02A70 80A19F80 3C0A80A2 */  lui     $t2, %hi(func_80A193C4)    ## $t2 = 80A20000
/* 02A74 80A19F84 254A93C4 */  addiu   $t2, $t2, %lo(func_80A193C4) ## $t2 = 80A193C4
/* 02A78 80A19F88 11020004 */  beq     $t0, $v0, .L80A19F9C       
/* 02A7C 80A19F8C 00000000 */  nop
/* 02A80 80A19F90 860900B6 */  lh      $t1, 0x00B6($s0)           ## 000000B6
/* 02A84 80A19F94 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 02A88 80A19F98 A6090032 */  sh      $t1, 0x0032($s0)           ## 00000032
.L80A19F9C:
/* 02A8C 80A19F9C 11420003 */  beq     $t2, $v0, .L80A19FAC       
/* 02A90 80A19FA0 AFAA002C */  sw      $t2, 0x002C($sp)           
/* 02A94 80A19FA4 0C00B638 */  jal     Actor_MoveForward
              
/* 02A98 80A19FA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A19FAC:
/* 02A9C 80A19FAC 3C0180A2 */  lui     $at, %hi(D_80A1A5B4)       ## $at = 80A20000
/* 02AA0 80A19FB0 C432A5B4 */  lwc1    $f18, %lo(D_80A1A5B4)($at) 
/* 02AA4 80A19FB4 C6100050 */  lwc1    $f16, 0x0050($s0)          ## 00000050
/* 02AA8 80A19FB8 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 02AAC 80A19FBC 240B001D */  addiu   $t3, $zero, 0x001D         ## $t3 = 0000001D
/* 02AB0 80A19FC0 46128102 */  mul.s   $f4, $f16, $f18            
/* 02AB4 80A19FC4 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 02AB8 80A19FC8 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 02ABC 80A19FCC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02AC0 80A19FD0 3C0641A0 */  lui     $a2, 0x41A0                ## $a2 = 41A00000
/* 02AC4 80A19FD4 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 02AC8 80A19FD8 44072000 */  mfc1    $a3, $f4                   
/* 02ACC 80A19FDC 0C00B92D */  jal     func_8002E4B4              
/* 02AD0 80A19FE0 00000000 */  nop
/* 02AD4 80A19FE4 260502C8 */  addiu   $a1, $s0, 0x02C8           ## $a1 = 000002C8
/* 02AD8 80A19FE8 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 02ADC 80A19FEC 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 02AE0 80A19FF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02AE4 80A19FF4 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 02AE8 80A19FF8 3C0C80A2 */  lui     $t4, %hi(func_80A18C78)    ## $t4 = 80A20000
/* 02AEC 80A19FFC 258C8C78 */  addiu   $t4, $t4, %lo(func_80A18C78) ## $t4 = 80A18C78
/* 02AF0 80A1A000 5582000D */  bnel    $t4, $v0, .L80A1A038       
/* 02AF4 80A1A004 8FAF002C */  lw      $t7, 0x002C($sp)           
/* 02AF8 80A1A008 8E0D0004 */  lw      $t5, 0x0004($s0)           ## 00000004
/* 02AFC 80A1A00C 3C010100 */  lui     $at, 0x0100                ## $at = 01000000
/* 02B00 80A1A010 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 02B04 80A1A014 01A17025 */  or      $t6, $t5, $at              ## $t6 = 01000000
/* 02B08 80A1A018 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02B0C 80A1A01C AE0E0004 */  sw      $t6, 0x0004($s0)           ## 00000004
/* 02B10 80A1A020 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 02B14 80A1A024 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 02B18 80A1A028 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 02B1C 80A1A02C 00812821 */  addu    $a1, $a0, $at              
/* 02B20 80A1A030 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 02B24 80A1A034 8FAF002C */  lw      $t7, 0x002C($sp)           
.L80A1A038:
/* 02B28 80A1A038 3C1880A2 */  lui     $t8, %hi(func_80A18F50)    ## $t8 = 80A20000
/* 02B2C 80A1A03C 27188F50 */  addiu   $t8, $t8, %lo(func_80A18F50) ## $t8 = 80A18F50
/* 02B30 80A1A040 11E2001F */  beq     $t7, $v0, .L80A1A0C0       
/* 02B34 80A1A044 00000000 */  nop
/* 02B38 80A1A048 1302000C */  beq     $t8, $v0, .L80A1A07C       
/* 02B3C 80A1A04C 8FB90030 */  lw      $t9, 0x0030($sp)           
/* 02B40 80A1A050 1322000A */  beq     $t9, $v0, .L80A1A07C       
/* 02B44 80A1A054 00000000 */  nop
/* 02B48 80A1A058 96080110 */  lhu     $t0, 0x0110($s0)           ## 00000110
/* 02B4C 80A1A05C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02B50 80A1A060 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 02B54 80A1A064 15000005 */  bne     $t0, $zero, .L80A1A07C     
/* 02B58 80A1A068 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 02B5C 80A1A06C 00812821 */  addu    $a1, $a0, $at              
/* 02B60 80A1A070 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 02B64 80A1A074 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 02B68 80A1A078 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
.L80A1A07C:
/* 02B6C 80A1A07C 3C0A80A2 */  lui     $t2, %hi(func_80A196DC)    ## $t2 = 80A20000
/* 02B70 80A1A080 254A96DC */  addiu   $t2, $t2, %lo(func_80A196DC) ## $t2 = 80A196DC
/* 02B74 80A1A084 15420008 */  bne     $t2, $v0, .L80A1A0A8       
/* 02B78 80A1A088 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02B7C 80A1A08C C6080164 */  lwc1    $f8, 0x0164($s0)           ## 00000164
/* 02B80 80A1A090 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 02B84 80A1A094 00000000 */  nop
/* 02B88 80A1A098 460A403C */  c.lt.s  $f8, $f10                  
/* 02B8C 80A1A09C 00000000 */  nop
/* 02B90 80A1A0A0 45000007 */  bc1f    .L80A1A0C0                 
/* 02B94 80A1A0A4 00000000 */  nop
.L80A1A0A8:
/* 02B98 80A1A0A8 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 02B9C 80A1A0AC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02BA0 80A1A0B0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 02BA4 80A1A0B4 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 02BA8 80A1A0B8 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 02BAC 80A1A0BC 00812821 */  addu    $a1, $a0, $at              
.L80A1A0C0:
/* 02BB0 80A1A0C0 3C0180A2 */  lui     $at, %hi(D_80A1A5B8)       ## $at = 80A20000
/* 02BB4 80A1A0C4 C432A5B8 */  lwc1    $f18, %lo(D_80A1A5B8)($at) 
/* 02BB8 80A1A0C8 C6100050 */  lwc1    $f16, 0x0050($s0)          ## 00000050
/* 02BBC 80A1A0CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02BC0 80A1A0D0 46128102 */  mul.s   $f4, $f16, $f18            
/* 02BC4 80A1A0D4 44052000 */  mfc1    $a1, $f4                   
/* 02BC8 80A1A0D8 0C00B56E */  jal     Actor_SetHeight
              
/* 02BCC 80A1A0DC 00000000 */  nop
/* 02BD0 80A1A0E0 920C02DC */  lbu     $t4, 0x02DC($s0)           ## 000002DC
/* 02BD4 80A1A0E4 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 02BD8 80A1A0E8 5581000B */  bnel    $t4, $at, .L80A1A118       
/* 02BDC 80A1A0EC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02BE0 80A1A0F0 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
/* 02BE4 80A1A0F4 240E0028 */  addiu   $t6, $zero, 0x0028         ## $t6 = 00000028
/* 02BE8 80A1A0F8 10400003 */  beq     $v0, $zero, .L80A1A108     
/* 02BEC 80A1A0FC 244DFFFF */  addiu   $t5, $v0, 0xFFFF           ## $t5 = FFFFFFFF
/* 02BF0 80A1A100 A60D0196 */  sh      $t5, 0x0196($s0)           ## 00000196
/* 02BF4 80A1A104 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
.L80A1A108:
/* 02BF8 80A1A108 54400003 */  bnel    $v0, $zero, .L80A1A118     
/* 02BFC 80A1A10C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02C00 80A1A110 A60E0196 */  sh      $t6, 0x0196($s0)           ## 00000196
.L80A1A114:
/* 02C04 80A1A114 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A1A118:
/* 02C08 80A1A118 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02C0C 80A1A11C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 02C10 80A1A120 03E00008 */  jr      $ra                        
/* 02C14 80A1A124 00000000 */  nop
