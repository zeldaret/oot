.rdata
glabel D_80B90F10
    .asciz "\x1b[41;37m"
    .balign 4

glabel D_80B90F1C
    .asciz "パスデータが無い？(%s %d)(arg_data %xH)\n"
    .balign 4

glabel D_80B90F48
    .asciz "../z_obj_bean.c"
    .balign 4

glabel D_80B90F58
    .asciz "\x1b[m"
    .balign 4

glabel D_80B90F5C
    .asciz "\x1b[41;37m"
    .balign 4

glabel D_80B90F68
    .asciz "パスデータ数が不正(%s %d)(arg_data %xH)\n"
    .balign 4

glabel D_80B90F94
    .asciz "../z_obj_bean.c"
    .balign 4

glabel D_80B90FA4
    .asciz "\x1b[m"
    .balign 4

glabel D_80B90FA8
    .asciz "(魔法の豆の木リフト)(arg_data 0x%04x)\n"
    .balign 4

.text
glabel ObjBean_Init
/* 00FFC 80B8FA7C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01000 80B8FA80 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01004 80B8FA84 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01008 80B8FA88 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0100C 80B8FA8C 3C0580B9 */  lui     $a1, %hi(D_80B90EA8)       ## $a1 = 80B90000
/* 01010 80B8FA90 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01014 80B8FA94 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 01018 80B8FA98 24A50EA8 */  addiu   $a1, $a1, %lo(D_80B90EA8)  ## $a1 = 80B90EA8
/* 0101C 80B8FA9C 3C0E8016 */  lui     $t6, %hi(gSaveContext+4)
/* 01020 80B8FAA0 8DCEE664 */  lw      $t6, %lo(gSaveContext+4)($t6)
/* 01024 80B8FAA4 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 01028 80B8FAA8 24020011 */  addiu   $v0, $zero, 0x0011         ## $v0 = 00000011
/* 0102C 80B8FAAC 11C00003 */  beq     $t6, $zero, .L80B8FABC     
/* 01030 80B8FAB0 00000000 */  nop
/* 01034 80B8FAB4 10000001 */  beq     $zero, $zero, .L80B8FABC   
/* 01038 80B8FAB8 24020005 */  addiu   $v0, $zero, 0x0005         ## $v0 = 00000005
.L80B8FABC:
/* 0103C 80B8FABC 54410068 */  bnel    $v0, $at, .L80B8FC60       
/* 01040 80B8FAC0 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 01044 80B8FAC4 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 01048 80B8FAC8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0104C 80B8FACC 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 01050 80B8FAD0 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 01054 80B8FAD4 14400006 */  bne     $v0, $zero, .L80B8FAF0     
/* 01058 80B8FAD8 3C0F8016 */  lui     $t7, %hi(gGameInfo)
/* 0105C 80B8FADC 8DEFFA90 */  lw      $t7, %lo(gGameInfo)($t7)
/* 01060 80B8FAE0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01064 80B8FAE4 85F81156 */  lh      $t8, 0x1156($t7)           ## 80161156
/* 01068 80B8FAE8 17010058 */  bne     $t8, $at, .L80B8FC4C       
/* 0106C 80B8FAEC 00000000 */  nop
.L80B8FAF0:
/* 01070 80B8FAF0 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 01074 80B8FAF4 2401001F */  addiu   $at, $zero, 0x001F         ## $at = 0000001F
/* 01078 80B8FAF8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0107C 80B8FAFC 00021203 */  sra     $v0, $v0,  8               
/* 01080 80B8FB00 3042001F */  andi    $v0, $v0, 0x001F           ## $v0 = 00000000
/* 01084 80B8FB04 14410012 */  bne     $v0, $at, .L80B8FB50       
/* 01088 80B8FB08 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 0108C 80B8FB0C 3C0480B9 */  lui     $a0, %hi(D_80B90F10)       ## $a0 = 80B90000
/* 01090 80B8FB10 0C00084C */  jal     osSyncPrintf
              
/* 01094 80B8FB14 24840F10 */  addiu   $a0, $a0, %lo(D_80B90F10)  ## $a0 = 80B90F10
/* 01098 80B8FB18 3C0480B9 */  lui     $a0, %hi(D_80B90F1C)       ## $a0 = 80B90000
/* 0109C 80B8FB1C 3C0580B9 */  lui     $a1, %hi(D_80B90F48)       ## $a1 = 80B90000
/* 010A0 80B8FB20 24A50F48 */  addiu   $a1, $a1, %lo(D_80B90F48)  ## $a1 = 80B90F48
/* 010A4 80B8FB24 24840F1C */  addiu   $a0, $a0, %lo(D_80B90F1C)  ## $a0 = 80B90F1C
/* 010A8 80B8FB28 2406038D */  addiu   $a2, $zero, 0x038D         ## $a2 = 0000038D
/* 010AC 80B8FB2C 0C00084C */  jal     osSyncPrintf
              
