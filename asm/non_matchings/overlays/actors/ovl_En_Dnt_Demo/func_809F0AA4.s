.rdata
glabel D_809F1758
    .asciz "\x1b[31m☆☆☆☆☆ げらげら ☆☆☆☆☆ \n\x1b[m"
    .balign 4

glabel D_809F1784
    .asciz "\x1b[32m☆☆☆☆☆ 特別！ ☆☆☆☆☆ \n\x1b[m"
    .balign 4

glabel D_809F17AC
    .asciz "\x1b[32m☆☆☆☆☆ ヤバいよこれ！ ☆☆☆☆☆ \n\x1b[m"
    .balign 4

glabel D_809F17DC
    .asciz "\x1b[33m☆☆☆☆☆ ヤバいよこれ！ ☆☆☆☆☆ \n\x1b[m"
    .balign 4

glabel D_809F180C
    .asciz "\x1b[35m☆☆☆☆☆ ヤバいよこれ！ ☆☆☆☆☆ \n\x1b[m"
    .balign 4

glabel D_809F183C
    .asciz "\x1b[36m☆☆☆☆☆ ヤバいよこれ！ ☆☆☆☆☆ \n\x1b[m"
    .balign 4

glabel D_809F186C
    .asciz "\n\n"
    .balign 4

glabel D_809F1870
    .asciz "\x1b[32m☆☆☆☆☆ 各インデックス１ ☆☆☆☆☆ %d\n\x1b[m"
    .balign 4

glabel D_809F18A4
    .asciz "\x1b[32m☆☆☆☆☆ 各インデックス２ ☆☆☆☆☆ %d\n\x1b[m"
    .balign 4

glabel D_809F18D8
    .asciz "\x1b[32m☆☆☆☆☆ 各インデックス３ ☆☆☆☆☆ %d\n\x1b[m"
    .balign 4

glabel D_809F190C
    .asciz "\n"
    .balign 4

glabel D_809F1910
    .asciz "\x1b[33m☆☆☆☆☆ どういう評価？  ☆☆☆☆☆☆ %d\n\x1b[m"
    .balign 4

glabel D_809F1944
    .asciz "\x1b[35m☆☆☆☆☆ どういうアクション？  ☆☆☆ %d\n\x1b[m"
    .balign 4

glabel D_809F1978
    .asciz "\n\n"
    .balign 4

.late_rodata
glabel jtbl_809F1980
.word L809F0E1C
.word L809F0D50
.word L809F0E1C
.word L809F0E1C
.word L809F0E1C
.word L809F0E1C
.word L809F0E1C
.word L809F0D80
glabel D_809F19A0
    .float 8.99
glabel D_809F19A4
    .float 7.99

