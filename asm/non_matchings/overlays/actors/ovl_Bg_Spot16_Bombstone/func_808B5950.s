glabel func_808B5950
/* 00D20 808B5950 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00D24 808B5954 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00D28 808B5958 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00D2C 808B595C AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00D30 808B5960 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00D34 808B5964 0C22D5AF */  jal     func_808B56BC              
/* 00D38 808B5968 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00D3C 808B596C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00D40 808B5970 0C22D5F8 */  jal     func_808B57E0              
/* 00D44 808B5974 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00D48 808B5978 922201D5 */  lbu     $v0, 0x01D5($s1)           ## 000001D5
/* 00D4C 808B597C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00D50 808B5980 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00D54 808B5984 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 00D58 808B5988 11C00018 */  beq     $t6, $zero, .L808B59EC     
/* 00D5C 808B598C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D60 808B5990 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 00D64 808B5994 A22F01D5 */  sb      $t7, 0x01D5($s1)           ## 000001D5
/* 00D68 808B5998 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00D6C 808B599C 0C22D587 */  jal     func_808B561C              
/* 00D70 808B59A0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00D74 808B59A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D78 808B59A8 24051054 */  addiu   $a1, $zero, 0x1054         ## $a1 = 00001054
/* 00D7C 808B59AC 24060032 */  addiu   $a2, $zero, 0x0032         ## $a2 = 00000032
/* 00D80 808B59B0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00D84 808B59B4 0C02003E */  jal     func_800800F8              
/* 00D88 808B59B8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00D8C 808B59BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D90 808B59C0 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00D94 808B59C4 86250156 */  lh      $a1, 0x0156($s1)           ## 00000156
/* 00D98 808B59C8 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00D9C 808B59CC 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00DA0 808B59D0 94580ED8 */  lhu     $t8, 0x0ED8($v0)           ## 8015F538
/* 00DA4 808B59D4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00DA8 808B59D8 37190008 */  ori     $t9, $t8, 0x0008           ## $t9 = 00000008
/* 00DAC 808B59DC 0C22D69E */  jal     func_808B5A78              
/* 00DB0 808B59E0 A4590ED8 */  sh      $t9, 0x0ED8($v0)           ## 8015F538
/* 00DB4 808B59E4 1000000E */  beq     $zero, $zero, .L808B5A20   
/* 00DB8 808B59E8 00000000 */  nop
.L808B59EC:
/* 00DBC 808B59EC 02012821 */  addu    $a1, $s0, $at              
/* 00DC0 808B59F0 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00DC4 808B59F4 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00DC8 808B59F8 262601C4 */  addiu   $a2, $s1, 0x01C4           ## $a2 = 000001C4
/* 00DCC 808B59FC 26260164 */  addiu   $a2, $s1, 0x0164           ## $a2 = 00000164
/* 00DD0 808B5A00 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 00DD4 808B5A04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DD8 808B5A08 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00DDC 808B5A0C 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00DE0 808B5A10 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 00DE4 808B5A14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DE8 808B5A18 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00DEC 808B5A1C 8FA50030 */  lw      $a1, 0x0030($sp)           
.L808B5A20:
/* 00DF0 808B5A20 3C038016 */  lui     $v1, %hi(gGameInfo)
/* 00DF4 808B5A24 8C63FA90 */  lw      $v1, %lo(gGameInfo)($v1)
/* 00DF8 808B5A28 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00DFC 808B5A2C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00E00 808B5A30 846211D4 */  lh      $v0, 0x11D4($v1)           ## 801611D4
/* 00E04 808B5A34 14410008 */  bne     $v0, $at, .L808B5A58       
/* 00E08 808B5A38 00000000 */  nop
/* 00E0C 808B5A3C 0C22D587 */  jal     func_808B561C              
/* 00E10 808B5A40 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00E14 808B5A44 3C098016 */  lui     $t1, %hi(gGameInfo)
/* 00E18 808B5A48 8D29FA90 */  lw      $t1, %lo(gGameInfo)($t1)
/* 00E1C 808B5A4C 2408FFF6 */  addiu   $t0, $zero, 0xFFF6         ## $t0 = FFFFFFF6
/* 00E20 808B5A50 10000004 */  beq     $zero, $zero, .L808B5A64   
/* 00E24 808B5A54 A52811D4 */  sh      $t0, 0x11D4($t1)           ## 801611D4
.L808B5A58:
/* 00E28 808B5A58 04410002 */  bgez    $v0, .L808B5A64            
/* 00E2C 808B5A5C 244A0001 */  addiu   $t2, $v0, 0x0001           ## $t2 = 00000001
/* 00E30 808B5A60 A46A11D4 */  sh      $t2, 0x11D4($v1)           ## 000011D4
.L808B5A64:
/* 00E34 808B5A64 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00E38 808B5A68 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00E3C 808B5A6C 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00E40 808B5A70 03E00008 */  jr      $ra                        
/* 00E44 808B5A74 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
