glabel EnVm_Update
/* 00CE8 80B2E148 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00CEC 80B2E14C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00CF0 80B2E150 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 00CF4 80B2E154 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00CF8 80B2E158 908E00AF */  lbu     $t6, 0x00AF($a0)           ## 000000AF
/* 00CFC 80B2E15C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D00 80B2E160 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00D04 80B2E164 51C00004 */  beql    $t6, $zero, .L80B2E178     
/* 00D08 80B2E168 860F0260 */  lh      $t7, 0x0260($s0)           ## 00000260
/* 00D0C 80B2E16C 0C2CB80D */  jal     func_80B2E034              
/* 00D10 80B2E170 00000000 */  nop
/* 00D14 80B2E174 860F0260 */  lh      $t7, 0x0260($s0)           ## 00000260
.L80B2E178:
/* 00D18 80B2E178 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00D1C 80B2E17C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00D20 80B2E180 15E10017 */  bne     $t7, $at, .L80B2E1E0       
/* 00D24 80B2E184 2605023C */  addiu   $a1, $s0, 0x023C           ## $a1 = 0000023C
/* 00D28 80B2E188 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 00D2C 80B2E18C 24190014 */  addiu   $t9, $zero, 0x0014         ## $t9 = 00000014
/* 00D30 80B2E190 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00D34 80B2E194 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00D38 80B2E198 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00D3C 80B2E19C 2407FFFF */  addiu   $a3, $zero, 0xFFFF         ## $a3 = FFFFFFFF
/* 00D40 80B2E1A0 0C00AA43 */  jal     func_8002A90C              
/* 00D44 80B2E1A4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00D48 80B2E1A8 24080078 */  addiu   $t0, $zero, 0x0078         ## $t0 = 00000078
/* 00D4C 80B2E1AC 24090014 */  addiu   $t1, $zero, 0x0014         ## $t1 = 00000014
/* 00D50 80B2E1B0 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00D54 80B2E1B4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00D58 80B2E1B8 AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 00D5C 80B2E1BC AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00D60 80B2E1C0 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00D64 80B2E1C4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00D68 80B2E1C8 3C0640C0 */  lui     $a2, 0x40C0                ## $a2 = 40C00000
/* 00D6C 80B2E1CC 0C00CD20 */  jal     func_80033480              
/* 00D70 80B2E1D0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00D74 80B2E1D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D78 80B2E1D8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00D7C 80B2E1DC 24053172 */  addiu   $a1, $zero, 0x3172         ## $a1 = 00003172
.L80B2E1E0:
/* 00D80 80B2E1E0 8E190214 */  lw      $t9, 0x0214($s0)           ## 00000214
/* 00D84 80B2E1E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D88 80B2E1E8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00D8C 80B2E1EC 0320F809 */  jalr    $ra, $t9                   
/* 00D90 80B2E1F0 00000000 */  nop
/* 00D94 80B2E1F4 860B025A */  lh      $t3, 0x025A($s0)           ## 0000025A
/* 00D98 80B2E1F8 920D00AF */  lbu     $t5, 0x00AF($s0)           ## 000000AF
/* 00D9C 80B2E1FC 256C000C */  addiu   $t4, $t3, 0x000C           ## $t4 = 0000000C
/* 00DA0 80B2E200 11A00008 */  beq     $t5, $zero, .L80B2E224     
/* 00DA4 80B2E204 A60C025A */  sh      $t4, 0x025A($s0)           ## 0000025A
/* 00DA8 80B2E208 8E0E021C */  lw      $t6, 0x021C($s0)           ## 0000021C
/* 00DAC 80B2E20C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00DB0 80B2E210 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DB4 80B2E214 51C10004 */  beql    $t6, $at, .L80B2E228       
/* 00DB8 80B2E218 26050268 */  addiu   $a1, $s0, 0x0268           ## $a1 = 00000268
/* 00DBC 80B2E21C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00DC0 80B2E220 24053170 */  addiu   $a1, $zero, 0x3170         ## $a1 = 00003170
.L80B2E224:
/* 00DC4 80B2E224 26050268 */  addiu   $a1, $s0, 0x0268           ## $a1 = 00000268
.L80B2E228:
/* 00DC8 80B2E228 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00DCC 80B2E22C 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00DD0 80B2E230 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DD4 80B2E234 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00DD8 80B2E238 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00DDC 80B2E23C 02212821 */  addu    $a1, $s1, $at              
/* 00DE0 80B2E240 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00DE4 80B2E244 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00DE8 80B2E248 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00DEC 80B2E24C 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 00DF0 80B2E250 920F0114 */  lbu     $t7, 0x0114($s0)           ## 00000114
/* 00DF4 80B2E254 55E00009 */  bnel    $t7, $zero, .L80B2E27C     
/* 00DF8 80B2E258 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00DFC 80B2E25C 921800AF */  lbu     $t8, 0x00AF($s0)           ## 000000AF
/* 00E00 80B2E260 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00E04 80B2E264 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00E08 80B2E268 53000004 */  beql    $t8, $zero, .L80B2E27C     
/* 00E0C 80B2E26C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00E10 80B2E270 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00E14 80B2E274 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 00E18 80B2E278 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80B2E27C:
/* 00E1C 80B2E27C 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00E20 80B2E280 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00E24 80B2E284 26060334 */  addiu   $a2, $s0, 0x0334           ## $a2 = 00000334
/* 00E28 80B2E288 8E090024 */  lw      $t1, 0x0024($s0)           ## 00000024
/* 00E2C 80B2E28C 8E080028 */  lw      $t0, 0x0028($s0)           ## 00000028
/* 00E30 80B2E290 3C0180B3 */  lui     $at, %hi(D_80B2EC24)       ## $at = 80B30000
/* 00E34 80B2E294 AE090038 */  sw      $t1, 0x0038($s0)           ## 00000038
/* 00E38 80B2E298 8E09002C */  lw      $t1, 0x002C($s0)           ## 0000002C
/* 00E3C 80B2E29C AE08003C */  sw      $t0, 0x003C($s0)           ## 0000003C
/* 00E40 80B2E2A0 C60600BC */  lwc1    $f6, 0x00BC($s0)           ## 000000BC
/* 00E44 80B2E2A4 AE090040 */  sw      $t1, 0x0040($s0)           ## 00000040
/* 00E48 80B2E2A8 C424EC24 */  lwc1    $f4, %lo(D_80B2EC24)($at)  
/* 00E4C 80B2E2AC C60A0054 */  lwc1    $f10, 0x0054($s0)          ## 00000054
/* 00E50 80B2E2B0 C612003C */  lwc1    $f18, 0x003C($s0)          ## 0000003C
/* 00E54 80B2E2B4 46062200 */  add.s   $f8, $f4, $f6              
/* 00E58 80B2E2B8 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00E5C 80B2E2BC 46109100 */  add.s   $f4, $f18, $f16            
/* 00E60 80B2E2C0 E604003C */  swc1    $f4, 0x003C($s0)           ## 0000003C
/* 00E64 80B2E2C4 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00E68 80B2E2C8 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 00E6C 80B2E2CC 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 00E70 80B2E2D0 03E00008 */  jr      $ra                        
/* 00E74 80B2E2D4 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000


