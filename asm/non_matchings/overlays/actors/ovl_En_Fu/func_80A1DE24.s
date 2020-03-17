glabel func_80A1DE24
/* 00614 80A1DE24 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00618 80A1DE28 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0061C 80A1DE2C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00620 80A1DE30 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00624 80A1DE34 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 00628 80A1DE38 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 0062C 80A1DE3C 848E008A */  lh      $t6, 0x008A($a0)           ## 0000008A
/* 00630 80A1DE40 9739F53E */  lhu     $t9, -0x0AC2($t9)          ## 8015F53E
/* 00634 80A1DE44 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 00638 80A1DE48 3C0180A2 */  lui     $at, %hi(D_80A1E590)       ## $at = 80A20000
/* 0063C 80A1DE4C 01CFC023 */  subu    $t8, $t6, $t7              
/* 00640 80A1DE50 33280800 */  andi    $t0, $t9, 0x0800           ## $t0 = 00000000
/* 00644 80A1DE54 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00648 80A1DE58 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0064C 80A1DE5C 11000007 */  beq     $t0, $zero, .L80A1DE7C     
/* 00650 80A1DE60 A438E590 */  sh      $t8, %lo(D_80A1E590)($at)  
/* 00654 80A1DE64 3C0780A2 */  lui     $a3, %hi(func_80A1DBA0)    ## $a3 = 80A20000
/* 00658 80A1DE68 24E7DBA0 */  addiu   $a3, $a3, %lo(func_80A1DBA0) ## $a3 = 80A1DBA0
/* 0065C 80A1DE6C 0C287653 */  jal     func_80A1D94C              
/* 00660 80A1DE70 2406508E */  addiu   $a2, $zero, 0x508E         ## $a2 = 0000508E
/* 00664 80A1DE74 10000039 */  beq     $zero, $zero, .L80A1DF5C   
/* 00668 80A1DE78 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A1DE7C:
/* 0066C 80A1DE7C 8C690680 */  lw      $t1, 0x0680($v1)           ## 00000680
/* 00670 80A1DE80 240B5035 */  addiu   $t3, $zero, 0x5035         ## $t3 = 00005035
/* 00674 80A1DE84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00678 80A1DE88 000951C0 */  sll     $t2, $t1,  7               
/* 0067C 80A1DE8C 0541000D */  bgez    $t2, .L80A1DEC4            
/* 00680 80A1DE90 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00684 80A1DE94 A60B010E */  sh      $t3, 0x010E($s0)           ## 0000010E
/* 00688 80A1DE98 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0068C 80A1DE9C 3165FFFF */  andi    $a1, $t3, 0xFFFF           ## $a1 = 00005035
/* 00690 80A1DEA0 0C042DA0 */  jal     func_8010B680              
/* 00694 80A1DEA4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00698 80A1DEA8 960D02A8 */  lhu     $t5, 0x02A8($s0)           ## 000002A8
/* 0069C 80A1DEAC 3C0C80A2 */  lui     $t4, %hi(func_80A1DDA8)    ## $t4 = 80A20000
/* 006A0 80A1DEB0 258CDDA8 */  addiu   $t4, $t4, %lo(func_80A1DDA8) ## $t4 = 80A1DDA8
/* 006A4 80A1DEB4 35AE0002 */  ori     $t6, $t5, 0x0002           ## $t6 = 00000002
/* 006A8 80A1DEB8 AE0C02AC */  sw      $t4, 0x02AC($s0)           ## 000002AC
/* 006AC 80A1DEBC 10000026 */  beq     $zero, $zero, .L80A1DF58   
/* 006B0 80A1DEC0 A60E02A8 */  sh      $t6, 0x02A8($s0)           ## 000002A8
.L80A1DEC4:
/* 006B4 80A1DEC4 0C00BC65 */  jal     func_8002F194              
/* 006B8 80A1DEC8 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 006BC 80A1DECC 10400005 */  beq     $v0, $zero, .L80A1DEE4     
/* 006C0 80A1DED0 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 006C4 80A1DED4 3C0F80A2 */  lui     $t7, %hi(func_80A1DBA0)    ## $t7 = 80A20000
/* 006C8 80A1DED8 25EFDBA0 */  addiu   $t7, $t7, %lo(func_80A1DBA0) ## $t7 = 80A1DBA0
/* 006CC 80A1DEDC 1000001E */  beq     $zero, $zero, .L80A1DF58   
/* 006D0 80A1DEE0 AE0F02AC */  sw      $t7, 0x02AC($s0)           ## 000002AC
.L80A1DEE4:
/* 006D4 80A1DEE4 3C1880A2 */  lui     $t8, %hi(D_80A1E590)       ## $t8 = 80A20000
/* 006D8 80A1DEE8 8718E590 */  lh      $t8, %lo(D_80A1E590)($t8)  
/* 006DC 80A1DEEC 3C0280A2 */  lui     $v0, %hi(D_80A1E590)       ## $v0 = 80A20000
/* 006E0 80A1DEF0 07000003 */  bltz    $t8, .L80A1DF00            
/* 006E4 80A1DEF4 00000000 */  nop
/* 006E8 80A1DEF8 10000003 */  beq     $zero, $zero, .L80A1DF08   
/* 006EC 80A1DEFC 03001025 */  or      $v0, $t8, $zero            ## $v0 = 80A20000
.L80A1DF00:
/* 006F0 80A1DF00 8442E590 */  lh      $v0, %lo(D_80A1E590)($v0)  
/* 006F4 80A1DF04 00021023 */  subu    $v0, $zero, $v0            
.L80A1DF08:
/* 006F8 80A1DF08 28412301 */  slti    $at, $v0, 0x2301           
/* 006FC 80A1DF0C 10200012 */  beq     $at, $zero, .L80A1DF58     
/* 00700 80A1DF10 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00704 80A1DF14 44810000 */  mtc1    $at, $f0                   ## $f0 = 100.00
/* 00708 80A1DF18 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 0070C 80A1DF1C 24195034 */  addiu   $t9, $zero, 0x5034         ## $t9 = 00005034
/* 00710 80A1DF20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00714 80A1DF24 4600203C */  c.lt.s  $f4, $f0                   
/* 00718 80A1DF28 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0071C 80A1DF2C 4502000B */  bc1fl   .L80A1DF5C                 
/* 00720 80A1DF30 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00724 80A1DF34 A619010E */  sh      $t9, 0x010E($s0)           ## 0000010E
/* 00728 80A1DF38 44060000 */  mfc1    $a2, $f0                   
/* 0072C 80A1DF3C 0C00BCB3 */  jal     func_8002F2CC              
/* 00730 80A1DF40 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 00734 80A1DF44 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 00738 80A1DF48 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 0073C 80A1DF4C 8C680680 */  lw      $t0, 0x0680($v1)           ## 00000680
/* 00740 80A1DF50 01014825 */  or      $t1, $t0, $at              ## $t1 = 00800000
/* 00744 80A1DF54 AC690680 */  sw      $t1, 0x0680($v1)           ## 00000680
.L80A1DF58:
/* 00748 80A1DF58 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A1DF5C:
/* 0074C 80A1DF5C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00750 80A1DF60 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00754 80A1DF64 03E00008 */  jr      $ra                        
/* 00758 80A1DF68 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000


