.rdata
glabel D_80A54F40
    .asciz "\n\n"
    .balign 4

glabel D_80A54F44
    .asciz "[35m ☆☆☆☆☆ いやー ついうっかり ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A54F7C
    .asciz "\n\n"
    .balign 4

glabel D_80A54F80
    .asciz "[32m ☆☆☆☆☆ 覗き穴奥兵士ふぃ〜 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A54FB4
    .asciz "\n\n"
    .balign 4

glabel D_80A54FB8
    .asciz "[32m ☆☆☆☆☆ 兵士２セット完了！ ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A54FF0
    .asciz "[33m ☆☆☆☆☆ 識別完了！         ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A55028
    .asciz "[35m ☆☆☆☆☆ メッセージ完了！   ☆☆☆☆☆ %x\n\n[m"
    .balign 4

.text
glabel EnHeishi2_Init
/* 00000 80A52EA0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 80A52EA4 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00008 80A52EA8 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0000C 80A52EAC AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00010 80A52EB0 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00014 80A52EB4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80A52EB8 0C00B58B */  jal     Actor_SetScale
              
/* 0001C 80A52EBC 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00020 80A52EC0 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00024 80A52EC4 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 00028 80A52EC8 A21800AE */  sb      $t8, 0x00AE($s0)           ## 000000AE
/* 0002C 80A52ECC 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 00030 80A52ED0 A60F02FE */  sh      $t7, 0x02FE($s0)           ## 000002FE
/* 00034 80A52ED4 860202FE */  lh      $v0, 0x02FE($s0)           ## 000002FE
/* 00038 80A52ED8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 0003C 80A52EDC 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00040 80A52EE0 10410004 */  beq     $v0, $at, .L80A52EF4       
/* 00044 80A52EE4 3C1980A5 */  lui     $t9, %hi(func_80A54C6C)    ## $t9 = 80A50000
/* 00048 80A52EE8 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 0004C 80A52EEC 14410041 */  bne     $v0, $at, .L80A52FF4       
/* 00050 80A52EF0 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
.L80A52EF4:
/* 00054 80A52EF4 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 00058 80A52EF8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 0005C 80A52EFC 27394C6C */  addiu   $t9, $t9, %lo(func_80A54C6C) ## $t9 = 80A54C6C
/* 00060 80A52F00 01014824 */  and     $t1, $t0, $at              
/* 00064 80A52F04 AE190134 */  sw      $t9, 0x0134($s0)           ## 00000134
/* 00068 80A52F08 AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
/* 0006C 80A52F0C 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 00070 80A52F10 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00074 80A52F14 0C00CDD2 */  jal     Actor_ChangeType
              
/* 00078 80A52F18 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
/* 0007C 80A52F1C 860A02FE */  lh      $t2, 0x02FE($s0)           ## 000002FE
/* 00080 80A52F20 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00084 80A52F24 3C0B80A5 */  lui     $t3, %hi(func_80A531CC)    ## $t3 = 80A50000
/* 00088 80A52F28 15410004 */  bne     $t2, $at, .L80A52F3C       
/* 0008C 80A52F2C 3C0480A5 */  lui     $a0, %hi(D_80A54F40)       ## $a0 = 80A50000
/* 00090 80A52F30 256B31CC */  addiu   $t3, $t3, %lo(func_80A531CC) ## $t3 = 80A531CC
/* 00094 80A52F34 10000090 */  beq     $zero, $zero, .L80A53178   
/* 00098 80A52F38 AE0B025C */  sw      $t3, 0x025C($s0)           ## 0000025C
.L80A52F3C:
/* 0009C 80A52F3C 0C00084C */  jal     osSyncPrintf
              
/* 000A0 80A52F40 24844F40 */  addiu   $a0, $a0, %lo(D_80A54F40)  ## $a0 = 80A54F40
/* 000A4 80A52F44 3C0480A5 */  lui     $a0, %hi(D_80A54F44)       ## $a0 = 80A50000
/* 000A8 80A52F48 0C00084C */  jal     osSyncPrintf
              