.text
glabel func_809F0AA4
/* 001C4 809F0AA4 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 001C8 809F0AA8 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 001CC 809F0AAC AFB20028 */  sw      $s2, 0x0028($sp)           
/* 001D0 809F0AB0 AFB10024 */  sw      $s1, 0x0024($sp)           
/* 001D4 809F0AB4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 001D8 809F0AB8 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 001DC 809F0ABC 84860158 */  lh      $a2, 0x0158($a0)           ## 00000158
/* 001E0 809F0AC0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 001E4 809F0AC4 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 001E8 809F0AC8 50C0003A */  beql    $a2, $zero, .L809F0BB4     
/* 001EC 809F0ACC 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 001F0 809F0AD0 8C8E01D8 */  lw      $t6, 0x01D8($a0)           ## 000001D8
/* 001F4 809F0AD4 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 001F8 809F0AD8 26020004 */  addiu   $v0, $s0, 0x0004           ## $v0 = 00000004
/* 001FC 809F0ADC A5C60270 */  sh      $a2, 0x0270($t6)           ## 00000270
/* 00200 809F0AE0 8C9801D8 */  lw      $t8, 0x01D8($a0)           ## 000001D8
/* 00204 809F0AE4 860F015A */  lh      $t7, 0x015A($s0)           ## 0000015A
/* 00208 809F0AE8 24120009 */  addiu   $s2, $zero, 0x0009         ## $s2 = 00000009
/* 0020C 809F0AEC A70F0274 */  sh      $t7, 0x0274($t8)           ## 00000274
/* 00210 809F0AF0 8C9901D8 */  lw      $t9, 0x01D8($a0)           ## 000001D8
/* 00214 809F0AF4 A3200278 */  sb      $zero, 0x0278($t9)         ## 00000278
.L809F0AF8:
/* 00218 809F0AF8 860A0158 */  lh      $t2, 0x0158($s0)           ## 00000158
/* 0021C 809F0AFC 8C4B01D8 */  lw      $t3, 0x01D8($v0)           ## 000001DC
/* 00220 809F0B00 24630004 */  addiu   $v1, $v1, 0x0004           ## $v1 = 00000005
/* 00224 809F0B04 24420010 */  addiu   $v0, $v0, 0x0010           ## $v0 = 00000014
/* 00228 809F0B08 A56A0270 */  sh      $t2, 0x0270($t3)           ## 00000270
/* 0022C 809F0B0C 860C015A */  lh      $t4, 0x015A($s0)           ## 0000015A
/* 00230 809F0B10 8C4D01C8 */  lw      $t5, 0x01C8($v0)           ## 000001DC
/* 00234 809F0B14 A5AC0274 */  sh      $t4, 0x0274($t5)           ## 00000274
/* 00238 809F0B18 8C4E01C8 */  lw      $t6, 0x01C8($v0)           ## 000001DC
/* 0023C 809F0B1C A1C00278 */  sb      $zero, 0x0278($t6)         ## 00000278
/* 00240 809F0B20 860F0158 */  lh      $t7, 0x0158($s0)           ## 00000158
/* 00244 809F0B24 8C5801CC */  lw      $t8, 0x01CC($v0)           ## 000001E0
/* 00248 809F0B28 A70F0270 */  sh      $t7, 0x0270($t8)           ## 00000270
/* 0024C 809F0B2C 8619015A */  lh      $t9, 0x015A($s0)           ## 0000015A
/* 00250 809F0B30 8C4A01CC */  lw      $t2, 0x01CC($v0)           ## 000001E0
/* 00254 809F0B34 A5590274 */  sh      $t9, 0x0274($t2)           ## 00000274
/* 00258 809F0B38 8C4B01CC */  lw      $t3, 0x01CC($v0)           ## 000001E0
/* 0025C 809F0B3C A1600278 */  sb      $zero, 0x0278($t3)         ## 00000278
/* 00260 809F0B40 860C0158 */  lh      $t4, 0x0158($s0)           ## 00000158
/* 00264 809F0B44 8C4D01D0 */  lw      $t5, 0x01D0($v0)           ## 000001E4
/* 00268 809F0B48 A5AC0270 */  sh      $t4, 0x0270($t5)           ## 00000270
/* 0026C 809F0B4C 860E015A */  lh      $t6, 0x015A($s0)           ## 0000015A
/* 00270 809F0B50 8C4F01D0 */  lw      $t7, 0x01D0($v0)           ## 000001E4
/* 00274 809F0B54 A5EE0274 */  sh      $t6, 0x0274($t7)           ## 00000274
/* 00278 809F0B58 8C5801D0 */  lw      $t8, 0x01D0($v0)           ## 000001E4
/* 0027C 809F0B5C A3000278 */  sb      $zero, 0x0278($t8)         ## 00000278
/* 00280 809F0B60 8C4A01D4 */  lw      $t2, 0x01D4($v0)           ## 000001E8
/* 00284 809F0B64 86190158 */  lh      $t9, 0x0158($s0)           ## 00000158
/* 00288 809F0B68 A5590270 */  sh      $t9, 0x0270($t2)           ## 00000270
/* 0028C 809F0B6C 8C4C01D4 */  lw      $t4, 0x01D4($v0)           ## 000001E8
/* 00290 809F0B70 860B015A */  lh      $t3, 0x015A($s0)           ## 0000015A
/* 00294 809F0B74 A58B0274 */  sh      $t3, 0x0274($t4)           ## 00000274
/* 00298 809F0B78 8C4D01D4 */  lw      $t5, 0x01D4($v0)           ## 000001E8
/* 0029C 809F0B7C 1472FFDE */  bne     $v1, $s2, .L809F0AF8       
/* 002A0 809F0B80 A1A00278 */  sb      $zero, 0x0278($t5)         ## 00000278
/* 002A4 809F0B84 8E0201FC */  lw      $v0, 0x01FC($s0)           ## 000001FC
/* 002A8 809F0B88 3C18809F */  lui     $t8, %hi(func_809F1100)    ## $t8 = 809F0000
/* 002AC 809F0B8C 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 002B0 809F0B90 904E023C */  lbu     $t6, 0x023C($v0)           ## 00000250
/* 002B4 809F0B94 27181100 */  addiu   $t8, $t8, %lo(func_809F1100) ## $t8 = 809F1100
/* 002B8 809F0B98 51C00003 */  beql    $t6, $zero, .L809F0BA8     
/* 002BC 809F0B9C A6000158 */  sh      $zero, 0x0158($s0)         ## 00000158
/* 002C0 809F0BA0 A44F024E */  sh      $t7, 0x024E($v0)           ## 00000262
/* 002C4 809F0BA4 A6000158 */  sh      $zero, 0x0158($s0)         ## 00000158
.L809F0BA8:
/* 002C8 809F0BA8 1000014F */  beq     $zero, $zero, .L809F10E8   
/* 002CC 809F0BAC AE18014C */  sw      $t8, 0x014C($s0)           ## 0000014C
/* 002D0 809F0BB0 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
.L809F0BB4:
/* 002D4 809F0BB4 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 002D8 809F0BB8 4606203C */  c.lt.s  $f4, $f6                   
/* 002DC 809F0BBC 00000000 */  nop
/* 002E0 809F0BC0 45030006 */  bc1tl   .L809F0BDC                 
/* 002E4 809F0BC4 86190156 */  lh      $t9, 0x0156($s0)           ## 00000156
/* 002E8 809F0BC8 0C023C20 */  jal     Player_GetMask              
/* 002EC 809F0BCC 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 002F0 809F0BD0 1440001D */  bne     $v0, $zero, .L809F0C48     
/* 002F4 809F0BD4 00000000 */  nop
/* 002F8 809F0BD8 86190156 */  lh      $t9, 0x0156($s0)           ## 00000156
.L809F0BDC:
/* 002FC 809F0BDC 860B015E */  lh      $t3, 0x015E($s0)           ## 0000015E
/* 00300 809F0BE0 24040004 */  addiu   $a0, $zero, 0x0004         ## $a0 = 00000004
/* 00304 809F0BE4 272A0001 */  addiu   $t2, $t9, 0x0001           ## $t2 = 00000001
/* 00308 809F0BE8 11600002 */  beq     $t3, $zero, .L809F0BF4     
/* 0030C 809F0BEC A60A0156 */  sh      $t2, 0x0156($s0)           ## 00000156
/* 00310 809F0BF0 A600015E */  sh      $zero, 0x015E($s0)         ## 0000015E
.L809F0BF4:
/* 00314 809F0BF4 860C0150 */  lh      $t4, 0x0150($s0)           ## 00000150
/* 00318 809F0BF8 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 0031C 809F0BFC 5180013B */  beql    $t4, $zero, .L809F10EC     
/* 00320 809F0C00 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00324 809F0C04 8E0D01D8 */  lw      $t5, 0x01D8($s0)           ## 000001D8
/* 00328 809F0C08 26020004 */  addiu   $v0, $s0, 0x0004           ## $v0 = 00000004
/* 0032C 809F0C0C 24120009 */  addiu   $s2, $zero, 0x0009         ## $s2 = 00000009
/* 00330 809F0C10 A5A40270 */  sh      $a0, 0x0270($t5)           ## 00000270
.L809F0C14:
/* 00334 809F0C14 8C4E01D8 */  lw      $t6, 0x01D8($v0)           ## 000001DC
/* 00338 809F0C18 24630004 */  addiu   $v1, $v1, 0x0004           ## $v1 = 00000005
/* 0033C 809F0C1C 24420010 */  addiu   $v0, $v0, 0x0010           ## $v0 = 00000014
/* 00340 809F0C20 A5C40270 */  sh      $a0, 0x0270($t6)           ## 00000270
/* 00344 809F0C24 8C4F01CC */  lw      $t7, 0x01CC($v0)           ## 000001E0
/* 00348 809F0C28 A5E40270 */  sh      $a0, 0x0270($t7)           ## 00000270
/* 0034C 809F0C2C 8C5801D0 */  lw      $t8, 0x01D0($v0)           ## 000001E4
/* 00350 809F0C30 A7040270 */  sh      $a0, 0x0270($t8)           ## 00000270
/* 00354 809F0C34 8C5901D4 */  lw      $t9, 0x01D4($v0)           ## 000001E8
/* 00358 809F0C38 1472FFF6 */  bne     $v1, $s2, .L809F0C14       
/* 0035C 809F0C3C A7240270 */  sh      $a0, 0x0270($t9)           ## 00000270
/* 00360 809F0C40 10000129 */  beq     $zero, $zero, .L809F10E8   
/* 00364 809F0C44 A6000150 */  sh      $zero, 0x0150($s0)         ## 00000150
.L809F0C48:
/* 00368 809F0C48 0C023C20 */  jal     Player_GetMask              
/* 0036C 809F0C4C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00370 809F0C50 5040000B */  beql    $v0, $zero, .L809F0C80     
/* 00374 809F0C54 86020150 */  lh      $v0, 0x0150($s0)           ## 00000150
/* 00378 809F0C58 860A015E */  lh      $t2, 0x015E($s0)           ## 0000015E
/* 0037C 809F0C5C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00380 809F0C60 240508AC */  addiu   $a1, $zero, 0x08AC         ## $a1 = 000008AC
/* 00384 809F0C64 15400005 */  bne     $t2, $zero, .L809F0C7C     
/* 00388 809F0C68 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 0038C 809F0C6C 8E0701E4 */  lw      $a3, 0x01E4($s0)           ## 000001E4
/* 00390 809F0C70 0C02003E */  jal     func_800800F8              
/* 00394 809F0C74 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00398 809F0C78 A602015E */  sh      $v0, 0x015E($s0)           ## 0000015E
.L809F0C7C:
/* 0039C 809F0C7C 86020150 */  lh      $v0, 0x0150($s0)           ## 00000150
.L809F0C80:
/* 003A0 809F0C80 24010028 */  addiu   $at, $zero, 0x0028         ## $at = 00000028
/* 003A4 809F0C84 A6000156 */  sh      $zero, 0x0156($s0)         ## 00000156
/* 003A8 809F0C88 14410012 */  bne     $v0, $at, .L809F0CD4       
/* 003AC 809F0C8C 24110001 */  addiu   $s1, $zero, 0x0001         ## $s1 = 00000001
/* 003B0 809F0C90 8E0B01D8 */  lw      $t3, 0x01D8($s0)           ## 000001D8
/* 003B4 809F0C94 02201825 */  or      $v1, $s1, $zero            ## $v1 = 00000001
/* 003B8 809F0C98 26020004 */  addiu   $v0, $s0, 0x0004           ## $v0 = 00000004
/* 003BC 809F0C9C 24120009 */  addiu   $s2, $zero, 0x0009         ## $s2 = 00000009
/* 003C0 809F0CA0 A5710270 */  sh      $s1, 0x0270($t3)           ## 00000270
.L809F0CA4:
/* 003C4 809F0CA4 8C4C01D8 */  lw      $t4, 0x01D8($v0)           ## 000001DC
/* 003C8 809F0CA8 24630004 */  addiu   $v1, $v1, 0x0004           ## $v1 = 00000005
/* 003CC 809F0CAC 24420010 */  addiu   $v0, $v0, 0x0010           ## $v0 = 00000014
/* 003D0 809F0CB0 A5910270 */  sh      $s1, 0x0270($t4)           ## 00000270
/* 003D4 809F0CB4 8C4D01CC */  lw      $t5, 0x01CC($v0)           ## 000001E0
/* 003D8 809F0CB8 A5B10270 */  sh      $s1, 0x0270($t5)           ## 00000270
/* 003DC 809F0CBC 8C4E01D0 */  lw      $t6, 0x01D0($v0)           ## 000001E4
/* 003E0 809F0CC0 A5D10270 */  sh      $s1, 0x0270($t6)           ## 00000270
/* 003E4 809F0CC4 8C4F01D4 */  lw      $t7, 0x01D4($v0)           ## 000001E8
/* 003E8 809F0CC8 1472FFF6 */  bne     $v1, $s2, .L809F0CA4       
/* 003EC 809F0CCC A5F10270 */  sh      $s1, 0x0270($t7)           ## 00000270
/* 003F0 809F0CD0 86020150 */  lh      $v0, 0x0150($s0)           ## 00000150
.L809F0CD4:
/* 003F4 809F0CD4 28410029 */  slti    $at, $v0, 0x0029           
/* 003F8 809F0CD8 24110001 */  addiu   $s1, $zero, 0x0001         ## $s1 = 00000001
/* 003FC 809F0CDC 14200009 */  bne     $at, $zero, .L809F0D04     
/* 00400 809F0CE0 24120009 */  addiu   $s2, $zero, 0x0009         ## $s2 = 00000009
/* 00404 809F0CE4 3C04809F */  lui     $a0, %hi(D_809F1758)       ## $a0 = 809F0000
/* 00408 809F0CE8 0C00084C */  jal     osSyncPrintf
              
