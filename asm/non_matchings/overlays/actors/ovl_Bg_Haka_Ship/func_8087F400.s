.late_rodata
glabel D_8087FB74
    .float 0.12566371
 
glabel D_8087FB78
    .float 7650.0

glabel D_8087FB7C
    .float 7600.0

glabel D_8087FB80
    .float 50.384617

glabel D_8087FB84
    .float 0.12566371

.text
glabel func_8087F400
/* 00300 8087F400 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00304 8087F404 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00308 8087F408 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0030C 8087F40C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00310 8087F410 90820168 */  lbu     $v0, 0x0168($a0)           ## 00000168
/* 00314 8087F414 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00318 8087F418 240F0032 */  addiu   $t7, $zero, 0x0032         ## $t7 = 00000032
/* 0031C 8087F41C 10400003 */  beq     $v0, $zero, .L8087F42C     
/* 00320 8087F420 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00324 8087F424 A08E0168 */  sb      $t6, 0x0168($a0)           ## 00000168
/* 00328 8087F428 31C200FF */  andi    $v0, $t6, 0x00FF           ## $v0 = 000000FF
.L8087F42C:
/* 0032C 8087F42C 14400003 */  bne     $v0, $zero, .L8087F43C     
/* 00330 8087F430 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 00334 8087F434 A20F0168 */  sb      $t7, 0x0168($s0)           ## 00000168
/* 00338 8087F438 31E200FF */  andi    $v0, $t7, 0x00FF           ## $v0 = 00000032
.L8087F43C:
/* 0033C 8087F43C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00340 8087F440 04410004 */  bgez    $v0, .L8087F454            
/* 00344 8087F444 468021A0 */  cvt.s.w $f6, $f4                   
/* 00348 8087F448 44814000 */  mtc1    $at, $f8                   ## $f8 = 4294967296.00
/* 0034C 8087F44C 00000000 */  nop
/* 00350 8087F450 46083180 */  add.s   $f6, $f6, $f8              
.L8087F454:
/* 00354 8087F454 3C018088 */  lui     $at, %hi(D_8087FB74)       ## $at = 80880000
/* 00358 8087F458 C42AFB74 */  lwc1    $f10, %lo(D_8087FB74)($at) 
/* 0035C 8087F45C 460A3302 */  mul.s   $f12, $f6, $f10            
/* 00360 8087F460 0C0400A4 */  jal     sinf
              
/* 00364 8087F464 00000000 */  nop
/* 00368 8087F468 3C018088 */  lui     $at, %hi(D_8087FB78)       ## $at = 80880000
/* 0036C 8087F46C C42EFB78 */  lwc1    $f14, %lo(D_8087FB78)($at) 
/* 00370 8087F470 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00374 8087F474 44818000 */  mtc1    $at, $f16                  ## $f16 = 50.00
/* 00378 8087F478 C60C0008 */  lwc1    $f12, 0x0008($s0)          ## 00000008
/* 0037C 8087F47C C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00380 8087F480 46100482 */  mul.s   $f18, $f0, $f16            
/* 00384 8087F484 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 00388 8087F488 46066081 */  sub.s   $f2, $f12, $f6             
/* 0038C 8087F48C 3C018088 */  lui     $at, %hi(D_8087FB7C)       ## $at = 80880000
/* 00390 8087F490 4602703C */  c.lt.s  $f14, $f2                  
/* 00394 8087F494 46049200 */  add.s   $f8, $f18, $f4             
/* 00398 8087F498 45000005 */  bc1f    .L8087F4B0                 
/* 0039C 8087F49C E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 003A0 8087F4A0 460E6281 */  sub.s   $f10, $f12, $f14           
/* 003A4 8087F4A4 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 003A8 8087F4A8 E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
/* 003AC 8087F4AC E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
.L8087F4B0:
/* 003B0 8087F4B0 C432FB7C */  lwc1    $f18, %lo(D_8087FB7C)($at) 
/* 003B4 8087F4B4 4602903C */  c.lt.s  $f18, $f2                  
/* 003B8 8087F4B8 00000000 */  nop
/* 003BC 8087F4BC 45020011 */  bc1fl   .L8087F504                 
/* 003C0 8087F4C0 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 003C4 8087F4C4 0C02FF21 */  jal     func_800BFC84              
/* 003C8 8087F4C8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 003CC 8087F4CC 1440000C */  bne     $v0, $zero, .L8087F500     
/* 003D0 8087F4D0 24180028 */  addiu   $t8, $zero, 0x0028         ## $t8 = 00000028
/* 003D4 8087F4D4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 003D8 8087F4D8 A2180168 */  sb      $t8, 0x0168($s0)           ## 00000168
/* 003DC 8087F4DC 24055071 */  addiu   $a1, $zero, 0x5071         ## $a1 = 00005071
/* 003E0 8087F4E0 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 003E4 8087F4E4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 003E8 8087F4E8 0C042DA0 */  jal     func_8010B680              
/* 003EC 8087F4EC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 003F0 8087F4F0 3C198088 */  lui     $t9, %hi(func_8087F5C8)    ## $t9 = 80880000
/* 003F4 8087F4F4 2739F5C8 */  addiu   $t9, $t9, %lo(func_8087F5C8) ## $t9 = 8087F5C8
/* 003F8 8087F4F8 10000006 */  beq     $zero, $zero, .L8087F514   
/* 003FC 8087F4FC AE190164 */  sw      $t9, 0x0164($s0)           ## 00000164
.L8087F500:
/* 00400 8087F500 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
.L8087F504:
/* 00404 8087F504 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 00408 8087F508 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 0040C 8087F50C 0C01DE80 */  jal     Math_ApproxF
              
