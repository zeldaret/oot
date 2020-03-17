glabel func_80BADF0C
/* 0024C 80BADF0C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00250 80BADF10 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00254 80BADF14 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 00258 80BADF18 8488001C */  lh      $t0, 0x001C($a0)           ## 0000001C
/* 0025C 80BADF1C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00260 80BADF20 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00264 80BADF24 310800FF */  andi    $t0, $t0, 0x00FF           ## $t0 = 00000000
/* 00268 80BADF28 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 0026C 80BADF2C AFA7002C */  sw      $a3, 0x002C($sp)           
/* 00270 80BADF30 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00274 80BADF34 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 00278 80BADF38 24650024 */  addiu   $a1, $v1, 0x0024           ## $a1 = 00000024
/* 0027C 80BADF3C 0C032D94 */  jal     func_800CB650              
/* 00280 80BADF40 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 00284 80BADF44 3C0180BB */  lui     $at, %hi(D_80BAE36C)       ## $at = 80BB0000
/* 00288 80BADF48 C424E36C */  lwc1    $f4, %lo(D_80BAE36C)($at)  
/* 0028C 80BADF4C 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 00290 80BADF50 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00294 80BADF54 4600203C */  c.lt.s  $f4, $f0                   
/* 00298 80BADF58 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 0029C 80BADF5C 8FA8001C */  lw      $t0, 0x001C($sp)           
/* 002A0 80BADF60 45020004 */  bc1fl   .L80BADF74                 
/* 002A4 80BADF64 90C201A4 */  lbu     $v0, 0x01A4($a2)           ## 000001A4
/* 002A8 80BADF68 10000038 */  beq     $zero, $zero, .L80BAE04C   
/* 002AC 80BADF6C A0C001A4 */  sb      $zero, 0x01A4($a2)         ## 000001A4
/* 002B0 80BADF70 90C201A4 */  lbu     $v0, 0x01A4($a2)           ## 000001A4
.L80BADF74:
/* 002B4 80BADF74 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 002B8 80BADF78 1440000C */  bne     $v0, $zero, .L80BADFAC     
/* 002BC 80BADF7C 00000000 */  nop
/* 002C0 80BADF80 8C620680 */  lw      $v0, 0x0680($v1)           ## 00000680
/* 002C4 80BADF84 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 002C8 80BADF88 000271C0 */  sll     $t6, $v0,  7               
/* 002CC 80BADF8C 05C20006 */  bltzl   $t6, .L80BADFA8            
/* 002D0 80BADF90 A0D801A4 */  sb      $t8, 0x01A4($a2)           ## 000001A4
/* 002D4 80BADF94 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 002D8 80BADF98 00417825 */  or      $t7, $v0, $at              ## $t7 = 00800000
/* 002DC 80BADF9C 1000002B */  beq     $zero, $zero, .L80BAE04C   
/* 002E0 80BADFA0 AC6F0680 */  sw      $t7, 0x0680($v1)           ## 00000680
/* 002E4 80BADFA4 A0D801A4 */  sb      $t8, 0x01A4($a2)           ## 000001A4
.L80BADFA8:
/* 002E8 80BADFA8 330200FF */  andi    $v0, $t8, 0x00FF           ## $v0 = 00000001
.L80BADFAC:
/* 002EC 80BADFAC 14410008 */  bne     $v0, $at, .L80BADFD0       
/* 002F0 80BADFB0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 002F4 80BADFB4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 002F8 80BADFB8 0C042F56 */  jal     func_8010BD58              
/* 002FC 80BADFBC AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00300 80BADFC0 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00304 80BADFC4 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 00308 80BADFC8 10000020 */  beq     $zero, $zero, .L80BAE04C   
/* 0030C 80BADFCC A0D901A4 */  sb      $t9, 0x01A4($a2)           ## 000001A4
.L80BADFD0:
/* 00310 80BADFD0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00314 80BADFD4 1441001D */  bne     $v0, $at, .L80BAE04C       
/* 00318 80BADFD8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0031C 80BADFDC 00E11021 */  addu    $v0, $a3, $at              
/* 00320 80BADFE0 944904C6 */  lhu     $t1, 0x04C6($v0)           ## 000004C6
/* 00324 80BADFE4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00328 80BADFE8 15210018 */  bne     $t1, $at, .L80BAE04C       
/* 0032C 80BADFEC 24010040 */  addiu   $at, $zero, 0x0040         ## $at = 00000040
/* 00330 80BADFF0 55010005 */  bnel    $t0, $at, .L80BAE008       
/* 00334 80BADFF4 24010041 */  addiu   $at, $zero, 0x0041         ## $at = 00000041
/* 00338 80BADFF8 944A04C4 */  lhu     $t2, 0x04C4($v0)           ## 000004C4
/* 0033C 80BADFFC 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 00340 80BAE000 11410006 */  beq     $t2, $at, .L80BAE01C       
/* 00344 80BAE004 24010041 */  addiu   $at, $zero, 0x0041         ## $at = 00000041
.L80BAE008:
/* 00348 80BAE008 55010010 */  bnel    $t0, $at, .L80BAE04C       
/* 0034C 80BAE00C A0C001A4 */  sb      $zero, 0x01A4($a2)         ## 000001A4
/* 00350 80BAE010 944B04C4 */  lhu     $t3, 0x04C4($v0)           ## 000004C4
/* 00354 80BAE014 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 00358 80BAE018 1561000B */  bne     $t3, $at, .L80BAE048       
.L80BAE01C:
/* 0035C 80BAE01C 3C0C80BB */  lui     $t4, %hi(func_80BADE74)    ## $t4 = 80BB0000
/* 00360 80BAE020 258CDE74 */  addiu   $t4, $t4, %lo(func_80BADE74) ## $t4 = 80BADE74
/* 00364 80BAE024 ACCC0198 */  sw      $t4, 0x0198($a2)           ## 00000198
/* 00368 80BAE028 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 0036C 80BAE02C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00370 80BAE030 0C020120 */  jal     func_80080480              
/* 00374 80BAE034 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 00378 80BAE038 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 0037C 80BAE03C A4C001A2 */  sh      $zero, 0x01A2($a2)         ## 000001A2
/* 00380 80BAE040 10000002 */  beq     $zero, $zero, .L80BAE04C   
/* 00384 80BAE044 A0C001A4 */  sb      $zero, 0x01A4($a2)         ## 000001A4
.L80BAE048:
/* 00388 80BAE048 A0C001A4 */  sb      $zero, 0x01A4($a2)         ## 000001A4
.L80BAE04C:
/* 0038C 80BAE04C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00390 80BAE050 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00394 80BAE054 03E00008 */  jr      $ra                        
/* 00398 80BAE058 00000000 */  nop


