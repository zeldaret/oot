glabel EnInsect_Update
/* 01DE0 80A7DC00 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01DE4 80A7DC04 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01DE8 80A7DC08 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01DEC 80A7DC0C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01DF0 80A7DC10 8C82011C */  lw      $v0, 0x011C($a0)           ## 0000011C
/* 01DF4 80A7DC14 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01DF8 80A7DC18 50400008 */  beql    $v0, $zero, .L80A7DC3C     
/* 01DFC 80A7DC1C 8602031A */  lh      $v0, 0x031A($s0)           ## 0000031A
/* 01E00 80A7DC20 8C4E0130 */  lw      $t6, 0x0130($v0)           ## 00000130
/* 01E04 80A7DC24 55C00005 */  bnel    $t6, $zero, .L80A7DC3C     
/* 01E08 80A7DC28 8602031A */  lh      $v0, 0x031A($s0)           ## 0000031A
/* 01E0C 80A7DC2C 50820003 */  beql    $a0, $v0, .L80A7DC3C       
/* 01E10 80A7DC30 8602031A */  lh      $v0, 0x031A($s0)           ## 0000031A
/* 01E14 80A7DC34 AC80011C */  sw      $zero, 0x011C($a0)         ## 0000011C
/* 01E18 80A7DC38 8602031A */  lh      $v0, 0x031A($s0)           ## 0000031A
.L80A7DC3C:
/* 01E1C 80A7DC3C 18400002 */  blez    $v0, .L80A7DC48            
/* 01E20 80A7DC40 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 01E24 80A7DC44 A60F031A */  sh      $t7, 0x031A($s0)           ## 0000031A
.L80A7DC48:
/* 01E28 80A7DC48 8602031C */  lh      $v0, 0x031C($s0)           ## 0000031C
/* 01E2C 80A7DC4C 18400002 */  blez    $v0, .L80A7DC58            
/* 01E30 80A7DC50 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 01E34 80A7DC54 A618031C */  sh      $t8, 0x031C($s0)           ## 0000031C
.L80A7DC58:
/* 01E38 80A7DC58 8E190310 */  lw      $t9, 0x0310($s0)           ## 00000310
/* 01E3C 80A7DC5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E40 80A7DC60 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01E44 80A7DC64 0320F809 */  jalr    $ra, $t9                   
/* 01E48 80A7DC68 00000000 */  nop
/* 01E4C 80A7DC6C 8E080130 */  lw      $t0, 0x0130($s0)           ## 00000130
/* 01E50 80A7DC70 51000071 */  beql    $t0, $zero, .L80A7DE38     
/* 01E54 80A7DC74 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01E58 80A7DC78 0C00B638 */  jal     Actor_MoveForward
              