/* 00410 8087F510 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
.L8087F514:
/* 00414 8087F514 8E02011C */  lw      $v0, 0x011C($s0)           ## 0000011C
/* 00418 8087F518 50400011 */  beql    $v0, $zero, .L8087F560     
/* 0041C 8087F51C AE00011C */  sw      $zero, 0x011C($s0)         ## 0000011C
/* 00420 8087F520 8C480130 */  lw      $t0, 0x0130($v0)           ## 00000130
/* 00424 8087F524 3C018088 */  lui     $at, %hi(D_8087FB80)       ## $at = 80880000
/* 00428 8087F528 5100000D */  beql    $t0, $zero, .L8087F560     
/* 0042C 8087F52C AE00011C */  sw      $zero, 0x011C($s0)         ## 0000011C
/* 00430 8087F530 844900B8 */  lh      $t1, 0x00B8($v0)           ## 000000B8
/* 00434 8087F534 C428FB80 */  lwc1    $f8, %lo(D_8087FB80)($at)  
/* 00438 8087F538 C6060068 */  lwc1    $f6, 0x0068($s0)           ## 00000068
/* 0043C 8087F53C 44898000 */  mtc1    $t1, $f16                  ## $f16 = 0.00
/* 00440 8087F540 46064282 */  mul.s   $f10, $f8, $f6             
/* 00444 8087F544 468084A0 */  cvt.s.w $f18, $f16                 
/* 00448 8087F548 460A9100 */  add.s   $f4, $f18, $f10            
/* 0044C 8087F54C 4600220D */  trunc.w.s $f8, $f4                   
/* 00450 8087F550 440B4000 */  mfc1    $t3, $f8                   
/* 00454 8087F554 10000002 */  beq     $zero, $zero, .L8087F560   
/* 00458 8087F558 A44B00B8 */  sh      $t3, 0x00B8($v0)           ## 000000B8
/* 0045C 8087F55C AE00011C */  sw      $zero, 0x011C($s0)         ## 0000011C
.L8087F560:
/* 00460 8087F560 920C0168 */  lbu     $t4, 0x0168($s0)           ## 00000168
/* 00464 8087F564 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 00468 8087F568 448C3000 */  mtc1    $t4, $f6                   ## $f6 = 0.00
/* 0046C 8087F56C 05810004 */  bgez    $t4, .L8087F580            
/* 00470 8087F570 46803420 */  cvt.s.w $f16, $f6                  
/* 00474 8087F574 44819000 */  mtc1    $at, $f18                  ## $f18 = 4294967296.00
/* 00478 8087F578 00000000 */  nop
/* 0047C 8087F57C 46128400 */  add.s   $f16, $f16, $f18           
.L8087F580:
/* 00480 8087F580 3C018088 */  lui     $at, %hi(D_8087FB84)       ## $at = 80880000
/* 00484 8087F584 C42AFB84 */  lwc1    $f10, %lo(D_8087FB84)($at) 
/* 00488 8087F588 460A8302 */  mul.s   $f12, $f16, $f10           
/* 0048C 8087F58C 0C0400A4 */  jal     sinf
              
/* 00490 8087F590 00000000 */  nop
/* 00494 8087F594 3C0145C0 */  lui     $at, 0x45C0                ## $at = 45C00000
/* 00498 8087F598 44812000 */  mtc1    $at, $f4                   ## $f4 = 6144.00
/* 0049C 8087F59C 00000000 */  nop
/* 004A0 8087F5A0 46040202 */  mul.s   $f8, $f0, $f4              
/* 004A4 8087F5A4 4600418D */  trunc.w.s $f6, $f8                   
/* 004A8 8087F5A8 440E3000 */  mfc1    $t6, $f6                   
/* 004AC 8087F5AC 00000000 */  nop
/* 004B0 8087F5B0 A60E016A */  sh      $t6, 0x016A($s0)           ## 0000016A
/* 004B4 8087F5B4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 004B8 8087F5B8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 004BC 8087F5BC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 004C0 8087F5C0 03E00008 */  jr      $ra                        
/* 004C4 8087F5C4 00000000 */  nop
