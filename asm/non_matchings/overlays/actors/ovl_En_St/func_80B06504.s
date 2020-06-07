glabel func_80B06504
/* 01C74 80B06504 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01C78 80B06508 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01C7C 80B0650C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01C80 80B06510 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01C84 80B06514 848203CC */  lh      $v0, 0x03CC($a0)           ## 000003CC
/* 01C88 80B06518 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01C8C 80B0651C 10400009 */  beq     $v0, $zero, .L80B06544     
/* 01C90 80B06520 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01C94 80B06524 A48E03CC */  sh      $t6, 0x03CC($a0)           ## 000003CC
/* 01C98 80B06528 848F03CC */  lh      $t7, 0x03CC($a0)           ## 000003CC
/* 01C9C 80B0652C 3C0580B0 */  lui     $a1, %hi(D_80B07088)       ## $a1 = 80B00000
/* 01CA0 80B06530 24A57088 */  addiu   $a1, $a1, %lo(D_80B07088)  ## $a1 = 80B07088
/* 01CA4 80B06534 15E00003 */  bne     $t7, $zero, .L80B06544     
/* 01CA8 80B06538 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01CAC 80B0653C 0C00D3B0 */  jal     func_80034EC0              
/* 01CB0 80B06540 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
.L80B06544:
/* 01CB4 80B06544 860203C2 */  lh      $v0, 0x03C2($s0)           ## 000003C2
/* 01CB8 80B06548 10400009 */  beq     $v0, $zero, .L80B06570     
/* 01CBC 80B0654C 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 01CC0 80B06550 A61803C2 */  sh      $t8, 0x03C2($s0)           ## 000003C2
/* 01CC4 80B06554 861903C2 */  lh      $t9, 0x03C2($s0)           ## 000003C2
/* 01CC8 80B06558 3C0580B0 */  lui     $a1, %hi(D_80B07088)       ## $a1 = 80B00000
/* 01CCC 80B0655C 24A57088 */  addiu   $a1, $a1, %lo(D_80B07088)  ## $a1 = 80B07088
/* 01CD0 80B06560 17200003 */  bne     $t9, $zero, .L80B06570     
/* 01CD4 80B06564 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01CD8 80B06568 0C00D3B0 */  jal     func_80034EC0              
/* 01CDC 80B0656C 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
.L80B06570:
/* 01CE0 80B06570 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CE4 80B06574 0C2C1807 */  jal     func_80B0601C              
/* 01CE8 80B06578 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01CEC 80B0657C 5440000A */  bnel    $v0, $zero, .L80B065A8     
/* 01CF0 80B06580 860203D2 */  lh      $v0, 0x03D2($s0)           ## 000003D2
/* 01CF4 80B06584 0C2C13E8 */  jal     func_80B04FA0              
/* 01CF8 80B06588 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CFC 80B0658C 3C0580B0 */  lui     $a1, %hi(func_80B067F8)    ## $a1 = 80B00000
/* 01D00 80B06590 24A567F8 */  addiu   $a1, $a1, %lo(func_80B067F8) ## $a1 = 80B067F8
/* 01D04 80B06594 0C2C1224 */  jal     func_80B04890              
/* 01D08 80B06598 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D0C 80B0659C 10000013 */  beq     $zero, $zero, .L80B065EC   
/* 01D10 80B065A0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01D14 80B065A4 860203D2 */  lh      $v0, 0x03D2($s0)           ## 000003D2
.L80B065A8:
/* 01D18 80B065A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D1C 80B065AC 14400003 */  bne     $v0, $zero, .L80B065BC     
/* 01D20 80B065B0 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 01D24 80B065B4 10000003 */  beq     $zero, $zero, .L80B065C4   
/* 01D28 80B065B8 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80B065BC:
/* 01D2C 80B065BC A60803D2 */  sh      $t0, 0x03D2($s0)           ## 000003D2
/* 01D30 80B065C0 860303D2 */  lh      $v1, 0x03D2($s0)           ## 000003D2
.L80B065C4:
/* 01D34 80B065C4 54600006 */  bnel    $v1, $zero, .L80B065E0     
/* 01D38 80B065C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D3C 80B065CC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01D40 80B065D0 2405386A */  addiu   $a1, $zero, 0x386A         ## $a1 = 0000386A
/* 01D44 80B065D4 24090040 */  addiu   $t1, $zero, 0x0040         ## $t1 = 00000040
/* 01D48 80B065D8 A60903D2 */  sh      $t1, 0x03D2($s0)           ## 000003D2
/* 01D4C 80B065DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B065E0:
/* 01D50 80B065E0 0C2C17EC */  jal     func_80B05FB0              
/* 01D54 80B065E4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01D58 80B065E8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B065EC:
/* 01D5C 80B065EC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01D60 80B065F0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01D64 80B065F4 03E00008 */  jr      $ra                        
/* 01D68 80B065F8 00000000 */  nop
