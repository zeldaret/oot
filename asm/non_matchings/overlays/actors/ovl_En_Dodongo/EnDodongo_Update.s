glabel EnDodongo_Update
/* 01CE4 809F9F34 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01CE8 809F9F38 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01CEC 809F9F3C AFB10020 */  sw      $s1, 0x0020($sp)           
/* 01CF0 809F9F40 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 01CF4 809F9F44 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01CF8 809F9F48 0C27E728 */  jal     func_809F9CA0              
/* 01CFC 809F9F4C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01D00 809F9F50 920E00B1 */  lbu     $t6, 0x00B1($s0)           ## 000000B1
/* 01D04 809F9F54 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 01D08 809F9F58 51C1001A */  beql    $t6, $at, .L809F9FC4       
/* 01D0C 809F9F5C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01D10 809F9F60 8E190308 */  lw      $t9, 0x0308($s0)           ## 00000308
/* 01D14 809F9F64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D18 809F9F68 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01D1C 809F9F6C 0320F809 */  jalr    $ra, $t9                   
/* 01D20 809F9F70 00000000 */  nop
/* 01D24 809F9F74 0C00B638 */  jal     Actor_MoveForward
              
/* 01D28 809F9F78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D2C 809F9F7C 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 01D30 809F9F80 44812000 */  mtc1    $at, $f4                   ## $f4 = 70.00
/* 01D34 809F9F84 240F001D */  addiu   $t7, $zero, 0x001D         ## $t7 = 0000001D
/* 01D38 809F9F88 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 01D3C 809F9F8C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01D40 809F9F90 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01D44 809F9F94 3C064296 */  lui     $a2, 0x4296                ## $a2 = 42960000
/* 01D48 809F9F98 3C074270 */  lui     $a3, 0x4270                ## $a3 = 42700000
/* 01D4C 809F9F9C 0C00B92D */  jal     func_8002E4B4              
/* 01D50 809F9FA0 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01D54 809F9FA4 96180088 */  lhu     $t8, 0x0088($s0)           ## 00000088
/* 01D58 809F9FA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D5C 809F9FAC 33080002 */  andi    $t0, $t8, 0x0002           ## $t0 = 00000000
/* 01D60 809F9FB0 51000004 */  beql    $t0, $zero, .L809F9FC4     
/* 01D64 809F9FB4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01D68 809F9FB8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01D6C 809F9FBC 2405387A */  addiu   $a1, $zero, 0x387A         ## $a1 = 0000387A
/* 01D70 809F9FC0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L809F9FC4:
/* 01D74 809F9FC4 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01D78 809F9FC8 02212821 */  addu    $a1, $s1, $at              
/* 01D7C 809F9FCC 26060588 */  addiu   $a2, $s0, 0x0588           ## $a2 = 00000588
/* 01D80 809F9FD0 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 01D84 809F9FD4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01D88 809F9FD8 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 01D8C 809F9FDC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01D90 809F9FE0 8E030304 */  lw      $v1, 0x0304($s0)           ## 00000304
/* 01D94 809F9FE4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01D98 809F9FE8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01D9C 809F9FEC 10610004 */  beq     $v1, $at, .L809FA000       
/* 01DA0 809F9FF0 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 01DA4 809F9FF4 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01DA8 809F9FF8 26060454 */  addiu   $a2, $s0, 0x0454           ## $a2 = 00000454
/* 01DAC 809F9FFC 8E030304 */  lw      $v1, 0x0304($s0)           ## 00000304
.L809FA000:
/* 01DB0 809FA000 28610003 */  slti    $at, $v1, 0x0003           
/* 01DB4 809FA004 14200005 */  bne     $at, $zero, .L809FA01C     
/* 01DB8 809FA008 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01DBC 809FA00C 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 01DC0 809FA010 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01DC4 809FA014 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 01DC8 809FA018 8E030304 */  lw      $v1, 0x0304($s0)           ## 00000304
.L809FA01C:
/* 01DCC 809FA01C 28610004 */  slti    $at, $v1, 0x0004           
/* 01DD0 809FA020 14200007 */  bne     $at, $zero, .L809FA040     
/* 01DD4 809FA024 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01DD8 809FA028 0C27E9B6 */  jal     func_809FA6D8              
/* 01DDC 809FA02C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01DE0 809FA030 50400004 */  beql    $v0, $zero, .L809FA044     
/* 01DE4 809FA034 8E090304 */  lw      $t1, 0x0304($s0)           ## 00000304
/* 01DE8 809FA038 0C27E2DF */  jal     func_809F8B7C              
/* 01DEC 809FA03C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809FA040:
/* 01DF0 809FA040 8E090304 */  lw      $t1, 0x0304($s0)           ## 00000304
.L809FA044:
/* 01DF4 809FA044 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01DF8 809FA048 15210011 */  bne     $t1, $at, .L809FA090       
/* 01DFC 809FA04C 3C0141E8 */  lui     $at, 0x41E8                ## $at = 41E80000
/* 01E00 809FA050 44813000 */  mtc1    $at, $f6                   ## $f6 = 29.00
/* 01E04 809FA054 C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 01E08 809FA058 3C01422C */  lui     $at, 0x422C                ## $at = 422C0000
/* 01E0C 809FA05C 4600303C */  c.lt.s  $f6, $f0                   
/* 01E10 809FA060 00000000 */  nop
/* 01E14 809FA064 4500000A */  bc1f    .L809FA090                 
/* 01E18 809FA068 00000000 */  nop
/* 01E1C 809FA06C 44814000 */  mtc1    $at, $f8                   ## $f8 = 43.00
/* 01E20 809FA070 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01E24 809FA074 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 01E28 809FA078 4608003C */  c.lt.s  $f0, $f8                   
/* 01E2C 809FA07C 00000000 */  nop
/* 01E30 809FA080 45000003 */  bc1f    .L809FA090                 
/* 01E34 809FA084 00000000 */  nop
/* 01E38 809FA088 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 01E3C 809FA08C 260603D4 */  addiu   $a2, $s0, 0x03D4           ## $a2 = 000003D4
.L809FA090:
/* 01E40 809FA090 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01E44 809FA094 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 01E48 809FA098 3C01C1F0 */  lui     $at, 0xC1F0                ## $at = C1F00000
/* 01E4C 809FA09C 44815000 */  mtc1    $at, $f10                  ## $f10 = -30.00
/* 01E50 809FA0A0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01E54 809FA0A4 C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000024
/* 01E58 809FA0A8 460A0402 */  mul.s   $f16, $f0, $f10            
/* 01E5C 809FA0AC 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 01E60 809FA0B0 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 01E64 809FA0B4 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 01E68 809FA0B8 46083280 */  add.s   $f10, $f6, $f8             
/* 01E6C 809FA0BC 46128100 */  add.s   $f4, $f16, $f18            
/* 01E70 809FA0C0 E60A003C */  swc1    $f10, 0x003C($s0)          ## 0000003C
/* 01E74 809FA0C4 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01E78 809FA0C8 E6040038 */  swc1    $f4, 0x0038($s0)           ## 00000038
/* 01E7C 809FA0CC 3C01C1F0 */  lui     $at, 0xC1F0                ## $at = C1F00000
/* 01E80 809FA0D0 44818000 */  mtc1    $at, $f16                  ## $f16 = -30.00
/* 01E84 809FA0D4 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 01E88 809FA0D8 46100482 */  mul.s   $f18, $f0, $f16            
/* 01E8C 809FA0DC 46049180 */  add.s   $f6, $f18, $f4             
/* 01E90 809FA0E0 E6060040 */  swc1    $f6, 0x0040($s0)           ## 00000040
/* 01E94 809FA0E4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01E98 809FA0E8 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 01E9C 809FA0EC 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 01EA0 809FA0F0 03E00008 */  jr      $ra                        
/* 01EA4 809FA0F4 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
