.rdata
glabel D_80A52B84
    .asciz "[32m 種類  %d\n[m"
    .balign 4

glabel D_80A52B98
    .asciz "[32m ぱす  %d\n[m"
    .balign 4

glabel D_80A52BAC
    .asciz "[32m 反転  %d\n[m"
    .balign 4

glabel D_80A52BC0
    .asciz "[32m 時間  %d\n[m"
    .balign 4

glabel D_80A52BD4
    .asciz "\n\n"
    .balign 4

.text
glabel func_80A51D18
/* 00A48 80A51D18 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A4C 80A51D1C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00A50 80A51D20 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A54 80A51D24 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A58 80A51D28 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00A5C 80A51D2C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00A60 80A51D30 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00A64 80A51D34 3C0E80A5 */  lui     $t6, %hi(D_80A527A0)       ## $t6 = 80A50000
/* 00A68 80A51D38 8DCE27A0 */  lw      $t6, %lo(D_80A527A0)($t6)  
/* 00A6C 80A51D3C 55C00080 */  bnel    $t6, $zero, .L80A51F40     
/* 00A70 80A51D40 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A74 80A51D44 86020264 */  lh      $v0, 0x0264($s0)           ## 00000264
/* 00A78 80A51D48 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00A7C 80A51D4C 50400006 */  beql    $v0, $zero, .L80A51D68     
/* 00A80 80A51D50 860F0262 */  lh      $t7, 0x0262($s0)           ## 00000262
/* 00A84 80A51D54 50430023 */  beql    $v0, $v1, .L80A51DE4       
/* 00A88 80A51D58 861902A4 */  lh      $t9, 0x02A4($s0)           ## 000002A4
/* 00A8C 80A51D5C 10000051 */  beq     $zero, $zero, .L80A51EA4   
/* 00A90 80A51D60 C60002A0 */  lwc1    $f0, 0x02A0($s0)           ## 000002A0
/* 00A94 80A51D64 860F0262 */  lh      $t7, 0x0262($s0)           ## 00000262
.L80A51D68:
/* 00A98 80A51D68 3C01C614 */  lui     $at, 0xC614                ## $at = C6140000
/* 00A9C 80A51D6C 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00AA0 80A51D70 A6180262 */  sh      $t8, 0x0262($s0)           ## 00000262
/* 00AA4 80A51D74 86190262 */  lh      $t9, 0x0262($s0)           ## 00000262
/* 00AA8 80A51D78 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 00AAC 80A51D7C 51000006 */  beql    $t0, $zero, .L80A51D98     
/* 00AB0 80A51D80 44813000 */  mtc1    $at, $f6                   ## $f6 = -9472.00
/* 00AB4 80A51D84 3C014614 */  lui     $at, 0x4614                ## $at = 46140000
/* 00AB8 80A51D88 44812000 */  mtc1    $at, $f4                   ## $f4 = 9472.00
/* 00ABC 80A51D8C 10000004 */  beq     $zero, $zero, .L80A51DA0   
/* 00AC0 80A51D90 E6040280 */  swc1    $f4, 0x0280($s0)           ## 00000280
/* 00AC4 80A51D94 44813000 */  mtc1    $at, $f6                   ## $f6 = 9472.00
.L80A51D98:
/* 00AC8 80A51D98 00000000 */  nop
/* 00ACC 80A51D9C E6060280 */  swc1    $f6, 0x0280($s0)           ## 00000280
.L80A51DA0:
/* 00AD0 80A51DA0 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00AD4 80A51DA4 44816000 */  mtc1    $at, $f12                  ## $f12 = 30.00
/* 00AD8 80A51DA8 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00ADC 80A51DAC 00000000 */  nop
/* 00AE0 80A51DB0 8609026A */  lh      $t1, 0x026A($s0)           ## 0000026A
/* 00AE4 80A51DB4 4600020D */  trunc.w.s $f8, $f0                   
/* 00AE8 80A51DB8 3C0B80A5 */  lui     $t3, %hi(D_80A52844)       ## $t3 = 80A50000
/* 00AEC 80A51DBC 00095040 */  sll     $t2, $t1,  1               
/* 00AF0 80A51DC0 016A5821 */  addu    $t3, $t3, $t2              
/* 00AF4 80A51DC4 856B2844 */  lh      $t3, %lo(D_80A52844)($t3)  
/* 00AF8 80A51DC8 440F4000 */  mfc1    $t7, $f8                   
/* 00AFC 80A51DCC 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00B00 80A51DD0 A6030264 */  sh      $v1, 0x0264($s0)           ## 00000264
/* 00B04 80A51DD4 016FC021 */  addu    $t8, $t3, $t7              
/* 00B08 80A51DD8 10000031 */  beq     $zero, $zero, .L80A51EA0   
/* 00B0C 80A51DDC A61802A4 */  sh      $t8, 0x02A4($s0)           ## 000002A4
/* 00B10 80A51DE0 861902A4 */  lh      $t9, 0x02A4($s0)           ## 000002A4
.L80A51DE4:
/* 00B14 80A51DE4 5720002F */  bnel    $t9, $zero, .L80A51EA4     
/* 00B18 80A51DE8 C60002A0 */  lwc1    $f0, 0x02A0($s0)           ## 000002A0
/* 00B1C 80A51DEC 860802A6 */  lh      $t0, 0x02A6($s0)           ## 000002A6
/* 00B20 80A51DF0 3C1880A5 */  lui     $t8, %hi(func_80A5162C)    ## $t8 = 80A50000
/* 00B24 80A51DF4 2718162C */  addiu   $t8, $t8, %lo(func_80A5162C) ## $t8 = 80A5162C
/* 00B28 80A51DF8 55000029 */  bnel    $t0, $zero, .L80A51EA0     
/* 00B2C 80A51DFC A6000264 */  sh      $zero, 0x0264($s0)         ## 00000264
/* 00B30 80A51E00 8602026A */  lh      $v0, 0x026A($s0)           ## 0000026A
/* 00B34 80A51E04 50400004 */  beql    $v0, $zero, .L80A51E18     
/* 00B38 80A51E08 860902AA */  lh      $t1, 0x02AA($s0)           ## 000002AA
/* 00B3C 80A51E0C 1462000A */  bne     $v1, $v0, .L80A51E38       
/* 00B40 80A51E10 3C0480A5 */  lui     $a0, %hi(D_80A52900)       ## $a0 = 80A50000
/* 00B44 80A51E14 860902AA */  lh      $t1, 0x02AA($s0)           ## 000002AA
.L80A51E18:
/* 00B48 80A51E18 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 00B4C 80A51E1C A60A02AA */  sh      $t2, 0x02AA($s0)           ## 000002AA
/* 00B50 80A51E20 860C02AA */  lh      $t4, 0x02AA($s0)           ## 000002AA
/* 00B54 80A51E24 29810004 */  slti    $at, $t4, 0x0004           
/* 00B58 80A51E28 1420001A */  bne     $at, $zero, .L80A51E94     
/* 00B5C 80A51E2C 00000000 */  nop
/* 00B60 80A51E30 10000018 */  beq     $zero, $zero, .L80A51E94   
/* 00B64 80A51E34 A60002AA */  sh      $zero, 0x02AA($s0)         ## 000002AA
.L80A51E38:
/* 00B68 80A51E38 3C0280A5 */  lui     $v0, %hi(D_80A528F0)       ## $v0 = 80A50000
/* 00B6C 80A51E3C 244228F0 */  addiu   $v0, $v0, %lo(D_80A528F0)  ## $v0 = 80A528F0
/* 00B70 80A51E40 860302AA */  lh      $v1, 0x02AA($s0)           ## 000002AA
/* 00B74 80A51E44 24842900 */  addiu   $a0, $a0, %lo(D_80A52900)  ## $a0 = 80A52900
/* 00B78 80A51E48 844D0000 */  lh      $t5, 0x0000($v0)           ## 80A528F0
.L80A51E4C:
/* 00B7C 80A51E4C 146D000B */  bne     $v1, $t5, .L80A51E7C       
/* 00B80 80A51E50 3C0E80A5 */  lui     $t6, %hi(D_80A52900)       ## $t6 = 80A50000
/* 00B84 80A51E54 24420002 */  addiu   $v0, $v0, 0x0002           ## $v0 = 80A528F2
/* 00B88 80A51E58 25CE2900 */  addiu   $t6, $t6, %lo(D_80A52900)  ## $t6 = 80A52900
/* 00B8C 80A51E5C 004E082B */  sltu    $at, $v0, $t6              
/* 00B90 80A51E60 54200004 */  bnel    $at, $zero, .L80A51E74     
/* 00B94 80A51E64 844B0000 */  lh      $t3, 0x0000($v0)           ## 80A528F2
/* 00B98 80A51E68 3C0280A5 */  lui     $v0, %hi(D_80A528F0)       ## $v0 = 80A50000
/* 00B9C 80A51E6C 244228F0 */  addiu   $v0, $v0, %lo(D_80A528F0)  ## $v0 = 80A528F0
/* 00BA0 80A51E70 844B0000 */  lh      $t3, 0x0000($v0)           ## 80A528F0
.L80A51E74:
/* 00BA4 80A51E74 10000005 */  beq     $zero, $zero, .L80A51E8C   
/* 00BA8 80A51E78 A60B02AA */  sh      $t3, 0x02AA($s0)           ## 000002AA
.L80A51E7C:
/* 00BAC 80A51E7C 24420002 */  addiu   $v0, $v0, 0x0002           ## $v0 = 80A528F2
/* 00BB0 80A51E80 0044082B */  sltu    $at, $v0, $a0              
/* 00BB4 80A51E84 5420FFF1 */  bnel    $at, $zero, .L80A51E4C     
/* 00BB8 80A51E88 844D0000 */  lh      $t5, 0x0000($v0)           ## 80A528F2
.L80A51E8C:
/* 00BBC 80A51E8C 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 00BC0 80A51E90 A60F0270 */  sh      $t7, 0x0270($s0)           ## 00000270
.L80A51E94:
/* 00BC4 80A51E94 10000002 */  beq     $zero, $zero, .L80A51EA0   
/* 00BC8 80A51E98 AE18025C */  sw      $t8, 0x025C($s0)           ## 0000025C
/* 00BCC 80A51E9C A6000264 */  sh      $zero, 0x0264($s0)         ## 00000264
.L80A51EA0:
/* 00BD0 80A51EA0 C60002A0 */  lwc1    $f0, 0x02A0($s0)           ## 000002A0
.L80A51EA4:
/* 00BD4 80A51EA4 2604027C */  addiu   $a0, $s0, 0x027C           ## $a0 = 0000027C
/* 00BD8 80A51EA8 8E050280 */  lw      $a1, 0x0280($s0)           ## 00000280
/* 00BDC 80A51EAC 46000280 */  add.s   $f10, $f0, $f0             
/* 00BE0 80A51EB0 8E06029C */  lw      $a2, 0x029C($s0)           ## 0000029C
/* 00BE4 80A51EB4 44075000 */  mfc1    $a3, $f10                  
/* 00BE8 80A51EB8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00BEC 80A51EBC 00000000 */  nop
/* 00BF0 80A51EC0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00BF4 80A51EC4 8C42FA90 */  lw      $v0, -0x0570($v0)          ## 8015FA90
/* 00BF8 80A51EC8 8605026C */  lh      $a1, 0x026C($s0)           ## 0000026C
/* 00BFC 80A51ECC 845912D6 */  lh      $t9, 0x12D6($v0)           ## 801612D6
/* 00C00 80A51ED0 54B9001B */  bnel    $a1, $t9, .L80A51F40       
/* 00C04 80A51ED4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00C08 80A51ED8 844812D4 */  lh      $t0, 0x12D4($v0)           ## 801612D4
/* 00C0C 80A51EDC 3C0480A5 */  lui     $a0, %hi(D_80A52B84)       ## $a0 = 80A50000
/* 00C10 80A51EE0 51000017 */  beql    $t0, $zero, .L80A51F40     
/* 00C14 80A51EE4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00C18 80A51EE8 0C00084C */  jal     osSyncPrintf
              
