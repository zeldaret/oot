.rdata
glabel D_809BCB38
    .asciz "../z_en_bdfire.c"
    .balign 4

glabel D_809BCB4C
    .asciz "../z_en_bdfire.c"
    .balign 4

glabel D_809BCB60
    .asciz "../z_en_bdfire.c"
    .balign 4

.text
glabel func_809BC8C8
/* 00898 809BC8C8 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 0089C 809BC8CC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 008A0 809BC8D0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 008A4 809BC8D4 AFA40060 */  sw      $a0, 0x0060($sp)           
/* 008A8 809BC8D8 AFA50064 */  sw      $a1, 0x0064($sp)           
/* 008AC 809BC8DC 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 008B0 809BC8E0 3C06809C */  lui     $a2, %hi(D_809BCB38)       ## $a2 = 809C0000
/* 008B4 809BC8E4 24C6CB38 */  addiu   $a2, $a2, %lo(D_809BCB38)  ## $a2 = 809BCB38
/* 008B8 809BC8E8 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFE4
/* 008BC 809BC8EC 24070264 */  addiu   $a3, $zero, 0x0264         ## $a3 = 00000264
/* 008C0 809BC8F0 0C031AB1 */  jal     Graph_OpenDisps              
/* 008C4 809BC8F4 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 008C8 809BC8F8 8FAF0060 */  lw      $t7, 0x0060($sp)           
/* 008CC 809BC8FC 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 008D0 809BC900 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 008D4 809BC904 85F80156 */  lh      $t8, 0x0156($t7)           ## 00000156
/* 008D8 809BC908 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 008DC 809BC90C 00812021 */  addu    $a0, $a0, $at              
/* 008E0 809BC910 33190007 */  andi    $t9, $t8, 0x0007           ## $t9 = 00000000
/* 008E4 809BC914 0C0347F5 */  jal     func_800D1FD4              
/* 008E8 809BC918 A7B9005E */  sh      $t9, 0x005E($sp)           
/* 008EC 809BC91C 8FA80064 */  lw      $t0, 0x0064($sp)           
/* 008F0 809BC920 0C0252F1 */  jal     func_80094BC4              
/* 008F4 809BC924 8D040000 */  lw      $a0, 0x0000($t0)           ## 00000000
/* 008F8 809BC928 0C02525A */  jal     func_80094968              
/* 008FC 809BC92C 8E0402D0 */  lw      $a0, 0x02D0($s0)           ## 000002D0
/* 00900 809BC930 AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
/* 00904 809BC934 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 00908 809BC938 AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 0090C 809BC93C 3C0AFC30 */  lui     $t2, 0xFC30                ## $t2 = FC300000
/* 00910 809BC940 3C0B5566 */  lui     $t3, 0x5566                ## $t3 = 55660000
/* 00914 809BC944 356BDB6D */  ori     $t3, $t3, 0xDB6D           ## $t3 = 5566DB6D
/* 00918 809BC948 354AB261 */  ori     $t2, $t2, 0xB261           ## $t2 = FC30B261
/* 0091C 809BC94C AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 00920 809BC950 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 00924 809BC954 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00928 809BC958 3C0DE700 */  lui     $t5, 0xE700                ## $t5 = E7000000
/* 0092C 809BC95C 3C0FFA00 */  lui     $t7, 0xFA00                ## $t7 = FA000000
/* 00930 809BC960 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 00934 809BC964 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 00938 809BC968 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 0093C 809BC96C AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 00940 809BC970 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00944 809BC974 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 00948 809BC978 34216400 */  ori     $at, $at, 0x6400           ## $at = FFFF6400
/* 0094C 809BC97C 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 00950 809BC980 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 00954 809BC984 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 00958 809BC988 8FB80060 */  lw      $t8, 0x0060($sp)           
/* 0095C 809BC98C 3C0FC800 */  lui     $t7, 0xC800                ## $t7 = C8000000
/* 00960 809BC990 3C0EFB00 */  lui     $t6, 0xFB00                ## $t6 = FB000000
/* 00964 809BC994 C704018C */  lwc1    $f4, 0x018C($t8)           ## 0000018C
/* 00968 809BC998 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 0096C 809BC99C 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 00970 809BC9A0 4600218D */  trunc.w.s $f6, $f4                   
/* 00974 809BC9A4 3C04809C */  lui     $a0, %hi(D_809BCB10)       ## $a0 = 809C0000
/* 00978 809BC9A8 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 0097C 809BC9AC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00980 809BC9B0 440A3000 */  mfc1    $t2, $f6                   
/* 00984 809BC9B4 44066000 */  mfc1    $a2, $f12                  
/* 00988 809BC9B8 314B00FF */  andi    $t3, $t2, 0x00FF           ## $t3 = 00000061
/* 0098C 809BC9BC 01616025 */  or      $t4, $t3, $at              ## $t4 = FFFF6461
/* 00990 809BC9C0 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 00994 809BC9C4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00998 809BC9C8 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 0099C 809BC9CC 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 009A0 809BC9D0 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 009A4 809BC9D4 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 009A8 809BC9D8 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 009AC 809BC9DC AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 009B0 809BC9E0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 009B4 809BC9E4 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 009B8 809BC9E8 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 009BC 809BC9EC AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 009C0 809BC9F0 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 009C4 809BC9F4 87A8005E */  lh      $t0, 0x005E($sp)           
/* 009C8 809BC9F8 00084880 */  sll     $t1, $t0,  2               
/* 009CC 809BC9FC 00892021 */  addu    $a0, $a0, $t1              
/* 009D0 809BCA00 8C84CB10 */  lw      $a0, %lo(D_809BCB10)($a0)  
/* 009D4 809BCA04 00045900 */  sll     $t3, $a0,  4               
/* 009D8 809BCA08 000B6702 */  srl     $t4, $t3, 28               
/* 009DC 809BCA0C 000C6880 */  sll     $t5, $t4,  2               
/* 009E0 809BCA10 01CD7021 */  addu    $t6, $t6, $t5              
/* 009E4 809BCA14 8DCE6FA8 */  lw      $t6, 0x6FA8($t6)           ## 80166FA8
/* 009E8 809BCA18 00815024 */  and     $t2, $a0, $at              
/* 009EC 809BCA1C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 009F0 809BCA20 014E7821 */  addu    $t7, $t2, $t6              
/* 009F4 809BCA24 01E1C021 */  addu    $t8, $t7, $at              
/* 009F8 809BCA28 3C014130 */  lui     $at, 0x4130                ## $at = 41300000
/* 009FC 809BCA2C 44817000 */  mtc1    $at, $f14                  ## $f14 = 11.00
/* 00A00 809BCA30 0C034261 */  jal     Matrix_Translate              
/* 00A04 809BCA34 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 00A08 809BCA38 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00A0C 809BCA3C 3C08DA38 */  lui     $t0, 0xDA38                ## $t0 = DA380000
/* 00A10 809BCA40 35080003 */  ori     $t0, $t0, 0x0003           ## $t0 = DA380003
/* 00A14 809BCA44 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 00A18 809BCA48 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 00A1C 809BCA4C AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 00A20 809BCA50 8FA90064 */  lw      $t1, 0x0064($sp)           
/* 00A24 809BCA54 3C05809C */  lui     $a1, %hi(D_809BCB4C)       ## $a1 = 809C0000
/* 00A28 809BCA58 24A5CB4C */  addiu   $a1, $a1, %lo(D_809BCB4C)  ## $a1 = 809BCB4C
/* 00A2C 809BCA5C 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 00A30 809BCA60 24060287 */  addiu   $a2, $zero, 0x0287         ## $a2 = 00000287
/* 00A34 809BCA64 0C0346A2 */  jal     Matrix_NewMtx              
/* 00A38 809BCA68 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 00A3C 809BCA6C 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 00A40 809BCA70 3C0D0602 */  lui     $t5, 0x0602                ## $t5 = 06020000
/* 00A44 809BCA74 25ADD950 */  addiu   $t5, $t5, 0xD950           ## $t5 = 0601D950
/* 00A48 809BCA78 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00A4C 809BCA7C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00A50 809BCA80 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 00A54 809BCA84 3C06809C */  lui     $a2, %hi(D_809BCB60)       ## $a2 = 809C0000
/* 00A58 809BCA88 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00A5C 809BCA8C AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 00A60 809BCA90 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 00A64 809BCA94 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00A68 809BCA98 8FAA0064 */  lw      $t2, 0x0064($sp)           
/* 00A6C 809BCA9C 24C6CB60 */  addiu   $a2, $a2, %lo(D_809BCB60)  ## $a2 = 809BCB60
/* 00A70 809BCAA0 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFE4
/* 00A74 809BCAA4 2407028B */  addiu   $a3, $zero, 0x028B         ## $a3 = 0000028B
/* 00A78 809BCAA8 0C031AD5 */  jal     Graph_CloseDisps              
/* 00A7C 809BCAAC 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
/* 00A80 809BCAB0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A84 809BCAB4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00A88 809BCAB8 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 00A8C 809BCABC 03E00008 */  jr      $ra                        
/* 00A90 809BCAC0 00000000 */  nop
