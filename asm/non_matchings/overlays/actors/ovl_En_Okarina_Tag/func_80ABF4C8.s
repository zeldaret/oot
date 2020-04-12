.late_rodata
glabel D_80AC0524
 .word 0x3F983809, 0x00000000, 0x00000000

.text
glabel func_80ABF4C8
/* 007A8 80ABF4C8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 007AC 80ABF4CC 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 007B0 80ABF4D0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 007B4 80ABF4D4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 007B8 80ABF4D8 00451021 */  addu    $v0, $v0, $a1              
/* 007BC 80ABF4DC 944204C6 */  lhu     $v0, 0x04C6($v0)           ## 000104C6
/* 007C0 80ABF4E0 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 007C4 80ABF4E4 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 007C8 80ABF4E8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 007CC 80ABF4EC 14410005 */  bne     $v0, $at, .L80ABF504       
/* 007D0 80ABF4F0 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 007D4 80ABF4F4 3C0E80AC */  lui     $t6, %hi(func_80ABF28C)    ## $t6 = 80AC0000
/* 007D8 80ABF4F8 25CEF28C */  addiu   $t6, $t6, %lo(func_80ABF28C) ## $t6 = 80ABF28C
/* 007DC 80ABF4FC 1000007D */  beq     $zero, $zero, .L80ABF6F4   
/* 007E0 80ABF500 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
.L80ABF504:
/* 007E4 80ABF504 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 007E8 80ABF508 14410067 */  bne     $v0, $at, .L80ABF6A8       
/* 007EC 80ABF50C 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 007F0 80ABF510 0C01E221 */  jal     func_80078884              
/* 007F4 80ABF514 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 007F8 80ABF518 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 007FC 80ABF51C 84C50154 */  lh      $a1, 0x0154($a2)           ## 00000154
/* 00800 80ABF520 04A20005 */  bltzl   $a1, .L80ABF538            
/* 00804 80ABF524 84C20150 */  lh      $v0, 0x0150($a2)           ## 00000150
/* 00808 80ABF528 0C00B2DD */  jal     Flags_SetSwitch
              
