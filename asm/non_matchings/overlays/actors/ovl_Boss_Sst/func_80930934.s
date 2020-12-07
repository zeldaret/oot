glabel func_80930934
/* 04364 80930934 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 04368 80930938 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0436C 8093093C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04370 80930940 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 04374 80930944 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 04378 80930948 0C02927F */  jal     SkelAnime_Update
              
/* 0437C 8093094C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 04380 80930950 2604019E */  addiu   $a0, $s0, 0x019E           ## $a0 = 0000019E
/* 04384 80930954 2405F254 */  addiu   $a1, $zero, 0xF254         ## $a1 = FFFFF254
/* 04388 80930958 0C01DE5F */  jal     Math_ApproxS
              
/* 0438C 8093095C 240601F4 */  addiu   $a2, $zero, 0x01F4         ## $a2 = 000001F4
/* 04390 80930960 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 04394 80930964 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 04398 80930968 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0439C 8093096C 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 043A0 80930970 24061000 */  addiu   $a2, $zero, 0x1000         ## $a2 = 00001000
/* 043A4 80930974 260401A0 */  addiu   $a0, $s0, 0x01A0           ## $a0 = 000001A0
/* 043A8 80930978 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 043AC 8093097C 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 043B0 80930980 24061000 */  addiu   $a2, $zero, 0x1000         ## $a2 = 00001000
/* 043B4 80930984 86030198 */  lh      $v1, 0x0198($s0)           ## 00000198
/* 043B8 80930988 50600015 */  beql    $v1, $zero, .L809309E0     
/* 043BC 8093098C 82190195 */  lb      $t9, 0x0195($s0)           ## 00000195
/* 043C0 80930990 10600003 */  beq     $v1, $zero, .L809309A0     
/* 043C4 80930994 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 043C8 80930998 A60E0198 */  sh      $t6, 0x0198($s0)           ## 00000198
/* 043CC 8093099C 86030198 */  lh      $v1, 0x0198($s0)           ## 00000198
.L809309A0:
/* 043D0 809309A0 54600059 */  bnel    $v1, $zero, .L80930B08     
/* 043D4 809309A4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 043D8 809309A8 920203E5 */  lbu     $v0, 0x03E5($s0)           ## 000003E5
/* 043DC 809309AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 043E0 809309B0 304F0001 */  andi    $t7, $v0, 0x0001           ## $t7 = 00000000
/* 043E4 809309B4 11E00005 */  beq     $t7, $zero, .L809309CC     
/* 043E8 809309B8 34580001 */  ori     $t8, $v0, 0x0001           ## $t8 = 00000001
/* 043EC 809309BC 0C24C0F2 */  jal     func_809303C8              
/* 043F0 809309C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 043F4 809309C4 10000050 */  beq     $zero, $zero, .L80930B08   
/* 043F8 809309C8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809309CC:
/* 043FC 809309CC 0C24BEF9 */  jal     func_8092FBE4              
/* 04400 809309D0 A21803E5 */  sb      $t8, 0x03E5($s0)           ## 000003E5
/* 04404 809309D4 1000004C */  beq     $zero, $zero, .L80930B08   
/* 04408 809309D8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0440C 809309DC 82190195 */  lb      $t9, 0x0195($s0)           ## 00000195
.L809309E0:
/* 04410 809309E0 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 04414 809309E4 53200008 */  beql    $t9, $zero, .L80930A08     
/* 04418 809309E8 C6040060 */  lwc1    $f4, 0x0060($s0)           ## 00000060
/* 0441C 809309EC 920903E4 */  lbu     $t1, 0x03E4($s0)           ## 000003E4
/* 04420 809309F0 2408001E */  addiu   $t0, $zero, 0x001E         ## $t0 = 0000001E
/* 04424 809309F4 A6080198 */  sh      $t0, 0x0198($s0)           ## 00000198
/* 04428 809309F8 312AFFFC */  andi    $t2, $t1, 0xFFFC           ## $t2 = 00000000
/* 0442C 809309FC 1000001A */  beq     $zero, $zero, .L80930A68   
/* 04430 80930A00 A20A03E4 */  sb      $t2, 0x03E4($s0)           ## 000003E4
/* 04434 80930A04 C6040060 */  lwc1    $f4, 0x0060($s0)           ## 00000060
.L80930A08:
/* 04438 80930A08 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.50
/* 0443C 80930A0C 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 04440 80930A10 8E050080 */  lw      $a1, 0x0080($s0)           ## 00000080
/* 04444 80930A14 46062202 */  mul.s   $f8, $f4, $f6              
/* 04448 80930A18 E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 0444C 80930A1C 0C01DE80 */  jal     Math_ApproxF
              
