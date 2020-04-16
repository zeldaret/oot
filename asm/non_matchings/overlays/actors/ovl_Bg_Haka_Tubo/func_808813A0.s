.late_rodata
glabel D_80881C0C
    .float -5559.0
glabel D_80881C10
    .float -1587.0

.text
glabel func_808813A0
/* 00150 808813A0 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00154 808813A4 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00158 808813A8 AFB10030 */  sw      $s1, 0x0030($sp)           
/* 0015C 808813AC AFB0002C */  sw      $s0, 0x002C($sp)           
/* 00160 808813B0 808E0003 */  lb      $t6, 0x0003($a0)           ## 00000003
/* 00164 808813B4 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 00168 808813B8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0016C 808813BC 15C1001C */  bne     $t6, $at, .L80881430       
/* 00170 808813C0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00174 808813C4 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 00178 808813C8 25F80180 */  addiu   $t8, $t7, 0x0180           ## $t8 = 00000180
/* 0017C 808813CC A49800B6 */  sh      $t8, 0x00B6($a0)           ## 000000B6
/* 00180 808813D0 848400B6 */  lh      $a0, 0x00B6($a0)           ## 000000B6
/* 00184 808813D4 2484C000 */  addiu   $a0, $a0, 0xC000           ## $a0 = FFFFC000
/* 00188 808813D8 00042400 */  sll     $a0, $a0, 16               
/* 0018C 808813DC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00190 808813E0 00042403 */  sra     $a0, $a0, 16               
/* 00194 808813E4 3C014311 */  lui     $at, 0x4311                ## $at = 43110000
/* 00198 808813E8 44812000 */  mtc1    $at, $f4                   ## $f4 = 145.00
/* 0019C 808813EC 3C018088 */  lui     $at, %hi(D_80881C0C)       ## $at = 80880000
/* 001A0 808813F0 C4281C0C */  lwc1    $f8, %lo(D_80881C0C)($at)  
/* 001A4 808813F4 46040182 */  mul.s   $f6, $f0, $f4              
/* 001A8 808813F8 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 001AC 808813FC 2484C000 */  addiu   $a0, $a0, 0xC000           ## $a0 = FFFFC000
/* 001B0 80881400 00042400 */  sll     $a0, $a0, 16               
/* 001B4 80881404 00042403 */  sra     $a0, $a0, 16               
/* 001B8 80881408 46083280 */  add.s   $f10, $f6, $f8             
/* 001BC 8088140C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 001C0 80881410 E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
/* 001C4 80881414 3C014311 */  lui     $at, 0x4311                ## $at = 43110000
/* 001C8 80881418 44818000 */  mtc1    $at, $f16                  ## $f16 = 145.00
/* 001CC 8088141C 3C018088 */  lui     $at, %hi(D_80881C10)       ## $at = 80880000
/* 001D0 80881420 C4241C10 */  lwc1    $f4, %lo(D_80881C10)($at)  
/* 001D4 80881424 46100482 */  mul.s   $f18, $f0, $f16            
/* 001D8 80881428 46049180 */  add.s   $f6, $f18, $f4             
/* 001DC 8088142C E606002C */  swc1    $f6, 0x002C($s0)           ## 0000002C
.L80881430:
/* 001E0 80881430 920201C8 */  lbu     $v0, 0x01C8($s0)           ## 000001C8
/* 001E4 80881434 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 001E8 80881438 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001EC 8088143C 30590002 */  andi    $t9, $v0, 0x0002           ## $t9 = 00000000
/* 001F0 80881440 13200008 */  beq     $t9, $zero, .L80881464     
/* 001F4 80881444 3048FFFD */  andi    $t0, $v0, 0xFFFD           ## $t0 = 00000000
/* 001F8 80881448 44810000 */  mtc1    $at, $f0                   ## $f0 = 5.00
/* 001FC 8088144C A20801C8 */  sb      $t0, 0x01C8($s0)           ## 000001C8
/* 00200 80881450 8607008A */  lh      $a3, 0x008A($s0)           ## 0000008A
/* 00204 80881454 44060000 */  mfc1    $a2, $f0                   
/* 00208 80881458 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0020C 8088145C 0C00BDC7 */  jal     func_8002F71C              
/* 00210 80881460 E7A00010 */  swc1    $f0, 0x0010($sp)           
.L80881464:
/* 00214 80881464 9202017D */  lbu     $v0, 0x017D($s0)           ## 0000017D
/* 00218 80881468 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0021C 8088146C 260501B8 */  addiu   $a1, $s0, 0x01B8           ## $a1 = 000001B8
/* 00220 80881470 30490002 */  andi    $t1, $v0, 0x0002           ## $t1 = 00000000
/* 00224 80881474 11200049 */  beq     $t1, $zero, .L8088159C     
/* 00228 80881478 304AFFFD */  andi    $t2, $v0, 0xFFFD           ## $t2 = 00000000
/* 0022C 8088147C 8E050174 */  lw      $a1, 0x0174($s0)           ## 00000174
/* 00230 80881480 A20A017D */  sb      $t2, 0x017D($s0)           ## 0000017D
/* 00234 80881484 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00238 80881488 0C00B6EC */  jal     func_8002DBB0              
/* 0023C 8088148C 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 000001DC
/* 00240 80881490 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00244 80881494 44811000 */  mtc1    $at, $f2                   ## $f2 = 50.00
/* 00248 80881498 00000000 */  nop
/* 0024C 8088149C 4602003C */  c.lt.s  $f0, $f2                   
/* 00250 808814A0 00000000 */  nop
/* 00254 808814A4 45020054 */  bc1fl   .L808815F8                 
/* 00258 808814A8 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 0025C 808814AC 8E0B0174 */  lw      $t3, 0x0174($s0)           ## 00000174
/* 00260 808814B0 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 00264 808814B4 3C068088 */  lui     $a2, %hi(D_80881BC0)       ## $a2 = 80880000
/* 00268 808814B8 C5680028 */  lwc1    $f8, 0x0028($t3)           ## 00000028
/* 0026C 808814BC 24C61BC0 */  addiu   $a2, $a2, %lo(D_80881BC0)  ## $a2 = 80881BC0
/* 00270 808814C0 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00274 808814C4 460A4401 */  sub.s   $f16, $f8, $f10            
/* 00278 808814C8 4602803C */  c.lt.s  $f16, $f2                  
/* 0027C 808814CC 00000000 */  nop
/* 00280 808814D0 45020049 */  bc1fl   .L808815F8                 
/* 00284 808814D4 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00288 808814D8 C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000024
/* 0028C 808814DC 44814000 */  mtc1    $at, $f8                   ## $f8 = 80.00
/* 00290 808814E0 240C0064 */  addiu   $t4, $zero, 0x0064         ## $t4 = 00000064
/* 00294 808814E4 E7B20044 */  swc1    $f18, 0x0044($sp)          
/* 00298 808814E8 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 0029C 808814EC 240D002D */  addiu   $t5, $zero, 0x002D         ## $t5 = 0000002D
/* 002A0 808814F0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 002A4 808814F4 E7A4004C */  swc1    $f4, 0x004C($sp)           
/* 002A8 808814F8 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 002AC 808814FC AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 002B0 80881500 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 002B4 80881504 46083280 */  add.s   $f10, $f6, $f8             
/* 002B8 80881508 27A50044 */  addiu   $a1, $sp, 0x0044           ## $a1 = FFFFFFF4
/* 002BC 8088150C 00C03825 */  or      $a3, $a2, $zero            ## $a3 = 80881BC0
/* 002C0 80881510 0C00A3A1 */  jal     func_80028E84              
/* 002C4 80881514 E7AA0048 */  swc1    $f10, 0x0048($sp)          
/* 002C8 80881518 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 002CC 8088151C 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 002D0 80881520 24060032 */  addiu   $a2, $zero, 0x0032         ## $a2 = 00000032
/* 002D4 80881524 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 002D8 80881528 24072839 */  addiu   $a3, $zero, 0x2839         ## $a3 = 00002839
/* 002DC 8088152C 3C090401 */  lui     $t1, 0x0401                ## $t1 = 04010000
/* 002E0 80881530 2529CD80 */  addiu   $t1, $t1, 0xCD80           ## $t1 = 0400CD80
/* 002E4 80881534 240E015E */  addiu   $t6, $zero, 0x015E         ## $t6 = 0000015E
/* 002E8 80881538 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 002EC 8088153C 24180032 */  addiu   $t8, $zero, 0x0032         ## $t8 = 00000032
/* 002F0 80881540 24190069 */  addiu   $t9, $zero, 0x0069         ## $t9 = 00000069
/* 002F4 80881544 24080028 */  addiu   $t0, $zero, 0x0028         ## $t0 = 00000028
/* 002F8 80881548 AFA80020 */  sw      $t0, 0x0020($sp)           
/* 002FC 8088154C AFB9001C */  sw      $t9, 0x001C($sp)           
/* 00300 80881550 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00304 80881554 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00308 80881558 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0030C 8088155C AFA90024 */  sw      $t1, 0x0024($sp)           
/* 00310 80881560 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00314 80881564 27A50044 */  addiu   $a1, $sp, 0x0044           ## $a1 = FFFFFFF4
/* 00318 80881568 3C0641A0 */  lui     $a2, 0x41A0                ## $a2 = 41A00000
/* 0031C 8088156C 0C00A5E9 */  jal     func_800297A4              
/* 00320 80881570 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00324 80881574 240A0005 */  addiu   $t2, $zero, 0x0005         ## $t2 = 00000005
/* 00328 80881578 A60A0168 */  sh      $t2, 0x0168($s0)           ## 00000168
/* 0032C 8088157C AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
/* 00330 80881580 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00334 80881584 0C00B58B */  jal     Actor_SetScale
              
