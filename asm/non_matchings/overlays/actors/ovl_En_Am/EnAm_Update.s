.late_rodata
glabel D_809B0180
    .float 4500.0

.text
glabel EnAm_Update
/* 01ADC 809AF9FC 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 01AE0 809AFA00 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 01AE4 809AFA04 AFB30048 */  sw      $s3, 0x0048($sp)           
/* 01AE8 809AFA08 AFB20044 */  sw      $s2, 0x0044($sp)           
/* 01AEC 809AFA0C AFB10040 */  sw      $s1, 0x0040($sp)           
/* 01AF0 809AFA10 AFB0003C */  sw      $s0, 0x003C($sp)           
/* 01AF4 809AFA14 F7B60030 */  sdc1    $f22, 0x0030($sp)          
/* 01AF8 809AFA18 F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 01AFC 809AFA1C 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 01B00 809AFA20 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 01B04 809AFA24 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 01B08 809AFA28 51C00004 */  beql    $t6, $zero, .L809AFA3C     
/* 01B0C 809AFA2C 924F00B1 */  lbu     $t7, 0x00B1($s2)           ## 000000B1
/* 01B10 809AFA30 0C26BE19 */  jal     func_809AF864              
/* 01B14 809AFA34 00000000 */  nop
/* 01B18 809AFA38 924F00B1 */  lbu     $t7, 0x00B1($s2)           ## 000000B1
.L809AFA3C:
/* 01B1C 809AFA3C 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 01B20 809AFA40 51E10085 */  beql    $t7, $at, .L809AFC58       
/* 01B24 809AFA44 26510274 */  addiu   $s1, $s2, 0x0274           ## $s1 = 00000274
/* 01B28 809AFA48 8642025C */  lh      $v0, 0x025C($s2)           ## 0000025C
/* 01B2C 809AFA4C 10400002 */  beq     $v0, $zero, .L809AFA58     
/* 01B30 809AFA50 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 01B34 809AFA54 A658025C */  sh      $t8, 0x025C($s2)           ## 0000025C
.L809AFA58:
/* 01B38 809AFA58 8E590254 */  lw      $t9, 0x0254($s2)           ## 00000254
/* 01B3C 809AFA5C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01B40 809AFA60 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 01B44 809AFA64 0320F809 */  jalr    $ra, $t9                   
/* 01B48 809AFA68 00000000 */  nop
/* 01B4C 809AFA6C 86420260 */  lh      $v0, 0x0260($s2)           ## 00000260
/* 01B50 809AFA70 1040006C */  beq     $v0, $zero, .L809AFC24     
/* 01B54 809AFA74 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 01B58 809AFA78 A6480260 */  sh      $t0, 0x0260($s2)           ## 00000260
/* 01B5C 809AFA7C 86420260 */  lh      $v0, 0x0260($s2)           ## 00000260
/* 01B60 809AFA80 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 01B64 809AFA84 01334821 */  addu    $t1, $t1, $s3              
/* 01B68 809AFA88 1440005E */  bne     $v0, $zero, .L809AFC04     
/* 01B6C 809AFA8C 30590003 */  andi    $t9, $v0, 0x0003           ## $t9 = 00000000
/* 01B70 809AFA90 8D291DE4 */  lw      $t1, 0x1DE4($t1)           ## 00011DE4
/* 01B74 809AFA94 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 01B78 809AFA98 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01B7C 809AFA9C 00095080 */  sll     $t2, $t1,  2               
/* 01B80 809AFAA0 01495021 */  addu    $t2, $t2, $t1              
/* 01B84 809AFAA4 000A5040 */  sll     $t2, $t2,  1               
/* 01B88 809AFAA8 448A2000 */  mtc1    $t2, $f4                   ## $f4 = 0.00
/* 01B8C 809AFAAC 05410004 */  bgez    $t2, .L809AFAC0            
/* 01B90 809AFAB0 46802520 */  cvt.s.w $f20, $f4                  
/* 01B94 809AFAB4 44813000 */  mtc1    $at, $f6                   ## $f6 = 4294967296.00
/* 01B98 809AFAB8 00000000 */  nop
/* 01B9C 809AFABC 4606A500 */  add.s   $f20, $f20, $f6            
.L809AFAC0:
/* 01BA0 809AFAC0 0C26B89C */  jal     func_809AE270              
/* 01BA4 809AFAC4 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 01BA8 809AFAC8 C6480028 */  lwc1    $f8, 0x0028($s2)           ## 00000028
/* 01BAC 809AFACC 8E470024 */  lw      $a3, 0x0024($s2)           ## 00000024
/* 01BB0 809AFAD0 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 01BB4 809AFAD4 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 01BB8 809AFAD8 C64A002C */  lwc1    $f10, 0x002C($s2)          ## 0000002C
/* 01BBC 809AFADC AFA00024 */  sw      $zero, 0x0024($sp)         
/* 01BC0 809AFAE0 AFAB0020 */  sw      $t3, 0x0020($sp)           
/* 01BC4 809AFAE4 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 01BC8 809AFAE8 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 01BCC 809AFAEC 26641C24 */  addiu   $a0, $s3, 0x1C24           ## $a0 = 00001C24
/* 01BD0 809AFAF0 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 01BD4 809AFAF4 24060010 */  addiu   $a2, $zero, 0x0010         ## $a2 = 00000010
/* 01BD8 809AFAF8 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 01BDC 809AFAFC E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 01BE0 809AFB00 10400002 */  beq     $v0, $zero, .L809AFB0C     
/* 01BE4 809AFB04 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01BE8 809AFB08 A44001F8 */  sh      $zero, 0x01F8($v0)         ## 000001F8
.L809AFB0C:
/* 01BEC 809AFB0C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01BF0 809AFB10 24053846 */  addiu   $a1, $zero, 0x3846         ## $a1 = 00003846
/* 01BF4 809AFB14 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 01BF8 809AFB18 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 01BFC 809AFB1C 26460024 */  addiu   $a2, $s2, 0x0024           ## $a2 = 00000024
/* 01C00 809AFB20 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 01C04 809AFB24 240700A0 */  addiu   $a3, $zero, 0x00A0         ## $a3 = 000000A0
/* 01C08 809AFB28 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 01C0C 809AFB2C 3C11809B */  lui     $s1, %hi(D_809B00A4)       ## $s1 = 809B0000
/* 01C10 809AFB30 4481B000 */  mtc1    $at, $f22                  ## $f22 = 7.00
/* 01C14 809AFB34 263100A4 */  addiu   $s1, $s1, %lo(D_809B00A4)  ## $s1 = 809B00A4
/* 01C18 809AFB38 24100009 */  addiu   $s0, $zero, 0x0009         ## $s0 = 00000009
.L809AFB3C:
/* 01C1C 809AFB3C 0C0400A4 */  jal     sinf
              