/* 000AC 80A52F4C 24844F44 */  addiu   $a0, $a0, %lo(D_80A54F44)  ## $a0 = 80A54F44
/* 000B0 80A52F50 3C053CA3 */  lui     $a1, 0x3CA3                ## $a1 = 3CA30000
/* 000B4 80A52F54 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3CA3D70A
/* 000B8 80A52F58 0C00B58B */  jal     Actor_SetScale
              
/* 000BC 80A52F5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000C0 80A52F60 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 000C4 80A52F64 44810000 */  mtc1    $at, $f0                   ## $f0 = 90.00
/* 000C8 80A52F68 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 000CC 80A52F6C 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 000D0 80A52F70 8E0D0024 */  lw      $t5, 0x0024($s0)           ## 00000024
/* 000D4 80A52F74 44815000 */  mtc1    $at, $f10                  ## $f10 = 60.00
/* 000D8 80A52F78 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 000DC 80A52F7C C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 000E0 80A52F80 46002180 */  add.s   $f6, $f4, $f0              
/* 000E4 80A52F84 240E7918 */  addiu   $t6, $zero, 0x7918         ## $t6 = 00007918
/* 000E8 80A52F88 A60E0032 */  sh      $t6, 0x0032($s0)           ## 00000032
/* 000EC 80A52F8C 460A4401 */  sub.s   $f16, $f8, $f10            
/* 000F0 80A52F90 AE0D0274 */  sw      $t5, 0x0274($s0)           ## 00000274
/* 000F4 80A52F94 8E0D002C */  lw      $t5, 0x002C($s0)           ## 0000002C
/* 000F8 80A52F98 46009100 */  add.s   $f4, $f18, $f0             
/* 000FC 80A52F9C 8E0C0028 */  lw      $t4, 0x0028($s0)           ## 00000028
/* 00100 80A52FA0 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 00104 80A52FA4 E6060024 */  swc1    $f6, 0x0024($s0)           ## 00000024
/* 00108 80A52FA8 E6100028 */  swc1    $f16, 0x0028($s0)          ## 00000028
/* 0010C 80A52FAC E604002C */  swc1    $f4, 0x002C($s0)           ## 0000002C
/* 00110 80A52FB0 AE0D027C */  sw      $t5, 0x027C($s0)           ## 0000027C
/* 00114 80A52FB4 AE0C0278 */  sw      $t4, 0x0278($s0)           ## 00000278
/* 00118 80A52FB8 A60F00B6 */  sh      $t7, 0x00B6($s0)           ## 000000B6
/* 0011C 80A52FBC 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00120 80A52FC0 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00124 80A52FC4 26050398 */  addiu   $a1, $s0, 0x0398           ## $a1 = 00000398
/* 00128 80A52FC8 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 0012C 80A52FCC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00130 80A52FD0 0C00B7D5 */  jal     func_8002DF54              
/* 00134 80A52FD4 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 00138 80A52FD8 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 0013C 80A52FDC 3C0880A5 */  lui     $t0, %hi(func_80A544AC)    ## $t0 = 80A50000
/* 00140 80A52FE0 250844AC */  addiu   $t0, $t0, %lo(func_80A544AC) ## $t0 = 80A544AC
/* 00144 80A52FE4 37190011 */  ori     $t9, $t8, 0x0011           ## $t9 = 00000011
/* 00148 80A52FE8 AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 0014C 80A52FEC 10000062 */  beq     $zero, $zero, .L80A53178   
/* 00150 80A52FF0 AE08025C */  sw      $t0, 0x025C($s0)           ## 0000025C
.L80A52FF4:
/* 00154 80A52FF4 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00158 80A52FF8 44813000 */  mtc1    $at, $f6                   ## $f6 = 60.00
/* 0015C 80A52FFC 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00160 80A53000 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 00164 80A53004 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00168 80A53008 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 0016C 80A5300C 0C00AC78 */  jal     ActorShape_Init
              