/* 00338 80881588 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0033C 8088158C 3C0B8088 */  lui     $t3, %hi(func_80881608)    ## $t3 = 80880000
/* 00340 80881590 256B1608 */  addiu   $t3, $t3, %lo(func_80881608) ## $t3 = 80881608
/* 00344 80881594 10000017 */  beq     $zero, $zero, .L808815F4   
/* 00348 80881598 AE0B0164 */  sw      $t3, 0x0164($s0)           ## 00000164
.L8088159C:
/* 0034C 8088159C 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00350 808815A0 AFA50040 */  sw      $a1, 0x0040($sp)           
/* 00354 808815A4 2606016C */  addiu   $a2, $s0, 0x016C           ## $a2 = 0000016C
/* 00358 808815A8 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000016C
/* 0035C 808815AC AFA6003C */  sw      $a2, 0x003C($sp)           
/* 00360 808815B0 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00364 808815B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00368 808815B8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0036C 808815BC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00370 808815C0 02218021 */  addu    $s0, $s1, $at              
/* 00374 808815C4 8FA6003C */  lw      $a2, 0x003C($sp)           
/* 00378 808815C8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0037C 808815CC 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00380 808815D0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00384 808815D4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00388 808815D8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0038C 808815DC 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00390 808815E0 8FA60040 */  lw      $a2, 0x0040($sp)           
/* 00394 808815E4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00398 808815E8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0039C 808815EC 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 003A0 808815F0 8FA60040 */  lw      $a2, 0x0040($sp)           
.L808815F4:
/* 003A4 808815F4 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L808815F8:
/* 003A8 808815F8 8FB0002C */  lw      $s0, 0x002C($sp)           
/* 003AC 808815FC 8FB10030 */  lw      $s1, 0x0030($sp)           
/* 003B0 80881600 03E00008 */  jr      $ra                        
/* 003B4 80881604 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
