.rdata
glabel D_80A343E4
    .asciz "\x1b[32m発見!!!!!!!!!!!!\n\x1b[m"
    .balign 4

glabel D_80A34400
    .asciz "\x1b[32m発見!!!!!!!!!!!!\n\x1b[m"
    .balign 4

.text
glabel EnGe2_Update
/* 01264 80A33E34 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01268 80A33E38 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0126C 80A33E3C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01270 80A33E40 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01274 80A33E44 0C28CEFA */  jal     func_80A33BE8              
/* 01278 80A33E48 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0127C 80A33E4C 960202F4 */  lhu     $v0, 0x02F4($s0)           ## 000002F4
/* 01280 80A33E50 304E0004 */  andi    $t6, $v0, 0x0004           ## $t6 = 00000000
/* 01284 80A33E54 15C00003 */  bne     $t6, $zero, .L80A33E64     
/* 01288 80A33E58 304F0008 */  andi    $t7, $v0, 0x0008           ## $t7 = 00000000
/* 0128C 80A33E5C 51E00009 */  beql    $t7, $zero, .L80A33E84     
/* 01290 80A33E60 9218015D */  lbu     $t8, 0x015D($s0)           ## 0000015D
.L80A33E64:
/* 01294 80A33E64 8E190308 */  lw      $t9, 0x0308($s0)           ## 00000308
/* 01298 80A33E68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0129C 80A33E6C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 012A0 80A33E70 0320F809 */  jalr    $ra, $t9                   
/* 012A4 80A33E74 00000000 */  nop
/* 012A8 80A33E78 1000004A */  beq     $zero, $zero, .L80A33FA4   
/* 012AC 80A33E7C 960902F4 */  lhu     $t1, 0x02F4($s0)           ## 000002F4
/* 012B0 80A33E80 9218015D */  lbu     $t8, 0x015D($s0)           ## 0000015D
.L80A33E84:
/* 012B4 80A33E84 33080002 */  andi    $t0, $t8, 0x0002           ## $t0 = 00000000
/* 012B8 80A33E88 51000022 */  beql    $t0, $zero, .L80A33F14     
/* 012BC 80A33E8C 8E190308 */  lw      $t9, 0x0308($s0)           ## 00000308
/* 012C0 80A33E90 8E020188 */  lw      $v0, 0x0188($s0)           ## 00000188
/* 012C4 80A33E94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012C8 80A33E98 1040000F */  beq     $v0, $zero, .L80A33ED8     
/* 012CC 80A33E9C 00000000 */  nop
/* 012D0 80A33EA0 8C490000 */  lw      $t1, 0x0000($v0)           ## 00000000
/* 012D4 80A33EA4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 012D8 80A33EA8 24060078 */  addiu   $a2, $zero, 0x0078         ## $a2 = 00000078
/* 012DC 80A33EAC 312A0080 */  andi    $t2, $t1, 0x0080           ## $t2 = 00000000
/* 012E0 80A33EB0 11400009 */  beq     $t2, $zero, .L80A33ED8     
/* 012E4 80A33EB4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 012E8 80A33EB8 240B0190 */  addiu   $t3, $zero, 0x0190         ## $t3 = 00000190
/* 012EC 80A33EBC AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 012F0 80A33EC0 0C00D09B */  jal     func_8003426C              
/* 012F4 80A33EC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012F8 80A33EC8 3C0C80A3 */  lui     $t4, %hi(func_80A3402C)    ## $t4 = 80A30000
/* 012FC 80A33ECC 258C402C */  addiu   $t4, $t4, %lo(func_80A3402C) ## $t4 = 80A3402C
/* 01300 80A33ED0 10000051 */  beq     $zero, $zero, .L80A34018   
/* 01304 80A33ED4 AE0C0130 */  sw      $t4, 0x0130($s0)           ## 00000130
.L80A33ED8:
/* 01308 80A33ED8 0C28CAF4 */  jal     func_80A32BD0              
/* 0130C 80A33EDC 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01310 80A33EE0 960E02F4 */  lhu     $t6, 0x02F4($s0)           ## 000002F4
/* 01314 80A33EE4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01318 80A33EE8 240D0064 */  addiu   $t5, $zero, 0x0064         ## $t5 = 00000064
/* 0131C 80A33EEC 35CF0004 */  ori     $t7, $t6, 0x0004           ## $t7 = 00000004
/* 01320 80A33EF0 A20D0305 */  sb      $t5, 0x0305($s0)           ## 00000305
/* 01324 80A33EF4 A60F02F4 */  sh      $t7, 0x02F4($s0)           ## 000002F4
/* 01328 80A33EF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0132C 80A33EFC 24056872 */  addiu   $a1, $zero, 0x6872         ## $a1 = 00006872
/* 01330 80A33F00 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01334 80A33F04 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 01338 80A33F08 10000026 */  beq     $zero, $zero, .L80A33FA4   
/* 0133C 80A33F0C 960902F4 */  lhu     $t1, 0x02F4($s0)           ## 000002F4
/* 01340 80A33F10 8E190308 */  lw      $t9, 0x0308($s0)           ## 00000308
.L80A33F14:
/* 01344 80A33F14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01348 80A33F18 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0134C 80A33F1C 0320F809 */  jalr    $ra, $t9                   
/* 01350 80A33F20 00000000 */  nop
/* 01354 80A33F24 C60602FC */  lwc1    $f6, 0x02FC($s0)           ## 000002FC
/* 01358 80A33F28 860700B6 */  lh      $a3, 0x00B6($s0)           ## 000000B6
/* 0135C 80A33F2C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 01360 80A33F30 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01364 80A33F34 26060038 */  addiu   $a2, $s0, 0x0038           ## $a2 = 00000038
/* 01368 80A33F38 0C28CBDD */  jal     func_80A32F74              
/* 0136C 80A33F3C E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01370 80A33F40 10400006 */  beq     $v0, $zero, .L80A33F5C     
/* 01374 80A33F44 3C0480A3 */  lui     $a0, %hi(D_80A343E4)       ## $a0 = 80A30000
/* 01378 80A33F48 0C00084C */  jal     osSyncPrintf
              