/* 0040C 809F0CEC 24841758 */  addiu   $a0, $a0, %lo(D_809F1758)  ## $a0 = 809F1758
/* 00410 809F0CF0 260400E4 */  addiu   $a0, $s0, 0x00E4           ## $a0 = 000000E4
/* 00414 809F0CF4 2405205D */  addiu   $a1, $zero, 0x205D         ## $a1 = 0000205D
/* 00418 809F0CF8 0C03D0DB */  jal     func_800F436C              
/* 0041C 809F0CFC 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 00420 809F0D00 86020150 */  lh      $v0, 0x0150($s0)           ## 00000150
.L809F0D04:
/* 00424 809F0D04 28410078 */  slti    $at, $v0, 0x0078           
/* 00428 809F0D08 10200003 */  beq     $at, $zero, .L809F0D18     
/* 0042C 809F0D0C 24580001 */  addiu   $t8, $v0, 0x0001           ## $t8 = 00000001
/* 00430 809F0D10 100000F5 */  beq     $zero, $zero, .L809F10E8   
/* 00434 809F0D14 A6180150 */  sh      $t8, 0x0150($s0)           ## 00000150
.L809F0D18:
/* 00438 809F0D18 A3A00035 */  sb      $zero, 0x0035($sp)         
/* 0043C 809F0D1C A7A0003C */  sh      $zero, 0x003C($sp)         
/* 00440 809F0D20 A7A0003E */  sh      $zero, 0x003E($sp)         
/* 00444 809F0D24 0C023C20 */  jal     Player_GetMask              
/* 00448 809F0D28 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 0044C 809F0D2C 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 00450 809F0D30 2F210008 */  sltiu   $at, $t9, 0x0008           
/* 00454 809F0D34 102000B6 */  beq     $at, $zero, .L809F1010     
/* 00458 809F0D38 0019C880 */  sll     $t9, $t9,  2               
/* 0045C 809F0D3C 3C01809F */  lui     $at, %hi(jtbl_809F1980)       ## $at = 809F0000
/* 00460 809F0D40 00390821 */  addu    $at, $at, $t9              
/* 00464 809F0D44 8C391980 */  lw      $t9, %lo(jtbl_809F1980)($at)  
/* 00468 809F0D48 03200008 */  jr      $t9                        
/* 0046C 809F0D4C 00000000 */  nop
glabel L809F0D50
/* 00470 809F0D50 3C0A8016 */  lui     $t2, %hi(gSaveContext+0xef2)
/* 00474 809F0D54 954AF552 */  lhu     $t2, %lo(gSaveContext+0xef2)($t2)
/* 00478 809F0D58 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 0047C 809F0D5C 240D0002 */  addiu   $t5, $zero, 0x0002         ## $t5 = 00000002
/* 00480 809F0D60 314B4000 */  andi    $t3, $t2, 0x4000           ## $t3 = 00000000
/* 00484 809F0D64 15600006 */  bne     $t3, $zero, .L809F0D80     
/* 00488 809F0D68 2404003E */  addiu   $a0, $zero, 0x003E         ## $a0 = 0000003E
/* 0048C 809F0D6C A7AC003C */  sh      $t4, 0x003C($sp)           
/* 00490 809F0D70 0C03E803 */  jal     Audio_SetBGM
              
