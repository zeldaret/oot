glabel func_80A9B8D8
/* 00938 80A9B8D8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0093C 80A9B8DC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00940 80A9B8E0 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00944 80A9B8E4 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00948 80A9B8E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0094C 80A9B8EC 0C00BD04 */  jal     func_8002F410              
/* 00950 80A9B8F0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00954 80A9B8F4 5040000B */  beql    $v0, $zero, .L80A9B924     
/* 00958 80A9B8F8 92020161 */  lbu     $v0, 0x0161($s0)           ## 00000161
/* 0095C 80A9B8FC 0C2A6EA6 */  jal     func_80A9BA98              
/* 00960 80A9B900 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00964 80A9B904 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00968 80A9B908 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 0096C 80A9B90C 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00970 80A9B910 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00974 80A9B914 24070869 */  addiu   $a3, $zero, 0x0869         ## $a3 = 00000869
/* 00978 80A9B918 1000005B */  beq     $zero, $zero, .L80A9BA88   
/* 0097C 80A9B91C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00980 80A9B920 92020161 */  lbu     $v0, 0x0161($s0)           ## 00000161
.L80A9B924:
/* 00984 80A9B924 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00988 80A9B928 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0098C 80A9B92C 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 00990 80A9B930 11C00021 */  beq     $t6, $zero, .L80A9B9B8     
/* 00994 80A9B934 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 00998 80A9B938 0C2A6C87 */  jal     func_80A9B21C              
/* 0099C 80A9B93C A20F0161 */  sb      $t7, 0x0161($s0)           ## 00000161
/* 009A0 80A9B940 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009A4 80A9B944 0C2A6C1F */  jal     func_80A9B07C              
/* 009A8 80A9B948 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 009AC 80A9B94C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 009B0 80A9B950 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 009B4 80A9B954 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 009B8 80A9B958 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 009BC 80A9B95C 2407284E */  addiu   $a3, $zero, 0x284E         ## $a3 = 0000284E
/* 009C0 80A9B960 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 009C4 80A9B964 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009C8 80A9B968 0002C103 */  sra     $t8, $v0,  4               
/* 009CC 80A9B96C 33190001 */  andi    $t9, $t8, 0x0001           ## $t9 = 00000000
/* 009D0 80A9B970 53200005 */  beql    $t9, $zero, .L80A9B988     
/* 009D4 80A9B974 30480003 */  andi    $t0, $v0, 0x0003           ## $t0 = 00000000
/* 009D8 80A9B978 0C2A6D5D */  jal     func_80A9B574              
/* 009DC 80A9B97C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 009E0 80A9B980 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 009E4 80A9B984 30480003 */  andi    $t0, $v0, 0x0003           ## $t0 = 00000000
.L80A9B988:
/* 009E8 80A9B988 15000005 */  bne     $t0, $zero, .L80A9B9A0     
/* 009EC 80A9B98C 00000000 */  nop
/* 009F0 80A9B990 0C00B55C */  jal     Actor_Kill
              
/* 009F4 80A9B994 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009F8 80A9B998 1000003B */  beq     $zero, $zero, .L80A9BA88   
/* 009FC 80A9B99C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A9B9A0:
/* 00A00 80A9B9A0 0C2A6FAB */  jal     func_80A9BEAC              
/* 00A04 80A9B9A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A08 80A9B9A8 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
/* 00A0C 80A9B9AC 352A0800 */  ori     $t2, $t1, 0x0800           ## $t2 = 00000800
/* 00A10 80A9B9B0 10000034 */  beq     $zero, $zero, .L80A9BA84   
/* 00A14 80A9B9B4 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
.L80A9B9B8:
/* 00A18 80A9B9B8 92020162 */  lbu     $v0, 0x0162($s0)           ## 00000162
/* 00A1C 80A9B9BC 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 00A20 80A9B9C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A24 80A9B9C4 304B0008 */  andi    $t3, $v0, 0x0008           ## $t3 = 00000000
/* 00A28 80A9B9C8 15600009 */  bne     $t3, $zero, .L80A9B9F0     
/* 00A2C 80A9B9CC 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 00A30 80A9B9D0 44812000 */  mtc1    $at, $f4                   ## $f4 = 12.00
/* 00A34 80A9B9D4 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 00A38 80A9B9D8 344C0008 */  ori     $t4, $v0, 0x0008           ## $t4 = 00000008
/* 00A3C 80A9B9DC 4606203C */  c.lt.s  $f4, $f6                   
/* 00A40 80A9B9E0 00000000 */  nop
/* 00A44 80A9B9E4 45020003 */  bc1fl   .L80A9B9F4                 
/* 00A48 80A9B9E8 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 00A4C 80A9B9EC A20C0162 */  sb      $t4, 0x0162($s0)           ## 00000162
.L80A9B9F0:
/* 00A50 80A9B9F0 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
.L80A9B9F4:
/* 00A54 80A9B9F4 44815000 */  mtc1    $at, $f10                  ## $f10 = 600.00
/* 00A58 80A9B9F8 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 00A5C 80A9B9FC 460A403C */  c.lt.s  $f8, $f10                  
/* 00A60 80A9BA00 00000000 */  nop
/* 00A64 80A9BA04 45020020 */  bc1fl   .L80A9BA88                 
/* 00A68 80A9BA08 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A6C 80A9BA0C 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00A70 80A9BA10 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 00A74 80A9BA14 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00A78 80A9BA18 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00A7C 80A9BA1C 02212821 */  addu    $a1, $s1, $at              
/* 00A80 80A9BA20 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00A84 80A9BA24 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A88 80A9BA28 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00A8C 80A9BA2C 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00A90 80A9BA30 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 00A94 80A9BA34 44819000 */  mtc1    $at, $f18                  ## $f18 = 400.00
/* 00A98 80A9BA38 C6100090 */  lwc1    $f16, 0x0090($s0)          ## 00000090
/* 00A9C 80A9BA3C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00AA0 80A9BA40 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00AA4 80A9BA44 4612803C */  c.lt.s  $f16, $f18                 
/* 00AA8 80A9BA48 00000000 */  nop
/* 00AAC 80A9BA4C 4502000E */  bc1fl   .L80A9BA88                 
/* 00AB0 80A9BA50 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00AB4 80A9BA54 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00AB8 80A9BA58 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00ABC 80A9BA5C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00AC0 80A9BA60 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 00AC4 80A9BA64 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 00AC8 80A9BA68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00ACC 80A9BA6C 4606203C */  c.lt.s  $f4, $f6                   
/* 00AD0 80A9BA70 00000000 */  nop
/* 00AD4 80A9BA74 45020004 */  bc1fl   .L80A9BA88                 
/* 00AD8 80A9BA78 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00ADC 80A9BA7C 0C00BD60 */  jal     func_8002F580              
/* 00AE0 80A9BA80 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
.L80A9BA84:
/* 00AE4 80A9BA84 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A9BA88:
/* 00AE8 80A9BA88 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00AEC 80A9BA8C 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00AF0 80A9BA90 03E00008 */  jr      $ra                        
/* 00AF4 80A9BA94 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