/* 0080C 80ABF52C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00810 80ABF530 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00814 80ABF534 84C20150 */  lh      $v0, 0x0150($a2)           ## 00000150
.L80ABF538:
/* 00818 80ABF538 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0081C 80ABF53C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00820 80ABF540 1041000B */  beq     $v0, $at, .L80ABF570       
/* 00824 80ABF544 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00828 80ABF548 10410012 */  beq     $v0, $at, .L80ABF594       
/* 0082C 80ABF54C 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00830 80ABF550 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00834 80ABF554 1041001B */  beq     $v0, $at, .L80ABF5C4       
/* 00838 80ABF558 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 0083C 80ABF55C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00840 80ABF560 1041001F */  beq     $v0, $at, .L80ABF5E0       
/* 00844 80ABF564 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00848 80ABF568 10000048 */  beq     $zero, $zero, .L80ABF68C   
/* 0084C 80ABF56C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80ABF570:
/* 00850 80ABF570 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00854 80ABF574 84C50154 */  lh      $a1, 0x0154($a2)           ## 00000154
/* 00858 80ABF578 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 0085C 80ABF57C 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00860 80ABF580 946F0EDA */  lhu     $t7, 0x0EDA($v1)           ## 8015F53A
/* 00864 80ABF584 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00868 80ABF588 35F80200 */  ori     $t8, $t7, 0x0200           ## $t8 = 00000200
/* 0086C 80ABF58C 1000003E */  beq     $zero, $zero, .L80ABF688   
/* 00870 80ABF590 A4780EDA */  sh      $t8, 0x0EDA($v1)           ## 8015F53A
.L80ABF594:
/* 00874 80ABF594 3C1980AC */  lui     $t9, %hi(D_80ABF9D0)       ## $t9 = 80AC0000
/* 00878 80ABF598 2739F9D0 */  addiu   $t9, $t9, %lo(D_80ABF9D0)  ## $t9 = 80ABF9D0
/* 0087C 80ABF59C 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015CCC0
/* 00880 80ABF5A0 AE191D68 */  sw      $t9, 0x1D68($s0)           ## 00001D68
/* 00884 80ABF5A4 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00888 80ABF5A8 A0681414 */  sb      $t0, 0x1414($v1)           ## 8015E0D4
/* 0088C 80ABF5AC 3C0180AC */  lui     $at, %hi(D_80AC0524)       ## $at = 80AC0000
/* 00890 80ABF5B0 C42C0524 */  lwc1    $f12, %lo(D_80AC0524)($at) 
/* 00894 80ABF5B4 0C03D5D3 */  jal     func_800F574C              
/* 00898 80ABF5B8 2405005A */  addiu   $a1, $zero, 0x005A         ## $a1 = 0000005A
/* 0089C 80ABF5BC 10000032 */  beq     $zero, $zero, .L80ABF688   
/* 008A0 80ABF5C0 8FA60020 */  lw      $a2, 0x0020($sp)           
.L80ABF5C4:
/* 008A4 80ABF5C4 3C0980AC */  lui     $t1, %hi(D_80ABFB40)       ## $t1 = 80AC0000
/* 008A8 80ABF5C8 2529FB40 */  addiu   $t1, $t1, %lo(D_80ABFB40)  ## $t1 = 80ABFB40
/* 008AC 80ABF5CC 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = FFFFE660
/* 008B0 80ABF5D0 AE091D68 */  sw      $t1, 0x1D68($s0)           ## 00001D68
/* 008B4 80ABF5D4 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 008B8 80ABF5D8 1000002B */  beq     $zero, $zero, .L80ABF688   
/* 008BC 80ABF5DC A06A1414 */  sb      $t2, 0x1414($v1)           ## FFFFFA74
.L80ABF5E0:
/* 008C0 80ABF5E0 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = FFFFCCC0
/* 008C4 80ABF5E4 8C6B0004 */  lw      $t3, 0x0004($v1)           ## FFFFCCC4
/* 008C8 80ABF5E8 3C020200 */  lui     $v0, 0x0200                ## $v0 = 02000000
/* 008CC 80ABF5EC 24425020 */  addiu   $v0, $v0, 0x5020           ## $v0 = 02005020
/* 008D0 80ABF5F0 15600011 */  bne     $t3, $zero, .L80ABF638     
/* 008D4 80ABF5F4 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 008D8 80ABF5F8 3C020200 */  lui     $v0, 0x0200                ## $v0 = 02000000
/* 008DC 80ABF5FC 24423C80 */  addiu   $v0, $v0, 0x3C80           ## $v0 = 02003C80
/* 008E0 80ABF600 00026100 */  sll     $t4, $v0,  4               
/* 008E4 80ABF604 000C6F02 */  srl     $t5, $t4, 28               
/* 008E8 80ABF608 000D7080 */  sll     $t6, $t5,  2               
/* 008EC 80ABF60C 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 008F0 80ABF610 01EE7821 */  addu    $t7, $t7, $t6              
/* 008F4 80ABF614 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 008F8 80ABF618 8DEF6FA8 */  lw      $t7, 0x6FA8($t7)           ## 80166FA8
/* 008FC 80ABF61C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00900 80ABF620 0041C024 */  and     $t8, $v0, $at              
/* 00904 80ABF624 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00908 80ABF628 01F8C821 */  addu    $t9, $t7, $t8              
/* 0090C 80ABF62C 03214021 */  addu    $t0, $t9, $at              
/* 00910 80ABF630 1000000E */  beq     $zero, $zero, .L80ABF66C   
/* 00914 80ABF634 AE081D68 */  sw      $t0, 0x1D68($s0)           ## 00001D68
.L80ABF638:
/* 00918 80ABF638 00024900 */  sll     $t1, $v0,  4               
/* 0091C 80ABF63C 00095702 */  srl     $t2, $t1, 28               
/* 00920 80ABF640 000A5880 */  sll     $t3, $t2,  2               
/* 00924 80ABF644 3C0C8016 */  lui     $t4, 0x8016                ## $t4 = 80160000
/* 00928 80ABF648 018B6021 */  addu    $t4, $t4, $t3              
/* 0092C 80ABF64C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00930 80ABF650 8D8C6FA8 */  lw      $t4, 0x6FA8($t4)           ## 80166FA8
/* 00934 80ABF654 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00938 80ABF658 00416824 */  and     $t5, $v0, $at              
/* 0093C 80ABF65C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00940 80ABF660 018D7021 */  addu    $t6, $t4, $t5              
/* 00944 80ABF664 01C17821 */  addu    $t7, $t6, $at              
/* 00948 80ABF668 AE0F1D68 */  sw      $t7, 0x1D68($s0)           ## 00001D68
.L80ABF66C:
/* 0094C 80ABF66C 94790ED6 */  lhu     $t9, 0x0ED6($v1)           ## FFFFDB96
/* 00950 80ABF670 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00954 80ABF674 A0781414 */  sb      $t8, 0x1414($v1)           ## FFFFE0D4
/* 00958 80ABF678 37282000 */  ori     $t0, $t9, 0x2000           ## $t0 = 00002000
/* 0095C 80ABF67C 0C01E221 */  jal     func_80078884              
/* 00960 80ABF680 A4680ED6 */  sh      $t0, 0x0ED6($v1)           ## FFFFDB96
/* 00964 80ABF684 8FA60020 */  lw      $a2, 0x0020($sp)           
.L80ABF688:
/* 00968 80ABF688 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80ABF68C:
/* 0096C 80ABF68C 00300821 */  addu    $at, $at, $s0              
/* 00970 80ABF690 24090004 */  addiu   $t1, $zero, 0x0004         ## $t1 = 00000004
/* 00974 80ABF694 3C0A80AC */  lui     $t2, %hi(func_80ABF28C)    ## $t2 = 80AC0000
/* 00978 80ABF698 A42904C6 */  sh      $t1, 0x04C6($at)           ## 000104C6
/* 0097C 80ABF69C 254AF28C */  addiu   $t2, $t2, %lo(func_80ABF28C) ## $t2 = 80ABF28C
/* 00980 80ABF6A0 10000014 */  beq     $zero, $zero, .L80ABF6F4   
/* 00984 80ABF6A4 ACCA014C */  sw      $t2, 0x014C($a2)           ## 0000014C
.L80ABF6A8:
/* 00988 80ABF6A8 28410005 */  slti    $at, $v0, 0x0005           
/* 0098C 80ABF6AC 1420000A */  bne     $at, $zero, .L80ABF6D8     
/* 00990 80ABF6B0 2841000E */  slti    $at, $v0, 0x000E           
/* 00994 80ABF6B4 10200008 */  beq     $at, $zero, .L80ABF6D8     
/* 00998 80ABF6B8 240B0004 */  addiu   $t3, $zero, 0x0004         ## $t3 = 00000004
/* 0099C 80ABF6BC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 009A0 80ABF6C0 00300821 */  addu    $at, $at, $s0              
/* 009A4 80ABF6C4 3C0C80AC */  lui     $t4, %hi(func_80ABF28C)    ## $t4 = 80AC0000
/* 009A8 80ABF6C8 A42B04C6 */  sh      $t3, 0x04C6($at)           ## 000104C6
/* 009AC 80ABF6CC 258CF28C */  addiu   $t4, $t4, %lo(func_80ABF28C) ## $t4 = 80ABF28C
/* 009B0 80ABF6D0 10000008 */  beq     $zero, $zero, .L80ABF6F4   
/* 009B4 80ABF6D4 ACCC014C */  sw      $t4, 0x014C($a2)           ## 0000014C
.L80ABF6D8:
/* 009B8 80ABF6D8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 009BC 80ABF6DC 54410006 */  bnel    $v0, $at, .L80ABF6F8       
/* 009C0 80ABF6E0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 009C4 80ABF6E4 8C6D0680 */  lw      $t5, 0x0680($v1)           ## 00000680
/* 009C8 80ABF6E8 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 009CC 80ABF6EC 01A17025 */  or      $t6, $t5, $at              ## $t6 = 00800000
/* 009D0 80ABF6F0 AC6E0680 */  sw      $t6, 0x0680($v1)           ## 00000680
.L80ABF6F4:
/* 009D4 80ABF6F4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ABF6F8:
/* 009D8 80ABF6F8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 009DC 80ABF6FC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 009E0 80ABF700 03E00008 */  jr      $ra                        
/* 009E4 80ABF704 00000000 */  nop
