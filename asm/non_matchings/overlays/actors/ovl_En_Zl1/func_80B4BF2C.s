.late_rodata
glabel jtbl_80B4E768
.word L80B4BF6C
.word L80B4BFE0
.word L80B4C070
.word L80B4C0E8
.word L80B4C130
.word L80B4C17C
.word L80B4C1A0
.word 0x00000000, 0x00000000, 0x00000000

.text
glabel func_80B4BF2C
/* 013EC 80B4BF2C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 013F0 80B4BF30 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 013F4 80B4BF34 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 013F8 80B4BF38 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 013FC 80B4BF3C 948E01E2 */  lhu     $t6, 0x01E2($a0)           ## 000001E2
/* 01400 80B4BF40 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01404 80B4BF44 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01408 80B4BF48 2DC10007 */  sltiu   $at, $t6, 0x0007           
/* 0140C 80B4BF4C 102000A4 */  beq     $at, $zero, .L80B4C1E0     
/* 01410 80B4BF50 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 01414 80B4BF54 000E7080 */  sll     $t6, $t6,  2               
/* 01418 80B4BF58 3C0180B5 */  lui     $at, %hi(jtbl_80B4E768)       ## $at = 80B50000
/* 0141C 80B4BF5C 002E0821 */  addu    $at, $at, $t6              
/* 01420 80B4BF60 8C2EE768 */  lw      $t6, %lo(jtbl_80B4E768)($at)  
/* 01424 80B4BF64 01C00008 */  jr      $t6                        
/* 01428 80B4BF68 00000000 */  nop
glabel L80B4BF6C
/* 0142C 80B4BF6C 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 01430 80B4BF70 0C042F6F */  jal     func_8010BDBC              
/* 01434 80B4BF74 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 01438 80B4BF78 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0143C 80B4BF7C 54410099 */  bnel    $v0, $at, .L80B4C1E4       
/* 01440 80B4BF80 8E090038 */  lw      $t1, 0x0038($s0)           ## 00000038
/* 01444 80B4BF84 0C041AF2 */  jal     func_80106BC8              
/* 01448 80B4BF88 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0144C 80B4BF8C 10400094 */  beq     $v0, $zero, .L80B4C1E0     
/* 01450 80B4BF90 8FAF0030 */  lw      $t7, 0x0030($sp)           
/* 01454 80B4BF94 25F87FFF */  addiu   $t8, $t7, 0x7FFF           ## $t8 = 00007FFF
/* 01458 80B4BF98 931863E6 */  lbu     $t8, 0x63E6($t8)           ## 0000E3E5
/* 0145C 80B4BF9C 240A703A */  addiu   $t2, $zero, 0x703A         ## $t2 = 0000703A
/* 01460 80B4BFA0 3145FFFF */  andi    $a1, $t2, 0xFFFF           ## $a1 = 0000703A
/* 01464 80B4BFA4 1700000A */  bne     $t8, $zero, .L80B4BFD0     
/* 01468 80B4BFA8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0146C 80B4BFAC 2419703B */  addiu   $t9, $zero, 0x703B         ## $t9 = 0000703B
/* 01470 80B4BFB0 A619010E */  sh      $t9, 0x010E($s0)           ## 0000010E
/* 01474 80B4BFB4 3325FFFF */  andi    $a1, $t9, 0xFFFF           ## $a1 = 0000703B
/* 01478 80B4BFB8 0C042DC8 */  jal     func_8010B720              
/* 0147C 80B4BFBC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01480 80B4BFC0 860801E2 */  lh      $t0, 0x01E2($s0)           ## 000001E2
/* 01484 80B4BFC4 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 01488 80B4BFC8 10000085 */  beq     $zero, $zero, .L80B4C1E0   
/* 0148C 80B4BFCC A60901E2 */  sh      $t1, 0x01E2($s0)           ## 000001E2
.L80B4BFD0:
/* 01490 80B4BFD0 0C042DC8 */  jal     func_8010B720              
/* 01494 80B4BFD4 A60A010E */  sh      $t2, 0x010E($s0)           ## 0000010E
/* 01498 80B4BFD8 10000081 */  beq     $zero, $zero, .L80B4C1E0   
/* 0149C 80B4BFDC A60001E2 */  sh      $zero, 0x01E2($s0)         ## 000001E2
glabel L80B4BFE0
/* 014A0 80B4BFE0 0C042F6F */  jal     func_8010BDBC              
/* 014A4 80B4BFE4 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 014A8 80B4BFE8 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 014AC 80B4BFEC 5441007D */  bnel    $v0, $at, .L80B4C1E4       
/* 014B0 80B4BFF0 8E090038 */  lw      $t1, 0x0038($s0)           ## 00000038
/* 014B4 80B4BFF4 0C041AF2 */  jal     func_80106BC8              
/* 014B8 80B4BFF8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 014BC 80B4BFFC 10400078 */  beq     $v0, $zero, .L80B4C1E0     
/* 014C0 80B4C000 340BFFFF */  ori     $t3, $zero, 0xFFFF         ## $t3 = 0000FFFF
/* 014C4 80B4C004 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 014C8 80B4C008 A60B010E */  sh      $t3, 0x010E($s0)           ## 0000010E
/* 014CC 80B4C00C 0331C821 */  addu    $t9, $t9, $s1              
/* 014D0 80B4C010 8F391D5C */  lw      $t9, 0x1D5C($t9)           ## 00011D5C
/* 014D4 80B4C014 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 014D8 80B4C018 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 014DC 80B4C01C 0320F809 */  jalr    $ra, $t9                   
/* 014E0 80B4C020 00000000 */  nop
/* 014E4 80B4C024 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 014E8 80B4C028 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 014EC 80B4C02C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014F0 80B4C030 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 014F4 80B4C034 2406000B */  addiu   $a2, $zero, 0x000B         ## $a2 = 0000000B
/* 014F8 80B4C038 3C0742F0 */  lui     $a3, 0x42F0                ## $a3 = 42F00000
/* 014FC 80B4C03C 0C00BD0D */  jal     func_8002F434              
/* 01500 80B4C040 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01504 80B4C044 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01508 80B4C048 00310821 */  addu    $at, $at, $s1              
/* 0150C 80B4C04C 240C0036 */  addiu   $t4, $zero, 0x0036         ## $t4 = 00000036
/* 01510 80B4C050 A02C03DC */  sb      $t4, 0x03DC($at)           ## 000103DC
/* 01514 80B4C054 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01518 80B4C058 00310821 */  addu    $at, $at, $s1              
/* 0151C 80B4C05C 240D0004 */  addiu   $t5, $zero, 0x0004         ## $t5 = 00000004
/* 01520 80B4C060 A02D04BF */  sb      $t5, 0x04BF($at)           ## 000104BF
/* 01524 80B4C064 860E01E2 */  lh      $t6, 0x01E2($s0)           ## 000001E2
/* 01528 80B4C068 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 0152C 80B4C06C A60F01E2 */  sh      $t7, 0x01E2($s0)           ## 000001E2
glabel L80B4C070
/* 01530 80B4C070 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01534 80B4C074 0C00BD04 */  jal     func_8002F410              
/* 01538 80B4C078 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0153C 80B4C07C 10400011 */  beq     $v0, $zero, .L80B4C0C4     
/* 01540 80B4C080 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01544 80B4C084 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01548 80B4C088 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0154C 80B4C08C 0C0301E3 */  jal     func_800C078C              
/* 01550 80B4C090 860601E8 */  lh      $a2, 0x01E8($s0)           ## 000001E8
/* 01554 80B4C094 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01558 80B4C098 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0155C 80B4C09C 0C0300C5 */  jal     Gameplay_ChangeCameraStatus              
/* 01560 80B4C0A0 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 01564 80B4C0A4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01568 80B4C0A8 0C0300E1 */  jal     Gameplay_ClearCamera              
/* 0156C 80B4C0AC 860501E8 */  lh      $a1, 0x01E8($s0)           ## 000001E8
/* 01570 80B4C0B0 861801E2 */  lh      $t8, 0x01E2($s0)           ## 000001E2
/* 01574 80B4C0B4 AE000118 */  sw      $zero, 0x0118($s0)         ## 00000118
/* 01578 80B4C0B8 27080001 */  addiu   $t0, $t8, 0x0001           ## $t0 = 00000001
/* 0157C 80B4C0BC 10000048 */  beq     $zero, $zero, .L80B4C1E0   
/* 01580 80B4C0C0 A60801E2 */  sh      $t0, 0x01E2($s0)           ## 000001E2
.L80B4C0C4:
/* 01584 80B4C0C4 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01588 80B4C0C8 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 0158C 80B4C0CC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01590 80B4C0D0 2406000B */  addiu   $a2, $zero, 0x000B         ## $a2 = 0000000B
/* 01594 80B4C0D4 3C0742F0 */  lui     $a3, 0x42F0                ## $a3 = 42F00000
/* 01598 80B4C0D8 0C00BD0D */  jal     func_8002F434              
/* 0159C 80B4C0DC E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 015A0 80B4C0E0 10000040 */  beq     $zero, $zero, .L80B4C1E4   
/* 015A4 80B4C0E4 8E090038 */  lw      $t1, 0x0038($s0)           ## 00000038
glabel L80B4C0E8
/* 015A8 80B4C0E8 0C042F6F */  jal     func_8010BDBC              
/* 015AC 80B4C0EC 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 015B0 80B4C0F0 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 015B4 80B4C0F4 5441003B */  bnel    $v0, $at, .L80B4C1E4       
/* 015B8 80B4C0F8 8E090038 */  lw      $t1, 0x0038($s0)           ## 00000038
/* 015BC 80B4C0FC 0C041AF2 */  jal     func_80106BC8              
/* 015C0 80B4C100 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 015C4 80B4C104 10400036 */  beq     $v0, $zero, .L80B4C1E0     
/* 015C8 80B4C108 2409703C */  addiu   $t1, $zero, 0x703C         ## $t1 = 0000703C
/* 015CC 80B4C10C A609010E */  sh      $t1, 0x010E($s0)           ## 0000010E
/* 015D0 80B4C110 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 015D4 80B4C114 0C042DC8 */  jal     func_8010B720              
/* 015D8 80B4C118 3125FFFF */  andi    $a1, $t1, 0xFFFF           ## $a1 = 0000703C
/* 015DC 80B4C11C 0C00D6DD */  jal     Flags_SetEventChkInf
              
