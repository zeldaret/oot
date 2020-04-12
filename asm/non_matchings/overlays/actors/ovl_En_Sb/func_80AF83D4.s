.late_rodata
glabel jtbl_80AF8AB8
.word L80AF8538
.word L80AF8504
.word L80AF85F4
.word L80AF85F4
.word L80AF85F4
.word L80AF85F4
.word L80AF85F4
.word L80AF85F4
.word L80AF85F4
.word L80AF85F4
.word L80AF85F4
.word L80AF85F4
.word L80AF8538
.word L80AF8450
.word L80AF8458

.text
glabel func_80AF83D4
/* 00BE4 80AF83D4 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00BE8 80AF83D8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00BEC 80AF83DC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00BF0 80AF83E0 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00BF4 80AF83E4 908E01A4 */  lbu     $t6, 0x01A4($a0)           ## 000001A4
/* 00BF8 80AF83E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BFC 80AF83EC 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 00C00 80AF83F0 51E00006 */  beql    $t7, $zero, .L80AF840C     
/* 00C04 80AF83F4 920201A5 */  lbu     $v0, 0x01A5($s0)           ## 000001A5
/* 00C08 80AF83F8 0C2BDF11 */  jal     func_80AF7C44              
/* 00C0C 80AF83FC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00C10 80AF8400 100000A5 */  beq     $zero, $zero, .L80AF8698   
/* 00C14 80AF8404 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00C18 80AF8408 920201A5 */  lbu     $v0, 0x01A5($s0)           ## 000001A5
.L80AF840C:
/* 00C1C 80AF840C 30580002 */  andi    $t8, $v0, 0x0002           ## $t8 = 00000000
/* 00C20 80AF8410 530000A1 */  beql    $t8, $zero, .L80AF8698     
/* 00C24 80AF8414 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00C28 80AF8418 A3A0002F */  sb      $zero, 0x002F($sp)         
/* 00C2C 80AF841C 920800B1 */  lbu     $t0, 0x00B1($s0)           ## 000000B1
/* 00C30 80AF8420 3059FFFD */  andi    $t9, $v0, 0xFFFD           ## $t9 = 00000000
/* 00C34 80AF8424 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00C38 80AF8428 2509FFFF */  addiu   $t1, $t0, 0xFFFF           ## $t1 = FFFFFFFF
/* 00C3C 80AF842C 2D21000F */  sltiu   $at, $t1, 0x000F           
/* 00C40 80AF8430 10200070 */  beq     $at, $zero, .L80AF85F4     
/* 00C44 80AF8434 A21901A5 */  sb      $t9, 0x01A5($s0)           ## 000001A5
/* 00C48 80AF8438 00094880 */  sll     $t1, $t1,  2               
/* 00C4C 80AF843C 3C0180B0 */  lui     $at, %hi(jtbl_80AF8AB8)       ## $at = 80B00000
/* 00C50 80AF8440 00290821 */  addu    $at, $at, $t1              
/* 00C54 80AF8444 8C298AB8 */  lw      $t1, %lo(jtbl_80AF8AB8)($at)  
/* 00C58 80AF8448 01200008 */  jr      $t1                        
/* 00C5C 80AF844C 00000000 */  nop
glabel L80AF8450
/* 00C60 80AF8450 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00C64 80AF8454 A3AA002F */  sb      $t2, 0x002F($sp)           
glabel L80AF8458
/* 00C68 80AF8458 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C6C 80AF845C 0C2BE0A3 */  jal     func_80AF828C              
/* 00C70 80AF8460 AFA30030 */  sw      $v1, 0x0030($sp)           
/* 00C74 80AF8464 10400063 */  beq     $v0, $zero, .L80AF85F4     
/* 00C78 80AF8468 8FA30030 */  lw      $v1, 0x0030($sp)           
/* 00C7C 80AF846C 860B01BC */  lh      $t3, 0x01BC($s0)           ## 000001BC
/* 00C80 80AF8470 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00C84 80AF8474 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00C88 80AF8478 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 00C8C 80AF847C 44815000 */  mtc1    $at, $f10                  ## $f10 = 30.00
/* 00C90 80AF8480 860C008A */  lh      $t4, 0x008A($s0)           ## 0000008A
/* 00C94 80AF8484 468021A0 */  cvt.s.w $f6, $f4                   
/* 00C98 80AF8488 860D00B6 */  lh      $t5, 0x00B6($s0)           ## 000000B6
/* 00C9C 80AF848C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00CA0 80AF8490 018D1023 */  subu    $v0, $t4, $t5              
/* 00CA4 80AF8494 00021400 */  sll     $v0, $v0, 16               
/* 00CA8 80AF8498 46083001 */  sub.s   $f0, $f6, $f8              
/* 00CAC 80AF849C 00021403 */  sra     $v0, $v0, 16               
/* 00CB0 80AF84A0 460A003C */  c.lt.s  $f0, $f10                  
/* 00CB4 80AF84A4 00000000 */  nop
/* 00CB8 80AF84A8 45020053 */  bc1fl   .L80AF85F8                 
/* 00CBC 80AF84AC 920B00AF */  lbu     $t3, 0x00AF($s0)           ## 000000AF
/* 00CC0 80AF84B0 44818000 */  mtc1    $at, $f16                  ## $f16 = 10.00
/* 00CC4 80AF84B4 2841E001 */  slti    $at, $v0, 0xE001           
/* 00CC8 80AF84B8 4600803C */  c.lt.s  $f16, $f0                  
/* 00CCC 80AF84BC 00000000 */  nop
/* 00CD0 80AF84C0 4502004D */  bc1fl   .L80AF85F8                 
/* 00CD4 80AF84C4 920B00AF */  lbu     $t3, 0x00AF($s0)           ## 000000AF
/* 00CD8 80AF84C8 1420004A */  bne     $at, $zero, .L80AF85F4     
/* 00CDC 80AF84CC 28412000 */  slti    $at, $v0, 0x2000           
/* 00CE0 80AF84D0 50200049 */  beql    $at, $zero, .L80AF85F8     
/* 00CE4 80AF84D4 920B00AF */  lbu     $t3, 0x00AF($s0)           ## 000000AF
/* 00CE8 80AF84D8 0C00D58A */  jal     Actor_ApplyDamage
              
