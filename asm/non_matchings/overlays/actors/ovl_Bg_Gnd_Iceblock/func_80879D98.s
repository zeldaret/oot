.late_rodata

glabel jtbl_8087A848
    .word L80879DE8
    .word L80879DE8
    .word L8087A0B8
    .word L8087A0B8
    .word L80879DFC
    .word L8087A0B8
    .word L8087A0B8
    .word L8087A0B8
    .word L80879E38
    .word L8087A0B8
    .word L8087A0B8
    .word L80879E4C
    .word L8087A0B8
    .word L8087A0B8
    .word L8087A0B8
    .word L80879E60
    .word L80879E60

glabel jtbl_8087A88C
    .word L80879EB0
    .word L80879EB0
    .word L8087A0B8
    .word L8087A0B8
    .word L8087A0B8
    .word L80879EC4
    .word L8087A0B8
    .word L80879EC4
    .word L8087A0B8
    .word L80879ED8
    .word L8087A0B8
    .word L8087A0B8
    .word L80879EEC
    .word L80879EEC
    .word L8087A0B8
    .word L80879F00
    .word L80879F14

glabel jtbl_8087A8D0
    .word L80879F7C
    .word L80879F90
    .word L8087A0B8
    .word L80879FA4
    .word L8087A0B8
    .word L8087A0B8
    .word L80879FB8
    .word L8087A0B8
    .word L80879FCC
    .word L80879FE0

glabel jtbl_8087A8F8
    .word L8087A034
    .word L8087A048
    .word L8087A0B8
    .word L8087A05C
    .word L8087A0B8
    .word L8087A05C
    .word L8087A0B8
    .word L8087A0B8
    .word L8087A070
    .word L8087A084