/* 00170 80A53010 E60602E0 */  swc1    $f6, 0x02E0($s0)           ## 000002E0
/* 00174 80A53014 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 00178 80A53018 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 0017C 80A5301C 26090190 */  addiu   $t1, $s0, 0x0190           ## $t1 = 00000190
/* 00180 80A53020 260A01F6 */  addiu   $t2, $s0, 0x01F6           ## $t2 = 000001F6
/* 00184 80A53024 240B0011 */  addiu   $t3, $zero, 0x0011         ## $t3 = 00000011
/* 00188 80A53028 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 0018C 80A5302C AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 00190 80A53030 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 00194 80A53034 24E75C30 */  addiu   $a3, $a3, 0x5C30           ## $a3 = 06005C30
/* 00198 80A53038 24C6BAC8 */  addiu   $a2, $a2, 0xBAC8           ## $a2 = 0600BAC8
/* 0019C 80A5303C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 001A0 80A53040 0C02915F */  jal     SkelAnime_Init
              
/* 001A4 80A53044 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 001A8 80A53048 26050398 */  addiu   $a1, $s0, 0x0398           ## $a1 = 00000398
/* 001AC 80A5304C AFA50030 */  sw      $a1, 0x0030($sp)           
/* 001B0 80A53050 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 001B4 80A53054 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 001B8 80A53058 3C0780A5 */  lui     $a3, %hi(D_80A54F10)       ## $a3 = 80A50000
/* 001BC 80A5305C 24E74F10 */  addiu   $a3, $a3, %lo(D_80A54F10)  ## $a3 = 80A54F10
/* 001C0 80A53060 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 001C4 80A53064 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 001C8 80A53068 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 001CC 80A5306C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 001D0 80A53070 860202FE */  lh      $v0, 0x02FE($s0)           ## 000002FE
/* 001D4 80A53074 24030006 */  addiu   $v1, $zero, 0x0006         ## $v1 = 00000006
/* 001D8 80A53078 240C000F */  addiu   $t4, $zero, 0x000F         ## $t4 = 0000000F
/* 001DC 80A5307C 240D0046 */  addiu   $t5, $zero, 0x0046         ## $t5 = 00000046
/* 001E0 80A53080 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 001E4 80A53084 A60003DC */  sh      $zero, 0x03DC($s0)         ## 000003DC
/* 001E8 80A53088 A60C03D8 */  sh      $t4, 0x03D8($s0)           ## 000003D8
/* 001EC 80A5308C A60D03DA */  sh      $t5, 0x03DA($s0)           ## 000003DA
/* 001F0 80A53090 10410008 */  beq     $v0, $at, .L80A530B4       
/* 001F4 80A53094 A203001F */  sb      $v1, 0x001F($s0)           ## 0000001F
/* 001F8 80A53098 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 001FC 80A5309C 1041000C */  beq     $v0, $at, .L80A530D0       
/* 00200 80A530A0 3C0F80A5 */  lui     $t7, %hi(func_80A53908)    ## $t7 = 80A50000
/* 00204 80A530A4 10430010 */  beq     $v0, $v1, .L80A530E8       
/* 00208 80A530A8 3C0480A5 */  lui     $a0, %hi(D_80A54F7C)       ## $a0 = 80A50000
/* 0020C 80A530AC 1000001E */  beq     $zero, $zero, .L80A53128   
/* 00210 80A530B0 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
.L80A530B4:
/* 00214 80A530B4 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00218 80A530B8 44814000 */  mtc1    $at, $f8                   ## $f8 = -1.00
/* 0021C 80A530BC 3C0E80A5 */  lui     $t6, %hi(func_80A531E4)    ## $t6 = 80A50000
/* 00220 80A530C0 25CE31E4 */  addiu   $t6, $t6, %lo(func_80A531E4) ## $t6 = 80A531E4
/* 00224 80A530C4 AE0E025C */  sw      $t6, 0x025C($s0)           ## 0000025C
/* 00228 80A530C8 10000016 */  beq     $zero, $zero, .L80A53124   
/* 0022C 80A530CC E608006C */  swc1    $f8, 0x006C($s0)           ## 0000006C
.L80A530D0:
/* 00230 80A530D0 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00234 80A530D4 44815000 */  mtc1    $at, $f10                  ## $f10 = -1.00
/* 00238 80A530D8 25EF3908 */  addiu   $t7, $t7, %lo(func_80A53908) ## $t7 = 80A53908
/* 0023C 80A530DC AE0F025C */  sw      $t7, 0x025C($s0)           ## 0000025C
/* 00240 80A530E0 10000010 */  beq     $zero, $zero, .L80A53124   
/* 00244 80A530E4 E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
.L80A530E8:
/* 00248 80A530E8 0C00084C */  jal     osSyncPrintf
              