/* 00494 809F0D74 A60D015C */  sh      $t5, 0x015C($s0)           ## 0000015C
/* 00498 809F0D78 100000A6 */  beq     $zero, $zero, .L809F1014   
/* 0049C 809F0D7C 87A8003C */  lh      $t0, 0x003C($sp)           
glabel L809F0D80
.L809F0D80:
/* 004A0 809F0D80 3C0E8016 */  lui     $t6, %hi(gSaveContext+0xef2)
/* 004A4 809F0D84 95CEF552 */  lhu     $t6, %lo(gSaveContext+0xef2)($t6)
/* 004A8 809F0D88 31CF8000 */  andi    $t7, $t6, 0x8000           ## $t7 = 00000000
/* 004AC 809F0D8C 15E00023 */  bne     $t7, $zero, .L809F0E1C     
/* 004B0 809F0D90 00000000 */  nop
/* 004B4 809F0D94 0C023C20 */  jal     Player_GetMask              
/* 004B8 809F0D98 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 004BC 809F0D9C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 004C0 809F0DA0 1041001E */  beq     $v0, $at, .L809F0E1C       
/* 004C4 809F0DA4 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 004C8 809F0DA8 3C188013 */  lui     $t8, %hi(D_801333E8)
/* 004CC 809F0DAC 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 004D0 809F0DB0 271833E8 */  addiu   $t8, %lo(D_801333E8)
/* 004D4 809F0DB4 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 004D8 809F0DB8 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 004DC 809F0DBC AFB80014 */  sw      $t8, 0x0014($sp)           
/* 004E0 809F0DC0 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 004E4 809F0DC4 24044807 */  addiu   $a0, $zero, 0x4807         ## $a0 = 00004807
/* 004E8 809F0DC8 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 004EC 809F0DCC 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 004F0 809F0DD0 8E1901FC */  lw      $t9, 0x01FC($s0)           ## 000001FC
/* 004F4 809F0DD4 A611015C */  sh      $s1, 0x015C($s0)           ## 0000015C
/* 004F8 809F0DD8 00114400 */  sll     $t0, $s1, 16               
/* 004FC 809F0DDC 00084403 */  sra     $t0, $t0, 16               
/* 00500 809F0DE0 A731024E */  sh      $s1, 0x024E($t9)           ## 0000024E
/* 00504 809F0DE4 A7A8003C */  sh      $t0, 0x003C($sp)           
/* 00508 809F0DE8 860A015E */  lh      $t2, 0x015E($s0)           ## 0000015E
/* 0050C 809F0DEC 24050924 */  addiu   $a1, $zero, 0x0924         ## $a1 = 00000924
/* 00510 809F0DF0 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 00514 809F0DF4 11400007 */  beq     $t2, $zero, .L809F0E14     
/* 00518 809F0DF8 00000000 */  nop
/* 0051C 809F0DFC A600015E */  sh      $zero, 0x015E($s0)         ## 0000015E
/* 00520 809F0E00 8E0701FC */  lw      $a3, 0x01FC($s0)           ## 000001FC
/* 00524 809F0E04 A7A8003C */  sh      $t0, 0x003C($sp)           
/* 00528 809F0E08 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0052C 809F0E0C 0C02003E */  jal     func_800800F8              
/* 00530 809F0E10 8FA40044 */  lw      $a0, 0x0044($sp)           
.L809F0E14:
/* 00534 809F0E14 1000007F */  beq     $zero, $zero, .L809F1014   
/* 00538 809F0E18 87A8003C */  lh      $t0, 0x003C($sp)           
glabel L809F0E1C
.L809F0E1C:
/* 0053C 809F0E1C 3C01809F */  lui     $at, %hi(D_809F19A0)       ## $at = 809F0000
/* 00540 809F0E20 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 00544 809F0E24 C42C19A0 */  lwc1    $f12, %lo(D_809F19A0)($at) 
/* 00548 809F0E28 4600020D */  trunc.w.s $f8, $f0                   
/* 0054C 809F0E2C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00550 809F0E30 440C4000 */  mfc1    $t4, $f8                   
/* 00554 809F0E34 0C023C20 */  jal     Player_GetMask              
/* 00558 809F0E38 A7AC003A */  sh      $t4, 0x003A($sp)           
/* 0055C 809F0E3C 87AD003A */  lh      $t5, 0x003A($sp)           
/* 00560 809F0E40 00021C00 */  sll     $v1, $v0, 16               
/* 00564 809F0E44 00031C03 */  sra     $v1, $v1, 16               
/* 00568 809F0E48 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = FFFFFFFF
/* 0056C 809F0E4C 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00570 809F0E50 15A1000C */  bne     $t5, $at, .L809F0E84       
/* 00574 809F0E54 A7A30038 */  sh      $v1, 0x0038($sp)           
/* 00578 809F0E58 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0057C 809F0E5C 240F0008 */  addiu   $t7, $zero, 0x0008         ## $t7 = 00000008
/* 00580 809F0E60 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 00584 809F0E64 3C04809F */  lui     $a0, %hi(D_809F1784)       ## $a0 = 809F0000
/* 00588 809F0E68 A3AE0035 */  sb      $t6, 0x0035($sp)           
/* 0058C 809F0E6C A7AF003E */  sh      $t7, 0x003E($sp)           
/* 00590 809F0E70 A7B8003C */  sh      $t8, 0x003C($sp)           
/* 00594 809F0E74 0C00084C */  jal     osSyncPrintf
              
