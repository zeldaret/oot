glabel EnCrow_Update
/* 00FE0 809E1220 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00FE4 809E1224 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00FE8 809E1228 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00FEC 809E122C AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00FF0 809E1230 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00FF4 809E1234 0C27845D */  jal     func_809E1174              
/* 00FF8 809E1238 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00FFC 809E123C 8E1901C0 */  lw      $t9, 0x01C0($s0)           ## 000001C0
/* 01000 809E1240 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01004 809E1244 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01008 809E1248 0320F809 */  jalr    $ra, $t9                   
/* 0100C 809E124C 00000000 */  nop
/* 01010 809E1250 860F00B4 */  lh      $t7, 0x00B4($s0)           ## 000000B4
/* 01014 809E1254 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 01018 809E1258 3C08809E */  lui     $t0, %hi(func_809E10A8)    ## $t0 = 809E0000
/* 0101C 809E125C 000FC023 */  subu    $t8, $zero, $t7            
/* 01020 809E1260 C6040050 */  lwc1    $f4, 0x0050($s0)           ## 00000050
/* 01024 809E1264 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01028 809E1268 A6180030 */  sh      $t8, 0x0030($s0)           ## 00000030
/* 0102C 809E126C 250810A8 */  addiu   $t0, $t0, %lo(func_809E10A8) ## $t0 = 809E10A8
/* 01030 809E1270 A60E0032 */  sh      $t6, 0x0032($s0)           ## 00000032
/* 01034 809E1274 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 01038 809E1278 AFA8002C */  sw      $t0, 0x002C($sp)           
/* 0103C 809E127C 8E0901C0 */  lw      $t1, 0x01C0($s0)           ## 000001C0
/* 01040 809E1280 46062002 */  mul.s   $f0, $f4, $f6              
/* 01044 809E1284 51090027 */  beql    $t0, $t1, .L809E1324       
/* 01048 809E1288 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 0104C 809E128C 920A00AF */  lbu     $t2, 0x00AF($s0)           ## 000000AF
/* 01050 809E1290 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01054 809E1294 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01058 809E1298 5140000A */  beql    $t2, $zero, .L809E12C4     
/* 0105C 809E129C 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 01060 809E12A0 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 01064 809E12A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01068 809E12A8 E7A00030 */  swc1    $f0, 0x0030($sp)           
/* 0106C 809E12AC 46004282 */  mul.s   $f10, $f8, $f0             
/* 01070 809E12B0 0C00B65F */  jal     func_8002D97C              
/* 01074 809E12B4 E7AA0034 */  swc1    $f10, 0x0034($sp)          
/* 01078 809E12B8 10000006 */  beq     $zero, $zero, .L809E12D4   
/* 0107C 809E12BC C7A00030 */  lwc1    $f0, 0x0030($sp)           
/* 01080 809E12C0 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
.L809E12C4:
/* 01084 809E12C4 E7A00030 */  swc1    $f0, 0x0030($sp)           
/* 01088 809E12C8 0C00B638 */  jal     Actor_MoveForward
              
