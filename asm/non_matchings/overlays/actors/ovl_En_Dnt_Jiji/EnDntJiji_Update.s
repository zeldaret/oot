.rdata
glabel D_809F3090
    .asciz "\x1b[33m☆☆☆☆☆ 時間 ☆☆☆☆☆ %d\n\x1b[m"
    .balign 4

.text
glabel EnDntJiji_Update
/* 01128 809F2C08 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0112C 809F2C0C AFA5003C */  sw      $a1, 0x003C($sp)           
/* 01130 809F2C10 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01134 809F2C14 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01138 809F2C18 3C053C75 */  lui     $a1, 0x3C75                ## $a1 = 3C750000
/* 0113C 809F2C1C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01140 809F2C20 0C00B58B */  jal     Actor_SetScale
              
/* 01144 809F2C24 34A5C28F */  ori     $a1, $a1, 0xC28F           ## $a1 = 3C75C28F
/* 01148 809F2C28 860E0246 */  lh      $t6, 0x0246($s0)           ## 00000246
/* 0114C 809F2C2C 3C188016 */  lui     $t8, %hi(gGameInfo)
/* 01150 809F2C30 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 01154 809F2C34 A60F0246 */  sh      $t7, 0x0246($s0)           ## 00000246
/* 01158 809F2C38 8F18FA90 */  lw      $t8, %lo(gGameInfo)($t8)
/* 0115C 809F2C3C 871912D4 */  lh      $t9, 0x12D4($t8)           ## 801612D4
/* 01160 809F2C40 13200004 */  beq     $t9, $zero, .L809F2C54     
/* 01164 809F2C44 3C04809F */  lui     $a0, %hi(D_809F3090)       ## $a0 = 809F0000
/* 01168 809F2C48 24843090 */  addiu   $a0, $a0, %lo(D_809F3090)  ## $a0 = 809F3090
/* 0116C 809F2C4C 0C00084C */  jal     osSyncPrintf
              
/* 01170 809F2C50 86050240 */  lh      $a1, 0x0240($s0)           ## 00000240
.L809F2C54:
/* 01174 809F2C54 86020240 */  lh      $v0, 0x0240($s0)           ## 00000240
/* 01178 809F2C58 28410002 */  slti    $at, $v0, 0x0002           
/* 0117C 809F2C5C 54200005 */  bnel    $at, $zero, .L809F2C74     
/* 01180 809F2C60 86020242 */  lh      $v0, 0x0242($s0)           ## 00000242
/* 01184 809F2C64 10400002 */  beq     $v0, $zero, .L809F2C70     
/* 01188 809F2C68 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 0118C 809F2C6C A6080240 */  sh      $t0, 0x0240($s0)           ## 00000240
.L809F2C70:
/* 01190 809F2C70 86020242 */  lh      $v0, 0x0242($s0)           ## 00000242
.L809F2C74:
/* 01194 809F2C74 10400002 */  beq     $v0, $zero, .L809F2C80     
/* 01198 809F2C78 2449FFFF */  addiu   $t1, $v0, 0xFFFF           ## $t1 = FFFFFFFF
/* 0119C 809F2C7C A6090242 */  sh      $t1, 0x0242($s0)           ## 00000242
.L809F2C80:
/* 011A0 809F2C80 86020244 */  lh      $v0, 0x0244($s0)           ## 00000244
/* 011A4 809F2C84 10400002 */  beq     $v0, $zero, .L809F2C90     
/* 011A8 809F2C88 244AFFFF */  addiu   $t2, $v0, 0xFFFF           ## $t2 = FFFFFFFF
/* 011AC 809F2C8C A60A0244 */  sh      $t2, 0x0244($s0)           ## 00000244
.L809F2C90:
/* 011B0 809F2C90 8602024E */  lh      $v0, 0x024E($s0)           ## 0000024E
/* 011B4 809F2C94 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 011B8 809F2C98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011BC 809F2C9C 50400019 */  beql    $v0, $zero, .L809F2D04     
/* 011C0 809F2CA0 960F010E */  lhu     $t7, 0x010E($s0)           ## 0000010E
/* 011C4 809F2CA4 10430009 */  beq     $v0, $v1, .L809F2CCC       
/* 011C8 809F2CA8 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 011CC 809F2CAC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 011D0 809F2CB0 1041000C */  beq     $v0, $at, .L809F2CE4       
/* 011D4 809F2CB4 3C0D809F */  lui     $t5, %hi(func_809F2254)    ## $t5 = 809F0000
/* 011D8 809F2CB8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 011DC 809F2CBC 1041000E */  beq     $v0, $at, .L809F2CF8       
/* 011E0 809F2CC0 3C0E809F */  lui     $t6, %hi(func_809F29E0)    ## $t6 = 809F0000
/* 011E4 809F2CC4 1000000F */  beq     $zero, $zero, .L809F2D04   
/* 011E8 809F2CC8 960F010E */  lhu     $t7, 0x010E($s0)           ## 0000010E
.L809F2CCC:
/* 011EC 809F2CCC 3C0C809F */  lui     $t4, %hi(func_809F1DA8)    ## $t4 = 809F0000
/* 011F0 809F2CD0 258C1DA8 */  addiu   $t4, $t4, %lo(func_809F1DA8) ## $t4 = 809F1DA8
/* 011F4 809F2CD4 A20B023C */  sb      $t3, 0x023C($s0)           ## 0000023C
/* 011F8 809F2CD8 A603023E */  sh      $v1, 0x023E($s0)           ## 0000023E
/* 011FC 809F2CDC 10000008 */  beq     $zero, $zero, .L809F2D00   
/* 01200 809F2CE0 AE0C022C */  sw      $t4, 0x022C($s0)           ## 0000022C
.L809F2CE4:
/* 01204 809F2CE4 25AD2254 */  addiu   $t5, $t5, %lo(func_809F2254) ## $t5 = 809F2254
/* 01208 809F2CE8 A200023C */  sb      $zero, 0x023C($s0)         ## 0000023C
/* 0120C 809F2CEC A600023E */  sh      $zero, 0x023E($s0)         ## 0000023E
/* 01210 809F2CF0 10000003 */  beq     $zero, $zero, .L809F2D00   
/* 01214 809F2CF4 AE0D022C */  sw      $t5, 0x022C($s0)           ## 0000022C
.L809F2CF8:
/* 01218 809F2CF8 25CE29E0 */  addiu   $t6, $t6, %lo(func_809F29E0) ## $t6 = 809F29E0
/* 0121C 809F2CFC AE0E022C */  sw      $t6, 0x022C($s0)           ## 0000022C
.L809F2D00:
/* 01220 809F2D00 960F010E */  lhu     $t7, 0x010E($s0)           ## 0000010E
.L809F2D04:
/* 01224 809F2D04 51E00004 */  beql    $t7, $zero, .L809F2D18     
/* 01228 809F2D08 8618024E */  lh      $t8, 0x024E($s0)           ## 0000024E
/* 0122C 809F2D0C 0C00B56E */  jal     Actor_SetHeight
              