/* 015E0 80B4C120 24040040 */  addiu   $a0, $zero, 0x0040         ## $a0 = 00000040
/* 015E4 80B4C124 240A0006 */  addiu   $t2, $zero, 0x0006         ## $t2 = 00000006
/* 015E8 80B4C128 1000002D */  beq     $zero, $zero, .L80B4C1E0   
/* 015EC 80B4C12C A60A01E2 */  sh      $t2, 0x01E2($s0)           ## 000001E2
glabel L80B4C130
/* 015F0 80B4C130 C4480028 */  lwc1    $f8, 0x0028($v0)           ## 00000028
/* 015F4 80B4C134 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 015F8 80B4C138 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015FC 80B4C13C 460A403C */  c.lt.s  $f8, $f10                  
/* 01600 80B4C140 00000000 */  nop
/* 01604 80B4C144 45030027 */  bc1tl   .L80B4C1E4                 
/* 01608 80B4C148 8E090038 */  lw      $t1, 0x0038($s0)           ## 00000038
/* 0160C 80B4C14C 0C00BC65 */  jal     func_8002F194              
/* 01610 80B4C150 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01614 80B4C154 10400005 */  beq     $v0, $zero, .L80B4C16C     
/* 01618 80B4C158 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0161C 80B4C15C 860B01E2 */  lh      $t3, 0x01E2($s0)           ## 000001E2
/* 01620 80B4C160 25790001 */  addiu   $t9, $t3, 0x0001           ## $t9 = 00000001
/* 01624 80B4C164 1000001E */  beq     $zero, $zero, .L80B4C1E0   
/* 01628 80B4C168 A61901E2 */  sh      $t9, 0x01E2($s0)           ## 000001E2
.L80B4C16C:
/* 0162C 80B4C16C 0C00BCBD */  jal     func_8002F2F4              
/* 01630 80B4C170 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01634 80B4C174 1000001B */  beq     $zero, $zero, .L80B4C1E4   
/* 01638 80B4C178 8E090038 */  lw      $t1, 0x0038($s0)           ## 00000038
glabel L80B4C17C
/* 0163C 80B4C17C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01640 80B4C180 0C00BCCD */  jal     func_8002F334              
/* 01644 80B4C184 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01648 80B4C188 50400016 */  beql    $v0, $zero, .L80B4C1E4     
/* 0164C 80B4C18C 8E090038 */  lw      $t1, 0x0038($s0)           ## 00000038
/* 01650 80B4C190 860C01E2 */  lh      $t4, 0x01E2($s0)           ## 000001E2
/* 01654 80B4C194 258DFFFF */  addiu   $t5, $t4, 0xFFFF           ## $t5 = FFFFFFFF
/* 01658 80B4C198 10000011 */  beq     $zero, $zero, .L80B4C1E0   
/* 0165C 80B4C19C A60D01E2 */  sh      $t5, 0x01E2($s0)           ## 000001E2
glabel L80B4C1A0
/* 01660 80B4C1A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01664 80B4C1A4 0C00BCCD */  jal     func_8002F334              
/* 01668 80B4C1A8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0166C 80B4C1AC 1040000C */  beq     $v0, $zero, .L80B4C1E0     
/* 01670 80B4C1B0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01674 80B4C1B4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01678 80B4C1B8 0C00B7D5 */  jal     func_8002DF54              
/* 0167C 80B4C1BC 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 01680 80B4C1C0 0C020978 */  jal     Interface_ChangeAlpha              
/* 01684 80B4C1C4 24040032 */  addiu   $a0, $zero, 0x0032         ## $a0 = 00000032
/* 01688 80B4C1C8 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 0168C 80B4C1CC 2401FEFF */  addiu   $at, $zero, 0xFEFF         ## $at = FFFFFEFF
/* 01690 80B4C1D0 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 01694 80B4C1D4 01C17824 */  and     $t7, $t6, $at              
/* 01698 80B4C1D8 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 0169C 80B4C1DC A61801E2 */  sh      $t8, 0x01E2($s0)           ## 000001E2
.L80B4C1E0:
/* 016A0 80B4C1E0 8E090038 */  lw      $t1, 0x0038($s0)           ## 00000038
.L80B4C1E4:
/* 016A4 80B4C1E4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 016A8 80B4C1E8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 016AC 80B4C1EC AFA90010 */  sw      $t1, 0x0010($sp)           
/* 016B0 80B4C1F0 8E08003C */  lw      $t0, 0x003C($s0)           ## 0000003C
/* 016B4 80B4C1F4 26060200 */  addiu   $a2, $s0, 0x0200           ## $a2 = 00000200
/* 016B8 80B4C1F8 26070206 */  addiu   $a3, $s0, 0x0206           ## $a3 = 00000206
/* 016BC 80B4C1FC AFA80014 */  sw      $t0, 0x0014($sp)           
/* 016C0 80B4C200 8E090040 */  lw      $t1, 0x0040($s0)           ## 00000040
/* 016C4 80B4C204 0C00E0A4 */  jal     func_80038290              
/* 016C8 80B4C208 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 016CC 80B4C20C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 016D0 80B4C210 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 016D4 80B4C214 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 016D8 80B4C218 03E00008 */  jr      $ra                        
/* 016DC 80B4C21C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