/* 01E5C 80A7DC7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E60 80A7DC80 96030314 */  lhu     $v1, 0x0314($s0)           ## 00000314
/* 01E64 80A7DC84 30690100 */  andi    $t1, $v1, 0x0100           ## $t1 = 00000000
/* 01E68 80A7DC88 1120000E */  beq     $t1, $zero, .L80A7DCC4     
/* 01E6C 80A7DC8C 306A0001 */  andi    $t2, $v1, 0x0001           ## $t2 = 00000000
/* 01E70 80A7DC90 11400009 */  beq     $t2, $zero, .L80A7DCB8     
/* 01E74 80A7DC94 00000000 */  nop
/* 01E78 80A7DC98 960B0088 */  lhu     $t3, 0x0088($s0)           ## 00000088
/* 01E7C 80A7DC9C 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 01E80 80A7DCA0 51800009 */  beql    $t4, $zero, .L80A7DCC8     
/* 01E84 80A7DCA4 306D0001 */  andi    $t5, $v1, 0x0001           ## $t5 = 00000000
/* 01E88 80A7DCA8 0C29F016 */  jal     func_80A7C058              
/* 01E8C 80A7DCAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E90 80A7DCB0 10000004 */  beq     $zero, $zero, .L80A7DCC4   
/* 01E94 80A7DCB4 96030314 */  lhu     $v1, 0x0314($s0)           ## 00000314
.L80A7DCB8:
/* 01E98 80A7DCB8 0C29F016 */  jal     func_80A7C058              
/* 01E9C 80A7DCBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EA0 80A7DCC0 96030314 */  lhu     $v1, 0x0314($s0)           ## 00000314
.L80A7DCC4:
/* 01EA4 80A7DCC4 306D0001 */  andi    $t5, $v1, 0x0001           ## $t5 = 00000000
.L80A7DCC8:
/* 01EA8 80A7DCC8 11A00002 */  beq     $t5, $zero, .L80A7DCD4     
/* 01EAC 80A7DCCC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01EB0 80A7DCD0 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A7DCD4:
/* 01EB4 80A7DCD4 306E0002 */  andi    $t6, $v1, 0x0002           ## $t6 = 00000000
/* 01EB8 80A7DCD8 11C00002 */  beq     $t6, $zero, .L80A7DCE4     
/* 01EBC 80A7DCDC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 01EC0 80A7DCE0 34420001 */  ori     $v0, $v0, 0x0001           ## $v0 = 00000005
.L80A7DCE4:
/* 01EC4 80A7DCE4 10400008 */  beq     $v0, $zero, .L80A7DD08     
/* 01EC8 80A7DCE8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01ECC 80A7DCEC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01ED0 80A7DCF0 34420040 */  ori     $v0, $v0, 0x0040           ## $v0 = 00000045
/* 01ED4 80A7DCF4 AFA20014 */  sw      $v0, 0x0014($sp)           
/* 01ED8 80A7DCF8 3C064100 */  lui     $a2, 0x4100                ## $a2 = 41000000
/* 01EDC 80A7DCFC 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 01EE0 80A7DD00 0C00B92D */  jal     func_8002E4B4              
/* 01EE4 80A7DD04 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80A7DD08:
/* 01EE8 80A7DD08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EEC 80A7DD0C 0C00BD04 */  jal     func_8002F410              
/* 01EF0 80A7DD10 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01EF4 80A7DD14 10400011 */  beq     $v0, $zero, .L80A7DD5C     
/* 01EF8 80A7DD18 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 01EFC 80A7DD1C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 01F00 80A7DD20 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01F04 80A7DD24 AE000118 */  sw      $zero, 0x0118($s0)         ## 00000118
/* 01F08 80A7DD28 30420003 */  andi    $v0, $v0, 0x0003           ## $v0 = 00000000
/* 01F0C 80A7DD2C 10410003 */  beq     $v0, $at, .L80A7DD3C       
/* 01F10 80A7DD30 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01F14 80A7DD34 14410005 */  bne     $v0, $at, .L80A7DD4C       
/* 01F18 80A7DD38 00000000 */  nop
.L80A7DD3C:
/* 01F1C 80A7DD3C 0C00B55C */  jal     Actor_Kill
              
