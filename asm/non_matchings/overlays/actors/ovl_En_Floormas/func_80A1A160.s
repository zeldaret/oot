.rdata
glabel D_80A1A500
    .asciz "../z_en_floormas.c"
    .balign 4

.late_rodata
glabel D_80A1A5BC
 .word 0x3F860A92
glabel D_80A1A5C0
 .word 0x3E860A92, 0x00000000, 0x00000000, 0x00000000

.text
glabel func_80A1A160
/* 02C50 80A1A160 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02C54 80A1A164 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02C58 80A1A168 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02C5C 80A1A16C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02C60 80A1A170 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 02C64 80A1A174 14A10033 */  bne     $a1, $at, .L80A1A244       
/* 02C68 80A1A178 AFA7002C */  sw      $a3, 0x002C($sp)           
/* 02C6C 80A1A17C 0C034213 */  jal     Matrix_Push              
/* 02C70 80A1A180 00000000 */  nop
/* 02C74 80A1A184 3C0144C8 */  lui     $at, 0x44C8                ## $at = 44C80000
/* 02C78 80A1A188 44816000 */  mtc1    $at, $f12                  ## $f12 = 1600.00
/* 02C7C 80A1A18C 3C01C42F */  lui     $at, 0xC42F                ## $at = C42F0000
/* 02C80 80A1A190 44817000 */  mtc1    $at, $f14                  ## $f14 = -700.00
/* 02C84 80A1A194 3C06C4D4 */  lui     $a2, 0xC4D4                ## $a2 = C4D40000
/* 02C88 80A1A198 34C68000 */  ori     $a2, $a2, 0x8000           ## $a2 = C4D48000
/* 02C8C 80A1A19C 0C034261 */  jal     Matrix_Translate              
/* 02C90 80A1A1A0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02C94 80A1A1A4 3C0180A2 */  lui     $at, %hi(D_80A1A5BC)       ## $at = 80A20000
/* 02C98 80A1A1A8 C42CA5BC */  lwc1    $f12, %lo(D_80A1A5BC)($at) 
/* 02C9C 80A1A1AC 0C034348 */  jal     Matrix_RotateY              
/* 02CA0 80A1A1B0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02CA4 80A1A1B4 3C0180A2 */  lui     $at, %hi(D_80A1A5C0)       ## $at = 80A20000
/* 02CA8 80A1A1B8 C42CA5C0 */  lwc1    $f12, %lo(D_80A1A5C0)($at) 
/* 02CAC 80A1A1BC 0C0343B5 */  jal     Matrix_RotateZ              
/* 02CB0 80A1A1C0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02CB4 80A1A1C4 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 02CB8 80A1A1C8 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 02CBC 80A1A1CC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02CC0 80A1A1D0 44066000 */  mfc1    $a2, $f12                  
/* 02CC4 80A1A1D4 0C0342A3 */  jal     Matrix_Scale              
/* 02CC8 80A1A1D8 46006386 */  mov.s   $f14, $f12                 
/* 02CCC 80A1A1DC 8FA70034 */  lw      $a3, 0x0034($sp)           
/* 02CD0 80A1A1E0 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 02CD4 80A1A1E4 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 02CD8 80A1A1E8 8CE20000 */  lw      $v0, 0x0000($a3)           ## 00000000
/* 02CDC 80A1A1EC 3C0580A2 */  lui     $a1, %hi(D_80A1A500)       ## $a1 = 80A20000
/* 02CE0 80A1A1F0 24A5A500 */  addiu   $a1, $a1, %lo(D_80A1A500)  ## $a1 = 80A1A500
/* 02CE4 80A1A1F4 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 02CE8 80A1A1F8 ACEE0000 */  sw      $t6, 0x0000($a3)           ## 00000000
/* 02CEC 80A1A1FC AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 02CF0 80A1A200 8FB80020 */  lw      $t8, 0x0020($sp)           
/* 02CF4 80A1A204 240608FB */  addiu   $a2, $zero, 0x08FB         ## $a2 = 000008FB
/* 02CF8 80A1A208 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 02CFC 80A1A20C 0C0346A2 */  jal     Matrix_NewMtx              
/* 02D00 80A1A210 AFA2001C */  sw      $v0, 0x001C($sp)           
/* 02D04 80A1A214 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 02D08 80A1A218 8FA70034 */  lw      $a3, 0x0034($sp)           
/* 02D0C 80A1A21C 3C090601 */  lui     $t1, 0x0601                ## $t1 = 06010000
/* 02D10 80A1A220 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 02D14 80A1A224 8CE20000 */  lw      $v0, 0x0000($a3)           ## 00000000
/* 02D18 80A1A228 25298688 */  addiu   $t1, $t1, 0x8688           ## $t1 = 06008688
/* 02D1C 80A1A22C 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 02D20 80A1A230 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 02D24 80A1A234 ACF90000 */  sw      $t9, 0x0000($a3)           ## 00000000
/* 02D28 80A1A238 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 02D2C 80A1A23C 0C034221 */  jal     Matrix_Pull              
/* 02D30 80A1A240 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
.L80A1A244:
/* 02D34 80A1A244 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02D38 80A1A248 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02D3C 80A1A24C 03E00008 */  jr      $ra                        
/* 02D40 80A1A250 00000000 */  nop
