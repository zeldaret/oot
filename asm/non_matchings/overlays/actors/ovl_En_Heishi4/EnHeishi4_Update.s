glabel EnHeishi4_Update
/* 00BE4 80A56CB4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00BE8 80A56CB8 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00BEC 80A56CBC AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00BF0 80A56CC0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00BF4 80A56CC4 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00BF8 80A56CC8 C484026C */  lwc1    $f4, 0x026C($a0)           ## 0000026C
/* 00BFC 80A56CCC C4860270 */  lwc1    $f6, 0x0270($a0)           ## 00000270
/* 00C00 80A56CD0 C4880274 */  lwc1    $f8, 0x0274($a0)           ## 00000274
/* 00C04 80A56CD4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C08 80A56CD8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00C0C 80A56CDC E4840024 */  swc1    $f4, 0x0024($a0)           ## 00000024
/* 00C10 80A56CE0 E4860028 */  swc1    $f6, 0x0028($a0)           ## 00000028
/* 00C14 80A56CE4 E488002C */  swc1    $f8, 0x002C($a0)           ## 0000002C
/* 00C18 80A56CE8 8E050278 */  lw      $a1, 0x0278($s0)           ## 00000278
/* 00C1C 80A56CEC 0C00B56E */  jal     Actor_SetHeight
              
/* 00C20 80A56CF0 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 00C24 80A56CF4 860E0280 */  lh      $t6, 0x0280($s0)           ## 00000280
/* 00C28 80A56CF8 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00C2C 80A56CFC 8FA2002C */  lw      $v0, 0x002C($sp)           
/* 00C30 80A56D00 11C10021 */  beq     $t6, $at, .L80A56D88       
/* 00C34 80A56D04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C38 80A56D08 8C580024 */  lw      $t8, 0x0024($v0)           ## 00000024
/* 00C3C 80A56D0C 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 00C40 80A56D10 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00C44 80A56D14 AE1802A4 */  sw      $t8, 0x02A4($s0)           ## 000002A4
/* 00C48 80A56D18 8C4F0028 */  lw      $t7, 0x0028($v0)           ## 00000028
/* 00C4C 80A56D1C 2605028C */  addiu   $a1, $s0, 0x028C           ## $a1 = 0000028C
/* 00C50 80A56D20 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00C54 80A56D24 AE0F02A8 */  sw      $t7, 0x02A8($s0)           ## 000002A8
/* 00C58 80A56D28 8C58002C */  lw      $t8, 0x002C($v0)           ## 0000002C
/* 00C5C 80A56D2C AE1802AC */  sw      $t8, 0x02AC($s0)           ## 000002AC
/* 00C60 80A56D30 8F39E664 */  lw      $t9, -0x199C($t9)          ## 8015E664
/* 00C64 80A56D34 13200006 */  beq     $t9, $zero, .L80A56D50     
/* 00C68 80A56D38 00000000 */  nop
/* 00C6C 80A56D3C C44A0028 */  lwc1    $f10, 0x0028($v0)          ## 00000028
/* 00C70 80A56D40 44818000 */  mtc1    $at, $f16                  ## $f16 = 10.00
/* 00C74 80A56D44 00000000 */  nop
/* 00C78 80A56D48 46105481 */  sub.s   $f18, $f10, $f16           
/* 00C7C 80A56D4C E61202A8 */  swc1    $f18, 0x02A8($s0)          ## 000002A8
.L80A56D50:
/* 00C80 80A56D50 0C00D285 */  jal     func_80034A14              
/* 00C84 80A56D54 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 00C88 80A56D58 8A090294 */  lwl     $t1, 0x0294($s0)           ## 00000294
/* 00C8C 80A56D5C 8A0B029A */  lwl     $t3, 0x029A($s0)           ## 0000029A
/* 00C90 80A56D60 9A090297 */  lwr     $t1, 0x0297($s0)           ## 00000297
/* 00C94 80A56D64 9A0B029D */  lwr     $t3, 0x029D($s0)           ## 0000029D
/* 00C98 80A56D68 AA090260 */  swl     $t1, 0x0260($s0)           ## 00000260
/* 00C9C 80A56D6C AA0B0266 */  swl     $t3, 0x0266($s0)           ## 00000266
/* 00CA0 80A56D70 BA090263 */  swr     $t1, 0x0263($s0)           ## 00000263
/* 00CA4 80A56D74 BA0B0269 */  swr     $t3, 0x0269($s0)           ## 00000269
/* 00CA8 80A56D78 96090298 */  lhu     $t1, 0x0298($s0)           ## 00000298
/* 00CAC 80A56D7C 960B029E */  lhu     $t3, 0x029E($s0)           ## 0000029E
/* 00CB0 80A56D80 A6090264 */  sh      $t1, 0x0264($s0)           ## 00000264
/* 00CB4 80A56D84 A60B026A */  sh      $t3, 0x026A($s0)           ## 0000026A
.L80A56D88:
/* 00CB8 80A56D88 860C027E */  lh      $t4, 0x027E($s0)           ## 0000027E
/* 00CBC 80A56D8C 8E19025C */  lw      $t9, 0x025C($s0)           ## 0000025C
/* 00CC0 80A56D90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CC4 80A56D94 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 00CC8 80A56D98 A60D027E */  sh      $t5, 0x027E($s0)           ## 0000027E
/* 00CCC 80A56D9C 0320F809 */  jalr    $ra, $t9                   
/* 00CD0 80A56DA0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00CD4 80A56DA4 0C00B638 */  jal     Actor_MoveForward
              
/* 00CD8 80A56DA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CDC 80A56DAC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00CE0 80A56DB0 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 00CE4 80A56DB4 240E001D */  addiu   $t6, $zero, 0x001D         ## $t6 = 0000001D
/* 00CE8 80A56DB8 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00CEC 80A56DBC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00CF0 80A56DC0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00CF4 80A56DC4 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 00CF8 80A56DC8 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 00CFC 80A56DCC 0C00B92D */  jal     func_8002E4B4              
/* 00D00 80A56DD0 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00D04 80A56DD4 260602BC */  addiu   $a2, $s0, 0x02BC           ## $a2 = 000002BC
/* 00D08 80A56DD8 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000002BC
/* 00D0C 80A56DDC AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00D10 80A56DE0 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00D14 80A56DE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D18 80A56DE8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00D1C 80A56DEC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00D20 80A56DF0 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00D24 80A56DF4 02212821 */  addu    $a1, $s1, $at              
/* 00D28 80A56DF8 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 00D2C 80A56DFC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00D30 80A56E00 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00D34 80A56E04 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00D38 80A56E08 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00D3C 80A56E0C 03E00008 */  jr      $ra                        
/* 00D40 80A56E10 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
