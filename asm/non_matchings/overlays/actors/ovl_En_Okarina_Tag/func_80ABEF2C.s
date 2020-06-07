.rdata
glabel D_80AC0454
    .asciz "[31m☆☆☆☆☆ 北！！！！！ ☆☆☆☆☆ %f\n[m"
    .balign 4

.text
glabel func_80ABEF2C
/* 0020C 80ABEF2C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00210 80ABEF30 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00214 80ABEF34 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00218 80ABEF38 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0021C 80ABEF3C 848F015A */  lh      $t7, 0x015A($a0)           ## 0000015A
/* 00220 80ABEF40 84860154 */  lh      $a2, 0x0154($a0)           ## 00000154
/* 00224 80ABEF44 8CA81C44 */  lw      $t0, 0x1C44($a1)           ## 00001C44
/* 00228 80ABEF48 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 0022C 80ABEF4C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00230 80ABEF50 04C0000C */  bltz    $a2, .L80ABEF84            
/* 00234 80ABEF54 A498015A */  sh      $t8, 0x015A($a0)           ## 0000015A
/* 00238 80ABEF58 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0023C 80ABEF5C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 00240 80ABEF60 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00244 80ABEF64 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 00248 80ABEF68 10400006 */  beq     $v0, $zero, .L80ABEF84     
/* 0024C 80ABEF6C 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 00250 80ABEF70 8E190004 */  lw      $t9, 0x0004($s0)           ## 00000004
/* 00254 80ABEF74 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00258 80ABEF78 03214824 */  and     $t1, $t9, $at              
/* 0025C 80ABEF7C 1000004E */  beq     $zero, $zero, .L80ABF0B8   
/* 00260 80ABEF80 AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
.L80ABEF84:
/* 00264 80ABEF84 860A0152 */  lh      $t2, 0x0152($s0)           ## 00000152
/* 00268 80ABEF88 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 0026C 80ABEF8C 3C0B8016 */  lui     $t3, %hi(gSaveContext+0x12c5)
/* 00270 80ABEF90 55410005 */  bnel    $t2, $at, .L80ABEFA8       
/* 00274 80ABEF94 8D0C0680 */  lw      $t4, 0x0680($t0)           ## 00000680
/* 00278 80ABEF98 916BF925 */  lbu     $t3, %lo(gSaveContext+0x12c5)($t3)
/* 0027C 80ABEF9C 51600047 */  beql    $t3, $zero, .L80ABF0BC     
/* 00280 80ABEFA0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00284 80ABEFA4 8D0C0680 */  lw      $t4, 0x0680($t0)           ## 00000680
.L80ABEFA8:
/* 00288 80ABEFA8 000C69C0 */  sll     $t5, $t4,  7               
/* 0028C 80ABEFAC 05A3000C */  bgezl   $t5, .L80ABEFE0            
/* 00290 80ABEFB0 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 00294 80ABEFB4 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 00298 80ABEFB8 3C0480AC */  lui     $a0, %hi(D_80AC0454)       ## $a0 = 80AC0000
/* 0029C 80ABEFBC 24840454 */  addiu   $a0, $a0, %lo(D_80AC0454)  ## $a0 = 80AC0454
/* 002A0 80ABEFC0 460021A1 */  cvt.d.s $f6, $f4                   
/* 002A4 80ABEFC4 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 002A8 80ABEFC8 44073000 */  mfc1    $a3, $f6                   
/* 002AC 80ABEFCC 44063800 */  mfc1    $a2, $f7                   
/* 002B0 80ABEFD0 0C00084C */  jal     osSyncPrintf
              