/* 04450 80930A20 8E060060 */  lw      $a2, 0x0060($s0)           ## 00000060
/* 04454 80930A24 10400010 */  beq     $v0, $zero, .L80930A68     
/* 04458 80930A28 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 0445C 80930A2C A20B0195 */  sb      $t3, 0x0195($s0)           ## 00000195
/* 04460 80930A30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04464 80930A34 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 04468 80930A38 24053950 */  addiu   $a1, $zero, 0x3950         ## $a1 = 00003950
/* 0446C 80930A3C 0C24D652 */  jal     func_80935948              
/* 04470 80930A40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04474 80930A44 920C06C4 */  lbu     $t4, 0x06C4($s0)           ## 000006C4
/* 04478 80930A48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0447C 80930A4C 260506B4 */  addiu   $a1, $s0, 0x06B4           ## $a1 = 000006B4
/* 04480 80930A50 358D0001 */  ori     $t5, $t4, 0x0001           ## $t5 = 00000001
/* 04484 80930A54 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 04488 80930A58 A20D06C4 */  sb      $t5, 0x06C4($s0)           ## 000006C4
/* 0448C 80930A5C 3C0E8093 */  lui     $t6, %hi(D_80937818)       ## $t6 = 80930000
/* 04490 80930A60 85CE7818 */  lh      $t6, %lo(D_80937818)($t6)  
/* 04494 80930A64 A60E06F4 */  sh      $t6, 0x06F4($s0)           ## 000006F4
.L80930A68:
/* 04498 80930A68 920F03E4 */  lbu     $t7, 0x03E4($s0)           ## 000003E4
/* 0449C 80930A6C 8FB90034 */  lw      $t9, 0x0034($sp)           
/* 044A0 80930A70 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 044A4 80930A74 53000020 */  beql    $t8, $zero, .L80930AF8     
/* 044A8 80930A78 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 044AC 80930A7C 8F281C44 */  lw      $t0, 0x1C44($t9)           ## 00001C44
/* 044B0 80930A80 AFA8002C */  sw      $t0, 0x002C($sp)           
/* 044B4 80930A84 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 044B8 80930A88 8604008A */  lh      $a0, 0x008A($s0)           ## 0000008A
/* 044BC 80930A8C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 044C0 80930A90 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 044C4 80930A94 C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000024
/* 044C8 80930A98 8FA9002C */  lw      $t1, 0x002C($sp)           
/* 044CC 80930A9C 460A0402 */  mul.s   $f16, $f0, $f10            
/* 044D0 80930AA0 46128100 */  add.s   $f4, $f16, $f18            
/* 044D4 80930AA4 E5240024 */  swc1    $f4, 0x0024($t1)           ## 00000024
/* 044D8 80930AA8 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 044DC 80930AAC 8604008A */  lh      $a0, 0x008A($s0)           ## 0000008A
/* 044E0 80930AB0 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 044E4 80930AB4 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 044E8 80930AB8 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 044EC 80930ABC 8FAA002C */  lw      $t2, 0x002C($sp)           
/* 044F0 80930AC0 46060202 */  mul.s   $f8, $f0, $f6              
/* 044F4 80930AC4 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 044F8 80930AC8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 044FC 80930ACC 3C0640A0 */  lui     $a2, 0x40A0                ## $a2 = 40A00000
/* 04500 80930AD0 460A4400 */  add.s   $f16, $f8, $f10            
/* 04504 80930AD4 E550002C */  swc1    $f16, 0x002C($t2)          ## 0000002C
/* 04508 80930AD8 920B03E4 */  lbu     $t3, 0x03E4($s0)           ## 000003E4
/* 0450C 80930ADC 8607008A */  lh      $a3, 0x008A($s0)           ## 0000008A
/* 04510 80930AE0 316CFFFC */  andi    $t4, $t3, 0xFFFC           ## $t4 = 00000000
/* 04514 80930AE4 A20C03E4 */  sb      $t4, 0x03E4($s0)           ## 000003E4
/* 04518 80930AE8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0451C 80930AEC 0C00BDC7 */  jal     func_8002F71C              
/* 04520 80930AF0 E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 04524 80930AF4 8FA40028 */  lw      $a0, 0x0028($sp)           
.L80930AF8:
/* 04528 80930AF8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0452C 80930AFC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 04530 80930B00 24060200 */  addiu   $a2, $zero, 0x0200         ## $a2 = 00000200
/* 04534 80930B04 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80930B08:
/* 04538 80930B08 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0453C 80930B0C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 04540 80930B10 03E00008 */  jr      $ra                        
/* 04544 80930B14 00000000 */  nop
