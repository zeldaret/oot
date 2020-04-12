.rdata
glabel D_80A32808
    .asciz "../z_en_ge1.c"
    .balign 4

glabel D_80A32818
    .asciz "z_common_data.yabusame_total = %d\n"
    .balign 4

glabel D_80A3283C
    .asciz "../z_en_ge1.c"
    .balign 4

glabel D_80A3284C
    .asciz "z_common_data.memory.information.room_inf[127][ 0 ] = %d\n"
    .balign 4

.text
glabel func_80A31E2C
/* 014BC 80A31E2C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 014C0 80A31E30 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 014C4 80A31E34 3C108016 */  lui     $s0, 0x8016                ## $s0 = 80160000
/* 014C8 80A31E38 2610E660 */  addiu   $s0, $s0, 0xE660           ## $s0 = 8015E660
/* 014CC 80A31E3C 960E13FA */  lhu     $t6, 0x13FA($s0)           ## 8015FA5A
/* 014D0 80A31E40 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 014D4 80A31E44 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 014D8 80A31E48 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 014DC 80A31E4C 3C0480A3 */  lui     $a0, %hi(D_80A32808)       ## $a0 = 80A30000
/* 014E0 80A31E50 31CFFEFF */  andi    $t7, $t6, 0xFEFF           ## $t7 = 00000000
/* 014E4 80A31E54 A60F13FA */  sh      $t7, 0x13FA($s0)           ## 8015FA5A
/* 014E8 80A31E58 24842808 */  addiu   $a0, $a0, %lo(D_80A32808)  ## $a0 = 80A32808
/* 014EC 80A31E5C 24050456 */  addiu   $a1, $zero, 0x0456         ## $a1 = 00000456
/* 014F0 80A31E60 0C000B84 */  jal     LogUtils_LogThreadId
              
/* 014F4 80A31E64 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 014F8 80A31E68 3C0480A3 */  lui     $a0, %hi(D_80A32818)       ## $a0 = 80A30000
/* 014FC 80A31E6C 24842818 */  addiu   $a0, $a0, %lo(D_80A32818)  ## $a0 = 80A32818
/* 01500 80A31E70 0C00084C */  jal     osSyncPrintf
              
/* 01504 80A31E74 96051406 */  lhu     $a1, 0x1406($s0)           ## 8015FA66
/* 01508 80A31E78 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 0150C 80A31E7C 3C0480A3 */  lui     $a0, %hi(D_80A3283C)       ## $a0 = 80A30000
/* 01510 80A31E80 2484283C */  addiu   $a0, $a0, %lo(D_80A3283C)  ## $a0 = 80A3283C
/* 01514 80A31E84 24050457 */  addiu   $a1, $zero, 0x0457         ## $a1 = 00000457
/* 01518 80A31E88 0C000B84 */  jal     LogUtils_LogThreadId
              
/* 0151C 80A31E8C AFA60020 */  sw      $a2, 0x0020($sp)           
/* 01520 80A31E90 3C0480A3 */  lui     $a0, %hi(D_80A3284C)       ## $a0 = 80A30000
/* 01524 80A31E94 2484284C */  addiu   $a0, $a0, %lo(D_80A3284C)  ## $a0 = 80A3284C
/* 01528 80A31E98 0C00084C */  jal     osSyncPrintf
              