/* 010B0 80B8FB30 8607001C */  lh      $a3, 0x001C($s0)           ## 0000001C
/* 010B4 80B8FB34 3C0480B9 */  lui     $a0, %hi(D_80B90F58)       ## $a0 = 80B90000
/* 010B8 80B8FB38 0C00084C */  jal     osSyncPrintf
              
/* 010BC 80B8FB3C 24840F58 */  addiu   $a0, $a0, %lo(D_80B90F58)  ## $a0 = 80B90F58
/* 010C0 80B8FB40 0C00B55C */  jal     Actor_Kill
              
/* 010C4 80B8FB44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 010C8 80B8FB48 1000005E */  beq     $zero, $zero, .L80B8FCC4   
/* 010CC 80B8FB4C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B8FB50:
/* 010D0 80B8FB50 0325C821 */  addu    $t9, $t9, $a1              
/* 010D4 80B8FB54 8F391E08 */  lw      $t9, 0x1E08($t9)           ## 00001E08
/* 010D8 80B8FB58 000240C0 */  sll     $t0, $v0,  3               
/* 010DC 80B8FB5C 3C0480B9 */  lui     $a0, %hi(D_80B90F5C)       ## $a0 = 80B90000
/* 010E0 80B8FB60 03284821 */  addu    $t1, $t9, $t0              
/* 010E4 80B8FB64 912A0000 */  lbu     $t2, 0x0000($t1)           ## 00000000
/* 010E8 80B8FB68 29410003 */  slti    $at, $t2, 0x0003           
/* 010EC 80B8FB6C 10200011 */  beq     $at, $zero, .L80B8FBB4     
/* 010F0 80B8FB70 00000000 */  nop
/* 010F4 80B8FB74 0C00084C */  jal     osSyncPrintf
              
/* 010F8 80B8FB78 24840F5C */  addiu   $a0, $a0, %lo(D_80B90F5C)  ## $a0 = 80B90F5C
/* 010FC 80B8FB7C 3C0480B9 */  lui     $a0, %hi(D_80B90F68)       ## $a0 = 80B90000
/* 01100 80B8FB80 3C0580B9 */  lui     $a1, %hi(D_80B90F94)       ## $a1 = 80B90000
/* 01104 80B8FB84 24A50F94 */  addiu   $a1, $a1, %lo(D_80B90F94)  ## $a1 = 80B90F94
/* 01108 80B8FB88 24840F68 */  addiu   $a0, $a0, %lo(D_80B90F68)  ## $a0 = 80B90F68
/* 0110C 80B8FB8C 24060399 */  addiu   $a2, $zero, 0x0399         ## $a2 = 00000399
/* 01110 80B8FB90 0C00084C */  jal     osSyncPrintf
              
/* 01114 80B8FB94 8607001C */  lh      $a3, 0x001C($s0)           ## 0000001C
/* 01118 80B8FB98 3C0480B9 */  lui     $a0, %hi(D_80B90FA4)       ## $a0 = 80B90000
/* 0111C 80B8FB9C 0C00084C */  jal     osSyncPrintf
              
/* 01120 80B8FBA0 24840FA4 */  addiu   $a0, $a0, %lo(D_80B90FA4)  ## $a0 = 80B90FA4
/* 01124 80B8FBA4 0C00B55C */  jal     Actor_Kill
              