/* 00CEC 80AF84DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CF0 80AF84E0 240E0050 */  addiu   $t6, $zero, 0x0050         ## $t6 = 00000050
/* 00CF4 80AF84E4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00CF8 80AF84E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CFC 80AF84EC 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00D00 80AF84F0 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00D04 80AF84F4 0C00D09B */  jal     func_8003426C              
/* 00D08 80AF84F8 24072000 */  addiu   $a3, $zero, 0x2000         ## $a3 = 00002000
/* 00D0C 80AF84FC 1000003D */  beq     $zero, $zero, .L80AF85F4   
/* 00D10 80AF8500 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
glabel L80AF8504
/* 00D14 80AF8504 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 00D18 80AF8508 A60F01F8 */  sh      $t7, 0x01F8($s0)           ## 000001F8
/* 00D1C 80AF850C 0C00D58A */  jal     Actor_ApplyDamage
              
/* 00D20 80AF8510 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D24 80AF8514 24180050 */  addiu   $t8, $zero, 0x0050         ## $t8 = 00000050
/* 00D28 80AF8518 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00D2C 80AF851C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D30 80AF8520 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00D34 80AF8524 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00D38 80AF8528 0C00D09B */  jal     func_8003426C              
/* 00D3C 80AF852C 24072000 */  addiu   $a3, $zero, 0x2000         ## $a3 = 00002000
/* 00D40 80AF8530 10000030 */  beq     $zero, $zero, .L80AF85F4   
/* 00D44 80AF8534 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
glabel L80AF8538
/* 00D48 80AF8538 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D4C 80AF853C 0C2BE0A3 */  jal     func_80AF828C              
/* 00D50 80AF8540 AFA30030 */  sw      $v1, 0x0030($sp)           
/* 00D54 80AF8544 1040002B */  beq     $v0, $zero, .L80AF85F4     
/* 00D58 80AF8548 8FA30030 */  lw      $v1, 0x0030($sp)           
/* 00D5C 80AF854C 861901BC */  lh      $t9, 0x01BC($s0)           ## 000001BC
/* 00D60 80AF8550 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 00D64 80AF8554 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00D68 80AF8558 44999000 */  mtc1    $t9, $f18                  ## $f18 = 0.00
/* 00D6C 80AF855C 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 00D70 80AF8560 8608008A */  lh      $t0, 0x008A($s0)           ## 0000008A
/* 00D74 80AF8564 46809120 */  cvt.s.w $f4, $f18                  
/* 00D78 80AF8568 860900B6 */  lh      $t1, 0x00B6($s0)           ## 000000B6
/* 00D7C 80AF856C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00D80 80AF8570 01091023 */  subu    $v0, $t0, $t1              
/* 00D84 80AF8574 00021400 */  sll     $v0, $v0, 16               
/* 00D88 80AF8578 46062001 */  sub.s   $f0, $f4, $f6              
/* 00D8C 80AF857C 00021403 */  sra     $v0, $v0, 16               
/* 00D90 80AF8580 4608003C */  c.lt.s  $f0, $f8                   
/* 00D94 80AF8584 00000000 */  nop
/* 00D98 80AF8588 4502001B */  bc1fl   .L80AF85F8                 
/* 00D9C 80AF858C 920B00AF */  lbu     $t3, 0x00AF($s0)           ## 000000AF
/* 00DA0 80AF8590 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 00DA4 80AF8594 2841E001 */  slti    $at, $v0, 0xE001           
/* 00DA8 80AF8598 4600503C */  c.lt.s  $f10, $f0                  
/* 00DAC 80AF859C 00000000 */  nop
/* 00DB0 80AF85A0 45020015 */  bc1fl   .L80AF85F8                 
/* 00DB4 80AF85A4 920B00AF */  lbu     $t3, 0x00AF($s0)           ## 000000AF
/* 00DB8 80AF85A8 14200012 */  bne     $at, $zero, .L80AF85F4     
/* 00DBC 80AF85AC 28412000 */  slti    $at, $v0, 0x2000           
/* 00DC0 80AF85B0 50200011 */  beql    $at, $zero, .L80AF85F8     
/* 00DC4 80AF85B4 920B00AF */  lbu     $t3, 0x00AF($s0)           ## 000000AF
/* 00DC8 80AF85B8 0C00D58A */  jal     Actor_ApplyDamage
              