/* 00C1C 80A51EEC 24842B84 */  addiu   $a0, $a0, %lo(D_80A52B84)  ## $a0 = 80A52B84
/* 00C20 80A51EF0 3C0480A5 */  lui     $a0, %hi(D_80A52B98)       ## $a0 = 80A50000
/* 00C24 80A51EF4 24842B98 */  addiu   $a0, $a0, %lo(D_80A52B98)  ## $a0 = 80A52B98
/* 00C28 80A51EF8 0C00084C */  jal     osSyncPrintf
              
/* 00C2C 80A51EFC 860502AA */  lh      $a1, 0x02AA($s0)           ## 000002AA
/* 00C30 80A51F00 C6100278 */  lwc1    $f16, 0x0278($s0)          ## 00000278
/* 00C34 80A51F04 3C0480A5 */  lui     $a0, %hi(D_80A52BAC)       ## $a0 = 80A50000
/* 00C38 80A51F08 24842BAC */  addiu   $a0, $a0, %lo(D_80A52BAC)  ## $a0 = 80A52BAC
/* 00C3C 80A51F0C 460084A1 */  cvt.d.s $f18, $f16                 
/* 00C40 80A51F10 44079000 */  mfc1    $a3, $f18                  
/* 00C44 80A51F14 44069800 */  mfc1    $a2, $f19                  
/* 00C48 80A51F18 0C00084C */  jal     osSyncPrintf
              
/* 00C4C 80A51F1C 00000000 */  nop
/* 00C50 80A51F20 3C0480A5 */  lui     $a0, %hi(D_80A52BC0)       ## $a0 = 80A50000
/* 00C54 80A51F24 24842BC0 */  addiu   $a0, $a0, %lo(D_80A52BC0)  ## $a0 = 80A52BC0
/* 00C58 80A51F28 0C00084C */  jal     osSyncPrintf
              
/* 00C5C 80A51F2C 86050270 */  lh      $a1, 0x0270($s0)           ## 00000270
/* 00C60 80A51F30 3C0480A5 */  lui     $a0, %hi(D_80A52BD4)       ## $a0 = 80A50000
/* 00C64 80A51F34 0C00084C */  jal     osSyncPrintf
              
/* 00C68 80A51F38 24842BD4 */  addiu   $a0, $a0, %lo(D_80A52BD4)  ## $a0 = 80A52BD4
/* 00C6C 80A51F3C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A51F40:
/* 00C70 80A51F40 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00C74 80A51F44 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00C78 80A51F48 03E00008 */  jr      $ra                        
/* 00C7C 80A51F4C 00000000 */  nop