/* 0152C 80A31E9C 8E050EB8 */  lw      $a1, 0x0EB8($s0)           ## 8015F518
/* 01530 80A31EA0 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 01534 80A31EA4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01538 80A31EA8 3C0A80A3 */  lui     $t2, %hi(func_80A31DE4)    ## $t2 = 80A30000
/* 0153C 80A31EAC 8CD80004 */  lw      $t8, 0x0004($a2)           ## 00000004
/* 01540 80A31EB0 24096045 */  addiu   $t1, $zero, 0x6045         ## $t1 = 00006045
/* 01544 80A31EB4 254A1DE4 */  addiu   $t2, $t2, %lo(func_80A31DE4) ## $t2 = 80A31DE4
/* 01548 80A31EB8 0301C825 */  or      $t9, $t8, $at              ## $t9 = 00010000
/* 0154C 80A31EBC ACD90004 */  sw      $t9, 0x0004($a2)           ## 00000004
/* 01550 80A31EC0 8E080EB8 */  lw      $t0, 0x0EB8($s0)           ## 8015F518
/* 01554 80A31EC4 96021406 */  lhu     $v0, 0x1406($s0)           ## 8015FA66
/* 01558 80A31EC8 0102082A */  slt     $at, $t0, $v0              
/* 0155C 80A31ECC 50200004 */  beql    $at, $zero, .L80A31EE0     
/* 01560 80A31ED0 284103E8 */  slti    $at, $v0, 0x03E8           
/* 01564 80A31ED4 AE020EB8 */  sw      $v0, 0x0EB8($s0)           ## 8015F518
/* 01568 80A31ED8 96021406 */  lhu     $v0, 0x1406($s0)           ## 8015FA66
/* 0156C 80A31EDC 284103E8 */  slti    $at, $v0, 0x03E8           
.L80A31EE0:
/* 01570 80A31EE0 50200005 */  beql    $at, $zero, .L80A31EF8     
/* 01574 80A31EE4 960B0F2A */  lhu     $t3, 0x0F2A($s0)           ## 8015F58A
/* 01578 80A31EE8 A4C9010E */  sh      $t1, 0x010E($a2)           ## 0000010E
/* 0157C 80A31EEC 10000026 */  beq     $zero, $zero, .L80A31F88   
/* 01580 80A31EF0 ACCA02B4 */  sw      $t2, 0x02B4($a2)           ## 000002B4
/* 01584 80A31EF4 960B0F2A */  lhu     $t3, 0x0F2A($s0)           ## 8015F58A
.L80A31EF8:
/* 01588 80A31EF8 240D6046 */  addiu   $t5, $zero, 0x6046         ## $t5 = 00006046
/* 0158C 80A31EFC 3C0E80A3 */  lui     $t6, %hi(func_80A31B20)    ## $t6 = 80A30000
/* 01590 80A31F00 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 01594 80A31F04 15800008 */  bne     $t4, $zero, .L80A31F28     
/* 01598 80A31F08 284105DC */  slti    $at, $v0, 0x05DC           
/* 0159C 80A31F0C 94CF02AC */  lhu     $t7, 0x02AC($a2)           ## 000002AC
/* 015A0 80A31F10 25CE1B20 */  addiu   $t6, $t6, %lo(func_80A31B20) ## $t6 = 80A31B20
/* 015A4 80A31F14 A4CD010E */  sh      $t5, 0x010E($a2)           ## 0000010E
/* 015A8 80A31F18 31F8FFFD */  andi    $t8, $t7, 0xFFFD           ## $t8 = 00000000
/* 015AC 80A31F1C ACCE02B4 */  sw      $t6, 0x02B4($a2)           ## 000002B4
/* 015B0 80A31F20 10000019 */  beq     $zero, $zero, .L80A31F88   
/* 015B4 80A31F24 A4D802AC */  sh      $t8, 0x02AC($a2)           ## 000002AC
.L80A31F28:
/* 015B8 80A31F28 10200006 */  beq     $at, $zero, .L80A31F44     
/* 015BC 80A31F2C 24196047 */  addiu   $t9, $zero, 0x6047         ## $t9 = 00006047
/* 015C0 80A31F30 3C0880A3 */  lui     $t0, %hi(func_80A31DE4)    ## $t0 = 80A30000
/* 015C4 80A31F34 25081DE4 */  addiu   $t0, $t0, %lo(func_80A31DE4) ## $t0 = 80A31DE4
/* 015C8 80A31F38 A4D9010E */  sh      $t9, 0x010E($a2)           ## 0000010E
/* 015CC 80A31F3C 10000012 */  beq     $zero, $zero, .L80A31F88   
/* 015D0 80A31F40 ACC802B4 */  sw      $t0, 0x02B4($a2)           ## 000002B4
.L80A31F44:
/* 015D4 80A31F44 96090EF0 */  lhu     $t1, 0x0EF0($s0)           ## 8015F550
/* 015D8 80A31F48 3C0E80A3 */  lui     $t6, %hi(func_80A31B20)    ## $t6 = 80A30000
/* 015DC 80A31F4C 240D6044 */  addiu   $t5, $zero, 0x6044         ## $t5 = 00006044
/* 015E0 80A31F50 312A8000 */  andi    $t2, $t1, 0x8000           ## $t2 = 00000000
/* 015E4 80A31F54 11400007 */  beq     $t2, $zero, .L80A31F74     
/* 015E8 80A31F58 25CE1B20 */  addiu   $t6, $t6, %lo(func_80A31B20) ## $t6 = 80A31B20
/* 015EC 80A31F5C 3C0C80A3 */  lui     $t4, %hi(func_80A31DE4)    ## $t4 = 80A30000
/* 015F0 80A31F60 240B6047 */  addiu   $t3, $zero, 0x6047         ## $t3 = 00006047
/* 015F4 80A31F64 258C1DE4 */  addiu   $t4, $t4, %lo(func_80A31DE4) ## $t4 = 80A31DE4
/* 015F8 80A31F68 A4CB010E */  sh      $t3, 0x010E($a2)           ## 0000010E
/* 015FC 80A31F6C 10000006 */  beq     $zero, $zero, .L80A31F88   
/* 01600 80A31F70 ACCC02B4 */  sw      $t4, 0x02B4($a2)           ## 000002B4
.L80A31F74:
/* 01604 80A31F74 94CF02AC */  lhu     $t7, 0x02AC($a2)           ## 000002AC
/* 01608 80A31F78 A4CD010E */  sh      $t5, 0x010E($a2)           ## 0000010E
/* 0160C 80A31F7C ACCE02B4 */  sw      $t6, 0x02B4($a2)           ## 000002B4
/* 01610 80A31F80 35F80002 */  ori     $t8, $t7, 0x0002           ## $t8 = 00000002
/* 01614 80A31F84 A4D802AC */  sh      $t8, 0x02AC($a2)           ## 000002AC
.L80A31F88:
/* 01618 80A31F88 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0161C 80A31F8C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01620 80A31F90 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01624 80A31F94 03E00008 */  jr      $ra                        
/* 01628 80A31F98 00000000 */  nop
