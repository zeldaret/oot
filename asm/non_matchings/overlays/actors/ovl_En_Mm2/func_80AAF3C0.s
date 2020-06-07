glabel func_80AAF3C0
/* 00570 80AAF3C0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00574 80AAF3C4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00578 80AAF3C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0057C 80AAF3CC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00580 80AAF3D0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00584 80AAF3D4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00588 80AAF3D8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0058C 80AAF3DC 9603010E */  lhu     $v1, 0x010E($s0)           ## 0000010E
/* 00590 80AAF3E0 2401607D */  addiu   $at, $zero, 0x607D         ## $at = 0000607D
/* 00594 80AAF3E4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00598 80AAF3E8 10610007 */  beq     $v1, $at, .L80AAF408       
/* 0059C 80AAF3EC 2401607E */  addiu   $at, $zero, 0x607E         ## $at = 0000607E
/* 005A0 80AAF3F0 10610005 */  beq     $v1, $at, .L80AAF408       
/* 005A4 80AAF3F4 24016081 */  addiu   $at, $zero, 0x6081         ## $at = 00006081
/* 005A8 80AAF3F8 10610031 */  beq     $v1, $at, .L80AAF4C0       
/* 005AC 80AAF3FC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 005B0 80AAF400 10000046 */  beq     $zero, $zero, .L80AAF51C   
/* 005B4 80AAF404 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AAF408:
/* 005B8 80AAF408 0C042F6F */  jal     func_8010BDBC              
/* 005BC 80AAF40C 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 005C0 80AAF410 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 005C4 80AAF414 54410055 */  bnel    $v0, $at, .L80AAF56C       
/* 005C8 80AAF418 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 005CC 80AAF41C 0C041AF2 */  jal     func_80106BC8              
/* 005D0 80AAF420 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 005D4 80AAF424 10400050 */  beq     $v0, $zero, .L80AAF568     
/* 005D8 80AAF428 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 005DC 80AAF42C 3C030001 */  lui     $v1, 0x0001                ## $v1 = 00010000
/* 005E0 80AAF430 006E1821 */  addu    $v1, $v1, $t6              
/* 005E4 80AAF434 906304BD */  lbu     $v1, 0x04BD($v1)           ## 000104BD
/* 005E8 80AAF438 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 005EC 80AAF43C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 005F0 80AAF440 10600005 */  beq     $v1, $zero, .L80AAF458     
/* 005F4 80AAF444 00000000 */  nop
/* 005F8 80AAF448 1061000D */  beq     $v1, $at, .L80AAF480       
/* 005FC 80AAF44C 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00600 80AAF450 10000012 */  beq     $zero, $zero, .L80AAF49C   
/* 00604 80AAF454 2463E660 */  addiu   $v1, %lo(gSaveContext)
.L80AAF458:
/* 00608 80AAF458 0C042DC8 */  jal     func_8010B720              
/* 0060C 80AAF45C 2405607F */  addiu   $a1, $zero, 0x607F         ## $a1 = 0000607F
/* 00610 80AAF460 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00614 80AAF464 240F607F */  addiu   $t7, $zero, 0x607F         ## $t7 = 0000607F
/* 00618 80AAF468 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 0061C 80AAF46C A60F010E */  sh      $t7, 0x010E($s0)           ## 0000010E
/* 00620 80AAF470 947813FC */  lhu     $t8, 0x13FC($v1)           ## 8015FA5C
/* 00624 80AAF474 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00628 80AAF478 10000008 */  beq     $zero, $zero, .L80AAF49C   
/* 0062C 80AAF47C A47913FC */  sh      $t9, 0x13FC($v1)           ## 8015FA5C
.L80AAF480:
/* 00630 80AAF480 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00634 80AAF484 0C042DC8 */  jal     func_8010B720              
/* 00638 80AAF488 24056080 */  addiu   $a1, $zero, 0x6080         ## $a1 = 00006080
/* 0063C 80AAF48C 24086080 */  addiu   $t0, $zero, 0x6080         ## $t0 = 00006080
/* 00640 80AAF490 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00644 80AAF494 A608010E */  sh      $t0, 0x010E($s0)           ## 0000010E
/* 00648 80AAF498 2463E660 */  addiu   $v1, %lo(gSaveContext)
.L80AAF49C:
/* 0064C 80AAF49C 960201F4 */  lhu     $v0, 0x01F4($s0)           ## 000001F4
/* 00650 80AAF4A0 30490004 */  andi    $t1, $v0, 0x0004           ## $t1 = 00000000
/* 00654 80AAF4A4 11200030 */  beq     $t1, $zero, .L80AAF568     
/* 00658 80AAF4A8 304AFFFB */  andi    $t2, $v0, 0xFFFB           ## $t2 = 00000000
/* 0065C 80AAF4AC A60A01F4 */  sh      $t2, 0x01F4($s0)           ## 000001F4
/* 00660 80AAF4B0 8C6B0EC8 */  lw      $t3, 0x0EC8($v1)           ## 8015F528
/* 00664 80AAF4B4 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 00668 80AAF4B8 1000002B */  beq     $zero, $zero, .L80AAF568   
/* 0066C 80AAF4BC AC6C0EC8 */  sw      $t4, 0x0EC8($v1)           ## 8015F528
.L80AAF4C0:
/* 00670 80AAF4C0 0C042F6F */  jal     func_8010BDBC              
/* 00674 80AAF4C4 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 00678 80AAF4C8 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0067C 80AAF4CC 54410027 */  bnel    $v0, $at, .L80AAF56C       
/* 00680 80AAF4D0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00684 80AAF4D4 0C041AF2 */  jal     func_80106BC8              
/* 00688 80AAF4D8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0068C 80AAF4DC 50400023 */  beql    $v0, $zero, .L80AAF56C     
/* 00690 80AAF4E0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00694 80AAF4E4 960D01F4 */  lhu     $t5, 0x01F4($s0)           ## 000001F4
/* 00698 80AAF4E8 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 0069C 80AAF4EC 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 006A0 80AAF4F0 35AE0004 */  ori     $t6, $t5, 0x0004           ## $t6 = 00000004
/* 006A4 80AAF4F4 A60E01F4 */  sh      $t6, 0x01F4($s0)           ## 000001F4
/* 006A8 80AAF4F8 8C6F0EC8 */  lw      $t7, 0x0EC8($v1)           ## 8015F528
/* 006AC 80AAF4FC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 006B0 80AAF500 2405607E */  addiu   $a1, $zero, 0x607E         ## $a1 = 0000607E
/* 006B4 80AAF504 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 006B8 80AAF508 0C042DC8 */  jal     func_8010B720              
/* 006BC 80AAF50C AC780EC8 */  sw      $t8, 0x0EC8($v1)           ## 8015F528
/* 006C0 80AAF510 2419607E */  addiu   $t9, $zero, 0x607E         ## $t9 = 0000607E
/* 006C4 80AAF514 10000014 */  beq     $zero, $zero, .L80AAF568   
/* 006C8 80AAF518 A619010E */  sh      $t9, 0x010E($s0)           ## 0000010E
.L80AAF51C:
/* 006CC 80AAF51C 0C00BCCD */  jal     func_8002F334              
/* 006D0 80AAF520 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 006D4 80AAF524 50400011 */  beql    $v0, $zero, .L80AAF56C     
/* 006D8 80AAF528 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 006DC 80AAF52C 9608010E */  lhu     $t0, 0x010E($s0)           ## 0000010E
/* 006E0 80AAF530 2401607F */  addiu   $at, $zero, 0x607F         ## $at = 0000607F
/* 006E4 80AAF534 3C0A80AB */  lui     $t2, %hi(func_80AAF57C)    ## $t2 = 80AB0000
/* 006E8 80AAF538 15010007 */  bne     $t0, $at, .L80AAF558       
/* 006EC 80AAF53C 254AF57C */  addiu   $t2, $t2, %lo(func_80AAF57C) ## $t2 = 80AAF57C
/* 006F0 80AAF540 0C0222A8 */  jal     func_80088AA0              
/* 006F4 80AAF544 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 006F8 80AAF548 3C0980AB */  lui     $t1, %hi(func_80AAF57C)    ## $t1 = 80AB0000
/* 006FC 80AAF54C 2529F57C */  addiu   $t1, $t1, %lo(func_80AAF57C) ## $t1 = 80AAF57C
/* 00700 80AAF550 10000002 */  beq     $zero, $zero, .L80AAF55C   
/* 00704 80AAF554 AE090190 */  sw      $t1, 0x0190($s0)           ## 00000190
.L80AAF558:
/* 00708 80AAF558 AE0A0190 */  sw      $t2, 0x0190($s0)           ## 00000190
.L80AAF55C:
/* 0070C 80AAF55C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00710 80AAF560 0C2ABBDC */  jal     func_80AAEF70              
/* 00714 80AAF564 8FA50024 */  lw      $a1, 0x0024($sp)           
.L80AAF568:
/* 00718 80AAF568 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AAF56C:
/* 0071C 80AAF56C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00720 80AAF570 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00724 80AAF574 03E00008 */  jr      $ra                        
/* 00728 80AAF578 00000000 */  nop