/* 01230 809F2D10 3C0541F0 */  lui     $a1, 0x41F0                ## $a1 = 41F00000
/* 01234 809F2D14 8618024E */  lh      $t8, 0x024E($s0)           ## 0000024E
.L809F2D18:
/* 01238 809F2D18 53000003 */  beql    $t8, $zero, .L809F2D28     
/* 0123C 809F2D1C 86190244 */  lh      $t9, 0x0244($s0)           ## 00000244
/* 01240 809F2D20 A600024E */  sh      $zero, 0x024E($s0)         ## 0000024E
/* 01244 809F2D24 86190244 */  lh      $t9, 0x0244($s0)           ## 00000244
.L809F2D28:
/* 01248 809F2D28 57200011 */  bnel    $t9, $zero, .L809F2D70     
/* 0124C 809F2D2C 8E19022C */  lw      $t9, 0x022C($s0)           ## 0000022C
/* 01250 809F2D30 8608024C */  lh      $t0, 0x024C($s0)           ## 0000024C
/* 01254 809F2D34 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 01258 809F2D38 A609024C */  sh      $t1, 0x024C($s0)           ## 0000024C
/* 0125C 809F2D3C 860A024C */  lh      $t2, 0x024C($s0)           ## 0000024C
/* 01260 809F2D40 29410003 */  slti    $at, $t2, 0x0003           
/* 01264 809F2D44 14200009 */  bne     $at, $zero, .L809F2D6C     
/* 01268 809F2D48 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 0126C 809F2D4C 44816000 */  mtc1    $at, $f12                  ## $f12 = 60.00
/* 01270 809F2D50 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 01274 809F2D54 A600024C */  sh      $zero, 0x024C($s0)         ## 0000024C
/* 01278 809F2D58 4600010D */  trunc.w.s $f4, $f0                   
/* 0127C 809F2D5C 440E2000 */  mfc1    $t6, $f4                   
/* 01280 809F2D60 00000000 */  nop
/* 01284 809F2D64 25CF0014 */  addiu   $t7, $t6, 0x0014           ## $t7 = 00000014
/* 01288 809F2D68 A60F0244 */  sh      $t7, 0x0244($s0)           ## 00000244
.L809F2D6C:
/* 0128C 809F2D6C 8E19022C */  lw      $t9, 0x022C($s0)           ## 0000022C
.L809F2D70:
/* 01290 809F2D70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01294 809F2D74 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 01298 809F2D78 0320F809 */  jalr    $ra, $t9                   
/* 0129C 809F2D7C 00000000 */  nop
/* 012A0 809F2D80 0C00B638 */  jal     Actor_MoveForward
              
/* 012A4 809F2D84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012A8 809F2D88 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 012AC 809F2D8C 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 012B0 809F2D90 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 012B4 809F2D94 44813000 */  mtc1    $at, $f6                   ## $f6 = 60.00
/* 012B8 809F2D98 2418001D */  addiu   $t8, $zero, 0x001D         ## $t8 = 0000001D
/* 012BC 809F2D9C 44060000 */  mfc1    $a2, $f0                   
/* 012C0 809F2DA0 44070000 */  mfc1    $a3, $f0                   
/* 012C4 809F2DA4 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 012C8 809F2DA8 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 012CC 809F2DAC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 012D0 809F2DB0 0C00B92D */  jal     func_8002E4B4              
/* 012D4 809F2DB4 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 012D8 809F2DB8 2606025C */  addiu   $a2, $s0, 0x025C           ## $a2 = 0000025C
/* 012DC 809F2DBC 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000025C
/* 012E0 809F2DC0 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 012E4 809F2DC4 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 012E8 809F2DC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012EC 809F2DCC 9208023C */  lbu     $t0, 0x023C($s0)           ## 0000023C
/* 012F0 809F2DD0 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 012F4 809F2DD4 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 012F8 809F2DD8 11000004 */  beq     $t0, $zero, .L809F2DEC     
/* 012FC 809F2DDC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01300 809F2DE0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01304 809F2DE4 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 01308 809F2DE8 00812821 */  addu    $a1, $a0, $at              
.L809F2DEC:
/* 0130C 809F2DEC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01310 809F2DF0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01314 809F2DF4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01318 809F2DF8 03E00008 */  jr      $ra                        
/* 0131C 809F2DFC 00000000 */  nop
