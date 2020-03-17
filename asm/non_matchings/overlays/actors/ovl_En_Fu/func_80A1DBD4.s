glabel func_80A1DBD4
/* 003C4 80A1DBD4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003C8 80A1DBD8 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 003CC 80A1DBDC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003D0 80A1DBE0 00451021 */  addu    $v0, $v0, $a1              
/* 003D4 80A1DBE4 944204C6 */  lhu     $v0, 0x04C6($v0)           ## 000104C6
/* 003D8 80A1DBE8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 003DC 80A1DBEC 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 003E0 80A1DBF0 28410004 */  slti    $at, $v0, 0x0004           
/* 003E4 80A1DBF4 1420000E */  bne     $at, $zero, .L80A1DC30     
/* 003E8 80A1DBF8 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 003EC 80A1DBFC 3C0E80A2 */  lui     $t6, %hi(func_80A1DE24)    ## $t6 = 80A20000
/* 003F0 80A1DC00 25CEDE24 */  addiu   $t6, $t6, %lo(func_80A1DE24) ## $t6 = 80A1DE24
/* 003F4 80A1DC04 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 003F8 80A1DC08 AC8E02AC */  sw      $t6, 0x02AC($a0)           ## 000002AC
/* 003FC 80A1DC0C 00250821 */  addu    $at, $at, $a1              
/* 00400 80A1DC10 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 00404 80A1DC14 A42F04C6 */  sh      $t7, 0x04C6($at)           ## 000104C6
/* 00408 80A1DC18 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 0040C 80A1DC1C 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 00410 80A1DC20 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 00414 80A1DC24 0301C824 */  and     $t9, $t8, $at              
/* 00418 80A1DC28 10000042 */  beq     $zero, $zero, .L80A1DD34   
/* 0041C 80A1DC2C AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
.L80A1DC30:
/* 00420 80A1DC30 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00424 80A1DC34 1441002C */  bne     $v0, $at, .L80A1DCE8       
/* 00428 80A1DC38 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 0042C 80A1DC3C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00430 80A1DC40 0C01E221 */  jal     func_80078884              
/* 00434 80A1DC44 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00438 80A1DC48 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0043C 80A1DC4C 3C020201 */  lui     $v0, 0x0201                ## $v0 = 02010000
/* 00440 80A1DC50 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 00444 80A1DC54 8CC90004 */  lw      $t1, 0x0004($a2)           ## 00000004
/* 00448 80A1DC58 2442E080 */  addiu   $v0, $v0, 0xE080           ## $v0 = 0200E080
/* 0044C 80A1DC5C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 00450 80A1DC60 00025900 */  sll     $t3, $v0,  4               
/* 00454 80A1DC64 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00458 80A1DC68 3C0880A2 */  lui     $t0, %hi(func_80A1DB60)    ## $t0 = 80A20000
/* 0045C 80A1DC6C 000B6702 */  srl     $t4, $t3, 28               
/* 00460 80A1DC70 01215024 */  and     $t2, $t1, $at              
/* 00464 80A1DC74 2508DB60 */  addiu   $t0, $t0, %lo(func_80A1DB60) ## $t0 = 80A1DB60
/* 00468 80A1DC78 000C6880 */  sll     $t5, $t4,  2               
/* 0046C 80A1DC7C 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00470 80A1DC80 01CD7021 */  addu    $t6, $t6, $t5              
/* 00474 80A1DC84 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00478 80A1DC88 ACC802AC */  sw      $t0, 0x02AC($a2)           ## 000002AC
/* 0047C 80A1DC8C ACCA0004 */  sw      $t2, 0x0004($a2)           ## 00000004
/* 00480 80A1DC90 8DCE6FA8 */  lw      $t6, 0x6FA8($t6)           ## 80166FA8
/* 00484 80A1DC94 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00488 80A1DC98 00417824 */  and     $t7, $v0, $at              
/* 0048C 80A1DC9C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00490 80A1DCA0 01CFC021 */  addu    $t8, $t6, $t7              
/* 00494 80A1DCA4 0301C821 */  addu    $t9, $t8, $at              
/* 00498 80A1DCA8 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 0049C 80A1DCAC 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 004A0 80A1DCB0 AC991D68 */  sw      $t9, 0x1D68($a0)           ## 00001D68
/* 004A4 80A1DCB4 A028FA74 */  sb      $t0, -0x058C($at)          ## 8015FA74
/* 004A8 80A1DCB8 0C021344 */  jal     Item_Give              
/* 004AC 80A1DCBC 24050065 */  addiu   $a1, $zero, 0x0065         ## $a1 = 00000065
/* 004B0 80A1DCC0 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 004B4 80A1DCC4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 004B8 80A1DCC8 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 004BC 80A1DCCC 00270821 */  addu    $at, $at, $a3              
/* 004C0 80A1DCD0 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 004C4 80A1DCD4 A42004C6 */  sh      $zero, 0x04C6($at)         ## 000104C6
/* 004C8 80A1DCD8 94490EE0 */  lhu     $t1, 0x0EE0($v0)           ## 8015F540
/* 004CC 80A1DCDC 352A0020 */  ori     $t2, $t1, 0x0020           ## $t2 = 00000020
/* 004D0 80A1DCE0 10000014 */  beq     $zero, $zero, .L80A1DD34   
/* 004D4 80A1DCE4 A44A0EE0 */  sh      $t2, 0x0EE0($v0)           ## 8015F540
.L80A1DCE8:
/* 004D8 80A1DCE8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 004DC 80A1DCEC 5441000B */  bnel    $v0, $at, .L80A1DD1C       
/* 004E0 80A1DCF0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 004E4 80A1DCF4 8C6B0680 */  lw      $t3, 0x0680($v1)           ## 00000680
/* 004E8 80A1DCF8 3C01FEFF */  lui     $at, 0xFEFF                ## $at = FEFF0000
/* 004EC 80A1DCFC 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FEFFFFFF
/* 004F0 80A1DD00 3C0D80A2 */  lui     $t5, %hi(func_80A1DE24)    ## $t5 = 80A20000
/* 004F4 80A1DD04 01616024 */  and     $t4, $t3, $at              
/* 004F8 80A1DD08 AC6C0680 */  sw      $t4, 0x0680($v1)           ## 00000680
/* 004FC 80A1DD0C 25ADDE24 */  addiu   $t5, $t5, %lo(func_80A1DE24) ## $t5 = 80A1DE24
/* 00500 80A1DD10 10000008 */  beq     $zero, $zero, .L80A1DD34   
/* 00504 80A1DD14 ACCD02AC */  sw      $t5, 0x02AC($a2)           ## 000002AC
/* 00508 80A1DD18 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L80A1DD1C:
/* 0050C 80A1DD1C 54410006 */  bnel    $v0, $at, .L80A1DD38       
/* 00510 80A1DD20 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00514 80A1DD24 8C6E0680 */  lw      $t6, 0x0680($v1)           ## 00000680
/* 00518 80A1DD28 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 0051C 80A1DD2C 01C17825 */  or      $t7, $t6, $at              ## $t7 = 00800000
/* 00520 80A1DD30 AC6F0680 */  sw      $t7, 0x0680($v1)           ## 00000680
.L80A1DD34:
/* 00524 80A1DD34 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A1DD38:
/* 00528 80A1DD38 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0052C 80A1DD3C 03E00008 */  jr      $ra                        
/* 00530 80A1DD40 00000000 */  nop


