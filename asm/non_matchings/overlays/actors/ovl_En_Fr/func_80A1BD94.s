glabel func_80A1BD94
/* 013F4 80A1BD94 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 013F8 80A1BD98 00451021 */  addu    $v0, $v0, $a1              
/* 013FC 80A1BD9C 904203DC */  lbu     $v0, 0x03DC($v0)           ## 000103DC
/* 01400 80A1BDA0 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 01404 80A1BDA4 240E0037 */  addiu   $t6, $zero, 0x0037         ## $t6 = 00000037
/* 01408 80A1BDA8 1441000A */  bne     $v0, $at, .L80A1BDD4       
/* 0140C 80A1BDAC 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01410 80A1BDB0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01414 80A1BDB4 00250821 */  addu    $at, $at, $a1              
/* 01418 80A1BDB8 A02E03DC */  sb      $t6, 0x03DC($at)           ## 000103DC
/* 0141C 80A1BDBC 3C0180A2 */  lui     $at, %hi(D_80A1CFF0)       ## $at = 80A20000
/* 01420 80A1BDC0 3C1880A2 */  lui     $t8, %hi(func_80A1BDFC)    ## $t8 = 80A20000
/* 01424 80A1BDC4 A02FCFF0 */  sb      $t7, %lo(D_80A1CFF0)($at)  
/* 01428 80A1BDC8 2718BDFC */  addiu   $t8, $t8, %lo(func_80A1BDFC) ## $t8 = 80A1BDFC
/* 0142C 80A1BDCC 03E00008 */  jr      $ra                        
/* 01430 80A1BDD0 AC980354 */  sw      $t8, 0x0354($a0)           ## 00000354
.L80A1BDD4:
/* 01434 80A1BDD4 24010037 */  addiu   $at, $zero, 0x0037         ## $at = 00000037
/* 01438 80A1BDD8 14410006 */  bne     $v0, $at, .L80A1BDF4       
/* 0143C 80A1BDDC 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 01440 80A1BDE0 3C0180A2 */  lui     $at, %hi(D_80A1CFF0)       ## $at = 80A20000
/* 01444 80A1BDE4 3C0880A2 */  lui     $t0, %hi(func_80A1BDFC)    ## $t0 = 80A20000
/* 01448 80A1BDE8 A039CFF0 */  sb      $t9, %lo(D_80A1CFF0)($at)  
/* 0144C 80A1BDEC 2508BDFC */  addiu   $t0, $t0, %lo(func_80A1BDFC) ## $t0 = 80A1BDFC
/* 01450 80A1BDF0 AC880354 */  sw      $t0, 0x0354($a0)           ## 00000354
.L80A1BDF4:
/* 01454 80A1BDF4 03E00008 */  jr      $ra                        
/* 01458 80A1BDF8 00000000 */  nop


