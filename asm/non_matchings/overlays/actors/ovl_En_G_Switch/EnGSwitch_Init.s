.rdata
glabel D_80A23780
    .asciz "[32m☆☆☆☆☆ インデックス ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_80A237B0
    .asciz "[33m☆☆☆☆☆ セーブ	     ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_80A237E0
    .asciz "\n\n"
    .balign 4

glabel D_80A237E4
    .asciz "[32m☆☆☆☆☆ 親スイッチ発生 ☆☆☆☆☆ %x\n[m"
    .balign 4

.balign 4

glabel D_80A23818
    .asciz "[35m☆☆☆☆☆ 最大チェック数 ☆☆☆☆☆ %d\n[m"
    .balign 4

.balign 4

glabel D_80A2384C
    .asciz "\n\n"
    .balign 4

glabel D_80A23850
    .asciz "[32m☆☆☆☆☆ Ｙｏｕ ａｒｅ Ｓｈｏｃｋ！  ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A23890
    .asciz "\n\n"
    .balign 4

glabel D_80A23894
    .asciz "[32m☆☆☆☆☆ 子スイッチ発生 ☆☆☆☆☆ %x\n[m"
    .balign 4

.balign 4

glabel D_80A238C8
    .asciz "[32m☆☆☆☆☆ Ｙｏｕ ａｒｅ Ｓｈｏｃｋ！  ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A23908
    .asciz "\n\n"
    .balign 4

glabel D_80A2390C
    .asciz "[32m☆☆☆☆☆ やぶさめぶち抜き壷 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A23940
    .asciz "[35m なにみの？ %d\n[m\n"
    .balign 4

.balign 4

glabel D_80A2395C
    .asciz "[36m バンクおかしいしぞ！%d\n[m\n"
    .balign 4

.late_rodata
glabel D_80A23B04
 .word 0x403F5C29
glabel D_80A23B08
 .word 0x3EE66666

.text
glabel EnGSwitch_Init
/* 00000 80A21EC0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 80A21EC4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00008 80A21EC8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0000C 80A21ECC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00010 80A21ED0 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00014 80A21ED4 24190064 */  addiu   $t9, $zero, 0x0064         ## $t9 = 00000064
/* 00018 80A21ED8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 80A21EDC 00027303 */  sra     $t6, $v0, 12               
/* 00020 80A21EE0 31CF000F */  andi    $t7, $t6, 0x000F           ## $t7 = 00000000
/* 00024 80A21EE4 3058003F */  andi    $t8, $v0, 0x003F           ## $t8 = 00000000
/* 00028 80A21EE8 A48F0150 */  sh      $t7, 0x0150($a0)           ## 00000150
/* 0002C 80A21EEC A4980154 */  sh      $t8, 0x0154($a0)           ## 00000154
/* 00030 80A21EF0 A499015C */  sh      $t9, 0x015C($a0)           ## 0000015C
/* 00034 80A21EF4 3C0480A2 */  lui     $a0, %hi(D_80A23780)       ## $a0 = 80A20000
/* 00038 80A21EF8 24843780 */  addiu   $a0, $a0, %lo(D_80A23780)  ## $a0 = 80A23780
/* 0003C 80A21EFC 0C00084C */  jal     osSyncPrintf
              
/* 00040 80A21F00 86050150 */  lh      $a1, 0x0150($s0)           ## 00000150
/* 00044 80A21F04 3C0480A2 */  lui     $a0, %hi(D_80A237B0)       ## $a0 = 80A20000
/* 00048 80A21F08 248437B0 */  addiu   $a0, $a0, %lo(D_80A237B0)  ## $a0 = 80A237B0
/* 0004C 80A21F0C 0C00084C */  jal     osSyncPrintf
              
