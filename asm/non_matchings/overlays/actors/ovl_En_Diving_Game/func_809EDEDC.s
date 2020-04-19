glabel func_809EDEDC
/* 0066C 809EDEDC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00670 809EDEE0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00674 809EDEE4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00678 809EDEE8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0067C 809EDEEC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00680 809EDEF0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00684 809EDEF4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00688 809EDEF8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0068C 809EDEFC 0C042F6F */  jal     func_8010BDBC              
/* 00690 809EDF00 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 00694 809EDF04 860E0292 */  lh      $t6, 0x0292($s0)           ## 00000292
/* 00698 809EDF08 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 0069C 809EDF0C 55C2004A */  bnel    $t6, $v0, .L809EE038       
/* 006A0 809EDF10 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 006A4 809EDF14 0C041AF2 */  jal     func_80106BC8              
/* 006A8 809EDF18 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 006AC 809EDF1C 10400045 */  beq     $v0, $zero, .L809EE034     
/* 006B0 809EDF20 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 006B4 809EDF24 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 006B8 809EDF28 00471021 */  addu    $v0, $v0, $a3              
/* 006BC 809EDF2C 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 006C0 809EDF30 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 006C4 809EDF34 3C0F8016 */  lui     $t7, %hi(gSaveContext+0x34)
/* 006C8 809EDF38 10400005 */  beq     $v0, $zero, .L809EDF50     
/* 006CC 809EDF3C 00000000 */  nop
/* 006D0 809EDF40 50410017 */  beql    $v0, $at, .L809EDFA0       
/* 006D4 809EDF44 A60002A4 */  sh      $zero, 0x02A4($s0)         ## 000002A4
/* 006D8 809EDF48 1000001C */  beq     $zero, $zero, .L809EDFBC   
/* 006DC 809EDF4C 00000000 */  nop
.L809EDF50:
/* 006E0 809EDF50 85EFE694 */  lh      $t7, %lo(gSaveContext+0x34)($t7)
/* 006E4 809EDF54 29E10014 */  slti    $at, $t7, 0x0014           
/* 006E8 809EDF58 54200008 */  bnel    $at, $zero, .L809EDF7C     
/* 006EC 809EDF5C A60002A4 */  sh      $zero, 0x02A4($s0)         ## 000002A4
/* 006F0 809EDF60 0C021CC3 */  jal     Rupees_ChangeBy              
/* 006F4 809EDF64 2404FFEC */  addiu   $a0, $zero, 0xFFEC         ## $a0 = FFFFFFEC
/* 006F8 809EDF68 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 006FC 809EDF6C 24184054 */  addiu   $t8, $zero, 0x4054         ## $t8 = 00004054
/* 00700 809EDF70 10000012 */  beq     $zero, $zero, .L809EDFBC   
/* 00704 809EDF74 A618010E */  sh      $t8, 0x010E($s0)           ## 0000010E
/* 00708 809EDF78 A60002A4 */  sh      $zero, 0x02A4($s0)         ## 000002A4
.L809EDF7C:
/* 0070C 809EDF7C 860202A4 */  lh      $v0, 0x02A4($s0)           ## 000002A4
/* 00710 809EDF80 24190085 */  addiu   $t9, $zero, 0x0085         ## $t9 = 00000085
/* 00714 809EDF84 A619010E */  sh      $t9, 0x010E($s0)           ## 0000010E
/* 00718 809EDF88 A60202A2 */  sh      $v0, 0x02A2($s0)           ## 000002A2
/* 0071C 809EDF8C A602029C */  sh      $v0, 0x029C($s0)           ## 0000029C
/* 00720 809EDF90 A60202A8 */  sh      $v0, 0x02A8($s0)           ## 000002A8
/* 00724 809EDF94 10000009 */  beq     $zero, $zero, .L809EDFBC   
/* 00728 809EDF98 A202031E */  sb      $v0, 0x031E($s0)           ## 0000031E
/* 0072C 809EDF9C A60002A4 */  sh      $zero, 0x02A4($s0)         ## 000002A4
.L809EDFA0:
/* 00730 809EDFA0 860202A4 */  lh      $v0, 0x02A4($s0)           ## 000002A4
/* 00734 809EDFA4 2408002D */  addiu   $t0, $zero, 0x002D         ## $t0 = 0000002D
/* 00738 809EDFA8 A608010E */  sh      $t0, 0x010E($s0)           ## 0000010E
/* 0073C 809EDFAC A60202A2 */  sh      $v0, 0x02A2($s0)           ## 000002A2
/* 00740 809EDFB0 A602029C */  sh      $v0, 0x029C($s0)           ## 0000029C
/* 00744 809EDFB4 A60202A8 */  sh      $v0, 0x02A8($s0)           ## 000002A8
/* 00748 809EDFB8 A202031E */  sb      $v0, 0x031E($s0)           ## 0000031E
.L809EDFBC:
/* 0074C 809EDFBC 3C098016 */  lui     $t1, %hi(gSaveContext+0xeda)
/* 00750 809EDFC0 9529F53A */  lhu     $t1, %lo(gSaveContext+0xeda)($t1)
/* 00754 809EDFC4 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00758 809EDFC8 312A0100 */  andi    $t2, $t1, 0x0100           ## $t2 = 00000000
/* 0075C 809EDFCC 11400007 */  beq     $t2, $zero, .L809EDFEC     
/* 00760 809EDFD0 00000000 */  nop
/* 00764 809EDFD4 9602010E */  lhu     $v0, 0x010E($s0)           ## 0000010E
/* 00768 809EDFD8 24010085 */  addiu   $at, $zero, 0x0085         ## $at = 00000085
/* 0076C 809EDFDC 10410003 */  beq     $v0, $at, .L809EDFEC       
/* 00770 809EDFE0 2401002D */  addiu   $at, $zero, 0x002D         ## $at = 0000002D
/* 00774 809EDFE4 14410009 */  bne     $v0, $at, .L809EE00C       
/* 00778 809EDFE8 240D0037 */  addiu   $t5, $zero, 0x0037         ## $t5 = 00000037
.L809EDFEC:
/* 0077C 809EDFEC 0C042DC8 */  jal     func_8010B720              
/* 00780 809EDFF0 9605010E */  lhu     $a1, 0x010E($s0)           ## 0000010E
/* 00784 809EDFF4 3C0C809F */  lui     $t4, %hi(func_809EE048)    ## $t4 = 809F0000
/* 00788 809EDFF8 240B0005 */  addiu   $t3, $zero, 0x0005         ## $t3 = 00000005
/* 0078C 809EDFFC 258CE048 */  addiu   $t4, $t4, %lo(func_809EE048) ## $t4 = 809EE048
/* 00790 809EE000 A60B0292 */  sh      $t3, 0x0292($s0)           ## 00000292
/* 00794 809EE004 1000000B */  beq     $zero, $zero, .L809EE034   
/* 00798 809EE008 AE0C0280 */  sw      $t4, 0x0280($s0)           ## 00000280
.L809EE00C:
/* 0079C 809EE00C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 007A0 809EE010 00270821 */  addu    $at, $at, $a3              
/* 007A4 809EE014 A02D03DC */  sb      $t5, 0x03DC($at)           ## 000103DC
/* 007A8 809EE018 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 007AC 809EE01C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 007B0 809EE020 0C00B7D5 */  jal     func_8002DF54              
/* 007B4 809EE024 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 007B8 809EE028 3C0E809F */  lui     $t6, %hi(func_809EE0FC)    ## $t6 = 809F0000
/* 007BC 809EE02C 25CEE0FC */  addiu   $t6, $t6, %lo(func_809EE0FC) ## $t6 = 809EE0FC
/* 007C0 809EE030 AE0E0280 */  sw      $t6, 0x0280($s0)           ## 00000280
.L809EE034:
/* 007C4 809EE034 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809EE038:
/* 007C8 809EE038 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 007CC 809EE03C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 007D0 809EE040 03E00008 */  jr      $ra                        
/* 007D4 809EE044 00000000 */  nop
