glabel func_80B77404
/* 0DA64 80B77404 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0DA68 80B77408 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0DA6C 80B7740C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0DA70 80B77410 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 0DA74 80B77414 948F015C */  lhu     $t7, 0x015C($a0)           ## 0000015C
/* 0DA78 80B77418 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0DA7C 80B7741C 2DE10019 */  sltiu   $at, $t7, 0x0019           
/* 0DA80 80B77420 10200389 */  beq     $at, $zero, .L80B78248     
/* 0DA84 80B77424 000F7880 */  sll     $t7, $t7,  2               
/* 0DA88 80B77428 3C0180B8 */  lui     $at, %hi(jtbl_80B7B7C0)       ## $at = 80B80000
/* 0DA8C 80B7742C 002F0821 */  addu    $at, $at, $t7              
/* 0DA90 80B77430 8C2FB7C0 */  lw      $t7, %lo(jtbl_80B7B7C0)($at)  
/* 0DA94 80B77434 01E00008 */  jr      $t7                        
/* 0DA98 80B77438 00000000 */  nop
glabel L80B7743C
/* 0DA9C 80B7743C 3C1880B8 */  lui     $t8, %hi(D_80B7E0AC)       ## $t8 = 80B80000
/* 0DAA0 80B77440 8718E0AC */  lh      $t8, %lo(D_80B7E0AC)($t8)  
/* 0DAA4 80B77444 3C1980B8 */  lui     $t9, %hi(D_80B7A68C)       ## $t9 = 80B80000
/* 0DAA8 80B77448 17000018 */  bne     $t8, $zero, .L80B774AC     
/* 0DAAC 80B7744C 00000000 */  nop
/* 0DAB0 80B77450 3C1980B8 */  lui     $t9, %hi(D_80B7E075)       ## $t9 = 80B80000
/* 0DAB4 80B77454 9339E075 */  lbu     $t9, %lo(D_80B7E075)($t9)  
/* 0DAB8 80B77458 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0DABC 80B7745C 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 0DAC0 80B77460 1119000E */  beq     $t0, $t9, .L80B7749C       
/* 0DAC4 80B77464 24C6E660 */  addiu   $a2, $a2, 0xE660           ## $a2 = 8015E660
/* 0DAC8 80B77468 8CC30EC0 */  lw      $v1, 0x0EC0($a2)           ## 8015F520
/* 0DACC 80B7746C 8FAE0038 */  lw      $t6, 0x0038($sp)           
/* 0DAD0 80B77470 30690100 */  andi    $t1, $v1, 0x0100           ## $t1 = 00000000
/* 0DAD4 80B77474 11200006 */  beq     $t1, $zero, .L80B77490     
/* 0DAD8 80B77478 306A0200 */  andi    $t2, $v1, 0x0200           ## $t2 = 00000000
/* 0DADC 80B7747C 15400004 */  bne     $t2, $zero, .L80B77490     
/* 0DAE0 80B77480 8FAC0038 */  lw      $t4, 0x0038($sp)           
/* 0DAE4 80B77484 240B4093 */  addiu   $t3, $zero, 0x4093         ## $t3 = 00004093
/* 0DAE8 80B77488 10000011 */  beq     $zero, $zero, .L80B774D0   
/* 0DAEC 80B7748C A58B010E */  sh      $t3, 0x010E($t4)           ## 0000010E
.L80B77490:
/* 0DAF0 80B77490 240D407B */  addiu   $t5, $zero, 0x407B         ## $t5 = 0000407B
/* 0DAF4 80B77494 1000000E */  beq     $zero, $zero, .L80B774D0   
/* 0DAF8 80B77498 A5CD010E */  sh      $t5, 0x010E($t6)           ## 0000010E
.L80B7749C:
/* 0DAFC 80B7749C 8FB80038 */  lw      $t8, 0x0038($sp)           
/* 0DB00 80B774A0 240F407B */  addiu   $t7, $zero, 0x407B         ## $t7 = 0000407B
/* 0DB04 80B774A4 1000000A */  beq     $zero, $zero, .L80B774D0   
/* 0DB08 80B774A8 A70F010E */  sh      $t7, 0x010E($t8)           ## 80B8010E
.L80B774AC:
/* 0DB0C 80B774AC 9339A68C */  lbu     $t9, %lo(D_80B7A68C)($t9)  
/* 0DB10 80B774B0 8FAA0038 */  lw      $t2, 0x0038($sp)           
/* 0DB14 80B774B4 8FAC0038 */  lw      $t4, 0x0038($sp)           
/* 0DB18 80B774B8 17200003 */  bne     $t9, $zero, .L80B774C8     
/* 0DB1C 80B774BC 24094084 */  addiu   $t1, $zero, 0x4084         ## $t1 = 00004084
/* 0DB20 80B774C0 10000003 */  beq     $zero, $zero, .L80B774D0   
/* 0DB24 80B774C4 A549010E */  sh      $t1, 0x010E($t2)           ## 0000010E
.L80B774C8:
/* 0DB28 80B774C8 240B4097 */  addiu   $t3, $zero, 0x4097         ## $t3 = 00004097
/* 0DB2C 80B774CC A58B010E */  sh      $t3, 0x010E($t4)           ## 0000010E
.L80B774D0:
/* 0DB30 80B774D0 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 0DB34 80B774D4 0C00BC65 */  jal     func_8002F194              
/* 0DB38 80B774D8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0DB3C 80B774DC 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 0DB40 80B774E0 24C6E660 */  addiu   $a2, $a2, 0xE660           ## $a2 = 8015E660
/* 0DB44 80B774E4 10400016 */  beq     $v0, $zero, .L80B77540     
/* 0DB48 80B774E8 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0DB4C 80B774EC 3C0D80B8 */  lui     $t5, %hi(D_80B7E0AC)       ## $t5 = 80B80000
/* 0DB50 80B774F0 85ADE0AC */  lh      $t5, %lo(D_80B7E0AC)($t5)  
/* 0DB54 80B774F4 8FAE0038 */  lw      $t6, 0x0038($sp)           
/* 0DB58 80B774F8 3C0F80B8 */  lui     $t7, %hi(D_80B7E075)       ## $t7 = 80B80000
/* 0DB5C 80B774FC 15A0000D */  bne     $t5, $zero, .L80B77534     
/* 0DB60 80B77500 8FAC0038 */  lw      $t4, 0x0038($sp)           
/* 0DB64 80B77504 A5C8015C */  sh      $t0, 0x015C($t6)           ## 0000015C
/* 0DB68 80B77508 91EFE075 */  lbu     $t7, %lo(D_80B7E075)($t7)  
/* 0DB6C 80B7750C 510F0006 */  beql    $t0, $t7, .L80B77528       
/* 0DB70 80B77510 8CC90EC0 */  lw      $t1, 0x0EC0($a2)           ## 8015F520
/* 0DB74 80B77514 8CD80EC0 */  lw      $t8, 0x0EC0($a2)           ## 8015F520
/* 0DB78 80B77518 37190200 */  ori     $t9, $t8, 0x0200           ## $t9 = 00000200
/* 0DB7C 80B7751C 1000034A */  beq     $zero, $zero, .L80B78248   
/* 0DB80 80B77520 ACD90EC0 */  sw      $t9, 0x0EC0($a2)           ## 8015F520
/* 0DB84 80B77524 8CC90EC0 */  lw      $t1, 0x0EC0($a2)           ## 8015F520
.L80B77528:
/* 0DB88 80B77528 352A0100 */  ori     $t2, $t1, 0x0100           ## $t2 = 00000100
/* 0DB8C 80B7752C 10000346 */  beq     $zero, $zero, .L80B78248   
/* 0DB90 80B77530 ACCA0EC0 */  sw      $t2, 0x0EC0($a2)           ## 8015F520
.L80B77534:
/* 0DB94 80B77534 240B000A */  addiu   $t3, $zero, 0x000A         ## $t3 = 0000000A
/* 0DB98 80B77538 10000343 */  beq     $zero, $zero, .L80B78248   
/* 0DB9C 80B7753C A58B015C */  sh      $t3, 0x015C($t4)           ## 0000015C
.L80B77540:
/* 0DBA0 80B77540 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 0DBA4 80B77544 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0DBA8 80B77548 0C00BCB3 */  jal     func_8002F2CC              
/* 0DBAC 80B7754C 3C0642C8 */  lui     $a2, 0x42C8                ## $a2 = 42C80000
/* 0DBB0 80B77550 1000033E */  beq     $zero, $zero, .L80B7824C   
/* 0DBB4 80B77554 8FBF0024 */  lw      $ra, 0x0024($sp)           
glabel L80B77558
/* 0DBB8 80B77558 0C042F6F */  jal     func_8010BDBC              
/* 0DBBC 80B7755C 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 0DBC0 80B77560 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0DBC4 80B77564 54410339 */  bnel    $v0, $at, .L80B7824C       
/* 0DBC8 80B77568 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0DBCC 80B7756C 0C041AF2 */  jal     func_80106BC8              
/* 0DBD0 80B77570 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DBD4 80B77574 50400335 */  beql    $v0, $zero, .L80B7824C     
/* 0DBD8 80B77578 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0DBDC 80B7757C 0C041B33 */  jal     func_80106CCC              
/* 0DBE0 80B77580 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DBE4 80B77584 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 0DBE8 80B77588 00501021 */  addu    $v0, $v0, $s0              
/* 0DBEC 80B7758C 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 0DBF0 80B77590 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 0DBF4 80B77594 24C6E660 */  addiu   $a2, $a2, 0xE660           ## $a2 = 8015E660
/* 0DBF8 80B77598 10400005 */  beq     $v0, $zero, .L80B775B0     
/* 0DBFC 80B7759C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0DC00 80B775A0 10480022 */  beq     $v0, $t0, .L80B7762C       
/* 0DC04 80B775A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DC08 80B775A8 10000328 */  beq     $zero, $zero, .L80B7824C   
/* 0DC0C 80B775AC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B775B0:
/* 0DC10 80B775B0 84CD0034 */  lh      $t5, 0x0034($a2)           ## 8015E694
/* 0DC14 80B775B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DC18 80B775B8 29A10014 */  slti    $at, $t5, 0x0014           
/* 0DC1C 80B775BC 14200015 */  bne     $at, $zero, .L80B77614     
/* 0DC20 80B775C0 00000000 */  nop
/* 0DC24 80B775C4 0C021CC3 */  jal     Rupees_ChangeBy              
/* 0DC28 80B775C8 2404FFEC */  addiu   $a0, $zero, 0xFFEC         ## $a0 = FFFFFFEC
/* 0DC2C 80B775CC 0C02A852 */  jal     func_800AA148              
/* 0DC30 80B775D0 00000000 */  nop
/* 0DC34 80B775D4 14400005 */  bne     $v0, $zero, .L80B775EC     
/* 0DC38 80B775D8 8FB90038 */  lw      $t9, 0x0038($sp)           
/* 0DC3C 80B775DC 8FAF0038 */  lw      $t7, 0x0038($sp)           
/* 0DC40 80B775E0 240E407C */  addiu   $t6, $zero, 0x407C         ## $t6 = 0000407C
/* 0DC44 80B775E4 10000003 */  beq     $zero, $zero, .L80B775F4   
/* 0DC48 80B775E8 A5EE010E */  sh      $t6, 0x010E($t7)           ## 0000010E
.L80B775EC:
/* 0DC4C 80B775EC 2418407D */  addiu   $t8, $zero, 0x407D         ## $t8 = 0000407D
/* 0DC50 80B775F0 A738010E */  sh      $t8, 0x010E($t9)           ## 0000010E
.L80B775F4:
/* 0DC54 80B775F4 8FA90038 */  lw      $t1, 0x0038($sp)           
/* 0DC58 80B775F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DC5C 80B775FC 0C042DC8 */  jal     func_8010B720              
/* 0DC60 80B77600 9525010E */  lhu     $a1, 0x010E($t1)           ## 0000010E
/* 0DC64 80B77604 8FAB0038 */  lw      $t3, 0x0038($sp)           
/* 0DC68 80B77608 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 0DC6C 80B7760C 1000030E */  beq     $zero, $zero, .L80B78248   
/* 0DC70 80B77610 A56A015C */  sh      $t2, 0x015C($t3)           ## 0000015C
.L80B77614:
/* 0DC74 80B77614 0C042DC8 */  jal     func_8010B720              
/* 0DC78 80B77618 2405407E */  addiu   $a1, $zero, 0x407E         ## $a1 = 0000407E
/* 0DC7C 80B7761C 8FAD0038 */  lw      $t5, 0x0038($sp)           
/* 0DC80 80B77620 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 0DC84 80B77624 10000308 */  beq     $zero, $zero, .L80B78248   
/* 0DC88 80B77628 A5AC015C */  sh      $t4, 0x015C($t5)           ## 0000015C
.L80B7762C:
/* 0DC8C 80B7762C 0C042DC8 */  jal     func_8010B720              
/* 0DC90 80B77630 2405002D */  addiu   $a1, $zero, 0x002D         ## $a1 = 0000002D
/* 0DC94 80B77634 8FAF0038 */  lw      $t7, 0x0038($sp)           
/* 0DC98 80B77638 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 0DC9C 80B7763C 10000302 */  beq     $zero, $zero, .L80B78248   
/* 0DCA0 80B77640 A5EE015C */  sh      $t6, 0x015C($t7)           ## 0000015C
glabel L80B77644
/* 0DCA4 80B77644 0C042F6F */  jal     func_8010BDBC              
/* 0DCA8 80B77648 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 0DCAC 80B7764C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0DCB0 80B77650 544102FE */  bnel    $v0, $at, .L80B7824C       
/* 0DCB4 80B77654 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0DCB8 80B77658 0C041AF2 */  jal     func_80106BC8              
/* 0DCBC 80B7765C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DCC0 80B77660 504002FA */  beql    $v0, $zero, .L80B7824C     
/* 0DCC4 80B77664 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0DCC8 80B77668 0C041B33 */  jal     func_80106CCC              
/* 0DCCC 80B7766C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DCD0 80B77670 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DCD4 80B77674 0C042DC8 */  jal     func_8010B720              
/* 0DCD8 80B77678 2405407F */  addiu   $a1, $zero, 0x407F         ## $a1 = 0000407F
/* 0DCDC 80B7767C 8FB90038 */  lw      $t9, 0x0038($sp)           
/* 0DCE0 80B77680 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 0DCE4 80B77684 100002F0 */  beq     $zero, $zero, .L80B78248   
/* 0DCE8 80B77688 A738015C */  sh      $t8, 0x015C($t9)           ## 0000015C
glabel L80B7768C
/* 0DCEC 80B7768C 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 0DCF0 80B77690 0C042F6F */  jal     func_8010BDBC              
/* 0DCF4 80B77694 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 0DCF8 80B77698 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0DCFC 80B7769C 14410009 */  bne     $v0, $at, .L80B776C4       
/* 0DD00 80B776A0 00000000 */  nop
/* 0DD04 80B776A4 0C041AF2 */  jal     func_80106BC8              
/* 0DD08 80B776A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DD0C 80B776AC 10400005 */  beq     $v0, $zero, .L80B776C4     
/* 0DD10 80B776B0 00000000 */  nop
/* 0DD14 80B776B4 0C041B33 */  jal     func_80106CCC              
/* 0DD18 80B776B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DD1C 80B776BC 8FA90038 */  lw      $t1, 0x0038($sp)           
/* 0DD20 80B776C0 A520015C */  sh      $zero, 0x015C($t1)         ## 0000015C
.L80B776C4:
/* 0DD24 80B776C4 0C042F6F */  jal     func_8010BDBC              
/* 0DD28 80B776C8 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 0DD2C 80B776CC 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 0DD30 80B776D0 144102DD */  bne     $v0, $at, .L80B78248       
/* 0DD34 80B776D4 8FAA0038 */  lw      $t2, 0x0038($sp)           
/* 0DD38 80B776D8 100002DB */  beq     $zero, $zero, .L80B78248   
/* 0DD3C 80B776DC A540015C */  sh      $zero, 0x015C($t2)         ## 0000015C
glabel L80B776E0
/* 0DD40 80B776E0 0C042F6F */  jal     func_8010BDBC              
/* 0DD44 80B776E4 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 0DD48 80B776E8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0DD4C 80B776EC 544102D7 */  bnel    $v0, $at, .L80B7824C       
/* 0DD50 80B776F0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0DD54 80B776F4 0C041AF2 */  jal     func_80106BC8              
/* 0DD58 80B776F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DD5C 80B776FC 504002D3 */  beql    $v0, $zero, .L80B7824C     
/* 0DD60 80B77700 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0DD64 80B77704 0C041B33 */  jal     func_80106CCC              
/* 0DD68 80B77708 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DD6C 80B7770C 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 0DD70 80B77710 00501021 */  addu    $v0, $v0, $s0              
/* 0DD74 80B77714 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 0DD78 80B77718 3C0780B8 */  lui     $a3, %hi(D_80B7E078)       ## $a3 = 80B80000
/* 0DD7C 80B7771C 24E7E078 */  addiu   $a3, $a3, %lo(D_80B7E078)  ## $a3 = 80B7E078
/* 0DD80 80B77720 10400006 */  beq     $v0, $zero, .L80B7773C     
/* 0DD84 80B77724 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 0DD88 80B77728 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0DD8C 80B7772C 1048002C */  beq     $v0, $t0, .L80B777E0       
/* 0DD90 80B77730 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DD94 80B77734 100002C5 */  beq     $zero, $zero, .L80B7824C   
/* 0DD98 80B77738 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B7773C:
/* 0DD9C 80B7773C 444BF800 */  cfc1    $t3, $31
/* 0DDA0 80B77740 44CCF800 */  ctc1    $t4, $31
/* 0DDA4 80B77744 C4E40000 */  lwc1    $f4, 0x0000($a3)           ## 80B7E078
/* 0DDA8 80B77748 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 0DDAC 80B7774C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DDB0 80B77750 460021A4 */  cvt.w.s $f6, $f4                   
/* 0DDB4 80B77754 24054080 */  addiu   $a1, $zero, 0x4080         ## $a1 = 00004080
/* 0DDB8 80B77758 444CF800 */  cfc1    $t4, $31
/* 0DDBC 80B7775C 00000000 */  nop
/* 0DDC0 80B77760 318C0078 */  andi    $t4, $t4, 0x0078           ## $t4 = 00000000
/* 0DDC4 80B77764 51800013 */  beql    $t4, $zero, .L80B777B4     
/* 0DDC8 80B77768 440C3000 */  mfc1    $t4, $f6                   
/* 0DDCC 80B7776C 44813000 */  mtc1    $at, $f6                   ## $f6 = 2147483648.00
/* 0DDD0 80B77770 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 0DDD4 80B77774 46062181 */  sub.s   $f6, $f4, $f6              
/* 0DDD8 80B77778 44CCF800 */  ctc1    $t4, $31
/* 0DDDC 80B7777C 00000000 */  nop
/* 0DDE0 80B77780 460031A4 */  cvt.w.s $f6, $f6                   
/* 0DDE4 80B77784 444CF800 */  cfc1    $t4, $31
/* 0DDE8 80B77788 00000000 */  nop
/* 0DDEC 80B7778C 318C0078 */  andi    $t4, $t4, 0x0078           ## $t4 = 00000000
/* 0DDF0 80B77790 15800005 */  bne     $t4, $zero, .L80B777A8     
/* 0DDF4 80B77794 00000000 */  nop
/* 0DDF8 80B77798 440C3000 */  mfc1    $t4, $f6                   
/* 0DDFC 80B7779C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0DE00 80B777A0 10000007 */  beq     $zero, $zero, .L80B777C0   
/* 0DE04 80B777A4 01816025 */  or      $t4, $t4, $at              ## $t4 = 80000000
.L80B777A8:
/* 0DE08 80B777A8 10000005 */  beq     $zero, $zero, .L80B777C0   
/* 0DE0C 80B777AC 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 0DE10 80B777B0 440C3000 */  mfc1    $t4, $f6                   
.L80B777B4:
/* 0DE14 80B777B4 00000000 */  nop
/* 0DE18 80B777B8 0580FFFB */  bltz    $t4, .L80B777A8            
/* 0DE1C 80B777BC 00000000 */  nop
.L80B777C0:
/* 0DE20 80B777C0 44CBF800 */  ctc1    $t3, $31
/* 0DE24 80B777C4 3C0180B8 */  lui     $at, %hi(D_80B7A678)       ## $at = 80B80000
/* 0DE28 80B777C8 0C042DC8 */  jal     func_8010B720              
/* 0DE2C 80B777CC A42CA678 */  sh      $t4, %lo(D_80B7A678)($at)  
/* 0DE30 80B777D0 8FAE0038 */  lw      $t6, 0x0038($sp)           
/* 0DE34 80B777D4 240D0005 */  addiu   $t5, $zero, 0x0005         ## $t5 = 00000005
/* 0DE38 80B777D8 1000029B */  beq     $zero, $zero, .L80B78248   
/* 0DE3C 80B777DC A5CD015C */  sh      $t5, 0x015C($t6)           ## 0000015C
.L80B777E0:
/* 0DE40 80B777E0 0C042DC8 */  jal     func_8010B720              
/* 0DE44 80B777E4 2405407F */  addiu   $a1, $zero, 0x407F         ## $a1 = 0000407F
/* 0DE48 80B777E8 10000298 */  beq     $zero, $zero, .L80B7824C   
/* 0DE4C 80B777EC 8FBF0024 */  lw      $ra, 0x0024($sp)           
glabel L80B777F0
/* 0DE50 80B777F0 0C042F6F */  jal     func_8010BDBC              
/* 0DE54 80B777F4 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 0DE58 80B777F8 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0DE5C 80B777FC 54410293 */  bnel    $v0, $at, .L80B7824C       
/* 0DE60 80B77800 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0DE64 80B77804 0C041AF2 */  jal     func_80106BC8              
/* 0DE68 80B77808 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DE6C 80B7780C 5040028F */  beql    $v0, $zero, .L80B7824C     
/* 0DE70 80B77810 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0DE74 80B77814 0C041B33 */  jal     func_80106CCC              
/* 0DE78 80B77818 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DE7C 80B7781C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0DE80 80B77820 00300821 */  addu    $at, $at, $s0              
/* 0DE84 80B77824 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0DE88 80B77828 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 0DE8C 80B7782C A02F0750 */  sb      $t7, 0x0750($at)           ## 00010750
/* 0DE90 80B77830 0330C821 */  addu    $t9, $t9, $s0              
/* 0DE94 80B77834 8F391D48 */  lw      $t9, 0x1D48($t9)           ## 00011D48
/* 0DE98 80B77838 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DE9C 80B7783C 0320F809 */  jalr    $ra, $t9                   
/* 0DEA0 80B77840 00000000 */  nop
/* 0DEA4 80B77844 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0DEA8 80B77848 3C0180B8 */  lui     $at, %hi(D_80B7E0AC)       ## $at = 80B80000
/* 0DEAC 80B7784C 8FA90038 */  lw      $t1, 0x0038($sp)           
/* 0DEB0 80B77850 A428E0AC */  sh      $t0, %lo(D_80B7E0AC)($at)  
/* 0DEB4 80B77854 3C0180B8 */  lui     $at, %hi(D_80B7A684)       ## $at = 80B80000
/* 0DEB8 80B77858 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 0DEBC 80B7785C 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 0DEC0 80B77860 A438A684 */  sh      $t8, %lo(D_80B7A684)($at)  
/* 0DEC4 80B77864 24C6E660 */  addiu   $a2, $a2, 0xE660           ## $a2 = 8015E660
/* 0DEC8 80B77868 A520015C */  sh      $zero, 0x015C($t1)         ## 0000015C
/* 0DECC 80B7786C 8CC30EC0 */  lw      $v1, 0x0EC0($a2)           ## 8015F520
/* 0DED0 80B77870 3C0400FF */  lui     $a0, 0x00FF                ## $a0 = 00FF0000
/* 0DED4 80B77874 00645024 */  and     $t2, $v1, $a0              
/* 0DED8 80B77878 0144082A */  slt     $at, $t2, $a0              
/* 0DEDC 80B7787C 10200272 */  beq     $at, $zero, .L80B78248     
/* 0DEE0 80B77880 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0DEE4 80B77884 00615821 */  addu    $t3, $v1, $at              
/* 0DEE8 80B77888 1000026F */  beq     $zero, $zero, .L80B78248   
/* 0DEEC 80B7788C ACCB0EC0 */  sw      $t3, 0x0EC0($a2)           ## 8015F520
glabel L80B77890
/* 0DEF0 80B77890 3C0C80B8 */  lui     $t4, %hi(D_80B7A68C)       ## $t4 = 80B80000
/* 0DEF4 80B77894 918CA68C */  lbu     $t4, %lo(D_80B7A68C)($t4)  
/* 0DEF8 80B77898 11800024 */  beq     $t4, $zero, .L80B7792C     
/* 0DEFC 80B7789C 00000000 */  nop
/* 0DF00 80B778A0 0C042F6F */  jal     func_8010BDBC              
/* 0DF04 80B778A4 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 0DF08 80B778A8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0DF0C 80B778AC 54410267 */  bnel    $v0, $at, .L80B7824C       
/* 0DF10 80B778B0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0DF14 80B778B4 0C041AF2 */  jal     func_80106BC8              
/* 0DF18 80B778B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DF1C 80B778BC 50400263 */  beql    $v0, $zero, .L80B7824C     
/* 0DF20 80B778C0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0DF24 80B778C4 0C041B33 */  jal     func_80106CCC              
/* 0DF28 80B778C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DF2C 80B778CC 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 0DF30 80B778D0 00501021 */  addu    $v0, $v0, $s0              
/* 0DF34 80B778D4 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 0DF38 80B778D8 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0DF3C 80B778DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DF40 80B778E0 10400005 */  beq     $v0, $zero, .L80B778F8     
/* 0DF44 80B778E4 00000000 */  nop
/* 0DF48 80B778E8 1048000E */  beq     $v0, $t0, .L80B77924       
/* 0DF4C 80B778EC 8FB90038 */  lw      $t9, 0x0038($sp)           
/* 0DF50 80B778F0 10000256 */  beq     $zero, $zero, .L80B7824C   
/* 0DF54 80B778F4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B778F8:
/* 0DF58 80B778F8 0C042DC8 */  jal     func_8010B720              
/* 0DF5C 80B778FC 240540B2 */  addiu   $a1, $zero, 0x40B2         ## $a1 = 000040B2
/* 0DF60 80B77900 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 0DF64 80B77904 3C0180B8 */  lui     $at, %hi(D_80B7A688)       ## $at = 80B80000
/* 0DF68 80B77908 A02DA688 */  sb      $t5, %lo(D_80B7A688)($at)  
/* 0DF6C 80B7790C 8FAF0038 */  lw      $t7, 0x0038($sp)           
/* 0DF70 80B77910 3C0180B8 */  lui     $at, %hi(D_80B7A68C)       ## $at = 80B80000
/* 0DF74 80B77914 A020A68C */  sb      $zero, %lo(D_80B7A68C)($at) 
/* 0DF78 80B77918 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 0DF7C 80B7791C 1000024A */  beq     $zero, $zero, .L80B78248   
/* 0DF80 80B77920 A5EE015C */  sh      $t6, 0x015C($t7)           ## 0000015C
.L80B77924:
/* 0DF84 80B77924 10000248 */  beq     $zero, $zero, .L80B78248   
/* 0DF88 80B77928 A720015C */  sh      $zero, 0x015C($t9)         ## 0000015C
.L80B7792C:
/* 0DF8C 80B7792C 0C042F6F */  jal     func_8010BDBC              
/* 0DF90 80B77930 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 0DF94 80B77934 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0DF98 80B77938 54410244 */  bnel    $v0, $at, .L80B7824C       
/* 0DF9C 80B7793C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0DFA0 80B77940 0C041AF2 */  jal     func_80106BC8              
/* 0DFA4 80B77944 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DFA8 80B77948 50400240 */  beql    $v0, $zero, .L80B7824C     
/* 0DFAC 80B7794C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0DFB0 80B77950 0C041B33 */  jal     func_80106CCC              
/* 0DFB4 80B77954 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DFB8 80B77958 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 0DFBC 80B7795C 00501021 */  addu    $v0, $v0, $s0              
/* 0DFC0 80B77960 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 0DFC4 80B77964 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0DFC8 80B77968 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0DFCC 80B7796C 10400007 */  beq     $v0, $zero, .L80B7798C     
/* 0DFD0 80B77970 00000000 */  nop
/* 0DFD4 80B77974 10480063 */  beq     $v0, $t0, .L80B77B04       
/* 0DFD8 80B77978 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0DFDC 80B7797C 104100AA */  beq     $v0, $at, .L80B77C28       
/* 0DFE0 80B77980 3C1980B8 */  lui     $t9, %hi(D_80B7E084)       ## $t9 = 80B80000
/* 0DFE4 80B77984 10000231 */  beq     $zero, $zero, .L80B7824C   
/* 0DFE8 80B77988 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B7798C:
/* 0DFEC 80B7798C 3C0280B8 */  lui     $v0, %hi(D_80B7A670)       ## $v0 = 80B80000
/* 0DFF0 80B77990 2442A670 */  addiu   $v0, $v0, %lo(D_80B7A670)  ## $v0 = 80B7A670
/* 0DFF4 80B77994 C4400000 */  lwc1    $f0, 0x0000($v0)           ## 80B7A670
/* 0DFF8 80B77998 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0DFFC 80B7799C 8FA20038 */  lw      $v0, 0x0038($sp)           
/* 0E000 80B779A0 2418408C */  addiu   $t8, $zero, 0x408C         ## $t8 = 0000408C
/* 0E004 80B779A4 46004032 */  c.eq.s  $f8, $f0                   
/* 0E008 80B779A8 24090014 */  addiu   $t1, $zero, 0x0014         ## $t1 = 00000014
/* 0E00C 80B779AC 3C0A80B8 */  lui     $t2, %hi(D_80B7E07C)       ## $t2 = 80B80000
/* 0E010 80B779B0 45000004 */  bc1f    .L80B779C4                 
/* 0E014 80B779B4 00000000 */  nop
/* 0E018 80B779B8 A458010E */  sh      $t8, 0x010E($v0)           ## 80B7A77E
/* 0E01C 80B779BC 1000004D */  beq     $zero, $zero, .L80B77AF4   
/* 0E020 80B779C0 A449015C */  sh      $t1, 0x015C($v0)           ## 80B7A7CC
.L80B779C4:
/* 0E024 80B779C4 914AE07C */  lbu     $t2, %lo(D_80B7E07C)($t2)  
/* 0E028 80B779C8 8FA20038 */  lw      $v0, 0x0038($sp)           
/* 0E02C 80B779CC 240C409B */  addiu   $t4, $zero, 0x409B         ## $t4 = 0000409B
/* 0E030 80B779D0 15400046 */  bne     $t2, $zero, .L80B77AEC     
/* 0E034 80B779D4 240D000B */  addiu   $t5, $zero, 0x000B         ## $t5 = 0000000B
/* 0E038 80B779D8 444BF800 */  cfc1    $t3, $31
/* 0E03C 80B779DC 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 0E040 80B779E0 44CCF800 */  ctc1    $t4, $31
/* 0E044 80B779E4 3C0780B8 */  lui     $a3, %hi(D_80B7E078)       ## $a3 = 80B80000
/* 0E048 80B779E8 24E7E078 */  addiu   $a3, $a3, %lo(D_80B7E078)  ## $a3 = 80B7E078
/* 0E04C 80B779EC 460002A4 */  cvt.w.s $f10, $f0                  
/* 0E050 80B779F0 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 0E054 80B779F4 444CF800 */  cfc1    $t4, $31
/* 0E058 80B779F8 00000000 */  nop
/* 0E05C 80B779FC 318C0078 */  andi    $t4, $t4, 0x0078           ## $t4 = 00000000
/* 0E060 80B77A00 51800013 */  beql    $t4, $zero, .L80B77A50     
/* 0E064 80B77A04 440C5000 */  mfc1    $t4, $f10                  
/* 0E068 80B77A08 44815000 */  mtc1    $at, $f10                  ## $f10 = 2147483648.00
/* 0E06C 80B77A0C 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 0E070 80B77A10 460A0281 */  sub.s   $f10, $f0, $f10            
/* 0E074 80B77A14 44CCF800 */  ctc1    $t4, $31
/* 0E078 80B77A18 00000000 */  nop
/* 0E07C 80B77A1C 460052A4 */  cvt.w.s $f10, $f10                 
/* 0E080 80B77A20 444CF800 */  cfc1    $t4, $31
/* 0E084 80B77A24 00000000 */  nop
/* 0E088 80B77A28 318C0078 */  andi    $t4, $t4, 0x0078           ## $t4 = 00000000
/* 0E08C 80B77A2C 15800005 */  bne     $t4, $zero, .L80B77A44     
/* 0E090 80B77A30 00000000 */  nop
/* 0E094 80B77A34 440C5000 */  mfc1    $t4, $f10                  
/* 0E098 80B77A38 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0E09C 80B77A3C 10000007 */  beq     $zero, $zero, .L80B77A5C   
/* 0E0A0 80B77A40 01816025 */  or      $t4, $t4, $at              ## $t4 = 80000000
.L80B77A44:
/* 0E0A4 80B77A44 10000005 */  beq     $zero, $zero, .L80B77A5C   
/* 0E0A8 80B77A48 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 0E0AC 80B77A4C 440C5000 */  mfc1    $t4, $f10                  
.L80B77A50:
/* 0E0B0 80B77A50 00000000 */  nop
/* 0E0B4 80B77A54 0580FFFB */  bltz    $t4, .L80B77A44            
/* 0E0B8 80B77A58 00000000 */  nop
.L80B77A5C:
/* 0E0BC 80B77A5C 3C0180B8 */  lui     $at, %hi(D_80B7A678)       ## $at = 80B80000
/* 0E0C0 80B77A60 44CBF800 */  ctc1    $t3, $31
/* 0E0C4 80B77A64 A42CA678 */  sh      $t4, %lo(D_80B7A678)($at)  
/* 0E0C8 80B77A68 C4F00000 */  lwc1    $f16, 0x0000($a3)          ## 80B7E078
/* 0E0CC 80B77A6C 4600010D */  trunc.w.s $f4, $f0                   
/* 0E0D0 80B77A70 3C0C80B8 */  lui     $t4, %hi(D_80B7E07E)       ## $t4 = 80B80000
/* 0E0D4 80B77A74 8FA20038 */  lw      $v0, 0x0038($sp)           
/* 0E0D8 80B77A78 4600848D */  trunc.w.s $f18, $f16                 
/* 0E0DC 80B77A7C 44092000 */  mfc1    $t1, $f4                   
/* 0E0E0 80B77A80 440E9000 */  mfc1    $t6, $f18                  
/* 0E0E4 80B77A84 00095400 */  sll     $t2, $t1, 16               
/* 0E0E8 80B77A88 000A5C03 */  sra     $t3, $t2, 16               
/* 0E0EC 80B77A8C 000E7C00 */  sll     $t7, $t6, 16               
/* 0E0F0 80B77A90 000FCC03 */  sra     $t9, $t7, 16               
/* 0E0F4 80B77A94 032B082A */  slt     $at, $t9, $t3              
/* 0E0F8 80B77A98 1020000F */  beq     $at, $zero, .L80B77AD8     
/* 0E0FC 80B77A9C 2419408B */  addiu   $t9, $zero, 0x408B         ## $t9 = 0000408B
/* 0E100 80B77AA0 918CE07E */  lbu     $t4, %lo(D_80B7E07E)($t4)  
/* 0E104 80B77AA4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0E108 80B77AA8 8FAE0038 */  lw      $t6, 0x0038($sp)           
/* 0E10C 80B77AAC 15810004 */  bne     $t4, $at, .L80B77AC0       
/* 0E110 80B77AB0 8FB80038 */  lw      $t8, 0x0038($sp)           
/* 0E114 80B77AB4 240D40B0 */  addiu   $t5, $zero, 0x40B0         ## $t5 = 000040B0
/* 0E118 80B77AB8 10000003 */  beq     $zero, $zero, .L80B77AC8   
/* 0E11C 80B77ABC A5CD010E */  sh      $t5, 0x010E($t6)           ## 0000010E
.L80B77AC0:
/* 0E120 80B77AC0 240F4086 */  addiu   $t7, $zero, 0x4086         ## $t7 = 00004086
/* 0E124 80B77AC4 A70F010E */  sh      $t7, 0x010E($t8)           ## 0000419A
.L80B77AC8:
/* 0E128 80B77AC8 8FAA0038 */  lw      $t2, 0x0038($sp)           
/* 0E12C 80B77ACC 2409000B */  addiu   $t1, $zero, 0x000B         ## $t1 = 0000000B
/* 0E130 80B77AD0 10000004 */  beq     $zero, $zero, .L80B77AE4   
/* 0E134 80B77AD4 A549015C */  sh      $t1, 0x015C($t2)           ## 80B8015C
.L80B77AD8:
/* 0E138 80B77AD8 240B0014 */  addiu   $t3, $zero, 0x0014         ## $t3 = 00000014
/* 0E13C 80B77ADC A459010E */  sh      $t9, 0x010E($v0)           ## 80B7A77E
/* 0E140 80B77AE0 A44B015C */  sh      $t3, 0x015C($v0)           ## 80B7A7CC
.L80B77AE4:
/* 0E144 80B77AE4 10000003 */  beq     $zero, $zero, .L80B77AF4   
/* 0E148 80B77AE8 8FA20038 */  lw      $v0, 0x0038($sp)           
.L80B77AEC:
/* 0E14C 80B77AEC A44C010E */  sh      $t4, 0x010E($v0)           ## 80B7A77E
/* 0E150 80B77AF0 A44D015C */  sh      $t5, 0x015C($v0)           ## 80B7A7CC
.L80B77AF4:
/* 0E154 80B77AF4 0C042DC8 */  jal     func_8010B720              
/* 0E158 80B77AF8 9445010E */  lhu     $a1, 0x010E($v0)           ## 80B7A77E
/* 0E15C 80B77AFC 100001D3 */  beq     $zero, $zero, .L80B7824C   
/* 0E160 80B77B00 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B77B04:
/* 0E164 80B77B04 3C0280B8 */  lui     $v0, %hi(D_80B7A680)       ## $v0 = 80B80000
/* 0E168 80B77B08 2442A680 */  addiu   $v0, $v0, %lo(D_80B7A680)  ## $v0 = 80B7A680
/* 0E16C 80B77B0C 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 80B7A680
/* 0E170 80B77B10 34018CA1 */  ori     $at, $zero, 0x8CA1         ## $at = 00008CA1
/* 0E174 80B77B14 3C1880B8 */  lui     $t8, %hi(D_80B7E076)       ## $t8 = 80B80000
/* 0E178 80B77B18 01C1082A */  slt     $at, $t6, $at              
/* 0E17C 80B77B1C 14200008 */  bne     $at, $zero, .L80B77B40     
/* 0E180 80B77B20 3C0A80B8 */  lui     $t2, %hi(D_80B7E0B6)       ## $t2 = 80B80000
/* 0E184 80B77B24 240F7530 */  addiu   $t7, $zero, 0x7530         ## $t7 = 00007530
/* 0E188 80B77B28 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 80B7A680
/* 0E18C 80B77B2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0E190 80B77B30 0C042DC8 */  jal     func_8010B720              
/* 0E194 80B77B34 24054088 */  addiu   $a1, $zero, 0x4088         ## $a1 = 00004088
/* 0E198 80B77B38 10000039 */  beq     $zero, $zero, .L80B77C20   
/* 0E19C 80B77B3C 8FAA0038 */  lw      $t2, 0x0038($sp)           
.L80B77B40:
/* 0E1A0 80B77B40 9318E076 */  lbu     $t8, %lo(D_80B7E076)($t8)  
/* 0E1A4 80B77B44 3C0380B8 */  lui     $v1, %hi(D_80B7E082)       ## $v1 = 80B80000
/* 0E1A8 80B77B48 2463E082 */  addiu   $v1, $v1, %lo(D_80B7E082)  ## $v1 = 80B7E082
/* 0E1AC 80B77B4C 17000005 */  bne     $t8, $zero, .L80B77B64     
/* 0E1B0 80B77B50 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0E1B4 80B77B54 90620000 */  lbu     $v0, 0x0000($v1)           ## 80B7E082
/* 0E1B8 80B77B58 14400002 */  bne     $v0, $zero, .L80B77B64     
/* 0E1BC 80B77B5C 24490001 */  addiu   $t1, $v0, 0x0001           ## $t1 = 00000001
/* 0E1C0 80B77B60 A0690000 */  sb      $t1, 0x0000($v1)           ## 80B7E082
.L80B77B64:
/* 0E1C4 80B77B64 914AE0B6 */  lbu     $t2, %lo(D_80B7E0B6)($t2)  
/* 0E1C8 80B77B68 3C0380B8 */  lui     $v1, %hi(D_80B7E082)       ## $v1 = 80B80000
/* 0E1CC 80B77B6C 2463E082 */  addiu   $v1, $v1, %lo(D_80B7E082)  ## $v1 = 80B7E082
/* 0E1D0 80B77B70 1541000F */  bne     $t2, $at, .L80B77BB0       
/* 0E1D4 80B77B74 90620000 */  lbu     $v0, 0x0000($v1)           ## 80B7E082
/* 0E1D8 80B77B78 0002C840 */  sll     $t9, $v0,  1               
/* 0E1DC 80B77B7C 3C0B80B8 */  lui     $t3, %hi(D_80B7AFB8)       ## $t3 = 80B80000
/* 0E1E0 80B77B80 01795821 */  addu    $t3, $t3, $t9              
/* 0E1E4 80B77B84 956BAFB8 */  lhu     $t3, %lo(D_80B7AFB8)($t3)  
/* 0E1E8 80B77B88 2401408D */  addiu   $at, $zero, 0x408D         ## $at = 0000408D
/* 0E1EC 80B77B8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0E1F0 80B77B90 55610008 */  bnel    $t3, $at, .L80B77BB4       
/* 0E1F4 80B77B94 00026040 */  sll     $t4, $v0,  1               
/* 0E1F8 80B77B98 0C042DC8 */  jal     func_8010B720              
/* 0E1FC 80B77B9C 240540AF */  addiu   $a1, $zero, 0x40AF         ## $a1 = 000040AF
/* 0E200 80B77BA0 3C0380B8 */  lui     $v1, %hi(D_80B7E082)       ## $v1 = 80B80000
/* 0E204 80B77BA4 2463E082 */  addiu   $v1, $v1, %lo(D_80B7E082)  ## $v1 = 80B7E082
/* 0E208 80B77BA8 1000000A */  beq     $zero, $zero, .L80B77BD4   
/* 0E20C 80B77BAC 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
.L80B77BB0:
/* 0E210 80B77BB0 00026040 */  sll     $t4, $v0,  1               
.L80B77BB4:
/* 0E214 80B77BB4 3C0580B8 */  lui     $a1, %hi(D_80B7AFB8)       ## $a1 = 80B80000
/* 0E218 80B77BB8 00AC2821 */  addu    $a1, $a1, $t4              
/* 0E21C 80B77BBC 94A5AFB8 */  lhu     $a1, %lo(D_80B7AFB8)($a1)  
/* 0E220 80B77BC0 0C042DC8 */  jal     func_8010B720              
/* 0E224 80B77BC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0E228 80B77BC8 3C0380B8 */  lui     $v1, %hi(D_80B7E082)       ## $v1 = 80B80000
/* 0E22C 80B77BCC 2463E082 */  addiu   $v1, $v1, %lo(D_80B7E082)  ## $v1 = 80B7E082
/* 0E230 80B77BD0 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
.L80B77BD4:
/* 0E234 80B77BD4 906D0000 */  lbu     $t5, 0x0000($v1)           ## 80B7E082
/* 0E238 80B77BD8 3C0F80B8 */  lui     $t7, %hi(D_80B7E075)       ## $t7 = 80B80000
/* 0E23C 80B77BDC 25AE0001 */  addiu   $t6, $t5, 0x0001           ## $t6 = 00000001
/* 0E240 80B77BE0 A06E0000 */  sb      $t6, 0x0000($v1)           ## 80B7E082
/* 0E244 80B77BE4 91EFE075 */  lbu     $t7, %lo(D_80B7E075)($t7)  
/* 0E248 80B77BE8 31D800FF */  andi    $t8, $t6, 0x00FF           ## $t8 = 00000001
/* 0E24C 80B77BEC 2B010006 */  slti    $at, $t8, 0x0006           
/* 0E250 80B77BF0 510F0006 */  beql    $t0, $t7, .L80B77C0C       
/* 0E254 80B77BF4 90690000 */  lbu     $t1, 0x0000($v1)           ## 80B7E082
/* 0E258 80B77BF8 54200009 */  bnel    $at, $zero, .L80B77C20     
/* 0E25C 80B77BFC 8FAA0038 */  lw      $t2, 0x0038($sp)           
/* 0E260 80B77C00 10000006 */  beq     $zero, $zero, .L80B77C1C   
/* 0E264 80B77C04 A0600000 */  sb      $zero, 0x0000($v1)         ## 80B7E082
/* 0E268 80B77C08 90690000 */  lbu     $t1, 0x0000($v1)           ## 80B7E082
.L80B77C0C:
/* 0E26C 80B77C0C 29210004 */  slti    $at, $t1, 0x0004           
/* 0E270 80B77C10 54200003 */  bnel    $at, $zero, .L80B77C20     
/* 0E274 80B77C14 8FAA0038 */  lw      $t2, 0x0038($sp)           
/* 0E278 80B77C18 A0600000 */  sb      $zero, 0x0000($v1)         ## 80B7E082
.L80B77C1C:
/* 0E27C 80B77C1C 8FAA0038 */  lw      $t2, 0x0038($sp)           
.L80B77C20:
/* 0E280 80B77C20 10000189 */  beq     $zero, $zero, .L80B78248   
/* 0E284 80B77C24 A540015C */  sh      $zero, 0x015C($t2)         ## 0000015C
.L80B77C28:
/* 0E288 80B77C28 9739E084 */  lhu     $t9, %lo(D_80B7E084)($t9)  
/* 0E28C 80B77C2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0E290 80B77C30 3C0B80B8 */  lui     $t3, %hi(D_80B7E075)       ## $t3 = 80B80000
/* 0E294 80B77C34 17200005 */  bne     $t9, $zero, .L80B77C4C     
/* 0E298 80B77C38 00000000 */  nop
/* 0E29C 80B77C3C 0C042DC8 */  jal     func_8010B720              
/* 0E2A0 80B77C40 24054085 */  addiu   $a1, $zero, 0x4085         ## $a1 = 00004085
/* 0E2A4 80B77C44 10000008 */  beq     $zero, $zero, .L80B77C68   
/* 0E2A8 80B77C48 8FAD0038 */  lw      $t5, 0x0038($sp)           
.L80B77C4C:
/* 0E2AC 80B77C4C 916BE075 */  lbu     $t3, %lo(D_80B7E075)($t3)  
/* 0E2B0 80B77C50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0E2B4 80B77C54 550B0004 */  bnel    $t0, $t3, .L80B77C68       
/* 0E2B8 80B77C58 8FAD0038 */  lw      $t5, 0x0038($sp)           
/* 0E2BC 80B77C5C 0C042DC8 */  jal     func_8010B720              
/* 0E2C0 80B77C60 24054092 */  addiu   $a1, $zero, 0x4092         ## $a1 = 00004092
/* 0E2C4 80B77C64 8FAD0038 */  lw      $t5, 0x0038($sp)           
.L80B77C68:
/* 0E2C8 80B77C68 240C0016 */  addiu   $t4, $zero, 0x0016         ## $t4 = 00000016
/* 0E2CC 80B77C6C 10000176 */  beq     $zero, $zero, .L80B78248   
/* 0E2D0 80B77C70 A5AC015C */  sh      $t4, 0x015C($t5)           ## 0000015C
glabel L80B77C74
/* 0E2D4 80B77C74 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 0E2D8 80B77C78 0C042F6F */  jal     func_8010BDBC              
/* 0E2DC 80B77C7C AFA40028 */  sw      $a0, 0x0028($sp)           
/* 0E2E0 80B77C80 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0E2E4 80B77C84 10410005 */  beq     $v0, $at, .L80B77C9C       
/* 0E2E8 80B77C88 00000000 */  nop
/* 0E2EC 80B77C8C 0C042F6F */  jal     func_8010BDBC              
/* 0E2F0 80B77C90 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 0E2F4 80B77C94 5440016D */  bnel    $v0, $zero, .L80B7824C     
/* 0E2F8 80B77C98 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B77C9C:
/* 0E2FC 80B77C9C 0C041AF2 */  jal     func_80106BC8              
/* 0E300 80B77CA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0E304 80B77CA4 50400169 */  beql    $v0, $zero, .L80B7824C     
/* 0E308 80B77CA8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0E30C 80B77CAC 0C041B33 */  jal     func_80106CCC              
/* 0E310 80B77CB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0E314 80B77CB4 3C0E80B8 */  lui     $t6, %hi(D_80B7E07C)       ## $t6 = 80B80000
/* 0E318 80B77CB8 91CEE07C */  lbu     $t6, %lo(D_80B7E07C)($t6)  
/* 0E31C 80B77CBC 3C0280B8 */  lui     $v0, %hi(D_80B7A670)       ## $v0 = 80B80000
/* 0E320 80B77CC0 3C0780B8 */  lui     $a3, %hi(D_80B7E078)       ## $a3 = 80B80000
/* 0E324 80B77CC4 15C000D7 */  bne     $t6, $zero, .L80B78024     
/* 0E328 80B77CC8 2442A670 */  addiu   $v0, $v0, %lo(D_80B7A670)  ## $v0 = 80B7A670
/* 0E32C 80B77CCC 3C0280B8 */  lui     $v0, %hi(D_80B7A670)       ## $v0 = 80B80000
/* 0E330 80B77CD0 2442A670 */  addiu   $v0, $v0, %lo(D_80B7A670)  ## $v0 = 80B7A670
/* 0E334 80B77CD4 C4460000 */  lwc1    $f6, 0x0000($v0)           ## 80B7A670
/* 0E338 80B77CD8 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 0E33C 80B77CDC 24E7E078 */  addiu   $a3, $a3, %lo(D_80B7E078)  ## $a3 = 80B7E078
/* 0E340 80B77CE0 3C0480B8 */  lui     $a0, %hi(D_80B7E075)       ## $a0 = 80B80000
/* 0E344 80B77CE4 E4E60000 */  swc1    $f6, 0x0000($a3)           ## 80B7E078
/* 0E348 80B77CE8 E4480000 */  swc1    $f8, 0x0000($v0)           ## 80B7A670
/* 0E34C 80B77CEC 9084E075 */  lbu     $a0, %lo(D_80B7E075)($a0)  
/* 0E350 80B77CF0 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0E354 80B77CF4 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 0E358 80B77CF8 5504002F */  bnel    $t0, $a0, .L80B77DB8       
/* 0E35C 80B77CFC C4E00000 */  lwc1    $f0, 0x0000($a3)           ## 80B7E078
/* 0E360 80B77D00 C4E00000 */  lwc1    $f0, 0x0000($a3)           ## 80B7E078
/* 0E364 80B77D04 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 0E368 80B77D08 24C6E660 */  addiu   $a2, $a2, 0xE660           ## $a2 = 8015E660
/* 0E36C 80B77D0C 4600028D */  trunc.w.s $f10, $f0                  
/* 0E370 80B77D10 8CCF0EC0 */  lw      $t7, 0x0EC0($a2)           ## 8015F520
/* 0E374 80B77D14 2401FF00 */  addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
/* 0E378 80B77D18 3C0980B8 */  lui     $t1, %hi(D_80B7E07E)       ## $t1 = 80B80000
/* 0E37C 80B77D1C 44025000 */  mfc1    $v0, $f10                  
/* 0E380 80B77D20 01E1C024 */  and     $t8, $t7, $at              
/* 0E384 80B77D24 3C017F00 */  lui     $at, 0x7F00                ## $at = 7F000000
/* 0E388 80B77D28 3042007F */  andi    $v0, $v0, 0x007F           ## $v0 = 00000070
/* 0E38C 80B77D2C 0302C825 */  or      $t9, $t8, $v0              ## $t9 = 00000070
/* 0E390 80B77D30 03215824 */  and     $t3, $t9, $at              
/* 0E394 80B77D34 000B6603 */  sra     $t4, $t3, 24               
/* 0E398 80B77D38 448C8000 */  mtc1    $t4, $f16                  ## $f16 = 0.00
/* 0E39C 80B77D3C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 0E3A0 80B77D40 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0E3A4 80B77D44 468080A0 */  cvt.s.w $f2, $f16                  
/* 0E3A8 80B77D48 ACD80EC0 */  sw      $t8, 0x0EC0($a2)           ## 8015F520
/* 0E3AC 80B77D4C 03216824 */  and     $t5, $t9, $at              
/* 0E3B0 80B77D50 00027E00 */  sll     $t7, $v0, 24               
/* 0E3B4 80B77D54 ACD90EC0 */  sw      $t9, 0x0EC0($a2)           ## 8015F520
/* 0E3B8 80B77D58 01AFC025 */  or      $t8, $t5, $t7              ## $t8 = 00000000
/* 0E3BC 80B77D5C 4600103C */  c.lt.s  $f2, $f0                   
/* 0E3C0 80B77D60 3C0B80B8 */  lui     $t3, %hi(D_80B7E07E)       ## $t3 = 80B80000
/* 0E3C4 80B77D64 45000009 */  bc1f    .L80B77D8C                 
/* 0E3C8 80B77D68 00000000 */  nop
/* 0E3CC 80B77D6C ACCD0EC0 */  sw      $t5, 0x0EC0($a2)           ## 8015F520
/* 0E3D0 80B77D70 ACD80EC0 */  sw      $t8, 0x0EC0($a2)           ## 8015F520
/* 0E3D4 80B77D74 9129E07E */  lbu     $t1, %lo(D_80B7E07E)($t1)  
/* 0E3D8 80B77D78 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0E3DC 80B77D7C 15210003 */  bne     $t1, $at, .L80B77D8C       
/* 0E3E0 80B77D80 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0E3E4 80B77D84 0301C825 */  or      $t9, $t8, $at              ## $t9 = 80000000
/* 0E3E8 80B77D88 ACD90EC0 */  sw      $t9, 0x0EC0($a2)           ## 8015F520
.L80B77D8C:
/* 0E3EC 80B77D8C 916BE07E */  lbu     $t3, %lo(D_80B7E07E)($t3)  
/* 0E3F0 80B77D90 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0E3F4 80B77D94 5561001F */  bnel    $t3, $at, .L80B77E14       
/* 0E3F8 80B77D98 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 0E3FC 80B77D9C 8CCC0EC0 */  lw      $t4, 0x0EC0($a2)           ## 8015F520
/* 0E400 80B77DA0 8FAE0038 */  lw      $t6, 0x0038($sp)           
/* 0E404 80B77DA4 358D0080 */  ori     $t5, $t4, 0x0080           ## $t5 = 00000080
/* 0E408 80B77DA8 ACCD0EC0 */  sw      $t5, 0x0EC0($a2)           ## 8015F520
/* 0E40C 80B77DAC 10000126 */  beq     $zero, $zero, .L80B78248   
/* 0E410 80B77DB0 A5C0015C */  sh      $zero, 0x015C($t6)         ## 80B8015C
/* 0E414 80B77DB4 C4E00000 */  lwc1    $f0, 0x0000($a3)           ## 80B7E078
.L80B77DB8:
/* 0E418 80B77DB8 24C6E660 */  addiu   $a2, $a2, 0xE660           ## $a2 = 8015CCC0
/* 0E41C 80B77DBC 8CCF0EC0 */  lw      $t7, 0x0EC0($a2)           ## 8015DB80
/* 0E420 80B77DC0 4600048D */  trunc.w.s $f18, $f0                  
/* 0E424 80B77DC4 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 0E428 80B77DC8 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0E42C 80B77DCC 01E1C024 */  and     $t8, $t7, $at              
/* 0E430 80B77DD0 44199000 */  mfc1    $t9, $f18                  
/* 0E434 80B77DD4 ACD80EC0 */  sw      $t8, 0x0EC0($a2)           ## 8015DB80
/* 0E438 80B77DD8 3C0E80B8 */  lui     $t6, %hi(D_80B7E07E)       ## $t6 = 80B80000
/* 0E43C 80B77DDC 332B007F */  andi    $t3, $t9, 0x007F           ## $t3 = 00000000
/* 0E440 80B77DE0 000B6600 */  sll     $t4, $t3, 24               
/* 0E444 80B77DE4 030C6825 */  or      $t5, $t8, $t4              ## $t5 = 00000000
/* 0E448 80B77DE8 ACCD0EC0 */  sw      $t5, 0x0EC0($a2)           ## 8015DB80
/* 0E44C 80B77DEC 91CEE07E */  lbu     $t6, %lo(D_80B7E07E)($t6)  
/* 0E450 80B77DF0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0E454 80B77DF4 15C10006 */  bne     $t6, $at, .L80B77E10       
/* 0E458 80B77DF8 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0E45C 80B77DFC 8FAA0038 */  lw      $t2, 0x0038($sp)           
/* 0E460 80B77E00 01A1C025 */  or      $t8, $t5, $at              ## $t8 = 80000000
/* 0E464 80B77E04 ACD80EC0 */  sw      $t8, 0x0EC0($a2)           ## 8015DB80
/* 0E468 80B77E08 1000010F */  beq     $zero, $zero, .L80B78248   
/* 0E46C 80B77E0C A540015C */  sh      $zero, 0x015C($t2)         ## 0000015C
.L80B77E10:
/* 0E470 80B77E10 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
.L80B77E14:
/* 0E474 80B77E14 44811000 */  mtc1    $at, $f2                   ## $f2 = 60.00
/* 0E478 80B77E18 24190055 */  addiu   $t9, $zero, 0x0055         ## $t9 = 00000055
/* 0E47C 80B77E1C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 0E480 80B77E20 4600103E */  c.le.s  $f2, $f0                   
/* 0E484 80B77E24 00000000 */  nop
/* 0E488 80B77E28 45020004 */  bc1fl   .L80B77E3C                 
/* 0E48C 80B77E2C 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 0E490 80B77E30 10000014 */  beq     $zero, $zero, .L80B77E84   
/* 0E494 80B77E34 AFB90034 */  sw      $t9, 0x0034($sp)           
/* 0E498 80B77E38 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
.L80B77E3C:
/* 0E49C 80B77E3C 240B004E */  addiu   $t3, $zero, 0x004E         ## $t3 = 0000004E
/* 0E4A0 80B77E40 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 0E4A4 80B77E44 4600203E */  c.le.s  $f4, $f0                   
/* 0E4A8 80B77E48 00000000 */  nop
/* 0E4AC 80B77E4C 45020004 */  bc1fl   .L80B77E60                 
/* 0E4B0 80B77E50 44813000 */  mtc1    $at, $f6                   ## $f6 = 40.00
/* 0E4B4 80B77E54 1000000B */  beq     $zero, $zero, .L80B77E84   
/* 0E4B8 80B77E58 AFAB0034 */  sw      $t3, 0x0034($sp)           
/* 0E4BC 80B77E5C 44813000 */  mtc1    $at, $f6                   ## $f6 = 40.00
.L80B77E60:
/* 0E4C0 80B77E60 2409004D */  addiu   $t1, $zero, 0x004D         ## $t1 = 0000004D
/* 0E4C4 80B77E64 240C004C */  addiu   $t4, $zero, 0x004C         ## $t4 = 0000004C
/* 0E4C8 80B77E68 4600303E */  c.le.s  $f6, $f0                   
/* 0E4CC 80B77E6C 00000000 */  nop
/* 0E4D0 80B77E70 45020004 */  bc1fl   .L80B77E84                 
/* 0E4D4 80B77E74 AFAC0034 */  sw      $t4, 0x0034($sp)           
/* 0E4D8 80B77E78 10000002 */  beq     $zero, $zero, .L80B77E84   
/* 0E4DC 80B77E7C AFA90034 */  sw      $t1, 0x0034($sp)           
/* 0E4E0 80B77E80 AFAC0034 */  sw      $t4, 0x0034($sp)           
.L80B77E84:
/* 0E4E4 80B77E84 15040035 */  bne     $t0, $a0, .L80B77F5C       
/* 0E4E8 80B77E88 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 0E4EC 80B77E8C 44814000 */  mtc1    $at, $f8                   ## $f8 = 50.00
/* 0E4F0 80B77E90 00000000 */  nop
/* 0E4F4 80B77E94 4600403E */  c.le.s  $f8, $f0                   
/* 0E4F8 80B77E98 00000000 */  nop
/* 0E4FC 80B77E9C 45020066 */  bc1fl   .L80B78038                 
/* 0E500 80B77EA0 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 0E504 80B77EA4 8CC30EC0 */  lw      $v1, 0x0EC0($a2)           ## 8015DB80
/* 0E508 80B77EA8 240F003E */  addiu   $t7, $zero, 0x003E         ## $t7 = 0000003E
/* 0E50C 80B77EAC 3C0180B8 */  lui     $at, %hi(D_80B7B824)       ## $at = 80B80000
/* 0E510 80B77EB0 306D0400 */  andi    $t5, $v1, 0x0400           ## $t5 = 00000000
/* 0E514 80B77EB4 15A0005F */  bne     $t5, $zero, .L80B78034     
/* 0E518 80B77EB8 346E0400 */  ori     $t6, $v1, 0x0400           ## $t6 = 00000400
/* 0E51C 80B77EBC ACCE0EC0 */  sw      $t6, 0x0EC0($a2)           ## 8015DB80
/* 0E520 80B77EC0 AFAF0034 */  sw      $t7, 0x0034($sp)           
/* 0E524 80B77EC4 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0E528 80B77EC8 C42CB824 */  lwc1    $f12, %lo(D_80B7B824)($at) 
/* 0E52C 80B77ECC 4458F800 */  cfc1    $t8, $31
/* 0E530 80B77ED0 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 0E534 80B77ED4 44CAF800 */  ctc1    $t2, $31
/* 0E538 80B77ED8 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 0E53C 80B77EDC 460002A4 */  cvt.w.s $f10, $f0                  
/* 0E540 80B77EE0 444AF800 */  cfc1    $t2, $31
/* 0E544 80B77EE4 00000000 */  nop
/* 0E548 80B77EE8 314A0078 */  andi    $t2, $t2, 0x0078           ## $t2 = 00000000
/* 0E54C 80B77EEC 51400013 */  beql    $t2, $zero, .L80B77F3C     
/* 0E550 80B77EF0 440A5000 */  mfc1    $t2, $f10                  
/* 0E554 80B77EF4 44815000 */  mtc1    $at, $f10                  ## $f10 = 2147483648.00
/* 0E558 80B77EF8 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 0E55C 80B77EFC 460A0281 */  sub.s   $f10, $f0, $f10            
/* 0E560 80B77F00 44CAF800 */  ctc1    $t2, $31
/* 0E564 80B77F04 00000000 */  nop
/* 0E568 80B77F08 460052A4 */  cvt.w.s $f10, $f10                 
/* 0E56C 80B77F0C 444AF800 */  cfc1    $t2, $31
/* 0E570 80B77F10 00000000 */  nop
/* 0E574 80B77F14 314A0078 */  andi    $t2, $t2, 0x0078           ## $t2 = 00000000
/* 0E578 80B77F18 15400005 */  bne     $t2, $zero, .L80B77F30     
/* 0E57C 80B77F1C 00000000 */  nop
/* 0E580 80B77F20 440A5000 */  mfc1    $t2, $f10                  
/* 0E584 80B77F24 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0E588 80B77F28 10000007 */  beq     $zero, $zero, .L80B77F48   
/* 0E58C 80B77F2C 01415025 */  or      $t2, $t2, $at              ## $t2 = 80000000
.L80B77F30:
/* 0E590 80B77F30 10000005 */  beq     $zero, $zero, .L80B77F48   
/* 0E594 80B77F34 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 0E598 80B77F38 440A5000 */  mfc1    $t2, $f10                  
.L80B77F3C:
/* 0E59C 80B77F3C 00000000 */  nop
/* 0E5A0 80B77F40 0540FFFB */  bltz    $t2, .L80B77F30            
/* 0E5A4 80B77F44 00000000 */  nop
.L80B77F48:
/* 0E5A8 80B77F48 44D8F800 */  ctc1    $t8, $31
/* 0E5AC 80B77F4C 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000000
/* 0E5B0 80B77F50 3C0180B8 */  lui     $at, %hi(D_80B7A66C)       ## $at = 80B80000
/* 0E5B4 80B77F54 10000037 */  beq     $zero, $zero, .L80B78034   
/* 0E5B8 80B77F58 A02BA66C */  sb      $t3, %lo(D_80B7A66C)($at)  
.L80B77F5C:
/* 0E5BC 80B77F5C 4600103E */  c.le.s  $f2, $f0                   
/* 0E5C0 80B77F60 00000000 */  nop
/* 0E5C4 80B77F64 45020034 */  bc1fl   .L80B78038                 
/* 0E5C8 80B77F68 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 0E5CC 80B77F6C 8CC30EC0 */  lw      $v1, 0x0EC0($a2)           ## 00000EC0
/* 0E5D0 80B77F70 240D0038 */  addiu   $t5, $zero, 0x0038         ## $t5 = 00000038
/* 0E5D4 80B77F74 3C0180B8 */  lui     $at, %hi(D_80B7B828)       ## $at = 80B80000
/* 0E5D8 80B77F78 30690800 */  andi    $t1, $v1, 0x0800           ## $t1 = 00000000
/* 0E5DC 80B77F7C 1520002D */  bne     $t1, $zero, .L80B78034     
/* 0E5E0 80B77F80 346C0800 */  ori     $t4, $v1, 0x0800           ## $t4 = 00000800
/* 0E5E4 80B77F84 ACCC0EC0 */  sw      $t4, 0x0EC0($a2)           ## 00000EC0
/* 0E5E8 80B77F88 AFAD0034 */  sw      $t5, 0x0034($sp)           
/* 0E5EC 80B77F8C 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0E5F0 80B77F90 C42CB828 */  lwc1    $f12, %lo(D_80B7B828)($at) 
/* 0E5F4 80B77F94 444EF800 */  cfc1    $t6, $31
/* 0E5F8 80B77F98 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0E5FC 80B77F9C 44CFF800 */  ctc1    $t7, $31
/* 0E600 80B77FA0 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 0E604 80B77FA4 46000424 */  cvt.w.s $f16, $f0                  
/* 0E608 80B77FA8 444FF800 */  cfc1    $t7, $31
/* 0E60C 80B77FAC 00000000 */  nop
/* 0E610 80B77FB0 31EF0078 */  andi    $t7, $t7, 0x0078           ## $t7 = 00000000
/* 0E614 80B77FB4 51E00013 */  beql    $t7, $zero, .L80B78004     
/* 0E618 80B77FB8 440F8000 */  mfc1    $t7, $f16                  
/* 0E61C 80B77FBC 44818000 */  mtc1    $at, $f16                  ## $f16 = 2147483648.00
/* 0E620 80B77FC0 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 0E624 80B77FC4 46100401 */  sub.s   $f16, $f0, $f16            
/* 0E628 80B77FC8 44CFF800 */  ctc1    $t7, $31
/* 0E62C 80B77FCC 00000000 */  nop
/* 0E630 80B77FD0 46008424 */  cvt.w.s $f16, $f16                 
/* 0E634 80B77FD4 444FF800 */  cfc1    $t7, $31
/* 0E638 80B77FD8 00000000 */  nop
/* 0E63C 80B77FDC 31EF0078 */  andi    $t7, $t7, 0x0078           ## $t7 = 00000000
/* 0E640 80B77FE0 15E00005 */  bne     $t7, $zero, .L80B77FF8     
/* 0E644 80B77FE4 00000000 */  nop
/* 0E648 80B77FE8 440F8000 */  mfc1    $t7, $f16                  
/* 0E64C 80B77FEC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0E650 80B77FF0 10000007 */  beq     $zero, $zero, .L80B78010   
/* 0E654 80B77FF4 01E17825 */  or      $t7, $t7, $at              ## $t7 = 80000000
.L80B77FF8:
/* 0E658 80B77FF8 10000005 */  beq     $zero, $zero, .L80B78010   
/* 0E65C 80B77FFC 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 0E660 80B78000 440F8000 */  mfc1    $t7, $f16                  
.L80B78004:
/* 0E664 80B78004 00000000 */  nop
/* 0E668 80B78008 05E0FFFB */  bltz    $t7, .L80B77FF8            
/* 0E66C 80B7800C 00000000 */  nop
.L80B78010:
/* 0E670 80B78010 44CEF800 */  ctc1    $t6, $31
/* 0E674 80B78014 25EA0001 */  addiu   $t2, $t7, 0x0001           ## $t2 = 00000000
/* 0E678 80B78018 3C0180B8 */  lui     $at, %hi(D_80B7A66C)       ## $at = 80B80000
/* 0E67C 80B7801C 10000005 */  beq     $zero, $zero, .L80B78034   
/* 0E680 80B78020 A02AA66C */  sb      $t2, %lo(D_80B7A66C)($at)  
.L80B78024:
/* 0E684 80B78024 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 0E688 80B78028 24190055 */  addiu   $t9, $zero, 0x0055         ## $t9 = 00000055
/* 0E68C 80B7802C AFB90034 */  sw      $t9, 0x0034($sp)           
/* 0E690 80B78030 E4520000 */  swc1    $f18, 0x0000($v0)          ## 00000000
.L80B78034:
/* 0E694 80B78034 8FA40038 */  lw      $a0, 0x0038($sp)           
.L80B78038:
/* 0E698 80B78038 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 0E69C 80B7803C 44812000 */  mtc1    $at, $f4                   ## $f4 = 1000.00
/* 0E6A0 80B78040 AC800118 */  sw      $zero, 0x0118($a0)         ## 00000118
/* 0E6A4 80B78044 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 0E6A8 80B78048 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0E6AC 80B7804C 3C0744FA */  lui     $a3, 0x44FA                ## $a3 = 44FA0000
/* 0E6B0 80B78050 0C00BD0D */  jal     func_8002F434              
/* 0E6B4 80B78054 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 0E6B8 80B78058 8FA90038 */  lw      $t1, 0x0038($sp)           
/* 0E6BC 80B7805C 240B0017 */  addiu   $t3, $zero, 0x0017         ## $t3 = 00000017
/* 0E6C0 80B78060 10000079 */  beq     $zero, $zero, .L80B78248   
/* 0E6C4 80B78064 A52B015C */  sh      $t3, 0x015C($t1)           ## 0000015C
glabel L80B78068
/* 0E6C8 80B78068 0C042F6F */  jal     func_8010BDBC              
/* 0E6CC 80B7806C 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 0E6D0 80B78070 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0E6D4 80B78074 54410075 */  bnel    $v0, $at, .L80B7824C       
/* 0E6D8 80B78078 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0E6DC 80B7807C 0C041AF2 */  jal     func_80106BC8              
/* 0E6E0 80B78080 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0E6E4 80B78084 50400071 */  beql    $v0, $zero, .L80B7824C     
/* 0E6E8 80B78088 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0E6EC 80B7808C 0C041B33 */  jal     func_80106CCC              
/* 0E6F0 80B78090 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0E6F4 80B78094 8FAC0038 */  lw      $t4, 0x0038($sp)           
/* 0E6F8 80B78098 1000006B */  beq     $zero, $zero, .L80B78248   
/* 0E6FC 80B7809C A580015C */  sh      $zero, 0x015C($t4)         ## 0000015C
glabel L80B780A0
/* 0E700 80B780A0 0C042F6F */  jal     func_8010BDBC              
/* 0E704 80B780A4 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 0E708 80B780A8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0E70C 80B780AC 54410067 */  bnel    $v0, $at, .L80B7824C       
/* 0E710 80B780B0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0E714 80B780B4 0C041AF2 */  jal     func_80106BC8              
/* 0E718 80B780B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0E71C 80B780BC 50400063 */  beql    $v0, $zero, .L80B7824C     
/* 0E720 80B780C0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0E724 80B780C4 0C041B33 */  jal     func_80106CCC              
/* 0E728 80B780C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0E72C 80B780CC 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 0E730 80B780D0 00501021 */  addu    $v0, $v0, $s0              
/* 0E734 80B780D4 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 0E738 80B780D8 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0E73C 80B780DC 8FAD0038 */  lw      $t5, 0x0038($sp)           
/* 0E740 80B780E0 10400005 */  beq     $v0, $zero, .L80B780F8     
/* 0E744 80B780E4 00000000 */  nop
/* 0E748 80B780E8 10480005 */  beq     $v0, $t0, .L80B78100       
/* 0E74C 80B780EC 3C0E80B8 */  lui     $t6, %hi(D_80B7E084)       ## $t6 = 80B80000
/* 0E750 80B780F0 10000056 */  beq     $zero, $zero, .L80B7824C   
/* 0E754 80B780F4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B780F8:
/* 0E758 80B780F8 10000053 */  beq     $zero, $zero, .L80B78248   
/* 0E75C 80B780FC A5A0015C */  sh      $zero, 0x015C($t5)         ## 0000015C
.L80B78100:
/* 0E760 80B78100 95CEE084 */  lhu     $t6, %lo(D_80B7E084)($t6)  
/* 0E764 80B78104 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0E768 80B78108 3C0F80B8 */  lui     $t7, %hi(D_80B7E075)       ## $t7 = 80B80000
/* 0E76C 80B7810C 15C00005 */  bne     $t6, $zero, .L80B78124     
/* 0E770 80B78110 00000000 */  nop
/* 0E774 80B78114 0C042DC8 */  jal     func_8010B720              
/* 0E778 80B78118 24054085 */  addiu   $a1, $zero, 0x4085         ## $a1 = 00004085
/* 0E77C 80B7811C 10000008 */  beq     $zero, $zero, .L80B78140   
/* 0E780 80B78120 8FAA0038 */  lw      $t2, 0x0038($sp)           
.L80B78124:
/* 0E784 80B78124 91EFE075 */  lbu     $t7, %lo(D_80B7E075)($t7)  
/* 0E788 80B78128 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0E78C 80B7812C 550F0004 */  bnel    $t0, $t7, .L80B78140       
/* 0E790 80B78130 8FAA0038 */  lw      $t2, 0x0038($sp)           
/* 0E794 80B78134 0C042DC8 */  jal     func_8010B720              
/* 0E798 80B78138 24054092 */  addiu   $a1, $zero, 0x4092         ## $a1 = 00004092
/* 0E79C 80B7813C 8FAA0038 */  lw      $t2, 0x0038($sp)           
.L80B78140:
/* 0E7A0 80B78140 24180016 */  addiu   $t8, $zero, 0x0016         ## $t8 = 00000016
/* 0E7A4 80B78144 10000040 */  beq     $zero, $zero, .L80B78248   
/* 0E7A8 80B78148 A558015C */  sh      $t8, 0x015C($t2)           ## 0000015C
glabel L80B7814C
/* 0E7AC 80B7814C 0C042F6F */  jal     func_8010BDBC              
/* 0E7B0 80B78150 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 0E7B4 80B78154 1440003C */  bne     $v0, $zero, .L80B78248     
/* 0E7B8 80B78158 8FB90038 */  lw      $t9, 0x0038($sp)           
/* 0E7BC 80B7815C 3C0280B8 */  lui     $v0, %hi(D_80B7A68C)       ## $v0 = 80B80000
/* 0E7C0 80B78160 2442A68C */  addiu   $v0, $v0, %lo(D_80B7A68C)  ## $v0 = 80B7A68C
/* 0E7C4 80B78164 A720015C */  sh      $zero, 0x015C($t9)         ## 0000015C
/* 0E7C8 80B78168 904B0000 */  lbu     $t3, 0x0000($v0)           ## 80B7A68C
/* 0E7CC 80B7816C 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 0E7D0 80B78170 3C0180B8 */  lui     $at, %hi(D_80B7A688)       ## $at = 80B80000
/* 0E7D4 80B78174 11600003 */  beq     $t3, $zero, .L80B78184     
/* 0E7D8 80B78178 00000000 */  nop
/* 0E7DC 80B7817C A029A688 */  sb      $t1, %lo(D_80B7A688)($at)  
/* 0E7E0 80B78180 A0400000 */  sb      $zero, 0x0000($v0)         ## 80B7A68C
.L80B78184:
/* 0E7E4 80B78184 3C0180B8 */  lui     $at, %hi(D_80B7E0AC)       ## $at = 80B80000
/* 0E7E8 80B78188 A420E0AC */  sh      $zero, %lo(D_80B7E0AC)($at) 
/* 0E7EC 80B7818C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0E7F0 80B78190 00300821 */  addu    $at, $at, $s0              
/* 0E7F4 80B78194 1000002C */  beq     $zero, $zero, .L80B78248   
/* 0E7F8 80B78198 A0200750 */  sb      $zero, 0x0750($at)         ## 00010750
glabel L80B7819C
/* 0E7FC 80B7819C 3C0180B8 */  lui     $at, %hi(D_80B7A674)       ## $at = 80B80000
/* 0E800 80B781A0 A020A674 */  sb      $zero, %lo(D_80B7A674)($at) 
/* 0E804 80B781A4 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 0E808 80B781A8 0C00BD04 */  jal     func_8002F410              
/* 0E80C 80B781AC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0E810 80B781B0 10400005 */  beq     $v0, $zero, .L80B781C8     
/* 0E814 80B781B4 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 0E818 80B781B8 8FAD0038 */  lw      $t5, 0x0038($sp)           
/* 0E81C 80B781BC 240C0018 */  addiu   $t4, $zero, 0x0018         ## $t4 = 00000018
/* 0E820 80B781C0 10000021 */  beq     $zero, $zero, .L80B78248   
/* 0E824 80B781C4 A5AC015C */  sh      $t4, 0x015C($t5)           ## 0000015C
.L80B781C8:
/* 0E828 80B781C8 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 0E82C 80B781CC 44813000 */  mtc1    $at, $f6                   ## $f6 = 1000.00
/* 0E830 80B781D0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0E834 80B781D4 24060038 */  addiu   $a2, $zero, 0x0038         ## $a2 = 00000038
/* 0E838 80B781D8 3C0744FA */  lui     $a3, 0x44FA                ## $a3 = 44FA0000
/* 0E83C 80B781DC 0C00BD0D */  jal     func_8002F434              
/* 0E840 80B781E0 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 0E844 80B781E4 10000019 */  beq     $zero, $zero, .L80B7824C   
/* 0E848 80B781E8 8FBF0024 */  lw      $ra, 0x0024($sp)           
glabel L80B781EC
/* 0E84C 80B781EC 3C0180B8 */  lui     $at, %hi(D_80B7A674)       ## $at = 80B80000
/* 0E850 80B781F0 A020A674 */  sb      $zero, %lo(D_80B7A674)($at) 
/* 0E854 80B781F4 0C042F6F */  jal     func_8010BDBC              
/* 0E858 80B781F8 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 0E85C 80B781FC 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 0E860 80B78200 54410012 */  bnel    $v0, $at, .L80B7824C       
/* 0E864 80B78204 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0E868 80B78208 0C041AF2 */  jal     func_80106BC8              
/* 0E86C 80B7820C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0E870 80B78210 1040000D */  beq     $v0, $zero, .L80B78248     
/* 0E874 80B78214 3C0E80B8 */  lui     $t6, %hi(D_80B7E07C)       ## $t6 = 80B80000
/* 0E878 80B78218 91CEE07C */  lbu     $t6, %lo(D_80B7E07C)($t6)  
/* 0E87C 80B7821C 8FAF0038 */  lw      $t7, 0x0038($sp)           
/* 0E880 80B78220 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0E884 80B78224 15C00003 */  bne     $t6, $zero, .L80B78234     
/* 0E888 80B78228 2405409C */  addiu   $a1, $zero, 0x409C         ## $a1 = 0000409C
/* 0E88C 80B7822C 10000006 */  beq     $zero, $zero, .L80B78248   
/* 0E890 80B78230 A5E0015C */  sh      $zero, 0x015C($t7)         ## 0000015C
.L80B78234:
/* 0E894 80B78234 0C042DA0 */  jal     func_8010B680              
/* 0E898 80B78238 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0E89C 80B7823C 8FAA0038 */  lw      $t2, 0x0038($sp)           
/* 0E8A0 80B78240 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 0E8A4 80B78244 A558015C */  sh      $t8, 0x015C($t2)           ## 0000015C
glabel L80B78248
.L80B78248:
/* 0E8A8 80B78248 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B7824C:
/* 0E8AC 80B7824C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0E8B0 80B78250 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0E8B4 80B78254 03E00008 */  jr      $ra                        
/* 0E8B8 80B78258 00000000 */  nop