/* 01C20 809AFB40 4600A306 */  mov.s   $f12, $f20                 
/* 01C24 809AFB44 46160402 */  mul.s   $f16, $f0, $f22            
/* 01C28 809AFB48 C6520024 */  lwc1    $f18, 0x0024($s2)          ## 00000024
/* 01C2C 809AFB4C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01C30 809AFB50 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 01C34 809AFB54 46128100 */  add.s   $f4, $f16, $f18            
/* 01C38 809AFB58 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 01C3C 809AFB5C E7A40070 */  swc1    $f4, 0x0070($sp)           
/* 01C40 809AFB60 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 01C44 809AFB64 44814000 */  mtc1    $at, $f8                   ## $f8 = 40.00
/* 01C48 809AFB68 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 01C4C 809AFB6C 44818000 */  mtc1    $at, $f16                  ## $f16 = 6.00
/* 01C50 809AFB70 C6460028 */  lwc1    $f6, 0x0028($s2)           ## 00000028
/* 01C54 809AFB74 4600A306 */  mov.s   $f12, $f20                 
/* 01C58 809AFB78 46100482 */  mul.s   $f18, $f0, $f16            
/* 01C5C 809AFB7C 46083280 */  add.s   $f10, $f6, $f8             
/* 01C60 809AFB80 460A9100 */  add.s   $f4, $f18, $f10            
/* 01C64 809AFB84 0C041184 */  jal     cosf
              