/* 00598 809F0E78 24841784 */  addiu   $a0, $a0, %lo(D_809F1784)  ## $a0 = 809F1784
/* 0059C 809F0E7C 10000065 */  beq     $zero, $zero, .L809F1014   
/* 005A0 809F0E80 87A8003C */  lh      $t0, 0x003C($sp)           
.L809F0E84:
/* 005A4 809F0E84 0003CC00 */  sll     $t9, $v1, 16               
/* 005A8 809F0E88 00195403 */  sra     $t2, $t9, 16               
/* 005AC 809F0E8C 29410008 */  slti    $at, $t2, 0x0008           
/* 005B0 809F0E90 14200013 */  bne     $at, $zero, .L809F0EE0     
/* 005B4 809F0E94 3C04809F */  lui     $a0, %hi(D_809F17AC)       ## $a0 = 809F0000
/* 005B8 809F0E98 0C00084C */  jal     osSyncPrintf
              
/* 005BC 809F0E9C 248417AC */  addiu   $a0, $a0, %lo(D_809F17AC)  ## $a0 = 809F17AC
/* 005C0 809F0EA0 3C04809F */  lui     $a0, %hi(D_809F17DC)       ## $a0 = 809F0000
/* 005C4 809F0EA4 0C00084C */  jal     osSyncPrintf
              