/* 00050 80A21F10 86050154 */  lh      $a1, 0x0154($s0)           ## 00000154
/* 00054 80A21F14 86020150 */  lh      $v0, 0x0150($s0)           ## 00000150
/* 00058 80A21F18 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0005C 80A21F1C 3C0480A2 */  lui     $a0, %hi(D_80A237E0)       ## $a0 = 80A20000
/* 00060 80A21F20 1040000B */  beq     $v0, $zero, .L80A21F50     
/* 00064 80A21F24 00000000 */  nop
/* 00068 80A21F28 1041002E */  beq     $v0, $at, .L80A21FE4       
/* 0006C 80A21F2C 3C0480A2 */  lui     $a0, %hi(D_80A23890)       ## $a0 = 80A20000
/* 00070 80A21F30 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00074 80A21F34 10410059 */  beq     $v0, $at, .L80A2209C       
/* 00078 80A21F38 3C0480A2 */  lui     $a0, %hi(D_80A23908)       ## $a0 = 80A20000
/* 0007C 80A21F3C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00080 80A21F40 10410098 */  beq     $v0, $at, .L80A221A4       
/* 00084 80A21F44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00088 80A21F48 100000B3 */  beq     $zero, $zero, .L80A22218   
/* 0008C 80A21F4C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A21F50:
/* 00090 80A21F50 0C00084C */  jal     osSyncPrintf
              
/* 00094 80A21F54 248437E0 */  addiu   $a0, $a0, %lo(D_80A237E0)  ## $a0 = 000037E0
/* 00098 80A21F58 3C0480A2 */  lui     $a0, %hi(D_80A237E4)       ## $a0 = 80A20000
/* 0009C 80A21F5C 248437E4 */  addiu   $a0, $a0, %lo(D_80A237E4)  ## $a0 = 80A237E4
/* 000A0 80A21F60 0C00084C */  jal     osSyncPrintf
              
/* 000A4 80A21F64 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 000A8 80A21F68 3C0180A2 */  lui     $at, %hi(D_80A236E0)       ## $at = 80A20000
/* 000AC 80A21F6C A42036E0 */  sh      $zero, %lo(D_80A236E0)($at) 
/* 000B0 80A21F70 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 000B4 80A21F74 3C0480A2 */  lui     $a0, %hi(D_80A23818)       ## $a0 = 80A20000
/* 000B8 80A21F78 24843818 */  addiu   $a0, $a0, %lo(D_80A23818)  ## $a0 = 80A23818
/* 000BC 80A21F7C 00084983 */  sra     $t1, $t0,  6               
/* 000C0 80A21F80 A6090152 */  sh      $t1, 0x0152($s0)           ## 00000152
/* 000C4 80A21F84 860A0152 */  lh      $t2, 0x0152($s0)           ## 00000152
/* 000C8 80A21F88 314B003F */  andi    $t3, $t2, 0x003F           ## $t3 = 00000000
/* 000CC 80A21F8C A60B0152 */  sh      $t3, 0x0152($s0)           ## 00000152
/* 000D0 80A21F90 0C00084C */  jal     osSyncPrintf
              
/* 000D4 80A21F94 86050152 */  lh      $a1, 0x0152($s0)           ## 00000152
/* 000D8 80A21F98 3C0480A2 */  lui     $a0, %hi(D_80A2384C)       ## $a0 = 80A20000
/* 000DC 80A21F9C 0C00084C */  jal     osSyncPrintf
              
/* 000E0 80A21FA0 2484384C */  addiu   $a0, $a0, %lo(D_80A2384C)  ## $a0 = 80A2384C
/* 000E4 80A21FA4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 000E8 80A21FA8 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 000EC 80A21FAC 86050154 */  lh      $a1, 0x0154($s0)           ## 00000154
/* 000F0 80A21FB0 10400009 */  beq     $v0, $zero, .L80A21FD8     
/* 000F4 80A21FB4 3C0C80A2 */  lui     $t4, %hi(func_80A2248C)    ## $t4 = 80A20000
/* 000F8 80A21FB8 3C0480A2 */  lui     $a0, %hi(D_80A23850)       ## $a0 = 80A20000
/* 000FC 80A21FBC 24843850 */  addiu   $a0, $a0, %lo(D_80A23850)  ## $a0 = 80A23850
/* 00100 80A21FC0 0C00084C */  jal     osSyncPrintf
              
/* 00104 80A21FC4 86050154 */  lh      $a1, 0x0154($s0)           ## 00000154
/* 00108 80A21FC8 0C00B55C */  jal     Actor_Kill
              
/* 0010C 80A21FCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00110 80A21FD0 10000091 */  beq     $zero, $zero, .L80A22218   
/* 00114 80A21FD4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A21FD8:
/* 00118 80A21FD8 258C248C */  addiu   $t4, $t4, %lo(func_80A2248C) ## $t4 = 0000248C
/* 0011C 80A21FDC 1000008D */  beq     $zero, $zero, .L80A22214   
/* 00120 80A21FE0 AE0C014C */  sw      $t4, 0x014C($s0)           ## 0000014C
.L80A21FE4:
/* 00124 80A21FE4 0C00084C */  jal     osSyncPrintf
              
