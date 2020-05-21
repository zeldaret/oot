glabel func_80A0FC48
/* 009E8 80A0FC48 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 009EC 80A0FC4C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 009F0 80A0FC50 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 009F4 80A0FC54 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 009F8 80A0FC58 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 009FC 80A0FC5C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00A00 80A0FC60 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A04 80A0FC64 AFAE003C */  sw      $t6, 0x003C($sp)           
/* 00A08 80A0FC68 908201C0 */  lbu     $v0, 0x01C0($a0)           ## 000001C0
/* 00A0C 80A0FC6C 240538A8 */  addiu   $a1, $zero, 0x38A8         ## $a1 = 000038A8
/* 00A10 80A0FC70 304F0002 */  andi    $t7, $v0, 0x0002           ## $t7 = 00000000
/* 00A14 80A0FC74 11E00003 */  beq     $t7, $zero, .L80A0FC84     
/* 00A18 80A0FC78 3058FFFD */  andi    $t8, $v0, 0xFFFD           ## $t8 = 00000000
/* 00A1C 80A0FC7C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00A20 80A0FC80 A09801C0 */  sb      $t8, 0x01C0($a0)           ## 000001C0
.L80A0FC84:
/* 00A24 80A0FC84 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A28 80A0FC88 00000000 */  nop
/* 00A2C 80A0FC8C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00A30 80A0FC90 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00A34 80A0FC94 00000000 */  nop
/* 00A38 80A0FC98 4604003C */  c.lt.s  $f0, $f4                   
/* 00A3C 80A0FC9C 00000000 */  nop
/* 00A40 80A0FCA0 45000012 */  bc1f    .L80A0FCEC                 
/* 00A44 80A0FCA4 00000000 */  nop
/* 00A48 80A0FCA8 8E080024 */  lw      $t0, 0x0024($s0)           ## 00000024
/* 00A4C 80A0FCAC 27A60030 */  addiu   $a2, $sp, 0x0030           ## $a2 = FFFFFFF0
/* 00A50 80A0FCB0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00A54 80A0FCB4 ACC80000 */  sw      $t0, 0x0000($a2)           ## FFFFFFF0
/* 00A58 80A0FCB8 8E190028 */  lw      $t9, 0x0028($s0)           ## 00000028
/* 00A5C 80A0FCBC 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 00A60 80A0FCC0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A64 80A0FCC4 ACD90004 */  sw      $t9, 0x0004($a2)           ## FFFFFFF4
/* 00A68 80A0FCC8 8E08002C */  lw      $t0, 0x002C($s0)           ## 0000002C
/* 00A6C 80A0FCCC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00A70 80A0FCD0 240700C8 */  addiu   $a3, $zero, 0x00C8         ## $a3 = 000000C8
/* 00A74 80A0FCD4 ACC80008 */  sw      $t0, 0x0008($a2)           ## FFFFFFF8
/* 00A78 80A0FCD8 C7A60034 */  lwc1    $f6, 0x0034($sp)           
/* 00A7C 80A0FCDC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00A80 80A0FCE0 46083281 */  sub.s   $f10, $f6, $f8             
/* 00A84 80A0FCE4 0C00A757 */  jal     func_80029D5C              
/* 00A88 80A0FCE8 E7AA0034 */  swc1    $f10, 0x0034($sp)          
.L80A0FCEC:
/* 00A8C 80A0FCEC 0C00B638 */  jal     Actor_MoveForward
              
/* 00A90 80A0FCF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A94 80A0FCF4 260601B0 */  addiu   $a2, $s0, 0x01B0           ## $a2 = 000001B0
/* 00A98 80A0FCF8 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000001B0
/* 00A9C 80A0FCFC AFA6002C */  sw      $a2, 0x002C($sp)           
/* 00AA0 80A0FD00 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 00AA4 80A0FD04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AA8 80A0FD08 8FA9003C */  lw      $t1, 0x003C($sp)           
/* 00AAC 80A0FD0C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00AB0 80A0FD10 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 00AB4 80A0FD14 812A0A78 */  lb      $t2, 0x0A78($t1)           ## 00000A78
/* 00AB8 80A0FD18 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00ABC 80A0FD1C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00AC0 80A0FD20 55400004 */  bnel    $t2, $zero, .L80A0FD34     
/* 00AC4 80A0FD24 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00AC8 80A0FD28 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00ACC 80A0FD2C 02212821 */  addu    $a1, $s1, $at              
/* 00AD0 80A0FD30 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
.L80A0FD34:
/* 00AD4 80A0FD34 44810000 */  mtc1    $at, $f0                   ## $f0 = 50.00
/* 00AD8 80A0FD38 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00ADC 80A0FD3C 44818000 */  mtc1    $at, $f16                  ## $f16 = 100.00
/* 00AE0 80A0FD40 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00AE4 80A0FD44 44060000 */  mfc1    $a2, $f0                   
/* 00AE8 80A0FD48 44070000 */  mfc1    $a3, $f0                   
/* 00AEC 80A0FD4C AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00AF0 80A0FD50 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00AF4 80A0FD54 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00AF8 80A0FD58 0C00B92D */  jal     func_8002E4B4              
/* 00AFC 80A0FD5C E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 00B00 80A0FD60 960C0088 */  lhu     $t4, 0x0088($s0)           ## 00000088
/* 00B04 80A0FD64 318D0008 */  andi    $t5, $t4, 0x0008           ## $t5 = 00000000
/* 00B08 80A0FD68 51A00004 */  beql    $t5, $zero, .L80A0FD7C     
/* 00B0C 80A0FD6C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00B10 80A0FD70 0C00B55C */  jal     Actor_Kill
              
/* 00B14 80A0FD74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B18 80A0FD78 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A0FD7C:
/* 00B1C 80A0FD7C 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00B20 80A0FD80 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00B24 80A0FD84 03E00008 */  jr      $ra                        
/* 00B28 80A0FD88 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