/* 005C8 809F0EA8 248417DC */  addiu   $a0, $a0, %lo(D_809F17DC)  ## $a0 = 809F17DC
/* 005CC 809F0EAC 3C04809F */  lui     $a0, %hi(D_809F180C)       ## $a0 = 809F0000
/* 005D0 809F0EB0 0C00084C */  jal     osSyncPrintf
              
/* 005D4 809F0EB4 2484180C */  addiu   $a0, $a0, %lo(D_809F180C)  ## $a0 = 809F180C
/* 005D8 809F0EB8 3C04809F */  lui     $a0, %hi(D_809F183C)       ## $a0 = 809F0000
/* 005DC 809F0EBC 0C00084C */  jal     osSyncPrintf
              
/* 005E0 809F0EC0 2484183C */  addiu   $a0, $a0, %lo(D_809F183C)  ## $a0 = 809F183C
/* 005E4 809F0EC4 3C01809F */  lui     $at, %hi(D_809F19A4)       ## $at = 809F0000
/* 005E8 809F0EC8 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 005EC 809F0ECC C42C19A4 */  lwc1    $f12, %lo(D_809F19A4)($at) 
/* 005F0 809F0ED0 4600028D */  trunc.w.s $f10, $f0                  
/* 005F4 809F0ED4 440C5000 */  mfc1    $t4, $f10                  
/* 005F8 809F0ED8 00000000 */  nop
/* 005FC 809F0EDC A7AC0038 */  sh      $t4, 0x0038($sp)           
.L809F0EE0:
/* 00600 809F0EE0 87AD003A */  lh      $t5, 0x003A($sp)           
/* 00604 809F0EE4 87AF0038 */  lh      $t7, 0x0038($sp)           
/* 00608 809F0EE8 3C0A809F */  lui     $t2, %hi(D_809F15C0)       ## $t2 = 809F0000
/* 0060C 809F0EEC 000D70C0 */  sll     $t6, $t5,  3               
/* 00610 809F0EF0 01CD7023 */  subu    $t6, $t6, $t5              
/* 00614 809F0EF4 000E7040 */  sll     $t6, $t6,  1               
/* 00618 809F0EF8 000FC040 */  sll     $t8, $t7,  1               
/* 0061C 809F0EFC 01D8C821 */  addu    $t9, $t6, $t8              
/* 00620 809F0F00 01595021 */  addu    $t2, $t2, $t9              
/* 00624 809F0F04 854A15C0 */  lh      $t2, %lo(D_809F15C0)($t2)  
/* 00628 809F0F08 3C0C809F */  lui     $t4, %hi(D_809F1630)       ## $t4 = 809F0000
/* 0062C 809F0F0C 258C1630 */  addiu   $t4, $t4, %lo(D_809F1630)  ## $t4 = 809F1630
/* 00630 809F0F10 000A5880 */  sll     $t3, $t2,  2               
/* 00634 809F0F14 016C1021 */  addu    $v0, $t3, $t4              
/* 00638 809F0F18 844D0000 */  lh      $t5, 0x0000($v0)           ## 00000000
/* 0063C 809F0F1C 844F0002 */  lh      $t7, 0x0002($v0)           ## 00000002
/* 00640 809F0F20 A7AA0036 */  sh      $t2, 0x0036($sp)           
/* 00644 809F0F24 A7AD003C */  sh      $t5, 0x003C($sp)           
/* 00648 809F0F28 A60F015A */  sh      $t7, 0x015A($s0)           ## 0000015A
/* 0064C 809F0F2C 8603015A */  lh      $v1, 0x015A($s0)           ## 0000015A
/* 00650 809F0F30 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00654 809F0F34 10710017 */  beq     $v1, $s1, .L809F0F94       
/* 00658 809F0F38 00000000 */  nop
/* 0065C 809F0F3C 10610007 */  beq     $v1, $at, .L809F0F5C       
/* 00660 809F0F40 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00664 809F0F44 14610015 */  bne     $v1, $at, .L809F0F9C       
/* 00668 809F0F48 00000000 */  nop
/* 0066C 809F0F4C 0C03E803 */  jal     Audio_SetBGM
              