.text
glabel func_80879D98
/* 002F8 80879D98 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002FC 80879D9C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00300 80879DA0 84820158 */  lh      $v0, 0x0158($a0)           ## 00000158
/* 00304 80879DA4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00308 80879DA8 24018000 */  addiu   $at, $zero, 0x8000         ## $at = FFFF8000
/* 0030C 80879DAC 14400031 */  bne     $v0, $zero, .L80879E74     
/* 00310 80879DB0 00000000 */  nop
/* 00314 80879DB4 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00318 80879DB8 3C0F8088 */  lui     $t7, %hi(D_8087AC40)       ## $t7 = 80880000
/* 0031C 80879DBC 01EE7821 */  addu    $t7, $t7, $t6              
/* 00320 80879DC0 91EFAC40 */  lbu     $t7, %lo(D_8087AC40)($t7)  
/* 00324 80879DC4 25F8FFFD */  addiu   $t8, $t7, 0xFFFD           ## $t8 = 8087FFFD
/* 00328 80879DC8 2F010011 */  sltiu   $at, $t8, 0x0011           
/* 0032C 80879DCC 102000BA */  beq     $at, $zero, .L8087A0B8     
/* 00330 80879DD0 0018C080 */  sll     $t8, $t8,  2               
/* 00334 80879DD4 3C018088 */  lui     $at, %hi(jtbl_8087A848)       ## $at = 80880000
/* 00338 80879DD8 00380821 */  addu    $at, $at, $t8              
/* 0033C 80879DDC 8C38A848 */  lw      $t8, %lo(jtbl_8087A848)($at)  
/* 00340 80879DE0 03000008 */  jr      $t8                        
/* 00344 80879DE4 00000000 */  nop
glabel L80879DE8
/* 00348 80879DE8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0034C 80879DEC 0C21E701 */  jal     func_80879C04              
/* 00350 80879DF0 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 00354 80879DF4 100000B1 */  beq     $zero, $zero, .L8087A0BC   
/* 00358 80879DF8 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80879DFC
/* 0035C 80879DFC 24040008 */  addiu   $a0, $zero, 0x0008         ## $a0 = 00000008
/* 00360 80879E00 0C21E744 */  jal     func_80879D10              
/* 00364 80879E04 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00368 80879E08 10400006 */  beq     $v0, $zero, .L80879E24     
/* 0036C 80879E0C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00370 80879E10 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00374 80879E14 0C21E701 */  jal     func_80879C04              
/* 00378 80879E18 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 0037C 80879E1C 100000A7 */  beq     $zero, $zero, .L8087A0BC   
/* 00380 80879E20 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80879E24:
/* 00384 80879E24 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00388 80879E28 0C21E701 */  jal     func_80879C04              
/* 0038C 80879E2C 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 00390 80879E30 100000A2 */  beq     $zero, $zero, .L8087A0BC   
/* 00394 80879E34 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80879E38
/* 00398 80879E38 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0039C 80879E3C 0C21E701 */  jal     func_80879C04              
/* 003A0 80879E40 2405000C */  addiu   $a1, $zero, 0x000C         ## $a1 = 0000000C
/* 003A4 80879E44 1000009D */  beq     $zero, $zero, .L8087A0BC   
/* 003A8 80879E48 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80879E4C
/* 003AC 80879E4C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 003B0 80879E50 0C21E701 */  jal     func_80879C04              
/* 003B4 80879E54 2405000F */  addiu   $a1, $zero, 0x000F         ## $a1 = 0000000F
/* 003B8 80879E58 10000098 */  beq     $zero, $zero, .L8087A0BC   
/* 003BC 80879E5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80879E60
/* 003C0 80879E60 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 003C4 80879E64 0C21E701 */  jal     func_80879C04              
/* 003C8 80879E68 24050014 */  addiu   $a1, $zero, 0x0014         ## $a1 = 00000014
/* 003CC 80879E6C 10000093 */  beq     $zero, $zero, .L8087A0BC   
/* 003D0 80879E70 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80879E74:
/* 003D4 80879E74 54410032 */  bnel    $v0, $at, .L80879F40       
/* 003D8 80879E78 24014000 */  addiu   $at, $zero, 0x4000         ## $at = 00004000
/* 003DC 80879E7C 84D9001C */  lh      $t9, 0x001C($a2)           ## 0000001C
/* 003E0 80879E80 3C088088 */  lui     $t0, %hi(D_8087AC40)       ## $t0 = 80880000
/* 003E4 80879E84 01194021 */  addu    $t0, $t0, $t9              
/* 003E8 80879E88 9108AC40 */  lbu     $t0, %lo(D_8087AC40)($t0)  
/* 003EC 80879E8C 2509FFFE */  addiu   $t1, $t0, 0xFFFE           ## $t1 = 8087FFFE
/* 003F0 80879E90 2D210011 */  sltiu   $at, $t1, 0x0011           
/* 003F4 80879E94 10200088 */  beq     $at, $zero, .L8087A0B8     
/* 003F8 80879E98 00094880 */  sll     $t1, $t1,  2               
/* 003FC 80879E9C 3C018088 */  lui     $at, %hi(jtbl_8087A88C)       ## $at = 80880000
/* 00400 80879EA0 00290821 */  addu    $at, $at, $t1              
/* 00404 80879EA4 8C29A88C */  lw      $t1, %lo(jtbl_8087A88C)($at)  
/* 00408 80879EA8 01200008 */  jr      $t1                        
/* 0040C 80879EAC 00000000 */  nop
glabel L80879EB0
/* 00410 80879EB0 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00414 80879EB4 0C21E701 */  jal     func_80879C04              
/* 00418 80879EB8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0041C 80879EBC 1000007F */  beq     $zero, $zero, .L8087A0BC   
/* 00420 80879EC0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80879EC4
/* 00424 80879EC4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00428 80879EC8 0C21E701 */  jal     func_80879C04              
/* 0042C 80879ECC 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 00430 80879ED0 1000007A */  beq     $zero, $zero, .L8087A0BC   
/* 00434 80879ED4 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80879ED8
/* 00438 80879ED8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0043C 80879EDC 0C21E701 */  jal     func_80879C04              
/* 00440 80879EE0 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
/* 00444 80879EE4 10000075 */  beq     $zero, $zero, .L8087A0BC   
/* 00448 80879EE8 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80879EEC
/* 0044C 80879EEC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00450 80879EF0 0C21E701 */  jal     func_80879C04              
/* 00454 80879EF4 2405000D */  addiu   $a1, $zero, 0x000D         ## $a1 = 0000000D
/* 00458 80879EF8 10000070 */  beq     $zero, $zero, .L8087A0BC   
/* 0045C 80879EFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80879F00
/* 00460 80879F00 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00464 80879F04 0C21E701 */  jal     func_80879C04              
/* 00468 80879F08 24050010 */  addiu   $a1, $zero, 0x0010         ## $a1 = 00000010
/* 0046C 80879F0C 1000006B */  beq     $zero, $zero, .L8087A0BC   
/* 00470 80879F10 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80879F14
/* 00474 80879F14 24040011 */  addiu   $a0, $zero, 0x0011         ## $a0 = 00000011
/* 00478 80879F18 0C21E744 */  jal     func_80879D10              
/* 0047C 80879F1C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00480 80879F20 14400065 */  bne     $v0, $zero, .L8087A0B8     
/* 00484 80879F24 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00488 80879F28 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0048C 80879F2C 0C21E701 */  jal     func_80879C04              
/* 00490 80879F30 24050010 */  addiu   $a1, $zero, 0x0010         ## $a1 = 00000010
/* 00494 80879F34 10000061 */  beq     $zero, $zero, .L8087A0BC   
/* 00498 80879F38 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0049C 80879F3C 24014000 */  addiu   $at, $zero, 0x4000         ## $at = 00004000
.L80879F40:
/* 004A0 80879F40 5441002D */  bnel    $v0, $at, .L80879FF8       
/* 004A4 80879F44 2401C000 */  addiu   $at, $zero, 0xC000         ## $at = FFFFC000
/* 004A8 80879F48 84CA001C */  lh      $t2, 0x001C($a2)           ## 0000001C
/* 004AC 80879F4C 3C0B8088 */  lui     $t3, %hi(D_8087AC40)       ## $t3 = 80880000
/* 004B0 80879F50 016A5821 */  addu    $t3, $t3, $t2              
/* 004B4 80879F54 916BAC40 */  lbu     $t3, %lo(D_8087AC40)($t3)  
/* 004B8 80879F58 256CFFFA */  addiu   $t4, $t3, 0xFFFA           ## $t4 = 8087FFFA
/* 004BC 80879F5C 2D81000A */  sltiu   $at, $t4, 0x000A           
/* 004C0 80879F60 10200055 */  beq     $at, $zero, .L8087A0B8     
/* 004C4 80879F64 000C6080 */  sll     $t4, $t4,  2               
/* 004C8 80879F68 3C018088 */  lui     $at, %hi(jtbl_8087A8D0)       ## $at = 80880000
/* 004CC 80879F6C 002C0821 */  addu    $at, $at, $t4              
/* 004D0 80879F70 8C2CA8D0 */  lw      $t4, %lo(jtbl_8087A8D0)($at)  
/* 004D4 80879F74 01800008 */  jr      $t4                        
/* 004D8 80879F78 00000000 */  nop
glabel L80879F7C
/* 004DC 80879F7C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 004E0 80879F80 0C21E701 */  jal     func_80879C04              
/* 004E4 80879F84 2405000D */  addiu   $a1, $zero, 0x000D         ## $a1 = 0000000D
/* 004E8 80879F88 1000004C */  beq     $zero, $zero, .L8087A0BC   
/* 004EC 80879F8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80879F90
/* 004F0 80879F90 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 004F4 80879F94 0C21E701 */  jal     func_80879C04              
/* 004F8 80879F98 24050011 */  addiu   $a1, $zero, 0x0011         ## $a1 = 00000011
/* 004FC 80879F9C 10000047 */  beq     $zero, $zero, .L8087A0BC   
/* 00500 80879FA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80879FA4
/* 00504 80879FA4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00508 80879FA8 0C21E701 */  jal     func_80879C04              
/* 0050C 80879FAC 2405000B */  addiu   $a1, $zero, 0x000B         ## $a1 = 0000000B
/* 00510 80879FB0 10000042 */  beq     $zero, $zero, .L8087A0BC   
/* 00514 80879FB4 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80879FB8
/* 00518 80879FB8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0051C 80879FBC 0C21E701 */  jal     func_80879C04              
/* 00520 80879FC0 24050015 */  addiu   $a1, $zero, 0x0015         ## $a1 = 00000015
/* 00524 80879FC4 1000003D */  beq     $zero, $zero, .L8087A0BC   
/* 00528 80879FC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80879FCC
/* 0052C 80879FCC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00530 80879FD0 0C21E701 */  jal     func_80879C04              
/* 00534 80879FD4 24050012 */  addiu   $a1, $zero, 0x0012         ## $a1 = 00000012
/* 00538 80879FD8 10000038 */  beq     $zero, $zero, .L8087A0BC   
/* 0053C 80879FDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80879FE0
/* 00540 80879FE0 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00544 80879FE4 0C21E701 */  jal     func_80879C04              
/* 00548 80879FE8 24050013 */  addiu   $a1, $zero, 0x0013         ## $a1 = 00000013
/* 0054C 80879FEC 10000033 */  beq     $zero, $zero, .L8087A0BC   
/* 00550 80879FF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00554 80879FF4 2401C000 */  addiu   $at, $zero, 0xC000         ## $at = FFFFC000
.L80879FF8:
/* 00558 80879FF8 54410030 */  bnel    $v0, $at, .L8087A0BC       
/* 0055C 80879FFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00560 8087A000 84CD001C */  lh      $t5, 0x001C($a2)           ## 0000001C
/* 00564 8087A004 3C0E8088 */  lui     $t6, %hi(D_8087AC40)       ## $t6 = 80880000
/* 00568 8087A008 01CD7021 */  addu    $t6, $t6, $t5              
/* 0056C 8087A00C 91CEAC40 */  lbu     $t6, %lo(D_8087AC40)($t6)  
/* 00570 8087A010 25CFFFFA */  addiu   $t7, $t6, 0xFFFA           ## $t7 = 8087FFFA
/* 00574 8087A014 2DE1000A */  sltiu   $at, $t7, 0x000A           
/* 00578 8087A018 10200027 */  beq     $at, $zero, .L8087A0B8     
/* 0057C 8087A01C 000F7880 */  sll     $t7, $t7,  2               
/* 00580 8087A020 3C018088 */  lui     $at, %hi(jtbl_8087A8F8)       ## $at = 80880000
/* 00584 8087A024 002F0821 */  addu    $at, $at, $t7              
/* 00588 8087A028 8C2FA8F8 */  lw      $t7, %lo(jtbl_8087A8F8)($at)  
/* 0058C 8087A02C 01E00008 */  jr      $t7                        
/* 00590 8087A030 00000000 */  nop
glabel L8087A034
/* 00594 8087A034 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00598 8087A038 0C21E701 */  jal     func_80879C04              
/* 0059C 8087A03C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 005A0 8087A040 1000001E */  beq     $zero, $zero, .L8087A0BC   
/* 005A4 8087A044 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L8087A048
/* 005A8 8087A048 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 005AC 8087A04C 0C21E701 */  jal     func_80879C04              
/* 005B0 8087A050 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 005B4 8087A054 10000019 */  beq     $zero, $zero, .L8087A0BC   
/* 005B8 8087A058 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L8087A05C
/* 005BC 8087A05C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 005C0 8087A060 0C21E701 */  jal     func_80879C04              
/* 005C4 8087A064 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 005C8 8087A068 10000014 */  beq     $zero, $zero, .L8087A0BC   
/* 005CC 8087A06C 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L8087A070
/* 005D0 8087A070 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 005D4 8087A074 0C21E701 */  jal     func_80879C04              
/* 005D8 8087A078 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 005DC 8087A07C 1000000F */  beq     $zero, $zero, .L8087A0BC   
/* 005E0 8087A080 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L8087A084
/* 005E4 8087A084 24040008 */  addiu   $a0, $zero, 0x0008         ## $a0 = 00000008
/* 005E8 8087A088 0C21E744 */  jal     func_80879D10              
/* 005EC 8087A08C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 005F0 8087A090 10400006 */  beq     $v0, $zero, .L8087A0AC     
/* 005F4 8087A094 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 005F8 8087A098 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 005FC 8087A09C 0C21E701 */  jal     func_80879C04              
/* 00600 8087A0A0 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00604 8087A0A4 10000005 */  beq     $zero, $zero, .L8087A0BC   
/* 00608 8087A0A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8087A0AC:
/* 0060C 8087A0AC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00610 8087A0B0 0C21E701 */  jal     func_80879C04              
/* 00614 8087A0B4 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
glabel L8087A0B8
.L8087A0B8:
/* 00618 8087A0B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8087A0BC:
/* 0061C 8087A0BC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00620 8087A0C0 03E00008 */  jr      $ra                        
/* 00624 8087A0C4 00000000 */  nop