/* 002B4 80ABEFD4 00000000 */  nop
/* 002B8 80ABEFD8 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 002BC 80ABEFDC 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
.L80ABEFE0:
/* 002C0 80ABEFE0 44814000 */  mtc1    $at, $f8                   ## $f8 = 90.00
/* 002C4 80ABEFE4 C60C015C */  lwc1    $f12, 0x015C($s0)          ## 0000015C
/* 002C8 80ABEFE8 C6020090 */  lwc1    $f2, 0x0090($s0)           ## 00000090
/* 002CC 80ABEFEC 460C4280 */  add.s   $f10, $f8, $f12            
/* 002D0 80ABEFF0 460A103C */  c.lt.s  $f2, $f10                  
/* 002D4 80ABEFF4 00000000 */  nop
/* 002D8 80ABEFF8 45020030 */  bc1fl   .L80ABF0BC                 
/* 002DC 80ABEFFC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 002E0 80ABF000 C5100028 */  lwc1    $f16, 0x0028($t0)          ## 00000028
/* 002E4 80ABF004 C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 002E8 80ABF008 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 002EC 80ABF00C 44812000 */  mtc1    $at, $f4                   ## $f4 = 80.00
/* 002F0 80ABF010 46128381 */  sub.s   $f14, $f16, $f18           
/* 002F4 80ABF014 46007385 */  abs.s   $f14, $f14                 
/* 002F8 80ABF018 4604703C */  c.lt.s  $f14, $f4                  
/* 002FC 80ABF01C 00000000 */  nop
/* 00300 80ABF020 45020026 */  bc1fl   .L80ABF0BC                 
/* 00304 80ABF024 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00308 80ABF028 8D030680 */  lw      $v1, 0x0680($t0)           ## 00000680
/* 0030C 80ABF02C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00310 80ABF030 00037180 */  sll     $t6, $v1,  6               
/* 00314 80ABF034 05C30012 */  bgezl   $t6, .L80ABF080            
/* 00318 80ABF038 44813000 */  mtc1    $at, $f6                   ## $f6 = 50.00
/* 0031C 80ABF03C 96020152 */  lhu     $v0, 0x0152($s0)           ## 00000152
/* 00320 80ABF040 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00324 80ABF044 54410003 */  bnel    $v0, $at, .L80ABF054       
/* 00328 80ABF048 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 0032C 80ABF04C 2402000A */  addiu   $v0, $zero, 0x000A         ## $v0 = 0000000A
/* 00330 80ABF050 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
.L80ABF054:
/* 00334 80ABF054 00617825 */  or      $t7, $v1, $at              ## $t7 = 00800000
/* 00338 80ABF058 AD0F0680 */  sw      $t7, 0x0680($t0)           ## 00000680
/* 0033C 80ABF05C 24450022 */  addiu   $a1, $v0, 0x0022           ## $a1 = 0000002C
/* 00340 80ABF060 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 0000002C
/* 00344 80ABF064 0C042F56 */  jal     func_8010BD58              
/* 00348 80ABF068 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0034C 80ABF06C 3C1880AC */  lui     $t8, %hi(func_80ABF0CC)    ## $t8 = 80AC0000
/* 00350 80ABF070 2718F0CC */  addiu   $t8, $t8, %lo(func_80ABF0CC) ## $t8 = 80ABF0CC
/* 00354 80ABF074 10000010 */  beq     $zero, $zero, .L80ABF0B8   
/* 00358 80ABF078 AE18014C */  sw      $t8, 0x014C($s0)           ## 0000014C
/* 0035C 80ABF07C 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.00
.L80ABF080:
/* 00360 80ABF080 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00364 80ABF084 460C3200 */  add.s   $f8, $f6, $f12             
/* 00368 80ABF088 4608103C */  c.lt.s  $f2, $f8                   
/* 0036C 80ABF08C 00000000 */  nop
/* 00370 80ABF090 4502000A */  bc1fl   .L80ABF0BC                 
/* 00374 80ABF094 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00378 80ABF098 44815000 */  mtc1    $at, $f10                  ## $f10 = 40.00
/* 0037C 80ABF09C 00000000 */  nop
/* 00380 80ABF0A0 460A703C */  c.lt.s  $f14, $f10                 
/* 00384 80ABF0A4 00000000 */  nop
/* 00388 80ABF0A8 45020004 */  bc1fl   .L80ABF0BC                 
/* 0038C 80ABF0AC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00390 80ABF0B0 A600015A */  sh      $zero, 0x015A($s0)         ## 0000015A
/* 00394 80ABF0B4 AD1006A8 */  sw      $s0, 0x06A8($t0)           ## 000006A8
.L80ABF0B8:
/* 00398 80ABF0B8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ABF0BC:
/* 0039C 80ABF0BC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 003A0 80ABF0C0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 003A4 80ABF0C4 03E00008 */  jr      $ra                        
/* 003A8 80ABF0C8 00000000 */  nop