/* 0024C 80A530EC 24844F7C */  addiu   $a0, $a0, %lo(D_80A54F7C)  ## $a0 = 80A54F7C
/* 00250 80A530F0 3C0480A5 */  lui     $a0, %hi(D_80A54F80)       ## $a0 = 80A50000
/* 00254 80A530F4 0C00084C */  jal     osSyncPrintf
              
/* 00258 80A530F8 24844F80 */  addiu   $a0, $a0, %lo(D_80A54F80)  ## $a0 = 80A54F80
/* 0025C 80A530FC 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00260 80A53100 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00264 80A53104 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00268 80A53108 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 0026C 80A5310C 2401FFF6 */  addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
/* 00270 80A53110 3C0880A5 */  lui     $t0, %hi(func_80A531D8)    ## $t0 = 80A50000
/* 00274 80A53114 250831D8 */  addiu   $t0, $t0, %lo(func_80A531D8) ## $t0 = 80A531D8
/* 00278 80A53118 0301C824 */  and     $t9, $t8, $at              
/* 0027C 80A5311C AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 00280 80A53120 AE08025C */  sw      $t0, 0x025C($s0)           ## 0000025C
.L80A53124:
/* 00284 80A53124 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
.L80A53128:
/* 00288 80A53128 3C0480A5 */  lui     $a0, %hi(D_80A54FB4)       ## $a0 = 80A50000
/* 0028C 80A5312C 24844FB4 */  addiu   $a0, $a0, %lo(D_80A54FB4)  ## $a0 = 80A54FB4
/* 00290 80A53130 00095203 */  sra     $t2, $t1,  8               
/* 00294 80A53134 314B00FF */  andi    $t3, $t2, 0x00FF           ## $t3 = 00000000
/* 00298 80A53138 0C00084C */  jal     osSyncPrintf
              
/* 0029C 80A5313C A60B02F0 */  sh      $t3, 0x02F0($s0)           ## 000002F0
/* 002A0 80A53140 3C0480A5 */  lui     $a0, %hi(D_80A54FB8)       ## $a0 = 80A50000
/* 002A4 80A53144 24844FB8 */  addiu   $a0, $a0, %lo(D_80A54FB8)  ## $a0 = 80A54FB8
/* 002A8 80A53148 0C00084C */  jal     osSyncPrintf
              
/* 002AC 80A5314C 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 002B0 80A53150 3C0480A5 */  lui     $a0, %hi(D_80A54FF0)       ## $a0 = 80A50000
/* 002B4 80A53154 24844FF0 */  addiu   $a0, $a0, %lo(D_80A54FF0)  ## $a0 = 80A54FF0
/* 002B8 80A53158 0C00084C */  jal     osSyncPrintf
              
/* 002BC 80A5315C 860502FE */  lh      $a1, 0x02FE($s0)           ## 000002FE
/* 002C0 80A53160 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 002C4 80A53164 3C0480A5 */  lui     $a0, %hi(D_80A55028)       ## $a0 = 80A50000
/* 002C8 80A53168 24845028 */  addiu   $a0, $a0, %lo(D_80A55028)  ## $a0 = 80A55028
/* 002CC 80A5316C 00052A03 */  sra     $a1, $a1,  8               
/* 002D0 80A53170 0C00084C */  jal     osSyncPrintf
              
/* 002D4 80A53174 30A5000F */  andi    $a1, $a1, 0x000F           ## $a1 = 00000000
.L80A53178:
/* 002D8 80A53178 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 002DC 80A5317C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 002E0 80A53180 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 002E4 80A53184 03E00008 */  jr      $ra                        
/* 002E8 80A53188 00000000 */  nop