/* 00128 80A21FE8 24843890 */  addiu   $a0, $a0, %lo(D_80A23890)  ## $a0 = 00003890
/* 0012C 80A21FEC 3C0480A2 */  lui     $a0, %hi(D_80A23894)       ## $a0 = 80A20000
/* 00130 80A21FF0 24843894 */  addiu   $a0, $a0, %lo(D_80A23894)  ## $a0 = 80A23894
/* 00134 80A21FF4 0C00084C */  jal     osSyncPrintf
              
/* 00138 80A21FF8 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 0013C 80A21FFC 240D0005 */  addiu   $t5, $zero, 0x0005         ## $t5 = 00000005
/* 00140 80A22000 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 00144 80A22004 A60D0158 */  sh      $t5, 0x0158($s0)           ## 00000158
/* 00148 80A22008 A60E015C */  sh      $t6, 0x015C($s0)           ## 0000015C
/* 0014C 80A2200C 2605017C */  addiu   $a1, $s0, 0x017C           ## $a1 = 0000017C
/* 00150 80A22010 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00154 80A22014 0C0170D9 */  jal     Collider_InitCylinder
              
/* 00158 80A22018 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0015C 80A2201C 3C0780A2 */  lui     $a3, %hi(D_80A236E4)       ## $a3 = 80A20000
/* 00160 80A22020 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00164 80A22024 24E736E4 */  addiu   $a3, $a3, %lo(D_80A236E4)  ## $a3 = 80A236E4
/* 00168 80A22028 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0016C 80A2202C 0C01712B */  jal     Collider_SetCylinder
              
/* 00170 80A22030 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00174 80A22034 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
/* 00178 80A22038 44812000 */  mtc1    $at, $f4                   ## $f4 = 700.00
/* 0017C 80A2203C 3C0F80A2 */  lui     $t7, %hi(func_80A230A8)    ## $t7 = 80A20000
/* 00180 80A22040 25EF30A8 */  addiu   $t7, $t7, %lo(func_80A230A8) ## $t7 = 80A230A8
/* 00184 80A22044 AE0F0134 */  sw      $t7, 0x0134($s0)           ## 00000134
/* 00188 80A22048 E60400BC */  swc1    $f4, 0x00BC($s0)           ## 000000BC
/* 0018C 80A2204C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00190 80A22050 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00194 80A22054 86050154 */  lh      $a1, 0x0154($s0)           ## 00000154
/* 00198 80A22058 10400009 */  beq     $v0, $zero, .L80A22080     
/* 0019C 80A2205C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001A0 80A22060 3C0480A2 */  lui     $a0, %hi(D_80A238C8)       ## $a0 = 80A20000
/* 001A4 80A22064 248438C8 */  addiu   $a0, $a0, %lo(D_80A238C8)  ## $a0 = 80A238C8
/* 001A8 80A22068 0C00084C */  jal     osSyncPrintf
              
/* 001AC 80A2206C 86050154 */  lh      $a1, 0x0154($s0)           ## 00000154
/* 001B0 80A22070 0C00B55C */  jal     Actor_Kill
              
/* 001B4 80A22074 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001B8 80A22078 10000067 */  beq     $zero, $zero, .L80A22218   
/* 001BC 80A2207C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A22080:
/* 001C0 80A22080 3C053CF5 */  lui     $a1, 0x3CF5                ## $a1 = 3CF50000
/* 001C4 80A22084 0C00B58B */  jal     Actor_SetScale
              
/* 001C8 80A22088 34A5C28F */  ori     $a1, $a1, 0xC28F           ## $a1 = 3CF5C28F
/* 001CC 80A2208C 3C1880A2 */  lui     $t8, %hi(func_80A22598)    ## $t8 = 80A20000
/* 001D0 80A22090 27182598 */  addiu   $t8, $t8, %lo(func_80A22598) ## $t8 = 80A22598
/* 001D4 80A22094 1000005F */  beq     $zero, $zero, .L80A22214   
/* 001D8 80A22098 AE18014C */  sw      $t8, 0x014C($s0)           ## 0000014C
.L80A2209C:
/* 001DC 80A2209C 0C00084C */  jal     osSyncPrintf
              