/* 0137C 80A33F4C 248443E4 */  addiu   $a0, $a0, %lo(D_80A343E4)  ## $a0 = 80A343E4
/* 01380 80A33F50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01384 80A33F54 0C28CEDF */  jal     func_80A33B7C              
/* 01388 80A33F58 8FA5002C */  lw      $a1, 0x002C($sp)           
.L80A33F5C:
/* 0138C 80A33F5C 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 01390 80A33F60 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01394 80A33F64 330800FF */  andi    $t0, $t8, 0x00FF           ## $t0 = 00000000
/* 01398 80A33F68 1501000D */  bne     $t0, $at, .L80A33FA0       
/* 0139C 80A33F6C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 013A0 80A33F70 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 013A4 80A33F74 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 013A8 80A33F78 3C0480A3 */  lui     $a0, %hi(D_80A34400)       ## $a0 = 80A30000
/* 013AC 80A33F7C 460A403C */  c.lt.s  $f8, $f10                  
/* 013B0 80A33F80 00000000 */  nop
/* 013B4 80A33F84 45020007 */  bc1fl   .L80A33FA4                 
/* 013B8 80A33F88 960902F4 */  lhu     $t1, 0x02F4($s0)           ## 000002F4
/* 013BC 80A33F8C 0C00084C */  jal     osSyncPrintf
              
/* 013C0 80A33F90 24844400 */  addiu   $a0, $a0, %lo(D_80A34400)  ## $a0 = 80A34400
/* 013C4 80A33F94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013C8 80A33F98 0C28CEDF */  jal     func_80A33B7C              
/* 013CC 80A33F9C 8FA5002C */  lw      $a1, 0x002C($sp)           
.L80A33FA0:
/* 013D0 80A33FA0 960902F4 */  lhu     $t1, 0x02F4($s0)           ## 000002F4
.L80A33FA4:
/* 013D4 80A33FA4 312A0004 */  andi    $t2, $t1, 0x0004           ## $t2 = 00000000
/* 013D8 80A33FA8 5540000D */  bnel    $t2, $zero, .L80A33FE0     
/* 013DC 80A33FAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013E0 80A33FB0 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 013E4 80A33FB4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 013E8 80A33FB8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 013EC 80A33FBC 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 00000000
/* 013F0 80A33FC0 10400002 */  beq     $v0, $zero, .L80A33FCC     
/* 013F4 80A33FC4 2606014C */  addiu   $a2, $s0, 0x014C           ## $a2 = 0000014C
/* 013F8 80A33FC8 14410004 */  bne     $v0, $at, .L80A33FDC       
.L80A33FCC:
/* 013FC 80A33FCC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01400 80A33FD0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01404 80A33FD4 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01408 80A33FD8 00812821 */  addu    $a1, $a0, $at              
.L80A33FDC:
/* 0140C 80A33FDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A33FE0:
/* 01410 80A33FE0 0C28CF23 */  jal     func_80A33C8C              
/* 01414 80A33FE4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01418 80A33FE8 0C28CC28 */  jal     func_80A330A0              
/* 0141C 80A33FEC 00000000 */  nop
/* 01420 80A33FF0 5040000A */  beql    $v0, $zero, .L80A3401C     
/* 01424 80A33FF4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01428 80A33FF8 960B02F4 */  lhu     $t3, 0x02F4($s0)           ## 000002F4
/* 0142C 80A33FFC 3C0D80A3 */  lui     $t5, %hi(func_80A33D10)    ## $t5 = 80A30000
/* 01430 80A34000 25AD3D10 */  addiu   $t5, $t5, %lo(func_80A33D10) ## $t5 = 80A33D10
/* 01434 80A34004 316C0004 */  andi    $t4, $t3, 0x0004           ## $t4 = 00000000
/* 01438 80A34008 15800003 */  bne     $t4, $zero, .L80A34018     
/* 0143C 80A3400C 240E0006 */  addiu   $t6, $zero, 0x0006         ## $t6 = 00000006
/* 01440 80A34010 AE0D0130 */  sw      $t5, 0x0130($s0)           ## 00000130
/* 01444 80A34014 A20E001F */  sb      $t6, 0x001F($s0)           ## 0000001F
.L80A34018:
/* 01448 80A34018 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A3401C:
/* 0144C 80A3401C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01450 80A34020 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01454 80A34024 03E00008 */  jr      $ra                        
/* 01458 80A34028 00000000 */  nop