/* 01F20 80A7DD40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F24 80A7DD44 10000039 */  beq     $zero, $zero, .L80A7DE2C   
/* 01F28 80A7DD48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A7DD4C:
/* 01F2C 80A7DD4C 0C29F299 */  jal     func_80A7CA64              
/* 01F30 80A7DD50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F34 80A7DD54 10000035 */  beq     $zero, $zero, .L80A7DE2C   
/* 01F38 80A7DD58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A7DD5C:
/* 01F3C 80A7DD5C C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 01F40 80A7DD60 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.00
/* 01F44 80A7DD64 00000000 */  nop
/* 01F48 80A7DD68 4608303C */  c.lt.s  $f6, $f8                   
/* 01F4C 80A7DD6C 00000000 */  nop
/* 01F50 80A7DD70 4502002E */  bc1fl   .L80A7DE2C                 
/* 01F54 80A7DD74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F58 80A7DD78 8E180310 */  lw      $t8, 0x0310($s0)           ## 00000310
/* 01F5C 80A7DD7C 3C0F80A8 */  lui     $t7, %hi(func_80A7CAD0)    ## $t7 = 80A80000
/* 01F60 80A7DD80 25EFCAD0 */  addiu   $t7, $t7, %lo(func_80A7CAD0) ## $t7 = 80A7CAD0
/* 01F64 80A7DD84 51F80029 */  beql    $t7, $t8, .L80A7DE2C       
/* 01F68 80A7DD88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F6C 80A7DD8C 96030314 */  lhu     $v1, 0x0314($s0)           ## 00000314
/* 01F70 80A7DD90 30790020 */  andi    $t9, $v1, 0x0020           ## $t9 = 00000000
/* 01F74 80A7DD94 5720000C */  bnel    $t9, $zero, .L80A7DDC8     
/* 01F78 80A7DD98 30690008 */  andi    $t1, $v1, 0x0008           ## $t1 = 00000000
/* 01F7C 80A7DD9C 8608031C */  lh      $t0, 0x031C($s0)           ## 0000031C
/* 01F80 80A7DDA0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 01F84 80A7DDA4 2606014C */  addiu   $a2, $s0, 0x014C           ## $a2 = 0000014C
/* 01F88 80A7DDA8 290100B4 */  slti    $at, $t0, 0x00B4           
/* 01F8C 80A7DDAC 10200005 */  beq     $at, $zero, .L80A7DDC4     
/* 01F90 80A7DDB0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01F94 80A7DDB4 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01F98 80A7DDB8 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 01F9C 80A7DDBC 00812821 */  addu    $a1, $a0, $at              
/* 01FA0 80A7DDC0 96030314 */  lhu     $v1, 0x0314($s0)           ## 00000314
.L80A7DDC4:
/* 01FA4 80A7DDC4 30690008 */  andi    $t1, $v1, 0x0008           ## $t1 = 00000000
.L80A7DDC8:
/* 01FA8 80A7DDC8 15200017 */  bne     $t1, $zero, .L80A7DE28     
/* 01FAC 80A7DDCC 3C0A80A8 */  lui     $t2, %hi(D_80A7DEB4)       ## $t2 = 80A80000
/* 01FB0 80A7DDD0 854ADEB4 */  lh      $t2, %lo(D_80A7DEB4)($t2)  
/* 01FB4 80A7DDD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FB8 80A7DDD8 29410004 */  slti    $at, $t2, 0x0004           
/* 01FBC 80A7DDDC 50200013 */  beql    $at, $zero, .L80A7DE2C     
/* 01FC0 80A7DDE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FC4 80A7DDE4 0C29EF9B */  jal     func_80A7BE6C              
/* 01FC8 80A7DDE8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01FCC 80A7DDEC 1040000E */  beq     $v0, $zero, .L80A7DE28     
/* 01FD0 80A7DDF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FD4 80A7DDF4 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01FD8 80A7DDF8 44815000 */  mtc1    $at, $f10                  ## $f10 = 30.00
/* 01FDC 80A7DDFC 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01FE0 80A7DE00 2406007E */  addiu   $a2, $zero, 0x007E         ## $a2 = 0000007E
/* 01FE4 80A7DE04 3C074270 */  lui     $a3, 0x4270                ## $a3 = 42700000
/* 01FE8 80A7DE08 0C00BD0D */  jal     func_8002F434              
/* 01FEC 80A7DE0C E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 01FF0 80A7DE10 10400005 */  beq     $v0, $zero, .L80A7DE28     
/* 01FF4 80A7DE14 3C0280A8 */  lui     $v0, %hi(D_80A7DEB4)       ## $v0 = 80A80000
/* 01FF8 80A7DE18 2442DEB4 */  addiu   $v0, $v0, %lo(D_80A7DEB4)  ## $v0 = 80A7DEB4
/* 01FFC 80A7DE1C 844B0000 */  lh      $t3, 0x0000($v0)           ## 80A7DEB4
/* 02000 80A7DE20 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 02004 80A7DE24 A44C0000 */  sh      $t4, 0x0000($v0)           ## 80A7DEB4
.L80A7DE28:
/* 02008 80A7DE28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A7DE2C:
/* 0200C 80A7DE2C 0C00B56E */  jal     Actor_SetHeight
              
/* 02010 80A7DE30 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 02014 80A7DE34 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A7DE38:
/* 02018 80A7DE38 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0201C 80A7DE3C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02020 80A7DE40 03E00008 */  jr      $ra                        
/* 02024 80A7DE44 00000000 */  nop