/* 001E0 80A220A0 24843908 */  addiu   $a0, $a0, %lo(D_80A23908)  ## $a0 = 00003908
/* 001E4 80A220A4 3C0480A2 */  lui     $a0, %hi(D_80A2390C)       ## $a0 = 80A20000
/* 001E8 80A220A8 0C00084C */  jal     osSyncPrintf
              
/* 001EC 80A220AC 2484390C */  addiu   $a0, $a0, %lo(D_80A2390C)  ## $a0 = 80A2390C
/* 001F0 80A220B0 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 001F4 80A220B4 44813000 */  mtc1    $at, $f6                   ## $f6 = -3.00
/* 001F8 80A220B8 3C0180A2 */  lui     $at, %hi(D_80A23B04)       ## $at = 80A20000
/* 001FC 80A220BC E606006C */  swc1    $f6, 0x006C($s0)           ## 0000006C
/* 00200 80A220C0 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00204 80A220C4 C42C3B04 */  lwc1    $f12, %lo(D_80A23B04)($at) 
/* 00208 80A220C8 4600020D */  trunc.w.s $f8, $f0                   
/* 0020C 80A220CC 2605017C */  addiu   $a1, $s0, 0x017C           ## $a1 = 0000017C
/* 00210 80A220D0 44084000 */  mfc1    $t0, $f8                   
/* 00214 80A220D4 00000000 */  nop
/* 00218 80A220D8 A6080158 */  sh      $t0, 0x0158($s0)           ## 00000158
/* 0021C 80A220DC AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00220 80A220E0 0C0170D9 */  jal     Collider_InitCylinder
              
/* 00224 80A220E4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00228 80A220E8 3C0780A2 */  lui     $a3, %hi(D_80A236E4)       ## $a3 = 80A20000
/* 0022C 80A220EC 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00230 80A220F0 24E736E4 */  addiu   $a3, $a3, %lo(D_80A236E4)  ## $a3 = 80A236E4
/* 00234 80A220F4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00238 80A220F8 0C01712B */  jal     Collider_SetCylinder
              
/* 0023C 80A220FC 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00240 80A22100 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 00244 80A22104 44810000 */  mtc1    $at, $f0                   ## $f0 = 0.25
/* 00248 80A22108 3C0180A2 */  lui     $at, %hi(D_80A23B08)       ## $at = 80A20000
/* 0024C 80A2210C 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 00250 80A22110 E6000050 */  swc1    $f0, 0x0050($s0)           ## 00000050
/* 00254 80A22114 C42A3B08 */  lwc1    $f10, %lo(D_80A23B08)($at) 
/* 00258 80A22118 3529F820 */  ori     $t1, $t1, 0xF820           ## $t1 = 0001F820
/* 0025C 80A2211C 240A012C */  addiu   $t2, $zero, 0x012C         ## $t2 = 0000012C
/* 00260 80A22120 AE09019C */  sw      $t1, 0x019C($s0)           ## 0000019C
/* 00264 80A22124 A60A015E */  sh      $t2, 0x015E($s0)           ## 0000015E
/* 00268 80A22128 E6000058 */  swc1    $f0, 0x0058($s0)           ## 00000058
/* 0026C 80A2212C E60A0054 */  swc1    $f10, 0x0054($s0)          ## 00000054
/* 00270 80A22130 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00274 80A22134 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00278 80A22138 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 0027C 80A2213C 8605015E */  lh      $a1, 0x015E($s0)           ## 0000015E
/* 00280 80A22140 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00284 80A22144 00812021 */  addu    $a0, $a0, $at              
/* 00288 80A22148 A2020178 */  sb      $v0, 0x0178($s0)           ## 00000178
/* 0028C 80A2214C 820B0178 */  lb      $t3, 0x0178($s0)           ## 00000178
/* 00290 80A22150 0561000B */  bgez    $t3, .L80A22180            
/* 00294 80A22154 00000000 */  nop
/* 00298 80A22158 0C00B55C */  jal     Actor_Kill
              
/* 0029C 80A2215C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002A0 80A22160 3C0480A2 */  lui     $a0, %hi(D_80A23940)       ## $a0 = 80A20000
/* 002A4 80A22164 24843940 */  addiu   $a0, $a0, %lo(D_80A23940)  ## $a0 = 80A23940
/* 002A8 80A22168 0C00084C */  jal     osSyncPrintf
              
