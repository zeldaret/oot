.late_rodata
glabel jtbl_80AE66AC
.word L80AE60CC
.word L80AE6104
.word L80AE608C
.word L80AE6104
.word L80AE6104
.word L80AE6104
.word L80AE6104
.word L80AE6104
.word L80AE6104
.word L80AE6104
.word L80AE5F5C
.word L80AE5F5C
.word L80AE5FB4
.word L80AE600C
.word 0x00000000, 0x00000000, 0x00000000

.text
glabel func_80AE5EDC
/* 0120C 80AE5EDC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01210 80AE5EE0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01214 80AE5EE4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01218 80AE5EE8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0121C 80AE5EEC 908202A1 */  lbu     $v0, 0x02A1($a0)           ## 000002A1
/* 01220 80AE5EF0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01224 80AE5EF4 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 01228 80AE5EF8 11C00082 */  beq     $t6, $zero, .L80AE6104     
/* 0122C 80AE5EFC 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 01230 80AE5F00 8C83026C */  lw      $v1, 0x026C($a0)           ## 0000026C
/* 01234 80AE5F04 3C1880AE */  lui     $t8, %hi(func_80AE5C38)    ## $t8 = 80AE0000
/* 01238 80AE5F08 27185C38 */  addiu   $t8, $t8, %lo(func_80AE5C38) ## $t8 = 80AE5C38
/* 0123C 80AE5F0C 1303007D */  beq     $t8, $v1, .L80AE6104       
/* 01240 80AE5F10 A08F02A1 */  sb      $t7, 0x02A1($a0)           ## 000002A1
/* 01244 80AE5F14 3C1980AE */  lui     $t9, %hi(func_80AE5854)    ## $t9 = 80AE0000
/* 01248 80AE5F18 27395854 */  addiu   $t9, $t9, %lo(func_80AE5854) ## $t9 = 80AE5854
/* 0124C 80AE5F1C 5323007A */  beql    $t9, $v1, .L80AE6108       
/* 01250 80AE5F20 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01254 80AE5F24 908900B1 */  lbu     $t1, 0x00B1($a0)           ## 000000B1
/* 01258 80AE5F28 A48000B8 */  sh      $zero, 0x00B8($a0)         ## 000000B8
/* 0125C 80AE5F2C 848800B8 */  lh      $t0, 0x00B8($a0)           ## 000000B8
/* 01260 80AE5F30 252AFFFF */  addiu   $t2, $t1, 0xFFFF           ## $t2 = FFFFFFFF
/* 01264 80AE5F34 2D41000E */  sltiu   $at, $t2, 0x000E           
/* 01268 80AE5F38 A480027E */  sh      $zero, 0x027E($a0)         ## 0000027E
/* 0126C 80AE5F3C 10200071 */  beq     $at, $zero, .L80AE6104     
/* 01270 80AE5F40 A48800B4 */  sh      $t0, 0x00B4($a0)           ## 000000B4
/* 01274 80AE5F44 000A5080 */  sll     $t2, $t2,  2               
/* 01278 80AE5F48 3C0180AE */  lui     $at, %hi(jtbl_80AE66AC)       ## $at = 80AE0000
/* 0127C 80AE5F4C 002A0821 */  addu    $at, $at, $t2              
/* 01280 80AE5F50 8C2A66AC */  lw      $t2, %lo(jtbl_80AE66AC)($at)  
/* 01284 80AE5F54 01400008 */  jr      $t2                        
/* 01288 80AE5F58 00000000 */  nop
glabel L80AE5F5C
/* 0128C 80AE5F5C 920B00AF */  lbu     $t3, 0x00AF($s0)           ## 000000AF
/* 01290 80AE5F60 29610002 */  slti    $at, $t3, 0x0002           
/* 01294 80AE5F64 14200013 */  bne     $at, $zero, .L80AE5FB4     
/* 01298 80AE5F68 00000000 */  nop
/* 0129C 80AE5F6C 860C027E */  lh      $t4, 0x027E($s0)           ## 0000027E
/* 012A0 80AE5F70 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
/* 012A4 80AE5F74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012A8 80AE5F78 104C000E */  beq     $v0, $t4, .L80AE5FB4       
/* 012AC 80AE5F7C 2405389E */  addiu   $a1, $zero, 0x389E         ## $a1 = 0000389E
/* 012B0 80AE5F80 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 012B4 80AE5F84 A602027E */  sh      $v0, 0x027E($s0)           ## 0000027E
/* 012B8 80AE5F88 240D0050 */  addiu   $t5, $zero, 0x0050         ## $t5 = 00000050
/* 012BC 80AE5F8C AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 012C0 80AE5F90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012C4 80AE5F94 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 012C8 80AE5F98 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 012CC 80AE5F9C 0C00D09B */  jal     func_8003426C              
/* 012D0 80AE5FA0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 012D4 80AE5FA4 3C0E80AE */  lui     $t6, %hi(func_80AE58EC)    ## $t6 = 80AE0000
/* 012D8 80AE5FA8 25CE58EC */  addiu   $t6, $t6, %lo(func_80AE58EC) ## $t6 = 80AE58EC
/* 012DC 80AE5FAC 10000055 */  beq     $zero, $zero, .L80AE6104   
/* 012E0 80AE5FB0 AE0E026C */  sw      $t6, 0x026C($s0)           ## 0000026C
glabel L80AE5FB4
.L80AE5FB4:
/* 012E4 80AE5FB4 920F00AF */  lbu     $t7, 0x00AF($s0)           ## 000000AF
/* 012E8 80AE5FB8 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
/* 012EC 80AE5FBC 29E10003 */  slti    $at, $t7, 0x0003           
/* 012F0 80AE5FC0 54200013 */  bnel    $at, $zero, .L80AE6010     
/* 012F4 80AE5FC4 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
/* 012F8 80AE5FC8 8618027E */  lh      $t8, 0x027E($s0)           ## 0000027E
/* 012FC 80AE5FCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01300 80AE5FD0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01304 80AE5FD4 1058000D */  beq     $v0, $t8, .L80AE600C       
/* 01308 80AE5FD8 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 0130C 80AE5FDC A602027E */  sh      $v0, 0x027E($s0)           ## 0000027E
/* 01310 80AE5FE0 24190050 */  addiu   $t9, $zero, 0x0050         ## $t9 = 00000050
/* 01314 80AE5FE4 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 01318 80AE5FE8 0C00D09B */  jal     func_8003426C              
/* 0131C 80AE5FEC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01320 80AE5FF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01324 80AE5FF4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01328 80AE5FF8 2405389E */  addiu   $a1, $zero, 0x389E         ## $a1 = 0000389E
/* 0132C 80AE5FFC 3C0880AE */  lui     $t0, %hi(func_80AE58EC)    ## $t0 = 80AE0000
/* 01330 80AE6000 250858EC */  addiu   $t0, $t0, %lo(func_80AE58EC) ## $t0 = 80AE58EC
/* 01334 80AE6004 1000003F */  beq     $zero, $zero, .L80AE6104   
/* 01338 80AE6008 AE08026C */  sw      $t0, 0x026C($s0)           ## 0000026C
glabel L80AE600C
.L80AE600C:
/* 0133C 80AE600C 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
.L80AE6010:
/* 01340 80AE6010 A609027C */  sh      $t1, 0x027C($s0)           ## 0000027C
/* 01344 80AE6014 0C00D58A */  jal     Actor_ApplyDamage
              