/* 00670 809F0F50 2404002D */  addiu   $a0, $zero, 0x002D         ## $a0 = 0000002D
/* 00674 809F0F54 10000011 */  beq     $zero, $zero, .L809F0F9C   
/* 00678 809F0F58 00000000 */  nop
.L809F0F5C:
/* 0067C 809F0F5C 860E015E */  lh      $t6, 0x015E($s0)           ## 0000015E
/* 00680 809F0F60 2405092E */  addiu   $a1, $zero, 0x092E         ## $a1 = 0000092E
/* 00684 809F0F64 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 00688 809F0F68 11C00006 */  beq     $t6, $zero, .L809F0F84     
/* 0068C 809F0F6C 00000000 */  nop
/* 00690 809F0F70 A600015E */  sh      $zero, 0x015E($s0)         ## 0000015E
/* 00694 809F0F74 8E0701E4 */  lw      $a3, 0x01E4($s0)           ## 000001E4
/* 00698 809F0F78 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0069C 809F0F7C 0C02003E */  jal     func_800800F8              
/* 006A0 809F0F80 8FA40044 */  lw      $a0, 0x0044($sp)           
.L809F0F84:
/* 006A4 809F0F84 0C03E803 */  jal     Audio_SetBGM
              
/* 006A8 809F0F88 2404081A */  addiu   $a0, $zero, 0x081A         ## $a0 = 0000081A
/* 006AC 809F0F8C 10000003 */  beq     $zero, $zero, .L809F0F9C   
/* 006B0 809F0F90 00000000 */  nop
.L809F0F94:
/* 006B4 809F0F94 0C03E803 */  jal     Audio_SetBGM
              
/* 006B8 809F0F98 24040055 */  addiu   $a0, $zero, 0x0055         ## $a0 = 00000055
.L809F0F9C:
/* 006BC 809F0F9C 3C04809F */  lui     $a0, %hi(D_809F186C)       ## $a0 = 809F0000
/* 006C0 809F0FA0 0C00084C */  jal     osSyncPrintf
              
/* 006C4 809F0FA4 2484186C */  addiu   $a0, $a0, %lo(D_809F186C)  ## $a0 = 809F186C
/* 006C8 809F0FA8 3C04809F */  lui     $a0, %hi(D_809F1870)       ## $a0 = 809F0000
/* 006CC 809F0FAC 24841870 */  addiu   $a0, $a0, %lo(D_809F1870)  ## $a0 = 809F1870
/* 006D0 809F0FB0 0C00084C */  jal     osSyncPrintf
              
/* 006D4 809F0FB4 87A5003A */  lh      $a1, 0x003A($sp)           
/* 006D8 809F0FB8 3C04809F */  lui     $a0, %hi(D_809F18A4)       ## $a0 = 809F0000
/* 006DC 809F0FBC 248418A4 */  addiu   $a0, $a0, %lo(D_809F18A4)  ## $a0 = 809F18A4
/* 006E0 809F0FC0 0C00084C */  jal     osSyncPrintf
              
/* 006E4 809F0FC4 87A50038 */  lh      $a1, 0x0038($sp)           
/* 006E8 809F0FC8 3C04809F */  lui     $a0, %hi(D_809F18D8)       ## $a0 = 809F0000
/* 006EC 809F0FCC 248418D8 */  addiu   $a0, $a0, %lo(D_809F18D8)  ## $a0 = 809F18D8
/* 006F0 809F0FD0 0C00084C */  jal     osSyncPrintf
              
/* 006F4 809F0FD4 87A50036 */  lh      $a1, 0x0036($sp)           
/* 006F8 809F0FD8 3C04809F */  lui     $a0, %hi(D_809F190C)       ## $a0 = 809F0000
/* 006FC 809F0FDC 0C00084C */  jal     osSyncPrintf
              
/* 00700 809F0FE0 2484190C */  addiu   $a0, $a0, %lo(D_809F190C)  ## $a0 = 809F190C
/* 00704 809F0FE4 3C04809F */  lui     $a0, %hi(D_809F1910)       ## $a0 = 809F0000
/* 00708 809F0FE8 24841910 */  addiu   $a0, $a0, %lo(D_809F1910)  ## $a0 = 809F1910
/* 0070C 809F0FEC 0C00084C */  jal     osSyncPrintf
              
/* 00710 809F0FF0 87A5003C */  lh      $a1, 0x003C($sp)           
/* 00714 809F0FF4 3C04809F */  lui     $a0, %hi(D_809F1944)       ## $a0 = 809F0000
/* 00718 809F0FF8 24841944 */  addiu   $a0, $a0, %lo(D_809F1944)  ## $a0 = 809F1944
/* 0071C 809F0FFC 0C00084C */  jal     osSyncPrintf
              
/* 00720 809F1000 8605015A */  lh      $a1, 0x015A($s0)           ## 0000015A
/* 00724 809F1004 3C04809F */  lui     $a0, %hi(D_809F1978)       ## $a0 = 809F0000
/* 00728 809F1008 0C00084C */  jal     osSyncPrintf
              
