glabel EnDh_Update
/* 012B8 809EBFF8 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 012BC 809EBFFC AFBF002C */  sw      $ra, 0x002C($sp)           
/* 012C0 809EC000 AFB20028 */  sw      $s2, 0x0028($sp)           
/* 012C4 809EC004 AFB10024 */  sw      $s1, 0x0024($sp)           
/* 012C8 809EC008 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 012CC 809EC00C 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 012D0 809EC010 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 012D4 809EC014 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 012D8 809EC018 0C27AFAA */  jal     func_809EBEA8              
/* 012DC 809EC01C AFAE0044 */  sw      $t6, 0x0044($sp)           
/* 012E0 809EC020 8E190254 */  lw      $t9, 0x0254($s0)           ## 00000254
/* 012E4 809EC024 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012E8 809EC028 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 012EC 809EC02C 0320F809 */  jalr    $ra, $t9                   
/* 012F0 809EC030 00000000 */  nop
/* 012F4 809EC034 0C00B638 */  jal     Actor_MoveForward
              
/* 012F8 809EC038 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012FC 809EC03C 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 01300 809EC040 44810000 */  mtc1    $at, $f0                   ## $f0 = 45.00
/* 01304 809EC044 240F001D */  addiu   $t7, $zero, 0x001D         ## $t7 = 0000001D
/* 01308 809EC048 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 0130C 809EC04C 44070000 */  mfc1    $a3, $f0                   
/* 01310 809EC050 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01314 809EC054 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01318 809EC058 3C0641A0 */  lui     $a2, 0x41A0                ## $a2 = 41A00000
/* 0131C 809EC05C 0C00B92D */  jal     func_8002E4B4              
/* 01320 809EC060 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 01324 809EC064 8E08030C */  lw      $t0, 0x030C($s0)           ## 0000030C
/* 01328 809EC068 8E180310 */  lw      $t8, 0x0310($s0)           ## 00000310
/* 0132C 809EC06C 26050260 */  addiu   $a1, $s0, 0x0260           ## $a1 = 00000260
/* 01330 809EC070 AE080038 */  sw      $t0, 0x0038($s0)           ## 00000038
/* 01334 809EC074 8E080314 */  lw      $t0, 0x0314($s0)           ## 00000314
/* 01338 809EC078 AE18003C */  sw      $t8, 0x003C($s0)           ## 0000003C
/* 0133C 809EC07C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01340 809EC080 AE080040 */  sw      $t0, 0x0040($s0)           ## 00000040
/* 01344 809EC084 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 01348 809EC088 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0134C 809EC08C 920900AF */  lbu     $t1, 0x00AF($s0)           ## 000000AF
/* 01350 809EC090 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01354 809EC094 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01358 809EC098 19200033 */  blez    $t1, .L809EC168            
/* 0135C 809EC09C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01360 809EC0A0 920A025B */  lbu     $t2, 0x025B($s0)           ## 0000025B
/* 01364 809EC0A4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01368 809EC0A8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 0136C 809EC0AC 1540000A */  bne     $t2, $zero, .L809EC0D8     
/* 01370 809EC0B0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01374 809EC0B4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01378 809EC0B8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 0137C 809EC0BC 02219021 */  addu    $s2, $s1, $at              
/* 01380 809EC0C0 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 01384 809EC0C4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01388 809EC0C8 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 0138C 809EC0CC 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 01390 809EC0D0 10000006 */  beq     $zero, $zero, .L809EC0EC   
/* 01394 809EC0D4 920B025B */  lbu     $t3, 0x025B($s0)           ## 0000025B
.L809EC0D8:
/* 01398 809EC0D8 02219021 */  addu    $s2, $s1, $at              
/* 0139C 809EC0DC 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 013A0 809EC0E0 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 013A4 809EC0E4 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 013A8 809EC0E8 920B025B */  lbu     $t3, 0x025B($s0)           ## 0000025B
.L809EC0EC:
/* 013AC 809EC0EC 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 013B0 809EC0F0 8FA20044 */  lw      $v0, 0x0044($sp)           
/* 013B4 809EC0F4 51610008 */  beql    $t3, $at, .L809EC118       
/* 013B8 809EC0F8 804C0844 */  lb      $t4, 0x0844($v0)           ## 00000844
/* 013BC 809EC0FC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 013C0 809EC100 C60600BC */  lwc1    $f6, 0x00BC($s0)           ## 000000BC
/* 013C4 809EC104 46062032 */  c.eq.s  $f4, $f6                   
/* 013C8 809EC108 00000000 */  nop
/* 013CC 809EC10C 45030008 */  bc1tl   .L809EC130                 
/* 013D0 809EC110 260602AC */  addiu   $a2, $s0, 0x02AC           ## $a2 = 000002AC
/* 013D4 809EC114 804C0844 */  lb      $t4, 0x0844($v0)           ## 00000844
.L809EC118:
/* 013D8 809EC118 5180001C */  beql    $t4, $zero, .L809EC18C     
/* 013DC 809EC11C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 013E0 809EC120 920D0258 */  lbu     $t5, 0x0258($s0)           ## 00000258
/* 013E4 809EC124 904E0845 */  lbu     $t6, 0x0845($v0)           ## 00000845
/* 013E8 809EC128 11AE0017 */  beq     $t5, $t6, .L809EC188       
/* 013EC 809EC12C 260602AC */  addiu   $a2, $s0, 0x02AC           ## $a2 = 000002AC
.L809EC130:
/* 013F0 809EC130 AFA60038 */  sw      $a2, 0x0038($sp)           
/* 013F4 809EC134 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 013F8 809EC138 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 013FC 809EC13C 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 01400 809EC140 8FA60038 */  lw      $a2, 0x0038($sp)           
/* 01404 809EC144 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01408 809EC148 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 0140C 809EC14C 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 01410 809EC150 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01414 809EC154 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 01418 809EC158 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 0141C 809EC15C 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 01420 809EC160 1000000A */  beq     $zero, $zero, .L809EC18C   
/* 01424 809EC164 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809EC168:
/* 01428 809EC168 02219021 */  addu    $s2, $s1, $at              
/* 0142C 809EC16C 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 01430 809EC170 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 01434 809EC174 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 01438 809EC178 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0143C 809EC17C 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 01440 809EC180 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 01444 809EC184 260602AC */  addiu   $a2, $s0, 0x02AC           ## $a2 = 000002AC
.L809EC188:
/* 01448 809EC188 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809EC18C:
/* 0144C 809EC18C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01450 809EC190 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 01454 809EC194 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 01458 809EC198 03E00008 */  jr      $ra                        
/* 0145C 809EC19C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000