/* 002AC 80A2216C 82050178 */  lb      $a1, 0x0178($s0)           ## 00000178
/* 002B0 80A22170 3C0480A2 */  lui     $a0, %hi(D_80A2395C)       ## $a0 = 80A20000
/* 002B4 80A22174 2484395C */  addiu   $a0, $a0, %lo(D_80A2395C)  ## $a0 = 80A2395C
/* 002B8 80A22178 0C00084C */  jal     osSyncPrintf
              
/* 002BC 80A2217C 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
.L80A22180:
/* 002C0 80A22180 3C0E80A2 */  lui     $t6, %hi(func_80A223F8)    ## $t6 = 80A20000
/* 002C4 80A22184 240C0018 */  addiu   $t4, $zero, 0x0018         ## $t4 = 00000018
/* 002C8 80A22188 240D004A */  addiu   $t5, $zero, 0x004A         ## $t5 = 0000004A
/* 002CC 80A2218C 25CE23F8 */  addiu   $t6, $t6, %lo(func_80A223F8) ## $t6 = 80A223F8
/* 002D0 80A22190 A60C01BC */  sh      $t4, 0x01BC($s0)           ## 000001BC
/* 002D4 80A22194 A60D01BE */  sh      $t5, 0x01BE($s0)           ## 000001BE
/* 002D8 80A22198 A60001C0 */  sh      $zero, 0x01C0($s0)         ## 000001C0
/* 002DC 80A2219C 1000001D */  beq     $zero, $zero, .L80A22214   
/* 002E0 80A221A0 AE0E014C */  sw      $t6, 0x014C($s0)           ## 0000014C
.L80A221A4:
/* 002E4 80A221A4 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
/* 002E8 80A221A8 44818000 */  mtc1    $at, $f16                  ## $f16 = 700.00
/* 002EC 80A221AC 3C053D4C */  lui     $a1, 0x3D4C                ## $a1 = 3D4C0000
/* 002F0 80A221B0 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3D4CCCCD
/* 002F4 80A221B4 0C00B58B */  jal     Actor_SetScale
              
/* 002F8 80A221B8 E61000BC */  swc1    $f16, 0x00BC($s0)          ## 000000BC
/* 002FC 80A221BC 2605017C */  addiu   $a1, $s0, 0x017C           ## $a1 = 0000017C
/* 00300 80A221C0 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00304 80A221C4 0C0170D9 */  jal     Collider_InitCylinder
              
/* 00308 80A221C8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0030C 80A221CC 3C0780A2 */  lui     $a3, %hi(D_80A236E4)       ## $a3 = 80A20000
/* 00310 80A221D0 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00314 80A221D4 24E736E4 */  addiu   $a3, $a3, %lo(D_80A236E4)  ## $a3 = 80A236E4
/* 00318 80A221D8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0031C 80A221DC 0C01712B */  jal     Collider_SetCylinder
              
/* 00320 80A221E0 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00324 80A221E4 3C0F80A2 */  lui     $t7, %hi(func_80A230A8)    ## $t7 = 80A20000
/* 00328 80A221E8 3C0980A2 */  lui     $t1, %hi(func_80A22764)    ## $t1 = 80A20000
/* 0032C 80A221EC 25EF30A8 */  addiu   $t7, $t7, %lo(func_80A230A8) ## $t7 = 80A230A8
/* 00330 80A221F0 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 00334 80A221F4 2419003C */  addiu   $t9, $zero, 0x003C         ## $t9 = 0000003C
/* 00338 80A221F8 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 0033C 80A221FC 25292764 */  addiu   $t1, $t1, %lo(func_80A22764) ## $t1 = 80A22764
/* 00340 80A22200 AE0F0134 */  sw      $t7, 0x0134($s0)           ## 00000134
/* 00344 80A22204 A61801BC */  sh      $t8, 0x01BC($s0)           ## 000001BC
/* 00348 80A22208 A61901BE */  sh      $t9, 0x01BE($s0)           ## 000001BE
/* 0034C 80A2220C A60801C0 */  sh      $t0, 0x01C0($s0)           ## 000001C0
/* 00350 80A22210 AE09014C */  sw      $t1, 0x014C($s0)           ## 0000014C
.L80A22214:
/* 00354 80A22214 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A22218:
/* 00358 80A22218 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0035C 80A2221C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00360 80A22220 03E00008 */  jr      $ra                        
/* 00364 80A22224 00000000 */  nop