/* 0072C 809F100C 24841978 */  addiu   $a0, $a0, %lo(D_809F1978)  ## $a0 = 809F1978
.L809F1010:
/* 00730 809F1010 87A8003C */  lh      $t0, 0x003C($sp)           
.L809F1014:
/* 00734 809F1014 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00738 809F1018 02001025 */  or      $v0, $s0, $zero            ## $v0 = 00000000
/* 0073C 809F101C 11000032 */  beq     $t0, $zero, .L809F10E8     
/* 00740 809F1020 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 00744 809F1024 93A70035 */  lbu     $a3, 0x0035($sp)           
/* 00748 809F1028 87A6003E */  lh      $a2, 0x003E($sp)           
/* 0074C 809F102C 2405012C */  addiu   $a1, $zero, 0x012C         ## $a1 = 0000012C
.L809F1030:
/* 00750 809F1030 50C00007 */  beql    $a2, $zero, .L809F1050     
/* 00754 809F1034 860A015A */  lh      $t2, 0x015A($s0)           ## 0000015A
/* 00758 809F1038 00C30019 */  multu   $a2, $v1                   
/* 0075C 809F103C 8C5901D8 */  lw      $t9, 0x01D8($v0)           ## 000001D8
/* 00760 809F1040 0000C012 */  mflo    $t8                        
/* 00764 809F1044 A7380264 */  sh      $t8, 0x0264($t9)           ## 00000264
/* 00768 809F1048 00000000 */  nop
/* 0076C 809F104C 860A015A */  lh      $t2, 0x015A($s0)           ## 0000015A
.L809F1050:
/* 00770 809F1050 8C4B01D8 */  lw      $t3, 0x01D8($v0)           ## 000001D8
/* 00774 809F1054 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000001
/* 00778 809F1058 A56A0274 */  sh      $t2, 0x0274($t3)           ## 00000274
/* 0077C 809F105C 8C4C01D8 */  lw      $t4, 0x01D8($v0)           ## 000001D8
/* 00780 809F1060 A5880270 */  sh      $t0, 0x0270($t4)           ## 00000270
/* 00784 809F1064 8C4D01D8 */  lw      $t5, 0x01D8($v0)           ## 000001D8
/* 00788 809F1068 A1A70276 */  sb      $a3, 0x0276($t5)           ## 00000276
/* 0078C 809F106C 860F015C */  lh      $t7, 0x015C($s0)           ## 0000015C
/* 00790 809F1070 11E00018 */  beq     $t7, $zero, .L809F10D4     
/* 00794 809F1074 00000000 */  nop
/* 00798 809F1078 8C4E01D8 */  lw      $t6, 0x01D8($v0)           ## 000001D8
/* 0079C 809F107C A5C50258 */  sh      $a1, 0x0258($t6)           ## 00000258
/* 007A0 809F1080 8618015C */  lh      $t8, 0x015C($s0)           ## 0000015C
/* 007A4 809F1084 8C5901D8 */  lw      $t9, 0x01D8($v0)           ## 000001D8
/* 007A8 809F1088 A3380278 */  sb      $t8, 0x0278($t9)           ## 00000278
/* 007AC 809F108C 8E0B01FC */  lw      $t3, 0x01FC($s0)           ## 000001FC
/* 007B0 809F1090 8C4A01D8 */  lw      $t2, 0x01D8($v0)           ## 000001D8
/* 007B4 809F1094 8D6D0024 */  lw      $t5, 0x0024($t3)           ## 00000024
/* 007B8 809F1098 AD4D0288 */  sw      $t5, 0x0288($t2)           ## 00000288
/* 007BC 809F109C 8D6C0028 */  lw      $t4, 0x0028($t3)           ## 00000028
/* 007C0 809F10A0 AD4C028C */  sw      $t4, 0x028C($t2)           ## 0000028C
/* 007C4 809F10A4 8D6D002C */  lw      $t5, 0x002C($t3)           ## 0000002C
/* 007C8 809F10A8 AD4D0290 */  sw      $t5, 0x0290($t2)           ## 00000290
/* 007CC 809F10AC 8604015C */  lh      $a0, 0x015C($s0)           ## 0000015C
/* 007D0 809F10B0 16240004 */  bne     $s1, $a0, .L809F10C4       
/* 007D4 809F10B4 00000000 */  nop
/* 007D8 809F10B8 8E0F01FC */  lw      $t7, 0x01FC($s0)           ## 000001FC
/* 007DC 809F10BC A5F1024E */  sh      $s1, 0x024E($t7)           ## 0000024E
/* 007E0 809F10C0 8604015C */  lh      $a0, 0x015C($s0)           ## 0000015C
.L809F10C4:
/* 007E4 809F10C4 15240003 */  bne     $t1, $a0, .L809F10D4       
/* 007E8 809F10C8 00000000 */  nop
/* 007EC 809F10CC 8E0E01FC */  lw      $t6, 0x01FC($s0)           ## 000001FC
/* 007F0 809F10D0 A5C50240 */  sh      $a1, 0x0240($t6)           ## 00000240
.L809F10D4:
/* 007F4 809F10D4 1472FFD6 */  bne     $v1, $s2, .L809F1030       
/* 007F8 809F10D8 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 00000004
/* 007FC 809F10DC 3C18809F */  lui     $t8, %hi(func_809F1100)    ## $t8 = 809F0000
/* 00800 809F10E0 27181100 */  addiu   $t8, $t8, %lo(func_809F1100) ## $t8 = 809F1100
/* 00804 809F10E4 AE18014C */  sw      $t8, 0x014C($s0)           ## 0000014C
.L809F10E8:
/* 00808 809F10E8 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809F10EC:
/* 0080C 809F10EC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00810 809F10F0 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 00814 809F10F4 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 00818 809F10F8 03E00008 */  jr      $ra                        
/* 0081C 809F10FC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
