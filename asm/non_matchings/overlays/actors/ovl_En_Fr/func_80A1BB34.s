glabel func_80A1BB34
/* 01194 80A1BB34 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01198 80A1BB38 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0119C 80A1BB3C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 011A0 80A1BB40 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 011A4 80A1BB44 8C8E036C */  lw      $t6, 0x036C($a0)           ## 0000036C
/* 011A8 80A1BB48 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 011AC 80A1BB4C 3C0180A2 */  lui     $at, %hi(D_80A1D29C)       ## $at = 80A20000
/* 011B0 80A1BB50 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 011B4 80A1BB54 AC8F036C */  sw      $t7, 0x036C($a0)           ## 0000036C
/* 011B8 80A1BB58 C426D29C */  lwc1    $f6, %lo(D_80A1D29C)($at)  
/* 011BC 80A1BB5C C60403A0 */  lwc1    $f4, 0x03A0($s0)           ## 000003A0
/* 011C0 80A1BB60 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 011C4 80A1BB64 46062202 */  mul.s   $f8, $f4, $f6              
/* 011C8 80A1BB68 44054000 */  mfc1    $a1, $f8                   
/* 011CC 80A1BB6C 0C00B58B */  jal     Actor_SetScale
              
/* 011D0 80A1BB70 00000000 */  nop
/* 011D4 80A1BB74 9218037D */  lbu     $t8, 0x037D($s0)           ## 0000037D
/* 011D8 80A1BB78 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 011DC 80A1BB7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011E0 80A1BB80 13000005 */  beq     $t8, $zero, .L80A1BB98     
/* 011E4 80A1BB84 00000000 */  nop
/* 011E8 80A1BB88 0C286E34 */  jal     func_80A1B8D0              
/* 011EC 80A1BB8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011F0 80A1BB90 1000001C */  beq     $zero, $zero, .L80A1BC04   
/* 011F4 80A1BB94 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A1BB98:
/* 011F8 80A1BB98 0C00B56E */  jal     Actor_SetHeight
              
/* 011FC 80A1BB9C 3C054120 */  lui     $a1, 0x4120                ## $a1 = 41200000
/* 01200 80A1BBA0 8E190374 */  lw      $t9, 0x0374($s0)           ## 00000374
/* 01204 80A1BBA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01208 80A1BBA8 0320F809 */  jalr    $ra, $t9                   
/* 0120C 80A1BBAC 00000000 */  nop
/* 01210 80A1BBB0 8E190354 */  lw      $t9, 0x0354($s0)           ## 00000354
/* 01214 80A1BBB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01218 80A1BBB8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0121C 80A1BBBC 0320F809 */  jalr    $ra, $t9                   
/* 01220 80A1BBC0 00000000 */  nop
/* 01224 80A1BBC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01228 80A1BBC8 0C286BDB */  jal     func_80A1AF6C              
/* 0122C 80A1BBCC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01230 80A1BBD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01234 80A1BBD4 0C286BFC */  jal     func_80A1AFF0              
/* 01238 80A1BBD8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0123C 80A1BBDC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01240 80A1BBE0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01244 80A1BBE4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01248 80A1BBE8 260402B0 */  addiu   $a0, $s0, 0x02B0           ## $a0 = 000002B0
/* 0124C 80A1BBEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01250 80A1BBF0 0C286E76 */  jal     func_80A1B9D8              
/* 01254 80A1BBF4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01258 80A1BBF8 0C00B638 */  jal     Actor_MoveForward
              
/* 0125C 80A1BBFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01260 80A1BC00 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A1BC04:
/* 01264 80A1BC04 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 01268 80A1BC08 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 0126C 80A1BC0C 03E00008 */  jr      $ra                        
/* 01270 80A1BC10 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