/* 0108C 809E12CC E7B00034 */  swc1    $f16, 0x0034($sp)          
/* 01090 809E12D0 C7A00030 */  lwc1    $f0, 0x0030($sp)           
.L809E12D4:
/* 01094 809E12D4 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 01098 809E12D8 44819000 */  mtc1    $at, $f18                  ## $f18 = 12.00
/* 0109C 809E12DC 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 010A0 809E12E0 44813000 */  mtc1    $at, $f6                   ## $f6 = 25.00
/* 010A4 809E12E4 46009102 */  mul.s   $f4, $f18, $f0             
/* 010A8 809E12E8 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 010AC 809E12EC 44815000 */  mtc1    $at, $f10                  ## $f10 = 50.00
/* 010B0 809E12F0 46003202 */  mul.s   $f8, $f6, $f0              
/* 010B4 809E12F4 240B0007 */  addiu   $t3, $zero, 0x0007         ## $t3 = 00000007
/* 010B8 809E12F8 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 010BC 809E12FC 46005402 */  mul.s   $f16, $f10, $f0            
/* 010C0 809E1300 44062000 */  mfc1    $a2, $f4                   
/* 010C4 809E1304 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 010C8 809E1308 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 010CC 809E130C 44074000 */  mfc1    $a3, $f8                   
/* 010D0 809E1310 0C00B92D */  jal     func_8002E4B4              
/* 010D4 809E1314 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 010D8 809E1318 10000005 */  beq     $zero, $zero, .L809E1330   
/* 010DC 809E131C C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 010E0 809E1320 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
.L809E1324:
/* 010E4 809E1324 00000000 */  nop
/* 010E8 809E1328 E7B20034 */  swc1    $f18, 0x0034($sp)          
/* 010EC 809E132C C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
.L809E1330:
/* 010F0 809E1330 8E190254 */  lw      $t9, 0x0254($s0)           ## 00000254
/* 010F4 809E1334 3C0B809E */  lui     $t3, %hi(func_809E0C8C)    ## $t3 = 809E0000
/* 010F8 809E1338 4600218D */  trunc.w.s $f6, $f4                   
/* 010FC 809E133C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01100 809E1340 256B0C8C */  addiu   $t3, $t3, %lo(func_809E0C8C) ## $t3 = 809E0C8C
/* 01104 809E1344 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01108 809E1348 440D3000 */  mfc1    $t5, $f6                   
/* 0110C 809E134C 02212821 */  addu    $a1, $s1, $at              
/* 01110 809E1350 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01114 809E1354 A72D0030 */  sh      $t5, 0x0030($t9)           ## 00000030
/* 01118 809E1358 C7AA0034 */  lwc1    $f10, 0x0034($sp)          
/* 0111C 809E135C C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 01120 809E1360 8E180254 */  lw      $t8, 0x0254($s0)           ## 00000254
/* 01124 809E1364 460A4400 */  add.s   $f16, $f8, $f10            
/* 01128 809E1368 4600848D */  trunc.w.s $f18, $f16                 
/* 0112C 809E136C 440F9000 */  mfc1    $t7, $f18                  
/* 01130 809E1370 00000000 */  nop
/* 01134 809E1374 A70F0032 */  sh      $t7, 0x0032($t8)           ## 00000032
/* 01138 809E1378 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 0113C 809E137C 8E0A0254 */  lw      $t2, 0x0254($s0)           ## 00000254
/* 01140 809E1380 4600218D */  trunc.w.s $f6, $f4                   
/* 01144 809E1384 44093000 */  mfc1    $t1, $f6                   
/* 01148 809E1388 00000000 */  nop
/* 0114C 809E138C A5490034 */  sh      $t1, 0x0034($t2)           ## 00000034
/* 01150 809E1390 8E0C01C0 */  lw      $t4, 0x01C0($s0)           ## 000001C0
/* 01154 809E1394 556C0004 */  bnel    $t3, $t4, .L809E13A8       
/* 01158 809E1398 920D0249 */  lbu     $t5, 0x0249($s0)           ## 00000249
/* 0115C 809E139C 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 01160 809E13A0 26060238 */  addiu   $a2, $s0, 0x0238           ## $a2 = 00000238
/* 01164 809E13A4 920D0249 */  lbu     $t5, 0x0249($s0)           ## 00000249
.L809E13A8:
/* 01168 809E13A8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0116C 809E13AC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01170 809E13B0 31B90001 */  andi    $t9, $t5, 0x0001           ## $t9 = 00000000
/* 01174 809E13B4 13200004 */  beq     $t9, $zero, .L809E13C8     
/* 01178 809E13B8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0117C 809E13BC 02212821 */  addu    $a1, $s1, $at              
/* 01180 809E13C0 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01184 809E13C4 26060238 */  addiu   $a2, $s0, 0x0238           ## $a2 = 00000238
.L809E13C8:
/* 01188 809E13C8 8FAE002C */  lw      $t6, 0x002C($sp)           
/* 0118C 809E13CC 8E0F01C0 */  lw      $t7, 0x01C0($s0)           ## 000001C0
/* 01190 809E13D0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01194 809E13D4 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01198 809E13D8 11CF0004 */  beq     $t6, $t7, .L809E13EC       
/* 0119C 809E13DC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 011A0 809E13E0 02212821 */  addu    $a1, $s1, $at              
/* 011A4 809E13E4 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 011A8 809E13E8 26060238 */  addiu   $a2, $s0, 0x0238           ## $a2 = 00000238
.L809E13EC:
/* 011AC 809E13EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011B0 809E13F0 0C00B56E */  jal     Actor_SetHeight
              
/* 011B4 809E13F4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 011B8 809E13F8 921800AF */  lbu     $t8, 0x00AF($s0)           ## 000000AF
/* 011BC 809E13FC 2604017C */  addiu   $a0, $s0, 0x017C           ## $a0 = 0000017C
/* 011C0 809E1400 53000008 */  beql    $t8, $zero, .L809E1424     
/* 011C4 809E1404 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 011C8 809E1408 0C0295B2 */  jal     func_800A56C8              
/* 011CC 809E140C 3C054040 */  lui     $a1, 0x4040                ## $a1 = 40400000
/* 011D0 809E1410 10400003 */  beq     $v0, $zero, .L809E1420     
/* 011D4 809E1414 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011D8 809E1418 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 011DC 809E141C 24053897 */  addiu   $a1, $zero, 0x3897         ## $a1 = 00003897
.L809E1420:
/* 011E0 809E1420 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809E1424:
/* 011E4 809E1424 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 011E8 809E1428 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 011EC 809E142C 03E00008 */  jr      $ra                        
/* 011F0 809E1430 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
