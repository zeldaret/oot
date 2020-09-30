.late_rodata
glabel D_809B2428
    .float -11000.0
glabel D_809B242C
    .float -3000.0
glabel D_809B2430
    .float 3.1415927 # pi
glabel D_809B2434
    .float 3.1415927 # pi

.text
glabel func_809B1A54
/* 00934 809B1A54 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 00938 809B1A58 3C0F809B */  lui     $t7, %hi(D_809B231C)       ## $t7 = 809B0000
/* 0093C 809B1A5C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00940 809B1A60 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00944 809B1A64 AFA50064 */  sw      $a1, 0x0064($sp)           
/* 00948 809B1A68 25EF231C */  addiu   $t7, $t7, %lo(D_809B231C)  ## $t7 = 809B231C
/* 0094C 809B1A6C 8DF90000 */  lw      $t9, 0x0000($t7)           ## 809B231C
/* 00950 809B1A70 27AE004C */  addiu   $t6, $sp, 0x004C           ## $t6 = FFFFFFEC
/* 00954 809B1A74 8DF80004 */  lw      $t8, 0x0004($t7)           ## 809B2320
/* 00958 809B1A78 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFEC
/* 0095C 809B1A7C 8DF90008 */  lw      $t9, 0x0008($t7)           ## 809B2324
/* 00960 809B1A80 3C09809B */  lui     $t1, %hi(D_809B2328)       ## $t1 = 809B0000
/* 00964 809B1A84 25292328 */  addiu   $t1, $t1, %lo(D_809B2328)  ## $t1 = 809B2328
/* 00968 809B1A88 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF0
/* 0096C 809B1A8C ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF4
/* 00970 809B1A90 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 809B2328
/* 00974 809B1A94 27A80040 */  addiu   $t0, $sp, 0x0040           ## $t0 = FFFFFFE0
/* 00978 809B1A98 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 809B232C
/* 0097C 809B1A9C AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE0
/* 00980 809B1AA0 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 809B2330
/* 00984 809B1AA4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00988 809B1AA8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0098C 809B1AAC AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFE4
/* 00990 809B1AB0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00994 809B1AB4 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFE8
/* 00998 809B1AB8 3C053ECC */  lui     $a1, 0x3ECC                ## $a1 = 3ECC0000
/* 0099C 809B1ABC 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3ECCCCCD
/* 009A0 809B1AC0 260400C4 */  addiu   $a0, $s0, 0x00C4           ## $a0 = 000000C4
/* 009A4 809B1AC4 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 009A8 809B1AC8 3C063E80 */  lui     $a2, 0x3E80                ## $a2 = 3E800000
/* 009AC 809B1ACC 860C0256 */  lh      $t4, 0x0256($s0)           ## 00000256
/* 009B0 809B1AD0 11800015 */  beq     $t4, $zero, .L809B1B28     
/* 009B4 809B1AD4 00000000 */  nop
/* 009B8 809B1AD8 86050258 */  lh      $a1, 0x0258($s0)           ## 00000258
/* 009BC 809B1ADC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 009C0 809B1AE0 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 009C4 809B1AE4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 009C8 809B1AE8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 009CC 809B1AEC 24072710 */  addiu   $a3, $zero, 0x2710         ## $a3 = 00002710
/* 009D0 809B1AF0 860D00B6 */  lh      $t5, 0x00B6($s0)           ## 000000B6
/* 009D4 809B1AF4 860E0258 */  lh      $t6, 0x0258($s0)           ## 00000258
/* 009D8 809B1AF8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 009DC 809B1AFC 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 009E0 809B1B00 01AE7823 */  subu    $t7, $t5, $t6              
/* 009E4 809B1B04 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 009E8 809B1B08 00000000 */  nop
/* 009EC 809B1B0C 46802020 */  cvt.s.w $f0, $f4                   
/* 009F0 809B1B10 46000005 */  abs.s   $f0, $f0                   
/* 009F4 809B1B14 4606003C */  c.lt.s  $f0, $f6                   
/* 009F8 809B1B18 00000000 */  nop
/* 009FC 809B1B1C 45000002 */  bc1f    .L809B1B28                 
/* 00A00 809B1B20 00000000 */  nop
/* 00A04 809B1B24 A6000256 */  sh      $zero, 0x0256($s0)         ## 00000256
.L809B1B28:
/* 00A08 809B1B28 3C01809B */  lui     $at, %hi(D_809B2428)       ## $at = 809B0000
/* 00A0C 809B1B2C C42C2428 */  lwc1    $f12, %lo(D_809B2428)($at) 
/* 00A10 809B1B30 3C01809B */  lui     $at, %hi(D_809B242C)       ## $at = 809B0000
/* 00A14 809B1B34 C60E0164 */  lwc1    $f14, 0x0164($s0)          ## 00000164
/* 00A18 809B1B38 C428242C */  lwc1    $f8, %lo(D_809B242C)($at)  
/* 00A1C 809B1B3C 860200B6 */  lh      $v0, 0x00B6($s0)           ## 000000B6
/* 00A20 809B1B40 46087082 */  mul.s   $f2, $f14, $f8             
/* 00A24 809B1B44 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 00A28 809B1B48 460C103C */  c.lt.s  $f2, $f12                  
/* 00A2C 809B1B4C 00000000 */  nop
/* 00A30 809B1B50 45020003 */  bc1fl   .L809B1B60                 
/* 00A34 809B1B54 46805420 */  cvt.s.w $f16, $f10                 
/* 00A38 809B1B58 46006086 */  mov.s   $f2, $f12                  
/* 00A3C 809B1B5C 46805420 */  cvt.s.w $f16, $f10                 
.L809B1B60:
/* 00A40 809B1B60 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 00A44 809B1B64 44819000 */  mtc1    $at, $f18                  ## $f18 = 32768.00
/* 00A48 809B1B68 3C01809B */  lui     $at, %hi(D_809B2430)       ## $at = 809B0000
/* 00A4C 809B1B6C C4262430 */  lwc1    $f6, %lo(D_809B2430)($at)  
/* 00A50 809B1B70 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00A54 809B1B74 46128103 */  div.s   $f4, $f16, $f18            
/* 00A58 809B1B78 E7A20058 */  swc1    $f2, 0x0058($sp)           
/* 00A5C 809B1B7C E7AE005C */  swc1    $f14, 0x005C($sp)          
/* 00A60 809B1B80 46062302 */  mul.s   $f12, $f4, $f6             
/* 00A64 809B1B84 0C034348 */  jal     Matrix_RotateY              
/* 00A68 809B1B88 00000000 */  nop
/* 00A6C 809B1B8C 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 00A70 809B1B90 C7A20058 */  lwc1    $f2, 0x0058($sp)           
/* 00A74 809B1B94 44814000 */  mtc1    $at, $f8                   ## $f8 = 32768.00
/* 00A78 809B1B98 3C01809B */  lui     $at, %hi(D_809B2434)       ## $at = 809B0000
/* 00A7C 809B1B9C C4302434 */  lwc1    $f16, %lo(D_809B2434)($at) 
/* 00A80 809B1BA0 46081283 */  div.s   $f10, $f2, $f8             
/* 00A84 809B1BA4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00A88 809B1BA8 46105302 */  mul.s   $f12, $f10, $f16           
/* 00A8C 809B1BAC 0C0342DC */  jal     Matrix_RotateX              
/* 00A90 809B1BB0 00000000 */  nop
/* 00A94 809B1BB4 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00A98 809B1BB8 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 00A9C 809B1BBC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00AA0 809B1BC0 00000000 */  nop
/* 00AA4 809B1BC4 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00AA8 809B1BC8 44819000 */  mtc1    $at, $f18                  ## $f18 = 30.00
/* 00AAC 809B1BCC 27A4004C */  addiu   $a0, $sp, 0x004C           ## $a0 = FFFFFFEC
/* 00AB0 809B1BD0 27A50040 */  addiu   $a1, $sp, 0x0040           ## $a1 = FFFFFFE0
/* 00AB4 809B1BD4 46120100 */  add.s   $f4, $f0, $f18             
/* 00AB8 809B1BD8 0C0346BD */  jal     Matrix_MultVec3f              
/* 00ABC 809B1BDC E7A40050 */  swc1    $f4, 0x0050($sp)           
/* 00AC0 809B1BE0 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00AC4 809B1BE4 44816000 */  mtc1    $at, $f12                  ## $f12 = 40.00
/* 00AC8 809B1BE8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00ACC 809B1BEC 00000000 */  nop
/* 00AD0 809B1BF0 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 00AD4 809B1BF4 C7A60040 */  lwc1    $f6, 0x0040($sp)           
/* 00AD8 809B1BF8 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00ADC 809B1BFC 46004280 */  add.s   $f10, $f8, $f0             
/* 00AE0 809B1C00 44816000 */  mtc1    $at, $f12                  ## $f12 = 40.00
/* 00AE4 809B1C04 460A3400 */  add.s   $f16, $f6, $f10            
/* 00AE8 809B1C08 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00AEC 809B1C0C E7B00040 */  swc1    $f16, 0x0040($sp)          
/* 00AF0 809B1C10 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00AF4 809B1C14 C7B20044 */  lwc1    $f18, 0x0044($sp)          
/* 00AF8 809B1C18 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00AFC 809B1C1C 46002200 */  add.s   $f8, $f4, $f0              
/* 00B00 809B1C20 44816000 */  mtc1    $at, $f12                  ## $f12 = 30.00
/* 00B04 809B1C24 46089180 */  add.s   $f6, $f18, $f8             
/* 00B08 809B1C28 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00B0C 809B1C2C E7A60044 */  swc1    $f6, 0x0044($sp)           
/* 00B10 809B1C30 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00B14 809B1C34 C7AA0048 */  lwc1    $f10, 0x0048($sp)          
/* 00B18 809B1C38 24180008 */  addiu   $t8, $zero, 0x0008         ## $t8 = 00000008
/* 00B1C 809B1C3C 46008100 */  add.s   $f4, $f16, $f0             
/* 00B20 809B1C40 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00B24 809B1C44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B28 809B1C48 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00B2C 809B1C4C 46045480 */  add.s   $f18, $f10, $f4            
/* 00B30 809B1C50 24060080 */  addiu   $a2, $zero, 0x0080         ## $a2 = 00000080
/* 00B34 809B1C54 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00B38 809B1C58 0C00D09B */  jal     func_8003426C              
/* 00B3C 809B1C5C E7B20048 */  swc1    $f18, 0x0048($sp)          
/* 00B40 809B1C60 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 00B44 809B1C64 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 00B48 809B1C68 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 00B4C 809B1C6C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00B50 809B1C70 27A60040 */  addiu   $a2, $sp, 0x0040           ## $a2 = FFFFFFE0
/* 00B54 809B1C74 24070064 */  addiu   $a3, $zero, 0x0064         ## $a3 = 00000064
/* 00B58 809B1C78 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00B5C 809B1C7C 0C00A935 */  jal     EffectSsEnFire_SpawnVec3f              
/* 00B60 809B1C80 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00B64 809B1C84 C7A8005C */  lwc1    $f8, 0x005C($sp)           
/* 00B68 809B1C88 C606026C */  lwc1    $f6, 0x026C($s0)           ## 0000026C
/* 00B6C 809B1C8C 4608303E */  c.le.s  $f6, $f8                   
/* 00B70 809B1C90 00000000 */  nop
/* 00B74 809B1C94 45020018 */  bc1fl   .L809B1CF8                 
/* 00B78 809B1C98 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00B7C 809B1C9C 96080088 */  lhu     $t0, 0x0088($s0)           ## 00000088
/* 00B80 809B1CA0 3C05C584 */  lui     $a1, 0xC584                ## $a1 = C5840000
/* 00B84 809B1CA4 34A53000 */  ori     $a1, $a1, 0x3000           ## $a1 = C5843000
/* 00B88 809B1CA8 31090001 */  andi    $t1, $t0, 0x0001           ## $t1 = 00000000
/* 00B8C 809B1CAC 11200011 */  beq     $t1, $zero, .L809B1CF4     
/* 00B90 809B1CB0 260400BC */  addiu   $a0, $s0, 0x00BC           ## $a0 = 000000BC
/* 00B94 809B1CB4 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00B98 809B1CB8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00B9C 809B1CBC 3C074396 */  lui     $a3, 0x4396                ## $a3 = 43960000
/* 00BA0 809B1CC0 3C01C4FA */  lui     $at, 0xC4FA                ## $at = C4FA0000
/* 00BA4 809B1CC4 44815000 */  mtc1    $at, $f10                  ## $f10 = -2000.00
/* 00BA8 809B1CC8 C61000BC */  lwc1    $f16, 0x00BC($s0)          ## 000000BC
/* 00BAC 809B1CCC 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 00BB0 809B1CD0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00BB4 809B1CD4 460A803C */  c.lt.s  $f16, $f10                 
/* 00BB8 809B1CD8 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 00BBC 809B1CDC 45020006 */  bc1fl   .L809B1CF8                 
/* 00BC0 809B1CE0 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00BC4 809B1CE4 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00BC8 809B1CE8 240700C0 */  addiu   $a3, $zero, 0x00C0         ## $a3 = 000000C0
/* 00BCC 809B1CEC 0C00B55C */  jal     Actor_Kill
              
/* 00BD0 809B1CF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809B1CF4:
/* 00BD4 809B1CF4 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809B1CF8:
/* 00BD8 809B1CF8 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00BDC 809B1CFC 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 00BE0 809B1D00 03E00008 */  jr      $ra                        
/* 00BE4 809B1D04 00000000 */  nop
