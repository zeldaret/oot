.late_rodata
glabel jtbl_80B5FC8C
.word L80B5D650
.word L80B5D704
.word L80B5D734
.word L80B5D788
.word L80B5D7C8
.word L80B5D83C
.word L80B5D870
.word L80B5D8B4
.word L80B5D980
.word L80B5D9C8
.word L80B5DA20
.word L80B5DA50
.word L80B5DA70

.text
glabel func_80B5D610
/* 01E60 80B5D610 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01E64 80B5D614 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01E68 80B5D618 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 01E6C 80B5D61C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 01E70 80B5D620 90830208 */  lbu     $v1, 0x0208($a0)           ## 00000208
/* 01E74 80B5D624 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01E78 80B5D628 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01E7C 80B5D62C 2C61000D */  sltiu   $at, $v1, 0x000D           
/* 01E80 80B5D630 1020011E */  beq     $at, $zero, .L80B5DAAC     
/* 01E84 80B5D634 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 01E88 80B5D638 00037080 */  sll     $t6, $v1,  2               
/* 01E8C 80B5D63C 3C0180B6 */  lui     $at, %hi(jtbl_80B5FC8C)       ## $at = 80B60000
/* 01E90 80B5D640 002E0821 */  addu    $at, $at, $t6              
/* 01E94 80B5D644 8C2EFC8C */  lw      $t6, %lo(jtbl_80B5FC8C)($at)  
/* 01E98 80B5D648 01C00008 */  jr      $t6                        
/* 01E9C 80B5D64C 00000000 */  nop
glabel L80B5D650
/* 01EA0 80B5D650 8E180024 */  lw      $t8, 0x0024($s0)           ## 00000024
/* 01EA4 80B5D654 AC580024 */  sw      $t8, 0x0024($v0)           ## 00000024
/* 01EA8 80B5D658 8E0F0028 */  lw      $t7, 0x0028($s0)           ## 00000028
/* 01EAC 80B5D65C AC4F0028 */  sw      $t7, 0x0028($v0)           ## 00000028
/* 01EB0 80B5D660 8E18002C */  lw      $t8, 0x002C($s0)           ## 0000002C
/* 01EB4 80B5D664 AC58002C */  sw      $t8, 0x002C($v0)           ## 0000002C
/* 01EB8 80B5D668 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 01EBC 80B5D66C AFA20024 */  sw      $v0, 0x0024($sp)           
/* 01EC0 80B5D670 2484C004 */  addiu   $a0, $a0, 0xC004           ## $a0 = FFFFC004
/* 01EC4 80B5D674 00042400 */  sll     $a0, $a0, 16               
/* 01EC8 80B5D678 00042403 */  sra     $a0, $a0, 16               
/* 01ECC 80B5D67C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01ED0 80B5D680 A7A40022 */  sh      $a0, 0x0022($sp)           
/* 01ED4 80B5D684 3C014208 */  lui     $at, 0x4208                ## $at = 42080000
/* 01ED8 80B5D688 44813000 */  mtc1    $at, $f6                   ## $f6 = 34.00
/* 01EDC 80B5D68C 8FA20024 */  lw      $v0, 0x0024($sp)           
/* 01EE0 80B5D690 87A40022 */  lh      $a0, 0x0022($sp)           
/* 01EE4 80B5D694 46003202 */  mul.s   $f8, $f6, $f0              
/* 01EE8 80B5D698 C4440024 */  lwc1    $f4, 0x0024($v0)           ## 00000024
/* 01EEC 80B5D69C 46082280 */  add.s   $f10, $f4, $f8             
/* 01EF0 80B5D6A0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01EF4 80B5D6A4 E44A0024 */  swc1    $f10, 0x0024($v0)          ## 00000024
/* 01EF8 80B5D6A8 3C014208 */  lui     $at, 0x4208                ## $at = 42080000
/* 01EFC 80B5D6AC 44819000 */  mtc1    $at, $f18                  ## $f18 = 34.00
/* 01F00 80B5D6B0 8FA20024 */  lw      $v0, 0x0024($sp)           
/* 01F04 80B5D6B4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01F08 80B5D6B8 46009182 */  mul.s   $f6, $f18, $f0             
/* 01F0C 80B5D6BC C450002C */  lwc1    $f16, 0x002C($v0)          ## 0000002C
/* 01F10 80B5D6C0 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 01F14 80B5D6C4 46068100 */  add.s   $f4, $f16, $f6             
/* 01F18 80B5D6C8 0C2D6E22 */  jal     func_80B5B888              
/* 01F1C 80B5D6CC E444002C */  swc1    $f4, 0x002C($v0)           ## 0000002C
/* 01F20 80B5D6D0 92080208 */  lbu     $t0, 0x0208($s0)           ## 00000208
/* 01F24 80B5D6D4 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
/* 01F28 80B5D6D8 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 01F2C 80B5D6DC 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 01F30 80B5D6E0 A6000210 */  sh      $zero, 0x0210($s0)         ## 00000210
/* 01F34 80B5D6E4 A219020D */  sb      $t9, 0x020D($s0)           ## 0000020D
/* 01F38 80B5D6E8 A202020E */  sb      $v0, 0x020E($s0)           ## 0000020E
/* 01F3C 80B5D6EC A6000214 */  sh      $zero, 0x0214($s0)         ## 00000214
/* 01F40 80B5D6F0 A2090208 */  sb      $t1, 0x0208($s0)           ## 00000208
/* 01F44 80B5D6F4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01F48 80B5D6F8 24052079 */  addiu   $a1, $zero, 0x2079         ## $a1 = 00002079
/* 01F4C 80B5D6FC 0C042DA0 */  jal     func_8010B680              
/* 01F50 80B5D700 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
glabel L80B5D704
/* 01F54 80B5D704 860A0214 */  lh      $t2, 0x0214($s0)           ## 00000214
/* 01F58 80B5D708 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 01F5C 80B5D70C A60B0214 */  sh      $t3, 0x0214($s0)           ## 00000214
/* 01F60 80B5D710 860C0214 */  lh      $t4, 0x0214($s0)           ## 00000214
/* 01F64 80B5D714 29810014 */  slti    $at, $t4, 0x0014           
/* 01F68 80B5D718 14200004 */  bne     $at, $zero, .L80B5D72C     
/* 01F6C 80B5D71C 00000000 */  nop
/* 01F70 80B5D720 920D0208 */  lbu     $t5, 0x0208($s0)           ## 00000208
/* 01F74 80B5D724 25AE0001 */  addiu   $t6, $t5, 0x0001           ## $t6 = 00000001
/* 01F78 80B5D728 A20E0208 */  sb      $t6, 0x0208($s0)           ## 00000208
.L80B5D72C:
/* 01F7C 80B5D72C 100000DF */  beq     $zero, $zero, .L80B5DAAC   
/* 01F80 80B5D730 92030208 */  lbu     $v1, 0x0208($s0)           ## 00000208
glabel L80B5D734
/* 01F84 80B5D734 0C042F6F */  jal     func_8010BDBC              
/* 01F88 80B5D738 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 01F8C 80B5D73C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01F90 80B5D740 1441000F */  bne     $v0, $at, .L80B5D780       
/* 01F94 80B5D744 00000000 */  nop
/* 01F98 80B5D748 0C041AF2 */  jal     func_80106BC8              
/* 01F9C 80B5D74C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01FA0 80B5D750 1040000B */  beq     $v0, $zero, .L80B5D780     
/* 01FA4 80B5D754 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01FA8 80B5D758 0C2D6E22 */  jal     func_80B5B888              
/* 01FAC 80B5D75C 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 01FB0 80B5D760 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01FB4 80B5D764 00310821 */  addu    $at, $at, $s1              
/* 01FB8 80B5D768 240F0037 */  addiu   $t7, $zero, 0x0037         ## $t7 = 00000037
/* 01FBC 80B5D76C A02F03DC */  sb      $t7, 0x03DC($at)           ## 000103DC
/* 01FC0 80B5D770 92180208 */  lbu     $t8, 0x0208($s0)           ## 00000208
/* 01FC4 80B5D774 A6000214 */  sh      $zero, 0x0214($s0)         ## 00000214
/* 01FC8 80B5D778 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 01FCC 80B5D77C A2190208 */  sb      $t9, 0x0208($s0)           ## 00000208
.L80B5D780:
/* 01FD0 80B5D780 100000CA */  beq     $zero, $zero, .L80B5DAAC   
/* 01FD4 80B5D784 92030208 */  lbu     $v1, 0x0208($s0)           ## 00000208
glabel L80B5D788
/* 01FD8 80B5D788 86080214 */  lh      $t0, 0x0214($s0)           ## 00000214
/* 01FDC 80B5D78C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01FE0 80B5D790 2405207A */  addiu   $a1, $zero, 0x207A         ## $a1 = 0000207A
/* 01FE4 80B5D794 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 01FE8 80B5D798 A6090214 */  sh      $t1, 0x0214($s0)           ## 00000214
/* 01FEC 80B5D79C 860A0214 */  lh      $t2, 0x0214($s0)           ## 00000214
/* 01FF0 80B5D7A0 29410014 */  slti    $at, $t2, 0x0014           
/* 01FF4 80B5D7A4 14200006 */  bne     $at, $zero, .L80B5D7C0     
/* 01FF8 80B5D7A8 00000000 */  nop
/* 01FFC 80B5D7AC 0C042DA0 */  jal     func_8010B680              
/* 02000 80B5D7B0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02004 80B5D7B4 920B0208 */  lbu     $t3, 0x0208($s0)           ## 00000208
/* 02008 80B5D7B8 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 0200C 80B5D7BC A20C0208 */  sb      $t4, 0x0208($s0)           ## 00000208
.L80B5D7C0:
/* 02010 80B5D7C0 100000BA */  beq     $zero, $zero, .L80B5DAAC   
/* 02014 80B5D7C4 92030208 */  lbu     $v1, 0x0208($s0)           ## 00000208
glabel L80B5D7C8
/* 02018 80B5D7C8 0C042F6F */  jal     func_8010BDBC              
/* 0201C 80B5D7CC 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 02020 80B5D7D0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 02024 80B5D7D4 14410017 */  bne     $v0, $at, .L80B5D834       
/* 02028 80B5D7D8 00000000 */  nop
/* 0202C 80B5D7DC 0C041AF2 */  jal     func_80106BC8              
/* 02030 80B5D7E0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02034 80B5D7E4 10400013 */  beq     $v0, $zero, .L80B5D834     
/* 02038 80B5D7E8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0203C 80B5D7EC 0C2D6DEC */  jal     func_80B5B7B0              
/* 02040 80B5D7F0 2405000C */  addiu   $a1, $zero, 0x000C         ## $a1 = 0000000C
/* 02044 80B5D7F4 3C0580B6 */  lui     $a1, %hi(D_80B5E7B8)       ## $a1 = 80B60000
/* 02048 80B5D7F8 24A5E7B8 */  addiu   $a1, $a1, %lo(D_80B5E7B8)  ## $a1 = 80B5E7B8
/* 0204C 80B5D7FC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02050 80B5D800 0C00D3B0 */  jal     func_80034EC0              
/* 02054 80B5D804 24060017 */  addiu   $a2, $zero, 0x0017         ## $a2 = 00000017
/* 02058 80B5D808 240D0003 */  addiu   $t5, $zero, 0x0003         ## $t5 = 00000003
/* 0205C 80B5D80C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02060 80B5D810 A6000210 */  sh      $zero, 0x0210($s0)         ## 00000210
/* 02064 80B5D814 A200020D */  sb      $zero, 0x020D($s0)         ## 0000020D
/* 02068 80B5D818 A20D020E */  sb      $t5, 0x020E($s0)           ## 0000020E
/* 0206C 80B5D81C 00310821 */  addu    $at, $at, $s1              
/* 02070 80B5D820 240E0037 */  addiu   $t6, $zero, 0x0037         ## $t6 = 00000037
/* 02074 80B5D824 A02E03DC */  sb      $t6, 0x03DC($at)           ## 000103DC
/* 02078 80B5D828 920F0208 */  lbu     $t7, 0x0208($s0)           ## 00000208
/* 0207C 80B5D82C 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 02080 80B5D830 A2180208 */  sb      $t8, 0x0208($s0)           ## 00000208
.L80B5D834:
/* 02084 80B5D834 1000009D */  beq     $zero, $zero, .L80B5DAAC   
/* 02088 80B5D838 92030208 */  lbu     $v1, 0x0208($s0)           ## 00000208
glabel L80B5D83C
/* 0208C 80B5D83C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02090 80B5D840 0C2D6FE4 */  jal     func_80B5BF90              
/* 02094 80B5D844 24050018 */  addiu   $a1, $zero, 0x0018         ## $a1 = 00000018
/* 02098 80B5D848 10400007 */  beq     $v0, $zero, .L80B5D868     
/* 0209C 80B5D84C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 020A0 80B5D850 2405207B */  addiu   $a1, $zero, 0x207B         ## $a1 = 0000207B
/* 020A4 80B5D854 0C042DA0 */  jal     func_8010B680              
/* 020A8 80B5D858 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 020AC 80B5D85C 92190208 */  lbu     $t9, 0x0208($s0)           ## 00000208
/* 020B0 80B5D860 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 020B4 80B5D864 A2080208 */  sb      $t0, 0x0208($s0)           ## 00000208
.L80B5D868:
/* 020B8 80B5D868 10000090 */  beq     $zero, $zero, .L80B5DAAC   
/* 020BC 80B5D86C 92030208 */  lbu     $v1, 0x0208($s0)           ## 00000208
glabel L80B5D870
/* 020C0 80B5D870 0C042F6F */  jal     func_8010BDBC              
/* 020C4 80B5D874 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 020C8 80B5D878 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 020CC 80B5D87C 1441000B */  bne     $v0, $at, .L80B5D8AC       
/* 020D0 80B5D880 00000000 */  nop
/* 020D4 80B5D884 0C041AF2 */  jal     func_80106BC8              
/* 020D8 80B5D888 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 020DC 80B5D88C 10400007 */  beq     $v0, $zero, .L80B5D8AC     
/* 020E0 80B5D890 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 020E4 80B5D894 2405703A */  addiu   $a1, $zero, 0x703A         ## $a1 = 0000703A
/* 020E8 80B5D898 0C042DA0 */  jal     func_8010B680              
/* 020EC 80B5D89C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 020F0 80B5D8A0 92090208 */  lbu     $t1, 0x0208($s0)           ## 00000208
/* 020F4 80B5D8A4 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 020F8 80B5D8A8 A20A0208 */  sb      $t2, 0x0208($s0)           ## 00000208
.L80B5D8AC:
/* 020FC 80B5D8AC 1000007F */  beq     $zero, $zero, .L80B5DAAC   
/* 02100 80B5D8B0 92030208 */  lbu     $v1, 0x0208($s0)           ## 00000208
glabel L80B5D8B4
/* 02104 80B5D8B4 0C042F6F */  jal     func_8010BDBC              
/* 02108 80B5D8B8 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 0210C 80B5D8BC 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 02110 80B5D8C0 14410005 */  bne     $v0, $at, .L80B5D8D8       
/* 02114 80B5D8C4 00000000 */  nop
/* 02118 80B5D8C8 0C041AF2 */  jal     func_80106BC8              
/* 0211C 80B5D8CC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02120 80B5D8D0 14400003 */  bne     $v0, $zero, .L80B5D8E0     
/* 02124 80B5D8D4 3C0B0001 */  lui     $t3, 0x0001                ## $t3 = 00010000
.L80B5D8D8:
/* 02128 80B5D8D8 10000074 */  beq     $zero, $zero, .L80B5DAAC   
/* 0212C 80B5D8DC 92030208 */  lbu     $v1, 0x0208($s0)           ## 00000208
.L80B5D8E0:
/* 02130 80B5D8E0 01715821 */  addu    $t3, $t3, $s1              
/* 02134 80B5D8E4 916B04BD */  lbu     $t3, 0x04BD($t3)           ## 000104BD
/* 02138 80B5D8E8 3C0580B6 */  lui     $a1, %hi(D_80B5E7B8)       ## $a1 = 80B60000
/* 0213C 80B5D8EC 24A5E7B8 */  addiu   $a1, $a1, %lo(D_80B5E7B8)  ## $a1 = 80B5E7B8
/* 02140 80B5D8F0 15600013 */  bne     $t3, $zero, .L80B5D940     
/* 02144 80B5D8F4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02148 80B5D8F8 3C0580B6 */  lui     $a1, %hi(D_80B5E7B8)       ## $a1 = 80B60000
/* 0214C 80B5D8FC 24A5E7B8 */  addiu   $a1, $a1, %lo(D_80B5E7B8)  ## $a1 = 80B5E7B8
/* 02150 80B5D900 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02154 80B5D904 0C00D3B0 */  jal     func_80034EC0              
/* 02158 80B5D908 2406001F */  addiu   $a2, $zero, 0x001F         ## $a2 = 0000001F
/* 0215C 80B5D90C 240C000B */  addiu   $t4, $zero, 0x000B         ## $t4 = 0000000B
/* 02160 80B5D910 240D0005 */  addiu   $t5, $zero, 0x0005         ## $t5 = 00000005
/* 02164 80B5D914 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 02168 80B5D918 A60C0210 */  sh      $t4, 0x0210($s0)           ## 00000210
/* 0216C 80B5D91C A20D020D */  sb      $t5, 0x020D($s0)           ## 0000020D
/* 02170 80B5D920 A20E020E */  sb      $t6, 0x020E($s0)           ## 0000020E
/* 02174 80B5D924 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02178 80B5D928 2405703B */  addiu   $a1, $zero, 0x703B         ## $a1 = 0000703B
/* 0217C 80B5D92C 0C042DA0 */  jal     func_8010B680              
/* 02180 80B5D930 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02184 80B5D934 240F000B */  addiu   $t7, $zero, 0x000B         ## $t7 = 0000000B
/* 02188 80B5D938 1000000F */  beq     $zero, $zero, .L80B5D978   
/* 0218C 80B5D93C A20F0208 */  sb      $t7, 0x0208($s0)           ## 00000208
.L80B5D940:
/* 02190 80B5D940 0C00D3B0 */  jal     func_80034EC0              
/* 02194 80B5D944 2406000D */  addiu   $a2, $zero, 0x000D         ## $a2 = 0000000D
/* 02198 80B5D948 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
/* 0219C 80B5D94C 2418000B */  addiu   $t8, $zero, 0x000B         ## $t8 = 0000000B
/* 021A0 80B5D950 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 021A4 80B5D954 A6180210 */  sh      $t8, 0x0210($s0)           ## 00000210
/* 021A8 80B5D958 A202020D */  sb      $v0, 0x020D($s0)           ## 0000020D
/* 021AC 80B5D95C A202020E */  sb      $v0, 0x020E($s0)           ## 0000020E
/* 021B0 80B5D960 00310821 */  addu    $at, $at, $s1              
/* 021B4 80B5D964 24190037 */  addiu   $t9, $zero, 0x0037         ## $t9 = 00000037
/* 021B8 80B5D968 A03903DC */  sb      $t9, 0x03DC($at)           ## 000103DC
/* 021BC 80B5D96C 92080208 */  lbu     $t0, 0x0208($s0)           ## 00000208
/* 021C0 80B5D970 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 021C4 80B5D974 A2090208 */  sb      $t1, 0x0208($s0)           ## 00000208
.L80B5D978:
/* 021C8 80B5D978 1000004C */  beq     $zero, $zero, .L80B5DAAC   
/* 021CC 80B5D97C 92030208 */  lbu     $v1, 0x0208($s0)           ## 00000208
glabel L80B5D980
/* 021D0 80B5D980 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021D4 80B5D984 0C2D6FE4 */  jal     func_80B5BF90              
/* 021D8 80B5D988 2405000F */  addiu   $a1, $zero, 0x000F         ## $a1 = 0000000F
/* 021DC 80B5D98C 1040000C */  beq     $v0, $zero, .L80B5D9C0     
/* 021E0 80B5D990 240A0003 */  addiu   $t2, $zero, 0x0003         ## $t2 = 00000003
/* 021E4 80B5D994 240B0003 */  addiu   $t3, $zero, 0x0003         ## $t3 = 00000003
/* 021E8 80B5D998 A60A0210 */  sh      $t2, 0x0210($s0)           ## 00000210
/* 021EC 80B5D99C A200020D */  sb      $zero, 0x020D($s0)         ## 0000020D
/* 021F0 80B5D9A0 A20B020E */  sb      $t3, 0x020E($s0)           ## 0000020E
/* 021F4 80B5D9A4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 021F8 80B5D9A8 24057073 */  addiu   $a1, $zero, 0x7073         ## $a1 = 00007073
/* 021FC 80B5D9AC 0C042DA0 */  jal     func_8010B680              
/* 02200 80B5D9B0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02204 80B5D9B4 920C0208 */  lbu     $t4, 0x0208($s0)           ## 00000208
/* 02208 80B5D9B8 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 0220C 80B5D9BC A20D0208 */  sb      $t5, 0x0208($s0)           ## 00000208
.L80B5D9C0:
/* 02210 80B5D9C0 1000003A */  beq     $zero, $zero, .L80B5DAAC   
/* 02214 80B5D9C4 92030208 */  lbu     $v1, 0x0208($s0)           ## 00000208
glabel L80B5D9C8
/* 02218 80B5D9C8 0C042F6F */  jal     func_8010BDBC              
/* 0221C 80B5D9CC 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 02220 80B5D9D0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 02224 80B5D9D4 14410010 */  bne     $v0, $at, .L80B5DA18       
/* 02228 80B5D9D8 00000000 */  nop
/* 0222C 80B5D9DC 0C041AF2 */  jal     func_80106BC8              
/* 02230 80B5D9E0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02234 80B5D9E4 1040000C */  beq     $v0, $zero, .L80B5DA18     
/* 02238 80B5D9E8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0223C 80B5D9EC 3C0580B6 */  lui     $a1, %hi(D_80B5E7B8)       ## $a1 = 80B60000
/* 02240 80B5D9F0 24A5E7B8 */  addiu   $a1, $a1, %lo(D_80B5E7B8)  ## $a1 = 80B5E7B8
/* 02244 80B5D9F4 0C00D3B0 */  jal     func_80034EC0              
/* 02248 80B5D9F8 2406000E */  addiu   $a2, $zero, 0x000E         ## $a2 = 0000000E
/* 0224C 80B5D9FC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02250 80B5DA00 00310821 */  addu    $at, $at, $s1              
/* 02254 80B5DA04 240E0037 */  addiu   $t6, $zero, 0x0037         ## $t6 = 00000037
/* 02258 80B5DA08 A02E03DC */  sb      $t6, 0x03DC($at)           ## 000103DC
/* 0225C 80B5DA0C 920F0208 */  lbu     $t7, 0x0208($s0)           ## 00000208
/* 02260 80B5DA10 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 02264 80B5DA14 A2180208 */  sb      $t8, 0x0208($s0)           ## 00000208
.L80B5DA18:
/* 02268 80B5DA18 10000024 */  beq     $zero, $zero, .L80B5DAAC   
/* 0226C 80B5DA1C 92030208 */  lbu     $v1, 0x0208($s0)           ## 00000208
glabel L80B5DA20
/* 02270 80B5DA20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02274 80B5DA24 0C2D6FE4 */  jal     func_80B5BF90              
/* 02278 80B5DA28 24050018 */  addiu   $a1, $zero, 0x0018         ## $a1 = 00000018
/* 0227C 80B5DA2C 10400006 */  beq     $v0, $zero, .L80B5DA48     
/* 02280 80B5DA30 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02284 80B5DA34 2405703A */  addiu   $a1, $zero, 0x703A         ## $a1 = 0000703A
/* 02288 80B5DA38 0C042DA0 */  jal     func_8010B680              
/* 0228C 80B5DA3C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02290 80B5DA40 24190007 */  addiu   $t9, $zero, 0x0007         ## $t9 = 00000007
/* 02294 80B5DA44 A2190208 */  sb      $t9, 0x0208($s0)           ## 00000208
.L80B5DA48:
/* 02298 80B5DA48 10000018 */  beq     $zero, $zero, .L80B5DAAC   
/* 0229C 80B5DA4C 92030208 */  lbu     $v1, 0x0208($s0)           ## 00000208
glabel L80B5DA50
/* 022A0 80B5DA50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022A4 80B5DA54 0C2D6FE4 */  jal     func_80B5BF90              
/* 022A8 80B5DA58 24050020 */  addiu   $a1, $zero, 0x0020         ## $a1 = 00000020
/* 022AC 80B5DA5C 10400004 */  beq     $v0, $zero, .L80B5DA70     
/* 022B0 80B5DA60 00000000 */  nop
/* 022B4 80B5DA64 92080208 */  lbu     $t0, 0x0208($s0)           ## 00000208
/* 022B8 80B5DA68 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 022BC 80B5DA6C A2090208 */  sb      $t1, 0x0208($s0)           ## 00000208
glabel L80B5DA70
.L80B5DA70:
/* 022C0 80B5DA70 0C042F6F */  jal     func_8010BDBC              
/* 022C4 80B5DA74 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 022C8 80B5DA78 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 022CC 80B5DA7C 5441000B */  bnel    $v0, $at, .L80B5DAAC       
/* 022D0 80B5DA80 92030208 */  lbu     $v1, 0x0208($s0)           ## 00000208
/* 022D4 80B5DA84 0C041AF2 */  jal     func_80106BC8              
/* 022D8 80B5DA88 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 022DC 80B5DA8C 10400006 */  beq     $v0, $zero, .L80B5DAA8     
/* 022E0 80B5DA90 240A0037 */  addiu   $t2, $zero, 0x0037         ## $t2 = 00000037
/* 022E4 80B5DA94 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 022E8 80B5DA98 00310821 */  addu    $at, $at, $s1              
/* 022EC 80B5DA9C A02A03DC */  sb      $t2, 0x03DC($at)           ## 000103DC
/* 022F0 80B5DAA0 240B000D */  addiu   $t3, $zero, 0x000D         ## $t3 = 0000000D
/* 022F4 80B5DAA4 A20B0208 */  sb      $t3, 0x0208($s0)           ## 00000208
.L80B5DAA8:
/* 022F8 80B5DAA8 92030208 */  lbu     $v1, 0x0208($s0)           ## 00000208
.L80B5DAAC:
/* 022FC 80B5DAAC 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 02300 80B5DAB0 14610003 */  bne     $v1, $at, .L80B5DAC0       
/* 02304 80B5DAB4 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 02308 80B5DAB8 10000002 */  beq     $zero, $zero, .L80B5DAC4   
/* 0230C 80B5DABC 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L80B5DAC0:
/* 02310 80B5DAC0 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80B5DAC4:
/* 02314 80B5DAC4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02318 80B5DAC8 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 0231C 80B5DACC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02320 80B5DAD0 03E00008 */  jr      $ra                        
/* 02324 80B5DAD4 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000