/* 00DCC 80AF85BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DD0 80AF85C0 240A0050 */  addiu   $t2, $zero, 0x0050         ## $t2 = 00000050
/* 00DD4 80AF85C4 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00DD8 80AF85C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DDC 80AF85CC 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00DE0 80AF85D0 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00DE4 80AF85D4 0C00D09B */  jal     func_8003426C              
/* 00DE8 80AF85D8 24072000 */  addiu   $a3, $zero, 0x2000         ## $a3 = 00002000
/* 00DEC 80AF85DC 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00DF0 80AF85E0 AFA30030 */  sw      $v1, 0x0030($sp)           
/* 00DF4 80AF85E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DF8 80AF85E8 0C2BDF11 */  jal     func_80AF7C44              
/* 00DFC 80AF85EC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00E00 80AF85F0 8FA30030 */  lw      $v1, 0x0030($sp)           
glabel L80AF85F4
.L80AF85F4:
/* 00E04 80AF85F4 920B00AF */  lbu     $t3, 0x00AF($s0)           ## 000000AF
.L80AF85F8:
/* 00E08 80AF85F8 93AC002F */  lbu     $t4, 0x002F($sp)           
/* 00E0C 80AF85FC 260401E0 */  addiu   $a0, $s0, 0x01E0           ## $a0 = 000001E0
/* 00E10 80AF8600 15600010 */  bne     $t3, $zero, .L80AF8644     
/* 00E14 80AF8604 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 00E18 80AF8608 A20C0204 */  sb      $t4, 0x0204($s0)           ## 00000204
/* 00E1C 80AF860C 0C00CB89 */  jal     func_80032E24              
/* 00E20 80AF8610 8FA6004C */  lw      $a2, 0x004C($sp)           
/* 00E24 80AF8614 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 00E28 80AF8618 A60D01FC */  sh      $t5, 0x01FC($s0)           ## 000001FC
/* 00E2C 80AF861C 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00E30 80AF8620 0C00CB1F */  jal     func_80032C7C              
/* 00E34 80AF8624 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00E38 80AF8628 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00E3C 80AF862C 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00E40 80AF8630 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 00E44 80AF8634 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00E48 80AF8638 2407384A */  addiu   $a3, $zero, 0x384A         ## $a3 = 0000384A
/* 00E4C 80AF863C 10000016 */  beq     $zero, $zero, .L80AF8698   
/* 00E50 80AF8640 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AF8644:
/* 00E54 80AF8644 54600014 */  bnel    $v1, $zero, .L80AF8698     
/* 00E58 80AF8648 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00E5C 80AF864C 860E01BA */  lh      $t6, 0x01BA($s0)           ## 000001BA
/* 00E60 80AF8650 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00E64 80AF8654 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFF4
/* 00E68 80AF8658 448E8000 */  mtc1    $t6, $f16                  ## $f16 = 0.00
/* 00E6C 80AF865C 00000000 */  nop
/* 00E70 80AF8660 468084A0 */  cvt.s.w $f18, $f16                 
/* 00E74 80AF8664 E7B2003C */  swc1    $f18, 0x003C($sp)          
/* 00E78 80AF8668 860F01BC */  lh      $t7, 0x01BC($s0)           ## 000001BC
/* 00E7C 80AF866C 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 00E80 80AF8670 00000000 */  nop
/* 00E84 80AF8674 468021A0 */  cvt.s.w $f6, $f4                   
/* 00E88 80AF8678 E7A60040 */  swc1    $f6, 0x0040($sp)           
/* 00E8C 80AF867C 861801BE */  lh      $t8, 0x01BE($s0)           ## 000001BE
/* 00E90 80AF8680 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 00E94 80AF8684 00000000 */  nop
/* 00E98 80AF8688 468042A0 */  cvt.s.w $f10, $f8                  
/* 00E9C 80AF868C 0C018B7D */  jal     func_80062DF4              
/* 00EA0 80AF8690 E7AA0044 */  swc1    $f10, 0x0044($sp)          
/* 00EA4 80AF8694 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AF8698:
/* 00EA8 80AF8698 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00EAC 80AF869C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00EB0 80AF86A0 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00EB4 80AF86A4 03E00008 */  jr      $ra                        
/* 00EB8 80AF86A8 00000000 */  nop
