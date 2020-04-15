glabel EnKakasi_Update
/* 00ADC 80A8FC4C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00AE0 80A8FC50 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00AE4 80A8FC54 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00AE8 80A8FC58 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00AEC 80A8FC5C 889900B4 */  lwl     $t9, 0x00B4($a0)           ## 000000B4
/* 00AF0 80A8FC60 989900B7 */  lwr     $t9, 0x00B7($a0)           ## 000000B7
/* 00AF4 80A8FC64 848E0198 */  lh      $t6, 0x0198($a0)           ## 00000198
/* 00AF8 80A8FC68 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AFC 80A8FC6C A8990030 */  swl     $t9, 0x0030($a0)           ## 00000030
/* 00B00 80A8FC70 B8990033 */  swr     $t9, 0x0033($a0)           ## 00000033
/* 00B04 80A8FC74 949900B8 */  lhu     $t9, 0x00B8($a0)           ## 000000B8
/* 00B08 80A8FC78 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00B0C 80A8FC7C A48F0198 */  sh      $t7, 0x0198($a0)           ## 00000198
/* 00B10 80A8FC80 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 00B14 80A8FC84 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00B18 80A8FC88 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 00B1C 80A8FC8C A4990034 */  sh      $t9, 0x0034($a0)           ## 00000034
.L80A8FC90:
/* 00B20 80A8FC90 8444019C */  lh      $a0, 0x019C($v0)           ## 0000019C
/* 00B24 80A8FC94 24630002 */  addiu   $v1, $v1, 0x0002           ## $v1 = 00000002
/* 00B28 80A8FC98 10800002 */  beq     $a0, $zero, .L80A8FCA4     
/* 00B2C 80A8FC9C 2488FFFF */  addiu   $t0, $a0, 0xFFFF           ## $t0 = FFFFFFFF
/* 00B30 80A8FCA0 A448019C */  sh      $t0, 0x019C($v0)           ## 0000019C
.L80A8FCA4:
/* 00B34 80A8FCA4 1465FFFA */  bne     $v1, $a1, .L80A8FC90       
/* 00B38 80A8FCA8 24420002 */  addiu   $v0, $v0, 0x0002           ## $v0 = 00000002
/* 00B3C 80A8FCAC 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00B40 80A8FCB0 44810000 */  mtc1    $at, $f0                   ## $f0 = 60.00
/* 00B44 80A8FCB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B48 80A8FCB8 44050000 */  mfc1    $a1, $f0                   
/* 00B4C 80A8FCBC 0C00B56E */  jal     Actor_SetHeight
              
/* 00B50 80A8FCC0 E60001B4 */  swc1    $f0, 0x01B4($s0)           ## 000001B4
/* 00B54 80A8FCC4 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
/* 00B58 80A8FCC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B5C 80A8FCCC 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00B60 80A8FCD0 0320F809 */  jalr    $ra, $t9                   
/* 00B64 80A8FCD4 00000000 */  nop
/* 00B68 80A8FCD8 0C00B638 */  jal     Actor_MoveForward
              
/* 00B6C 80A8FCDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B70 80A8FCE0 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00B74 80A8FCE4 44810000 */  mtc1    $at, $f0                   ## $f0 = 50.00
/* 00B78 80A8FCE8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00B7C 80A8FCEC 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 00B80 80A8FCF0 2409001C */  addiu   $t1, $zero, 0x001C         ## $t1 = 0000001C
/* 00B84 80A8FCF4 44060000 */  mfc1    $a2, $f0                   
/* 00B88 80A8FCF8 44070000 */  mfc1    $a3, $f0                   
/* 00B8C 80A8FCFC AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00B90 80A8FD00 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00B94 80A8FD04 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00B98 80A8FD08 0C00B92D */  jal     func_8002E4B4              
/* 00B9C 80A8FD0C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00BA0 80A8FD10 260601BC */  addiu   $a2, $s0, 0x01BC           ## $a2 = 000001BC
/* 00BA4 80A8FD14 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000001BC
/* 00BA8 80A8FD18 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00BAC 80A8FD1C 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00BB0 80A8FD20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BB4 80A8FD24 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00BB8 80A8FD28 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00BBC 80A8FD2C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00BC0 80A8FD30 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00BC4 80A8FD34 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00BC8 80A8FD38 00812821 */  addu    $a1, $a0, $at              
/* 00BCC 80A8FD3C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00BD0 80A8FD40 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00BD4 80A8FD44 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00BD8 80A8FD48 03E00008 */  jr      $ra                        
/* 00BDC 80A8FD4C 00000000 */  nop