/* 01348 80AE6018 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0134C 80AE601C 920A00AF */  lbu     $t2, 0x00AF($s0)           ## 000000AF
/* 01350 80AE6020 24053989 */  addiu   $a1, $zero, 0x3989         ## $a1 = 00003989
/* 01354 80AE6024 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01358 80AE6028 5540000B */  bnel    $t2, $zero, .L80AE6058     
/* 0135C 80AE602C 8E0D026C */  lw      $t5, 0x026C($s0)           ## 0000026C
/* 01360 80AE6030 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01364 80AE6034 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01368 80AE6038 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0136C 80AE603C 0C00CB1F */  jal     func_80032C7C              
/* 01370 80AE6040 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01374 80AE6044 3C0B80AE */  lui     $t3, %hi(func_80AE5BC4)    ## $t3 = 80AE0000
/* 01378 80AE6048 256B5BC4 */  addiu   $t3, $t3, %lo(func_80AE5BC4) ## $t3 = 80AE5BC4
/* 0137C 80AE604C 1000002D */  beq     $zero, $zero, .L80AE6104   
/* 01380 80AE6050 AE0B026C */  sw      $t3, 0x026C($s0)           ## 0000026C
/* 01384 80AE6054 8E0D026C */  lw      $t5, 0x026C($s0)           ## 0000026C
.L80AE6058:
/* 01388 80AE6058 3C0C80AE */  lui     $t4, %hi(func_80AE5E48)    ## $t4 = 80AE0000
/* 0138C 80AE605C 258C5E48 */  addiu   $t4, $t4, %lo(func_80AE5E48) ## $t4 = 80AE5E48
/* 01390 80AE6060 158D0004 */  bne     $t4, $t5, .L80AE6074       
/* 01394 80AE6064 00000000 */  nop
/* 01398 80AE6068 A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
/* 0139C 80AE606C 860E00B8 */  lh      $t6, 0x00B8($s0)           ## 000000B8
/* 013A0 80AE6070 A60E00B4 */  sh      $t6, 0x00B4($s0)           ## 000000B4
.L80AE6074:
/* 013A4 80AE6074 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 013A8 80AE6078 24053988 */  addiu   $a1, $zero, 0x3988         ## $a1 = 00003988
/* 013AC 80AE607C 3C0F80AE */  lui     $t7, %hi(func_80AE57F0)    ## $t7 = 80AE0000
/* 013B0 80AE6080 25EF57F0 */  addiu   $t7, $t7, %lo(func_80AE57F0) ## $t7 = 80AE57F0
/* 013B4 80AE6084 1000001F */  beq     $zero, $zero, .L80AE6104   
/* 013B8 80AE6088 AE0F026C */  sw      $t7, 0x026C($s0)           ## 0000026C
glabel L80AE608C
/* 013BC 80AE608C 0C00D58A */  jal     Actor_ApplyDamage
              
