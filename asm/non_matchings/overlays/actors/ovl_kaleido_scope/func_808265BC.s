glabel func_808265BC
/* 12D9C 808265BC 3C058016 */  lui     $a1, 0x8016                ## $a1 = 80160000
/* 12DA0 808265C0 24A5FA90 */  addiu   $a1, $a1, 0xFA90           ## $a1 = 8015FA90
/* 12DA4 808265C4 8CAE0000 */  lw      $t6, 0x0000($a1)           ## 8015FA90
/* 12DA8 808265C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 12DAC 808265CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 12DB0 808265D0 85CF07F0 */  lh      $t7, 0x07F0($t6)           ## 000007F0
/* 12DB4 808265D4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 12DB8 808265D8 00811021 */  addu    $v0, $a0, $at              
/* 12DBC 808265DC 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 12DC0 808265E0 94430946 */  lhu     $v1, 0x0946($v0)           ## 00000946
/* 12DC4 808265E4 3C018083 */  lui     $at, %hi(D_8082ABAC)       ## $at = 80830000
/* 12DC8 808265E8 46803220 */  cvt.s.w $f8, $f6                   
/* 12DCC 808265EC 00031880 */  sll     $v1, $v1,  2               
/* 12DD0 808265F0 00230821 */  addu    $at, $at, $v1              
/* 12DD4 808265F4 C424ABAC */  lwc1    $f4, %lo(D_8082ABAC)($at)  
/* 12DD8 808265F8 C4500938 */  lwc1    $f16, 0x0938($v0)          ## 00000938
/* 12DDC 808265FC 3C018083 */  lui     $at, %hi(D_8082ABCC)       ## $at = 80830000
/* 12DE0 80826600 46082282 */  mul.s   $f10, $f4, $f8             
/* 12DE4 80826604 00230821 */  addu    $at, $at, $v1              
/* 12DE8 80826608 9448094A */  lhu     $t0, 0x094A($v0)           ## 0000094A
/* 12DEC 8082660C 460A8480 */  add.s   $f18, $f16, $f10           
/* 12DF0 80826610 C44A0940 */  lwc1    $f10, 0x0940($v0)          ## 00000940
/* 12DF4 80826614 E4520938 */  swc1    $f18, 0x0938($v0)          ## 00000938
/* 12DF8 80826618 8CB80000 */  lw      $t8, 0x0000($a1)           ## 8015FA90
/* 12DFC 8082661C C426ABCC */  lwc1    $f6, %lo(D_8082ABCC)($at)  
/* 12E00 80826620 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 12E04 80826624 871907F0 */  lh      $t9, 0x07F0($t8)           ## 000007F0
/* 12E08 80826628 34210760 */  ori     $at, $at, 0x0760           ## $at = 00010760
/* 12E0C 8082662C 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 12E10 80826630 00000000 */  nop
/* 12E14 80826634 46802220 */  cvt.s.w $f8, $f4                   
/* 12E18 80826638 46083402 */  mul.s   $f16, $f6, $f8             
/* 12E1C 8082663C 46105480 */  add.s   $f18, $f10, $f16           
/* 12E20 80826640 E4520940 */  swc1    $f18, 0x0940($v0)          ## 00000940
/* 12E24 80826644 8CA90000 */  lw      $t1, 0x0000($a1)           ## 8015FA90
/* 12E28 80826648 852A07F0 */  lh      $t2, 0x07F0($t1)           ## 000007F0
/* 12E2C 8082664C 000A5880 */  sll     $t3, $t2,  2               
/* 12E30 80826650 010B6021 */  addu    $t4, $t0, $t3              
/* 12E34 80826654 A44C094A */  sh      $t4, 0x094A($v0)           ## 0000094A
/* 12E38 80826658 8CAE0000 */  lw      $t6, 0x0000($a1)           ## 8015FA90
/* 12E3C 8082665C 318DFFFF */  andi    $t5, $t4, 0xFFFF           ## $t5 = 00000000
/* 12E40 80826660 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 12E44 80826664 85CF07F2 */  lh      $t7, 0x07F2($t6)           ## 000007F2
/* 12E48 80826668 00811021 */  addu    $v0, $a0, $at              
/* 12E4C 8082666C 000FC180 */  sll     $t8, $t7,  6               
/* 12E50 80826670 55B8003E */  bnel    $t5, $t8, .L8082676C       
/* 12E54 80826674 944E01EA */  lhu     $t6, 0x01EA($v0)           ## 000001EA
/* 12E58 80826678 0C0212FD */  jal     func_80084BF4              
/* 12E5C 8082667C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 12E60 80826680 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 12E64 80826684 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 12E68 80826688 34210760 */  ori     $at, $at, 0x0760           ## $at = 00010760
/* 12E6C 8082668C 00811021 */  addu    $v0, $a0, $at              
/* 12E70 80826690 945901E8 */  lhu     $t9, 0x01E8($v0)           ## 000001E8
/* 12E74 80826694 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 12E78 80826698 3C038083 */  lui     $v1, %hi(D_8082AB6C)       ## $v1 = 80830000
/* 12E7C 8082669C 03260019 */  multu   $t9, $a2                   
/* 12E80 808266A0 2463AB6C */  addiu   $v1, $v1, %lo(D_8082AB6C)  ## $v1 = 8082AB6C
/* 12E84 808266A4 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 12E88 808266A8 2405000E */  addiu   $a1, $zero, 0x000E         ## $a1 = 0000000E
/* 12E8C 808266AC 00004812 */  mflo    $t1                        
/* 12E90 808266B0 00695021 */  addu    $t2, $v1, $t1              
/* 12E94 808266B4 91480000 */  lbu     $t0, 0x0000($t2)           ## 00000000
/* 12E98 808266B8 A028FA42 */  sb      $t0, -0x05BE($at)          ## 8015FA42
/* 12E9C 808266BC 944B01E8 */  lhu     $t3, 0x01E8($v0)           ## 000001E8
/* 12EA0 808266C0 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 12EA4 808266C4 01660019 */  multu   $t3, $a2                   
/* 12EA8 808266C8 00006012 */  mflo    $t4                        
/* 12EAC 808266CC 006C7021 */  addu    $t6, $v1, $t4              
/* 12EB0 808266D0 91CF0001 */  lbu     $t7, 0x0001($t6)           ## 00000001
/* 12EB4 808266D4 A02FFA43 */  sb      $t7, -0x05BD($at)          ## 8015FA43
/* 12EB8 808266D8 944D01E8 */  lhu     $t5, 0x01E8($v0)           ## 000001E8
/* 12EBC 808266DC 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 12EC0 808266E0 01A60019 */  multu   $t5, $a2                   
/* 12EC4 808266E4 0000C012 */  mflo    $t8                        
/* 12EC8 808266E8 0078C821 */  addu    $t9, $v1, $t8              
/* 12ECC 808266EC 93290002 */  lbu     $t1, 0x0002($t9)           ## 00000002
/* 12ED0 808266F0 A029FA44 */  sb      $t1, -0x05BC($at)          ## 8015FA44
/* 12ED4 808266F4 944A01E8 */  lhu     $t2, 0x01E8($v0)           ## 000001E8
/* 12ED8 808266F8 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 12EDC 808266FC 01460019 */  multu   $t2, $a2                   
/* 12EE0 80826700 3C0A8083 */  lui     $t2, %hi(D_8082ABEC)       ## $t2 = 80830000
/* 12EE4 80826704 00004012 */  mflo    $t0                        
/* 12EE8 80826708 00685821 */  addu    $t3, $v1, $t0              
/* 12EEC 8082670C 916C0003 */  lbu     $t4, 0x0003($t3)           ## 00000003
/* 12EF0 80826710 A02CFA45 */  sb      $t4, -0x05BB($at)          ## 8015FA45
/* 12EF4 80826714 944E01E8 */  lhu     $t6, 0x01E8($v0)           ## 000001E8
/* 12EF8 80826718 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 12EFC 8082671C 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 12F00 80826720 01C60019 */  multu   $t6, $a2                   
/* 12F04 80826724 00007812 */  mflo    $t7                        
/* 12F08 80826728 006F6821 */  addu    $t5, $v1, $t7              
/* 12F0C 8082672C 91B80004 */  lbu     $t8, 0x0004($t5)           ## 00000004
/* 12F10 80826730 A038FA46 */  sb      $t8, -0x05BA($at)          ## 8015FA46
/* 12F14 80826734 945901E6 */  lhu     $t9, 0x01E6($v0)           ## 000001E6
/* 12F18 80826738 944801D4 */  lhu     $t0, 0x01D4($v0)           ## 000001D4
/* 12F1C 8082673C 00194840 */  sll     $t1, $t9,  1               
/* 12F20 80826740 01495021 */  addu    $t2, $t2, $t1              
/* 12F24 80826744 954AABEC */  lhu     $t2, %lo(D_8082ABEC)($t2)  
/* 12F28 80826748 250B0001 */  addiu   $t3, $t0, 0x0001           ## $t3 = 00000001
/* 12F2C 8082674C A44001E4 */  sh      $zero, 0x01E4($v0)         ## 000001E4
/* 12F30 80826750 A44B01D4 */  sh      $t3, 0x01D4($v0)           ## 000001D4
/* 12F34 80826754 A44C0208 */  sh      $t4, 0x0208($v0)           ## 00000208
/* 12F38 80826758 0C021C23 */  jal     Interface_LoadActionLabelB              
/* 12F3C 8082675C A44A01E8 */  sh      $t2, 0x01E8($v0)           ## 000001E8
/* 12F40 80826760 1000000F */  beq     $zero, $zero, .L808267A0   
/* 12F44 80826764 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 12F48 80826768 944E01EA */  lhu     $t6, 0x01EA($v0)           ## 000001EA
.L8082676C:
/* 12F4C 8082676C 24010040 */  addiu   $at, $zero, 0x0040         ## $at = 00000040
/* 12F50 80826770 55C1000B */  bnel    $t6, $at, .L808267A0       
/* 12F54 80826774 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 12F58 80826778 944F01E6 */  lhu     $t7, 0x01E6($v0)           ## 000001E6
/* 12F5C 8082677C 3C188083 */  lui     $t8, %hi(D_8082ABEC)       ## $t8 = 80830000
/* 12F60 80826780 000F6840 */  sll     $t5, $t7,  1               
/* 12F64 80826784 030DC021 */  addu    $t8, $t8, $t5              
/* 12F68 80826788 9719ABEC */  lhu     $t9, %lo(D_8082ABEC)($t8)  
/* 12F6C 8082678C 00195040 */  sll     $t2, $t9,  1               
/* 12F70 80826790 25480001 */  addiu   $t0, $t2, 0x0001           ## $t0 = 00000001
/* 12F74 80826794 A44801E6 */  sh      $t0, 0x01E6($v0)           ## 000001E6
/* 12F78 80826798 A45901E8 */  sh      $t9, 0x01E8($v0)           ## 000001E8
/* 12F7C 8082679C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808267A0:
/* 12F80 808267A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 12F84 808267A4 03E00008 */  jr      $ra                        
/* 12F88 808267A8 00000000 */  nop