/* 01128 80B8FBA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0112C 80B8FBAC 10000045 */  beq     $zero, $zero, .L80B8FCC4   
/* 01130 80B8FBB0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B8FBB4:
/* 01134 80B8FBB4 0C2E3BD1 */  jal     func_80B8EF44              
/* 01138 80B8FBB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0113C 80B8FBBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01140 80B8FBC0 0C2E3BE0 */  jal     func_80B8EF80              
/* 01144 80B8FBC4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01148 80B8FBC8 0C2E3BBF */  jal     func_80B8EEFC              
/* 0114C 80B8FBCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01150 80B8FBD0 0C2E419E */  jal     func_80B90678              
/* 01154 80B8FBD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01158 80B8FBD8 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 0115C 80B8FBDC 24C605DC */  addiu   $a2, $a2, 0x05DC           ## $a2 = 060005DC
/* 01160 80B8FBE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01164 80B8FBE4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01168 80B8FBE8 0C2E3AB6 */  jal     func_80B8EAD8              
/* 0116C 80B8FBEC 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
/* 01170 80B8FBF0 920B01F7 */  lbu     $t3, 0x01F7($s0)           ## 000001F7
/* 01174 80B8FBF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01178 80B8FBF8 356C0020 */  ori     $t4, $t3, 0x0020           ## $t4 = 00000020
/* 0117C 80B8FBFC A20C01F7 */  sb      $t4, 0x01F7($s0)           ## 000001F7
/* 01180 80B8FC00 0C2E3AA0 */  jal     func_80B8EA80              
/* 01184 80B8FC04 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01188 80B8FC08 920D01F7 */  lbu     $t5, 0x01F7($s0)           ## 000001F7
/* 0118C 80B8FC0C 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 01190 80B8FC10 3C07410C */  lui     $a3, 0x410C                ## $a3 = 410C0000
/* 01194 80B8FC14 35AE0010 */  ori     $t6, $t5, 0x0010           ## $t6 = 00000010
/* 01198 80B8FC18 A20E01F7 */  sb      $t6, 0x01F7($s0)           ## 000001F7
/* 0119C 80B8FC1C 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 410CCCCD
/* 011A0 80B8FC20 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 011A4 80B8FC24 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 011A8 80B8FC28 0C00AC78 */  jal     ActorShape_Init
              
/* 011AC 80B8FC2C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 011B0 80B8FC30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011B4 80B8FC34 0C2E3AD8 */  jal     func_80B8EB60              
/* 011B8 80B8FC38 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 011BC 80B8FC3C 860F0018 */  lh      $t7, 0x0018($s0)           ## 00000018
/* 011C0 80B8FC40 31F80003 */  andi    $t8, $t7, 0x0003           ## $t8 = 00000000
/* 011C4 80B8FC44 10000016 */  beq     $zero, $zero, .L80B8FCA0   
/* 011C8 80B8FC48 A21801F6 */  sb      $t8, 0x01F6($s0)           ## 000001F6
.L80B8FC4C:
/* 011CC 80B8FC4C 0C00B55C */  jal     Actor_Kill
              
/* 011D0 80B8FC50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011D4 80B8FC54 1000001B */  beq     $zero, $zero, .L80B8FCC4   
/* 011D8 80B8FC58 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 011DC 80B8FC5C 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
.L80B8FC60:
/* 011E0 80B8FC60 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 011E4 80B8FC64 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 011E8 80B8FC68 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 011EC 80B8FC6C 14400006 */  bne     $v0, $zero, .L80B8FC88     
/* 011F0 80B8FC70 3C198016 */  lui     $t9, %hi(gGameInfo)
/* 011F4 80B8FC74 8F39FA90 */  lw      $t9, %lo(gGameInfo)($t9)
/* 011F8 80B8FC78 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 011FC 80B8FC7C 87281156 */  lh      $t0, 0x1156($t9)           ## 80161156
/* 01200 80B8FC80 15010005 */  bne     $t0, $at, .L80B8FC98       
/* 01204 80B8FC84 00000000 */  nop
.L80B8FC88:
/* 01208 80B8FC88 0C2E4044 */  jal     func_80B90110              
/* 0120C 80B8FC8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01210 80B8FC90 10000004 */  beq     $zero, $zero, .L80B8FCA4   
/* 01214 80B8FC94 A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
.L80B8FC98:
/* 01218 80B8FC98 0C2E3F54 */  jal     func_80B8FD50              
/* 0121C 80B8FC9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B8FCA0:
/* 01220 80B8FCA0 A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
.L80B8FCA4:
/* 01224 80B8FCA4 860200B8 */  lh      $v0, 0x00B8($s0)           ## 000000B8
/* 01228 80B8FCA8 3C0480B9 */  lui     $a0, %hi(D_80B90FA8)       ## $a0 = 80B90000
/* 0122C 80B8FCAC 24840FA8 */  addiu   $a0, $a0, %lo(D_80B90FA8)  ## $a0 = 80B90FA8
/* 01230 80B8FCB0 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 01234 80B8FCB4 A6020018 */  sh      $v0, 0x0018($s0)           ## 00000018
/* 01238 80B8FCB8 0C00084C */  jal     osSyncPrintf
              
/* 0123C 80B8FCBC A6020034 */  sh      $v0, 0x0034($s0)           ## 00000034
/* 01240 80B8FCC0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B8FCC4:
/* 01244 80B8FCC4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01248 80B8FCC8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0124C 80B8FCCC 03E00008 */  jr      $ra                        
/* 01250 80B8FCD0 00000000 */  nop