/* 01C68 809AFB88 E7A40074 */  swc1    $f4, 0x0074($sp)           
/* 01C6C 809AFB8C 46160182 */  mul.s   $f6, $f0, $f22             
/* 01C70 809AFB90 C648002C */  lwc1    $f8, 0x002C($s2)           ## 0000002C
/* 01C74 809AFB94 3C0C809B */  lui     $t4, %hi(D_809B00B0)       ## $t4 = 809B0000
/* 01C78 809AFB98 3C0D809B */  lui     $t5, %hi(D_809B00B4)       ## $t5 = 809B0000
/* 01C7C 809AFB9C 25AD00B4 */  addiu   $t5, $t5, %lo(D_809B00B4)  ## $t5 = 809B00B4
/* 01C80 809AFBA0 258C00B0 */  addiu   $t4, $t4, %lo(D_809B00B0)  ## $t4 = 809B00B0
/* 01C84 809AFBA4 240E00C8 */  addiu   $t6, $zero, 0x00C8         ## $t6 = 000000C8
/* 01C88 809AFBA8 46083400 */  add.s   $f16, $f6, $f8             
/* 01C8C 809AFBAC 240F002D */  addiu   $t7, $zero, 0x002D         ## $t7 = 0000002D
/* 01C90 809AFBB0 2418000C */  addiu   $t8, $zero, 0x000C         ## $t8 = 0000000C
/* 01C94 809AFBB4 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 01C98 809AFBB8 E7B00078 */  swc1    $f16, 0x0078($sp)          
/* 01C9C 809AFBBC AFAF001C */  sw      $t7, 0x001C($sp)           
/* 01CA0 809AFBC0 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 01CA4 809AFBC4 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 01CA8 809AFBC8 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 01CAC 809AFBCC 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 01CB0 809AFBD0 27A50070 */  addiu   $a1, $sp, 0x0070           ## $a1 = FFFFFFE8
/* 01CB4 809AFBD4 02203025 */  or      $a2, $s1, $zero            ## $a2 = 809B00A4
/* 01CB8 809AFBD8 0C00A0DB */  jal     func_8002836C              
/* 01CBC 809AFBDC 02203825 */  or      $a3, $s1, $zero            ## $a3 = 809B00A4
/* 01CC0 809AFBE0 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 01CC4 809AFBE4 44819000 */  mtc1    $at, $f18                  ## $f18 = 60.00
/* 01CC8 809AFBE8 2610FFFF */  addiu   $s0, $s0, 0xFFFF           ## $s0 = 00000008
/* 01CCC 809AFBEC 0601FFD3 */  bgez    $s0, .L809AFB3C            
/* 01CD0 809AFBF0 4612A500 */  add.s   $f20, $f20, $f18           
/* 01CD4 809AFBF4 0C00B55C */  jal     Actor_Kill
              
/* 01CD8 809AFBF8 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01CDC 809AFBFC 1000005F */  beq     $zero, $zero, .L809AFD7C   
/* 01CE0 809AFC00 8FBF004C */  lw      $ra, 0x004C($sp)           
.L809AFC04:
/* 01CE4 809AFC04 17200007 */  bne     $t9, $zero, .L809AFC24     
/* 01CE8 809AFC08 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01CEC 809AFC0C 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 01CF0 809AFC10 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 01CF4 809AFC14 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 01CF8 809AFC18 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 01CFC 809AFC1C 0C00D09B */  jal     func_8003426C              
/* 01D00 809AFC20 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
.L809AFC24:
/* 01D04 809AFC24 0C00B638 */  jal     Actor_MoveForward
              
/* 01D08 809AFC28 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01D0C 809AFC2C 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 01D10 809AFC30 44815000 */  mtc1    $at, $f10                  ## $f10 = 80.00
/* 01D14 809AFC34 2409001D */  addiu   $t1, $zero, 0x001D         ## $t1 = 0000001D
/* 01D18 809AFC38 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 01D1C 809AFC3C 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 01D20 809AFC40 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 01D24 809AFC44 3C0641A0 */  lui     $a2, 0x41A0                ## $a2 = 41A00000
/* 01D28 809AFC48 3C0741E0 */  lui     $a3, 0x41E0                ## $a3 = 41E00000
/* 01D2C 809AFC4C 0C00B92D */  jal     func_8002E4B4              
/* 01D30 809AFC50 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 01D34 809AFC54 26510274 */  addiu   $s1, $s2, 0x0274           ## $s1 = 00000274
.L809AFC58:
/* 01D38 809AFC58 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000274
/* 01D3C 809AFC5C 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 01D40 809AFC60 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01D44 809AFC64 265002C0 */  addiu   $s0, $s2, 0x02C0           ## $s0 = 000002C0
/* 01D48 809AFC68 02002825 */  or      $a1, $s0, $zero            ## $a1 = 000002C0
/* 01D4C 809AFC6C 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 01D50 809AFC70 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01D54 809AFC74 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01D58 809AFC78 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01D5C 809AFC7C 02612821 */  addu    $a1, $s3, $at              
/* 01D60 809AFC80 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 01D64 809AFC84 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 01D68 809AFC88 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 01D6C 809AFC8C 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000274
/* 01D70 809AFC90 864A001C */  lh      $t2, 0x001C($s2)           ## 0000001C
/* 01D74 809AFC94 3C01809B */  lui     $at, %hi(D_809B0180)       ## $at = 809B0000
/* 01D78 809AFC98 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 01D7C 809AFC9C 11400034 */  beq     $t2, $zero, .L809AFD70     
/* 01D80 809AFCA0 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 01D84 809AFCA4 C6440050 */  lwc1    $f4, 0x0050($s2)           ## 00000050
/* 01D88 809AFCA8 C4260180 */  lwc1    $f6, %lo(D_809B0180)($at)  
/* 01D8C 809AFCAC 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01D90 809AFCB0 46062202 */  mul.s   $f8, $f4, $f6              
/* 01D94 809AFCB4 44054000 */  mfc1    $a1, $f8                   
/* 01D98 809AFCB8 0C00B56E */  jal     Actor_SetHeight
              