/* 013C0 80AE6090 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013C4 80AE6094 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
/* 013C8 80AE6098 A602027C */  sh      $v0, 0x027C($s0)           ## 0000027C
/* 013CC 80AE609C A602027E */  sh      $v0, 0x027E($s0)           ## 0000027E
/* 013D0 80AE60A0 24180050 */  addiu   $t8, $zero, 0x0050         ## $t8 = 00000050
/* 013D4 80AE60A4 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 013D8 80AE60A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013DC 80AE60AC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 013E0 80AE60B0 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 013E4 80AE60B4 0C00D09B */  jal     func_8003426C              
/* 013E8 80AE60B8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 013EC 80AE60BC 3C1980AE */  lui     $t9, %hi(func_80AE58EC)    ## $t9 = 80AE0000
/* 013F0 80AE60C0 273958EC */  addiu   $t9, $t9, %lo(func_80AE58EC) ## $t9 = 80AE58EC
/* 013F4 80AE60C4 1000000F */  beq     $zero, $zero, .L80AE6104   
/* 013F8 80AE60C8 AE19026C */  sw      $t9, 0x026C($s0)           ## 0000026C
glabel L80AE60CC
/* 013FC 80AE60CC 8608027E */  lh      $t0, 0x027E($s0)           ## 0000027E
/* 01400 80AE60D0 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
/* 01404 80AE60D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01408 80AE60D8 1048000A */  beq     $v0, $t0, .L80AE6104       
/* 0140C 80AE60DC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01410 80AE60E0 A602027E */  sh      $v0, 0x027E($s0)           ## 0000027E
/* 01414 80AE60E4 24090050 */  addiu   $t1, $zero, 0x0050         ## $t1 = 00000050
/* 01418 80AE60E8 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 0141C 80AE60EC 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 01420 80AE60F0 0C00D09B */  jal     func_8003426C              
/* 01424 80AE60F4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01428 80AE60F8 3C0A80AE */  lui     $t2, %hi(func_80AE58EC)    ## $t2 = 80AE0000
/* 0142C 80AE60FC 254A58EC */  addiu   $t2, $t2, %lo(func_80AE58EC) ## $t2 = 80AE58EC
/* 01430 80AE6100 AE0A026C */  sw      $t2, 0x026C($s0)           ## 0000026C
glabel L80AE6104
.L80AE6104:
/* 01434 80AE6104 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE6108:
/* 01438 80AE6108 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0143C 80AE610C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01440 80AE6110 03E00008 */  jr      $ra                        
/* 01444 80AE6114 00000000 */  nop
