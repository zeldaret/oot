glabel func_80A3E908
/* 00398 80A3E908 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0039C 80A3E90C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 003A0 80A3E910 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 003A4 80A3E914 C4A00094 */  lwc1    $f0, 0x0094($a1)           ## 00000094
/* 003A8 80A3E918 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 003AC 80A3E91C 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 003B0 80A3E920 46000005 */  abs.s   $f0, $f0                   
/* 003B4 80A3E924 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 003B8 80A3E928 46020100 */  add.s   $f4, $f0, $f2              
/* 003BC 80A3E92C 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 003C0 80A3E930 E7A40024 */  swc1    $f4, 0x0024($sp)           
/* 003C4 80A3E934 C4A60090 */  lwc1    $f6, 0x0090($a1)           ## 00000090
/* 003C8 80A3E938 A7A7002E */  sh      $a3, 0x002E($sp)           
/* 003CC 80A3E93C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 003D0 80A3E940 46023200 */  add.s   $f8, $f6, $f2              
/* 003D4 80A3E944 0C042F6F */  jal     func_8010BDBC              
/* 003D8 80A3E948 E7A80028 */  swc1    $f8, 0x0028($sp)           
/* 003DC 80A3E94C 2C41000A */  sltiu   $at, $v0, 0x000A           
/* 003E0 80A3E950 102000EF */  beq     $at, $zero, .L80A3ED10     
/* 003E4 80A3E954 87A7002E */  lh      $a3, 0x002E($sp)           
/* 003E8 80A3E958 00027080 */  sll     $t6, $v0,  2               
/* 003EC 80A3E95C 3C0180A4 */  lui     $at, %hi(jtbl_80A41E74)       ## $at = 80A40000
/* 003F0 80A3E960 002E0821 */  addu    $at, $at, $t6              
/* 003F4 80A3E964 8C2E1E74 */  lw      $t6, %lo(jtbl_80A41E74)($at)  
/* 003F8 80A3E968 01C00008 */  jr      $t6                        
/* 003FC 80A3E96C 00000000 */  nop
glabel L80A3E970
/* 00400 80A3E970 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00404 80A3E974 9482010E */  lhu     $v0, 0x010E($a0)           ## 0000010E
/* 00408 80A3E978 28413019 */  slti    $at, $v0, 0x3019           
/* 0040C 80A3E97C 1420000A */  bne     $at, $zero, .L80A3E9A8     
/* 00410 80A3E980 2458CFF8 */  addiu   $t8, $v0, 0xCFF8           ## $t8 = FFFFCFF8
/* 00414 80A3E984 244FCFCA */  addiu   $t7, $v0, 0xCFCA           ## $t7 = FFFFCFCA
/* 00418 80A3E988 2DE10029 */  sltiu   $at, $t7, 0x0029           
/* 0041C 80A3E98C 10200052 */  beq     $at, $zero, .L80A3EAD8     
/* 00420 80A3E990 000F7880 */  sll     $t7, $t7,  2               
/* 00424 80A3E994 3C0180A4 */  lui     $at, %hi(jtbl_80A41E9C)       ## $at = 80A40000
/* 00428 80A3E998 002F0821 */  addu    $at, $at, $t7              
/* 0042C 80A3E99C 8C2F1E9C */  lw      $t7, %lo(jtbl_80A41E9C)($at)  
/* 00430 80A3E9A0 01E00008 */  jr      $t7                        
/* 00434 80A3E9A4 00000000 */  nop
.L80A3E9A8:
/* 00438 80A3E9A8 2F010011 */  sltiu   $at, $t8, 0x0011           
/* 0043C 80A3E9AC 1020004A */  beq     $at, $zero, .L80A3EAD8     
/* 00440 80A3E9B0 0018C080 */  sll     $t8, $t8,  2               
/* 00444 80A3E9B4 3C0180A4 */  lui     $at, %hi(jtbl_80A41F40)       ## $at = 80A40000
/* 00448 80A3E9B8 00380821 */  addu    $at, $at, $t8              
/* 0044C 80A3E9BC 8C381F40 */  lw      $t8, %lo(jtbl_80A41F40)($at)  
/* 00450 80A3E9C0 03000008 */  jr      $t8                        
/* 00454 80A3E9C4 00000000 */  nop
glabel L80A3E9C8
/* 00458 80A3E9C8 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 0045C 80A3E9CC 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00460 80A3E9D0 94790F14 */  lhu     $t9, 0x0F14($v1)           ## 8015F574
/* 00464 80A3E9D4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00468 80A3E9D8 37280001 */  ori     $t0, $t9, 0x0001           ## $t0 = 00000001
/* 0046C 80A3E9DC 100000CC */  beq     $zero, $zero, .L80A3ED10   
/* 00470 80A3E9E0 A4680F14 */  sh      $t0, 0x0F14($v1)           ## 8015F574
glabel L80A3E9E4
/* 00474 80A3E9E4 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00478 80A3E9E8 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 0047C 80A3E9EC 94690F14 */  lhu     $t1, 0x0F14($v1)           ## 8015F574
/* 00480 80A3E9F0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00484 80A3E9F4 352A0800 */  ori     $t2, $t1, 0x0800           ## $t2 = 00000800
/* 00488 80A3E9F8 100000C5 */  beq     $zero, $zero, .L80A3ED10   
/* 0048C 80A3E9FC A46A0F14 */  sh      $t2, 0x0F14($v1)           ## 8015F574
glabel L80A3EA00
/* 00490 80A3EA00 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00494 80A3EA04 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00498 80A3EA08 946B0F16 */  lhu     $t3, 0x0F16($v1)           ## 8015F576
/* 0049C 80A3EA0C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 004A0 80A3EA10 356C0001 */  ori     $t4, $t3, 0x0001           ## $t4 = 00000001
/* 004A4 80A3EA14 100000BE */  beq     $zero, $zero, .L80A3ED10   
/* 004A8 80A3EA18 A46C0F16 */  sh      $t4, 0x0F16($v1)           ## 8015F576
glabel L80A3EA1C
/* 004AC 80A3EA1C 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 004B0 80A3EA20 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 004B4 80A3EA24 946D0F16 */  lhu     $t5, 0x0F16($v1)           ## 8015F576
/* 004B8 80A3EA28 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 004BC 80A3EA2C 35AE0010 */  ori     $t6, $t5, 0x0010           ## $t6 = 00000010
/* 004C0 80A3EA30 100000B7 */  beq     $zero, $zero, .L80A3ED10   
/* 004C4 80A3EA34 A46E0F16 */  sh      $t6, 0x0F16($v1)           ## 8015F576
glabel L80A3EA38
/* 004C8 80A3EA38 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 004CC 80A3EA3C 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 004D0 80A3EA40 946F0F16 */  lhu     $t7, 0x0F16($v1)           ## 8015F576
/* 004D4 80A3EA44 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 004D8 80A3EA48 35F80100 */  ori     $t8, $t7, 0x0100           ## $t8 = FFFFCFCA
/* 004DC 80A3EA4C 100000B0 */  beq     $zero, $zero, .L80A3ED10   
/* 004E0 80A3EA50 A4780F16 */  sh      $t8, 0x0F16($v1)           ## 8015F576
glabel L80A3EA54
/* 004E4 80A3EA54 C7AA0024 */  lwc1    $f10, 0x0024($sp)          
/* 004E8 80A3EA58 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 004EC 80A3EA5C 2406002C */  addiu   $a2, $zero, 0x002C         ## $a2 = 0000002C
/* 004F0 80A3EA60 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 004F4 80A3EA64 0C00BD0D */  jal     func_8002F434              
/* 004F8 80A3EA68 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 004FC 80A3EA6C 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00500 80A3EA70 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00504 80A3EA74 94790F18 */  lhu     $t9, 0x0F18($v1)           ## 8015F578
/* 00508 80A3EA78 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 0050C 80A3EA7C 37282000 */  ori     $t0, $t9, 0x2000           ## $t0 = 00002000
/* 00510 80A3EA80 100000A3 */  beq     $zero, $zero, .L80A3ED10   
/* 00514 80A3EA84 A4680F18 */  sh      $t0, 0x0F18($v1)           ## 8015F578
glabel L80A3EA88
/* 00518 80A3EA88 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 0051C 80A3EA8C 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00520 80A3EA90 94690F18 */  lhu     $t1, 0x0F18($v1)           ## 8015F578
/* 00524 80A3EA94 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00528 80A3EA98 352A4000 */  ori     $t2, $t1, 0x4000           ## $t2 = 00004000
/* 0052C 80A3EA9C 1000009C */  beq     $zero, $zero, .L80A3ED10   
/* 00530 80A3EAA0 A46A0F18 */  sh      $t2, 0x0F18($v1)           ## 8015F578
glabel L80A3EAA4
/* 00534 80A3EAA4 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00538 80A3EAA8 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 0053C 80A3EAAC 946B0F18 */  lhu     $t3, 0x0F18($v1)           ## 8015F578
/* 00540 80A3EAB0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00544 80A3EAB4 356C8000 */  ori     $t4, $t3, 0x8000           ## $t4 = 00008000
/* 00548 80A3EAB8 10000095 */  beq     $zero, $zero, .L80A3ED10   
/* 0054C 80A3EABC A46C0F18 */  sh      $t4, 0x0F18($v1)           ## 8015F578
glabel L80A3EAC0
/* 00550 80A3EAC0 10000093 */  beq     $zero, $zero, .L80A3ED10   
/* 00554 80A3EAC4 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
glabel L80A3EAC8
/* 00558 80A3EAC8 10000091 */  beq     $zero, $zero, .L80A3ED10   
/* 0055C 80A3EACC 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
glabel L80A3EAD0
/* 00560 80A3EAD0 1000008F */  beq     $zero, $zero, .L80A3ED10   
/* 00564 80A3EAD4 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
glabel L80A3EAD8
.L80A3EAD8:
/* 00568 80A3EAD8 1000008D */  beq     $zero, $zero, .L80A3ED10   
/* 0056C 80A3EADC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
glabel L80A3EAE0
/* 00570 80A3EAE0 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00574 80A3EAE4 0C041AF2 */  jal     func_80106BC8              
/* 00578 80A3EAE8 A7A7002E */  sh      $a3, 0x002E($sp)           
/* 0057C 80A3EAEC 10400088 */  beq     $v0, $zero, .L80A3ED10     
/* 00580 80A3EAF0 87A7002E */  lh      $a3, 0x002E($sp)           
/* 00584 80A3EAF4 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 00588 80A3EAF8 8FAD0030 */  lw      $t5, 0x0030($sp)           
/* 0058C 80A3EAFC 2401300A */  addiu   $at, $zero, 0x300A         ## $at = 0000300A
/* 00590 80A3EB00 94C2010E */  lhu     $v0, 0x010E($a2)           ## 0000010E
/* 00594 80A3EB04 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 00598 80A3EB08 01CD7021 */  addu    $t6, $t6, $t5              
/* 0059C 80A3EB0C 1041000B */  beq     $v0, $at, .L80A3EB3C       
/* 005A0 80A3EB10 24013034 */  addiu   $at, $zero, 0x3034         ## $at = 00003034
/* 005A4 80A3EB14 10410028 */  beq     $v0, $at, .L80A3EBB8       
/* 005A8 80A3EB18 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 005AC 80A3EB1C 24013054 */  addiu   $at, $zero, 0x3054         ## $at = 00003054
/* 005B0 80A3EB20 10410046 */  beq     $v0, $at, .L80A3EC3C       
/* 005B4 80A3EB24 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 005B8 80A3EB28 24013055 */  addiu   $at, $zero, 0x3055         ## $at = 00003055
/* 005BC 80A3EB2C 50410044 */  beql    $v0, $at, .L80A3EC40       
/* 005C0 80A3EB30 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 005C4 80A3EB34 10000077 */  beq     $zero, $zero, .L80A3ED14   
/* 005C8 80A3EB38 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A3EB3C:
/* 005CC 80A3EB3C 91CE04BD */  lbu     $t6, 0x04BD($t6)           ## 000104BD
/* 005D0 80A3EB40 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 005D4 80A3EB44 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 005D8 80A3EB48 15C00013 */  bne     $t6, $zero, .L80A3EB98     
/* 005DC 80A3EB4C 3C188012 */  lui     $t8, 0x8012                ## $t8 = 80120000
/* 005E0 80A3EB50 8C6F00A0 */  lw      $t7, 0x00A0($v1)           ## 8015E700
/* 005E4 80A3EB54 8F1871B8 */  lw      $t8, 0x71B8($t8)           ## 801271B8
/* 005E8 80A3EB58 3C088012 */  lui     $t0, 0x8012                ## $t0 = 80120000
/* 005EC 80A3EB5C 910871F6 */  lbu     $t0, 0x71F6($t0)           ## 801271F6
/* 005F0 80A3EB60 01F8C824 */  and     $t9, $t7, $t8              
/* 005F4 80A3EB64 240C300B */  addiu   $t4, $zero, 0x300B         ## $t4 = 0000300B
/* 005F8 80A3EB68 01194807 */  srav    $t1, $t9, $t0              
/* 005FC 80A3EB6C 15200006 */  bne     $t1, $zero, .L80A3EB88     
/* 00600 80A3EB70 00000000 */  nop
/* 00604 80A3EB74 946A0F14 */  lhu     $t2, 0x0F14($v1)           ## 8015F574
/* 00608 80A3EB78 240D300C */  addiu   $t5, $zero, 0x300C         ## $t5 = 0000300C
/* 0060C 80A3EB7C 314B0800 */  andi    $t3, $t2, 0x0800           ## $t3 = 00000000
/* 00610 80A3EB80 11600003 */  beq     $t3, $zero, .L80A3EB90     
/* 00614 80A3EB84 00000000 */  nop
.L80A3EB88:
/* 00618 80A3EB88 10000005 */  beq     $zero, $zero, .L80A3EBA0   
/* 0061C 80A3EB8C A4CC010E */  sh      $t4, 0x010E($a2)           ## 0000010E
.L80A3EB90:
/* 00620 80A3EB90 10000003 */  beq     $zero, $zero, .L80A3EBA0   
/* 00624 80A3EB94 A4CD010E */  sh      $t5, 0x010E($a2)           ## 0000010E
.L80A3EB98:
/* 00628 80A3EB98 240E300D */  addiu   $t6, $zero, 0x300D         ## $t6 = 0000300D
/* 0062C 80A3EB9C A4CE010E */  sh      $t6, 0x010E($a2)           ## 0000010E
.L80A3EBA0:
/* 00630 80A3EBA0 94C5010E */  lhu     $a1, 0x010E($a2)           ## 0000010E
/* 00634 80A3EBA4 A7A7002E */  sh      $a3, 0x002E($sp)           
/* 00638 80A3EBA8 0C042DC8 */  jal     func_8010B720              
/* 0063C 80A3EBAC 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00640 80A3EBB0 10000057 */  beq     $zero, $zero, .L80A3ED10   
/* 00644 80A3EBB4 87A7002E */  lh      $a3, 0x002E($sp)           
.L80A3EBB8:
/* 00648 80A3EBB8 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 0064C 80A3EBBC 01E47821 */  addu    $t7, $t7, $a0              
/* 00650 80A3EBC0 91EF04BD */  lbu     $t7, 0x04BD($t7)           ## 000104BD
/* 00654 80A3EBC4 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00658 80A3EBC8 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 0065C 80A3EBCC 55E0000E */  bnel    $t7, $zero, .L80A3EC08     
/* 00660 80A3EBD0 946A0F18 */  lhu     $t2, 0x0F18($v1)           ## 8015F578
/* 00664 80A3EBD4 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00668 80A3EBD8 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 0066C 80A3EBDC 94780F18 */  lhu     $t8, 0x0F18($v1)           ## 8015F578
/* 00670 80A3EBE0 24083033 */  addiu   $t0, $zero, 0x3033         ## $t0 = 00003033
/* 00674 80A3EBE4 24093035 */  addiu   $t1, $zero, 0x3035         ## $t1 = 00003035
/* 00678 80A3EBE8 33190800 */  andi    $t9, $t8, 0x0800           ## $t9 = 00000000
/* 0067C 80A3EBEC 13200003 */  beq     $t9, $zero, .L80A3EBFC     
/* 00680 80A3EBF0 00000000 */  nop
/* 00684 80A3EBF4 1000000C */  beq     $zero, $zero, .L80A3EC28   
/* 00688 80A3EBF8 A4C8010E */  sh      $t0, 0x010E($a2)           ## 0000010E
.L80A3EBFC:
/* 0068C 80A3EBFC 1000000A */  beq     $zero, $zero, .L80A3EC28   
/* 00690 80A3EC00 A4C9010E */  sh      $t1, 0x010E($a2)           ## 0000010E
/* 00694 80A3EC04 946A0F18 */  lhu     $t2, 0x0F18($v1)           ## 8015F578
.L80A3EC08:
/* 00698 80A3EC08 240C3036 */  addiu   $t4, $zero, 0x3036         ## $t4 = 00003036
/* 0069C 80A3EC0C 240D3033 */  addiu   $t5, $zero, 0x3033         ## $t5 = 00003033
/* 006A0 80A3EC10 314B0800 */  andi    $t3, $t2, 0x0800           ## $t3 = 00000000
/* 006A4 80A3EC14 51600004 */  beql    $t3, $zero, .L80A3EC28     
/* 006A8 80A3EC18 A4CD010E */  sh      $t5, 0x010E($a2)           ## 0000010E
/* 006AC 80A3EC1C 10000002 */  beq     $zero, $zero, .L80A3EC28   
/* 006B0 80A3EC20 A4CC010E */  sh      $t4, 0x010E($a2)           ## 0000010E
/* 006B4 80A3EC24 A4CD010E */  sh      $t5, 0x010E($a2)           ## 0000010E
.L80A3EC28:
/* 006B8 80A3EC28 94C5010E */  lhu     $a1, 0x010E($a2)           ## 0000010E
/* 006BC 80A3EC2C 0C042DC8 */  jal     func_8010B720              
/* 006C0 80A3EC30 A7A7002E */  sh      $a3, 0x002E($sp)           
/* 006C4 80A3EC34 10000036 */  beq     $zero, $zero, .L80A3ED10   
/* 006C8 80A3EC38 87A7002E */  lh      $a3, 0x002E($sp)           
.L80A3EC3C:
/* 006CC 80A3EC3C 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
.L80A3EC40:
/* 006D0 80A3EC40 01C47021 */  addu    $t6, $t6, $a0              
/* 006D4 80A3EC44 91CE04BD */  lbu     $t6, 0x04BD($t6)           ## 000104BD
/* 006D8 80A3EC48 240F3056 */  addiu   $t7, $zero, 0x3056         ## $t7 = 00003056
/* 006DC 80A3EC4C 31E5FFFF */  andi    $a1, $t7, 0xFFFF           ## $a1 = 00003056
/* 006E0 80A3EC50 55C00004 */  bnel    $t6, $zero, .L80A3EC64     
/* 006E4 80A3EC54 A4CF010E */  sh      $t7, 0x010E($a2)           ## 0000010E
/* 006E8 80A3EC58 10000005 */  beq     $zero, $zero, .L80A3EC70   
/* 006EC 80A3EC5C 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 006F0 80A3EC60 A4CF010E */  sh      $t7, 0x010E($a2)           ## 0000010E
.L80A3EC64:
/* 006F4 80A3EC64 0C042DC8 */  jal     func_8010B720              
/* 006F8 80A3EC68 A7A7002E */  sh      $a3, 0x002E($sp)           
/* 006FC 80A3EC6C 87A7002E */  lh      $a3, 0x002E($sp)           
.L80A3EC70:
/* 00700 80A3EC70 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00704 80A3EC74 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00708 80A3EC78 94780F0E */  lhu     $t8, 0x0F0E($v1)           ## 8015F56E
/* 0070C 80A3EC7C 37190010 */  ori     $t9, $t8, 0x0010           ## $t9 = 00000010
/* 00710 80A3EC80 10000023 */  beq     $zero, $zero, .L80A3ED10   
/* 00714 80A3EC84 A4790F0E */  sh      $t9, 0x0F0E($v1)           ## 8015F56E
glabel L80A3EC88
/* 00718 80A3EC88 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 0071C 80A3EC8C 0C041AF2 */  jal     func_80106BC8              
/* 00720 80A3EC90 A7A7002E */  sh      $a3, 0x002E($sp)           
/* 00724 80A3EC94 1040001E */  beq     $v0, $zero, .L80A3ED10     
/* 00728 80A3EC98 87A7002E */  lh      $a3, 0x002E($sp)           
/* 0072C 80A3EC9C 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 00730 80A3ECA0 24013032 */  addiu   $at, $zero, 0x3032         ## $at = 00003032
/* 00734 80A3ECA4 240A3034 */  addiu   $t2, $zero, 0x3034         ## $t2 = 00003034
/* 00738 80A3ECA8 94C2010E */  lhu     $v0, 0x010E($a2)           ## 0000010E
/* 0073C 80A3ECAC 3145FFFF */  andi    $a1, $t2, 0xFFFF           ## $a1 = 00003034
/* 00740 80A3ECB0 1041000B */  beq     $v0, $at, .L80A3ECE0       
/* 00744 80A3ECB4 24013033 */  addiu   $at, $zero, 0x3033         ## $at = 00003033
/* 00748 80A3ECB8 10410009 */  beq     $v0, $at, .L80A3ECE0       
/* 0074C 80A3ECBC 24013035 */  addiu   $at, $zero, 0x3035         ## $at = 00003035
/* 00750 80A3ECC0 10410003 */  beq     $v0, $at, .L80A3ECD0       
/* 00754 80A3ECC4 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00758 80A3ECC8 10000011 */  beq     $zero, $zero, .L80A3ED10   
/* 0075C 80A3ECCC 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
.L80A3ECD0:
/* 00760 80A3ECD0 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00764 80A3ECD4 94680F18 */  lhu     $t0, 0x0F18($v1)           ## 8015F578
/* 00768 80A3ECD8 35090800 */  ori     $t1, $t0, 0x0800           ## $t1 = 00000800
/* 0076C 80A3ECDC A4690F18 */  sh      $t1, 0x0F18($v1)           ## 8015F578
.L80A3ECE0:
/* 00770 80A3ECE0 A4CA010E */  sh      $t2, 0x010E($a2)           ## 0000010E
/* 00774 80A3ECE4 A7A7002E */  sh      $a3, 0x002E($sp)           
/* 00778 80A3ECE8 0C042DC8 */  jal     func_8010B720              
/* 0077C 80A3ECEC 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00780 80A3ECF0 10000007 */  beq     $zero, $zero, .L80A3ED10   
/* 00784 80A3ECF4 87A7002E */  lh      $a3, 0x002E($sp)           
glabel L80A3ECF8
/* 00788 80A3ECF8 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 0078C 80A3ECFC 0C041AF2 */  jal     func_80106BC8              
/* 00790 80A3ED00 A7A7002E */  sh      $a3, 0x002E($sp)           
/* 00794 80A3ED04 10400002 */  beq     $v0, $zero, .L80A3ED10     
/* 00798 80A3ED08 87A7002E */  lh      $a3, 0x002E($sp)           
/* 0079C 80A3ED0C 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
glabel L80A3ED10
.L80A3ED10:
/* 007A0 80A3ED10 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A3ED14:
/* 007A4 80A3ED14 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 007A8 80A3ED18 00E01025 */  or      $v0, $a3, $zero            ## $v0 = 00000003
/* 007AC 80A3ED1C 03E00008 */  jr      $ra                        
/* 007B0 80A3ED20 00000000 */  nop