/* 01D9C 809AFCBC 00000000 */  nop
/* 01DA0 809AFCC0 924B0114 */  lbu     $t3, 0x0114($s2)           ## 00000114
/* 01DA4 809AFCC4 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 01DA8 809AFCC8 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 01DAC 809AFCCC 55600004 */  bnel    $t3, $zero, .L809AFCE0     
/* 01DB0 809AFCD0 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 01DB4 809AFCD4 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01DB8 809AFCD8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 000002C0
/* 01DBC 809AFCDC 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
.L809AFCE0:
/* 01DC0 809AFCE0 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 01DC4 809AFCE4 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01DC8 809AFCE8 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000274
/* 01DCC 809AFCEC 8E4C01A8 */  lw      $t4, 0x01A8($s2)           ## 000001A8
/* 01DD0 809AFCF0 29810004 */  slti    $at, $t4, 0x0004           
/* 01DD4 809AFCF4 54200021 */  bnel    $at, $zero, .L809AFD7C     
/* 01DD8 809AFCF8 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 01DDC 809AFCFC 864D0264 */  lh      $t5, 0x0264($s2)           ## 00000264
/* 01DE0 809AFD00 59A0001E */  blezl   $t5, .L809AFD7C            
/* 01DE4 809AFD04 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 01DE8 809AFD08 9242031C */  lbu     $v0, 0x031C($s2)           ## 0000031C
/* 01DEC 809AFD0C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01DF0 809AFD10 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 01DF4 809AFD14 304E0004 */  andi    $t6, $v0, 0x0004           ## $t6 = 00000000
/* 01DF8 809AFD18 15C00010 */  bne     $t6, $zero, .L809AFD5C     
/* 01DFC 809AFD1C 3059FFF9 */  andi    $t9, $v0, 0xFFF9           ## $t9 = 00000000
/* 01E00 809AFD20 304F0002 */  andi    $t7, $v0, 0x0002           ## $t7 = 00000000
/* 01E04 809AFD24 51E00008 */  beql    $t7, $zero, .L809AFD48     
/* 01E08 809AFD28 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 01E0C 809AFD2C 8E641C44 */  lw      $a0, 0x1C44($s3)           ## 00001C44
/* 01E10 809AFD30 8E580310 */  lw      $t8, 0x0310($s2)           ## 00000310
/* 01E14 809AFD34 54980004 */  bnel    $a0, $t8, .L809AFD48       
/* 01E18 809AFD38 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 01E1C 809AFD3C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01E20 809AFD40 2405083E */  addiu   $a1, $zero, 0x083E         ## $a1 = 0000083E
/* 01E24 809AFD44 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
.L809AFD48:
/* 01E28 809AFD48 8FA5005C */  lw      $a1, 0x005C($sp)           
/* 01E2C 809AFD4C 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 01E30 809AFD50 2646030C */  addiu   $a2, $s2, 0x030C           ## $a2 = 0000030C
/* 01E34 809AFD54 10000009 */  beq     $zero, $zero, .L809AFD7C   
/* 01E38 809AFD58 8FBF004C */  lw      $ra, 0x004C($sp)           
.L809AFD5C:
/* 01E3C 809AFD5C A259031C */  sb      $t9, 0x031C($s2)           ## 0000031C
/* 01E40 809AFD60 0C26B9FD */  jal     func_809AE7F4              
/* 01E44 809AFD64 AE400310 */  sw      $zero, 0x0310($s2)         ## 00000310
/* 01E48 809AFD68 10000004 */  beq     $zero, $zero, .L809AFD7C   
/* 01E4C 809AFD6C 8FBF004C */  lw      $ra, 0x004C($sp)           
.L809AFD70:
/* 01E50 809AFD70 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 01E54 809AFD74 02003025 */  or      $a2, $s0, $zero            ## $a2 = 000002C0
/* 01E58 809AFD78 8FBF004C */  lw      $ra, 0x004C($sp)           
.L809AFD7C:
/* 01E5C 809AFD7C D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 01E60 809AFD80 D7B60030 */  ldc1    $f22, 0x0030($sp)          
/* 01E64 809AFD84 8FB0003C */  lw      $s0, 0x003C($sp)           
/* 01E68 809AFD88 8FB10040 */  lw      $s1, 0x0040($sp)           
/* 01E6C 809AFD8C 8FB20044 */  lw      $s2, 0x0044($sp)           
/* 01E70 809AFD90 8FB30048 */  lw      $s3, 0x0048($sp)           
/* 01E74 809AFD94 03E00008 */  jr      $ra                        
/* 01E78 809AFD98 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
