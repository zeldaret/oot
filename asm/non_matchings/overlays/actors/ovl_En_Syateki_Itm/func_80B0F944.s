.late_rodata
glabel D_80B10670
 .word 0x40BFAE14

.text
glabel func_80B0F944
/* 00294 80B0F944 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00298 80B0F948 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0029C 80B0F94C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 002A0 80B0F950 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 002A4 80B0F954 848E0152 */  lh      $t6, 0x0152($a0)           ## 00000152
/* 002A8 80B0F958 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002AC 80B0F95C 8CA61C44 */  lw      $a2, 0x1C44($a1)           ## 00001C44
/* 002B0 80B0F960 15C00051 */  bne     $t6, $zero, .L80B0FAA8     
/* 002B4 80B0F964 3C0F8016 */  lui     $t7, %hi(gSaveContext+4)
/* 002B8 80B0F968 8DEFE664 */  lw      $t7, %lo(gSaveContext+4)($t7)
/* 002BC 80B0F96C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 002C0 80B0F970 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 002C4 80B0F974 15E00031 */  bne     $t7, $zero, .L80B0FA3C     
/* 002C8 80B0F978 02001825 */  or      $v1, $s0, $zero            ## $v1 = 00000000
.L80B0F97C:
/* 002CC 80B0F97C 8478015A */  lh      $t8, 0x015A($v1)           ## 0000015A
/* 002D0 80B0F980 24420002 */  addiu   $v0, $v0, 0x0002           ## $v0 = 00000002
/* 002D4 80B0F984 2841000C */  slti    $at, $v0, 0x000C           
/* 002D8 80B0F988 13000002 */  beq     $t8, $zero, .L80B0F994     
/* 002DC 80B0F98C 00000000 */  nop
/* 002E0 80B0F990 24A50001 */  addiu   $a1, $a1, 0x0001           ## $a1 = 00000001
.L80B0F994:
/* 002E4 80B0F994 1420FFF9 */  bne     $at, $zero, .L80B0F97C     
/* 002E8 80B0F998 24630002 */  addiu   $v1, $v1, 0x0002           ## $v1 = 00000002
/* 002EC 80B0F99C 28A10006 */  slti    $at, $a1, 0x0006           
/* 002F0 80B0F9A0 14200008 */  bne     $at, $zero, .L80B0F9C4     
/* 002F4 80B0F9A4 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 002F8 80B0F9A8 3C0980B1 */  lui     $t1, %hi(func_80B0FFE8)    ## $t1 = 80B10000
/* 002FC 80B0F9AC A4D90110 */  sh      $t9, 0x0110($a2)           ## 00000110
/* 00300 80B0F9B0 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 00304 80B0F9B4 2529FFE8 */  addiu   $t1, $t1, %lo(func_80B0FFE8) ## $t1 = 80B0FFE8
/* 00308 80B0F9B8 A6080154 */  sh      $t0, 0x0154($s0)           ## 00000154
/* 0030C 80B0F9BC 1000003A */  beq     $zero, $zero, .L80B0FAA8   
/* 00310 80B0F9C0 AE09014C */  sw      $t1, 0x014C($s0)           ## 0000014C
.L80B0F9C4:
/* 00314 80B0F9C4 3C0180B1 */  lui     $at, %hi(D_80B10670)       ## $at = 80B10000
/* 00318 80B0F9C8 C4340670 */  lwc1    $f20, %lo(D_80B10670)($at) 
/* 0031C 80B0F9CC 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00320 80B0F9D0 4600A306 */  mov.s   $f12, $f20                 
/* 00324 80B0F9D4 4600010D */  trunc.w.s $f4, $f0                   
/* 00328 80B0F9D8 44022000 */  mfc1    $v0, $f4                   
/* 0032C 80B0F9DC 00000000 */  nop
/* 00330 80B0F9E0 00025840 */  sll     $t3, $v0,  1               
/* 00334 80B0F9E4 020B1821 */  addu    $v1, $s0, $t3              
/* 00338 80B0F9E8 846C015A */  lh      $t4, 0x015A($v1)           ## 0000015A
/* 0033C 80B0F9EC 5180000E */  beql    $t4, $zero, .L80B0FA28     
/* 00340 80B0F9F0 24480001 */  addiu   $t0, $v0, 0x0001           ## $t0 = 00000001
.L80B0F9F4:
/* 00344 80B0F9F4 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 00348 80B0F9F8 4600A306 */  mov.s   $f12, $f20                 
/* 0034C 80B0F9FC 4600018D */  trunc.w.s $f6, $f0                   
/* 00350 80B0FA00 44023000 */  mfc1    $v0, $f6                   
/* 00354 80B0FA04 00000000 */  nop
/* 00358 80B0FA08 00027040 */  sll     $t6, $v0,  1               
/* 0035C 80B0FA0C 020E7821 */  addu    $t7, $s0, $t6              
/* 00360 80B0FA10 85F8015A */  lh      $t8, 0x015A($t7)           ## 0000015A
/* 00364 80B0FA14 1700FFF7 */  bne     $t8, $zero, .L80B0F9F4     
/* 00368 80B0FA18 00000000 */  nop
/* 0036C 80B0FA1C 0002C840 */  sll     $t9, $v0,  1               
/* 00370 80B0FA20 02191821 */  addu    $v1, $s0, $t9              
/* 00374 80B0FA24 24480001 */  addiu   $t0, $v0, 0x0001           ## $t0 = 00000001
.L80B0FA28:
/* 00378 80B0FA28 A6080158 */  sh      $t0, 0x0158($s0)           ## 00000158
/* 0037C 80B0FA2C 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00380 80B0FA30 A469015A */  sh      $t1, 0x015A($v1)           ## 0000015A
/* 00384 80B0FA34 10000010 */  beq     $zero, $zero, .L80B0FA78   
/* 00388 80B0FA38 86040158 */  lh      $a0, 0x0158($s0)           ## 00000158
.L80B0FA3C:
/* 0038C 80B0FA3C 860A0158 */  lh      $t2, 0x0158($s0)           ## 00000158
/* 00390 80B0FA40 3C0E80B1 */  lui     $t6, %hi(func_80B0FFE8)    ## $t6 = 80B10000
/* 00394 80B0FA44 240C000A */  addiu   $t4, $zero, 0x000A         ## $t4 = 0000000A
/* 00398 80B0FA48 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 0039C 80B0FA4C A60B0158 */  sh      $t3, 0x0158($s0)           ## 00000158
/* 003A0 80B0FA50 86040158 */  lh      $a0, 0x0158($s0)           ## 00000158
/* 003A4 80B0FA54 240D0002 */  addiu   $t5, $zero, 0x0002         ## $t5 = 00000002
/* 003A8 80B0FA58 25CEFFE8 */  addiu   $t6, $t6, %lo(func_80B0FFE8) ## $t6 = 80B0FFE8
/* 003AC 80B0FA5C 28810007 */  slti    $at, $a0, 0x0007           
/* 003B0 80B0FA60 54200006 */  bnel    $at, $zero, .L80B0FA7C     
/* 003B4 80B0FA64 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 003B8 80B0FA68 A4CC0110 */  sh      $t4, 0x0110($a2)           ## 00000110
/* 003BC 80B0FA6C A60D0154 */  sh      $t5, 0x0154($s0)           ## 00000154
/* 003C0 80B0FA70 1000000D */  beq     $zero, $zero, .L80B0FAA8   
/* 003C4 80B0FA74 AE0E014C */  sw      $t6, 0x014C($s0)           ## 0000014C
.L80B0FA78:
/* 003C8 80B0FA78 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L80B0FA7C:
/* 003CC 80B0FA7C 14810004 */  bne     $a0, $at, .L80B0FA90       
/* 003D0 80B0FA80 2418001E */  addiu   $t8, $zero, 0x001E         ## $t8 = 0000001E
/* 003D4 80B0FA84 240F0032 */  addiu   $t7, $zero, 0x0032         ## $t7 = 00000032
/* 003D8 80B0FA88 10000002 */  beq     $zero, $zero, .L80B0FA94   
/* 003DC 80B0FA8C A60F0150 */  sh      $t7, 0x0150($s0)           ## 00000150
.L80B0FA90:
/* 003E0 80B0FA90 A6180150 */  sh      $t8, 0x0150($s0)           ## 00000150
.L80B0FA94:
/* 003E4 80B0FA94 0C01E221 */  jal     func_80078884              
/* 003E8 80B0FA98 2404482C */  addiu   $a0, $zero, 0x482C         ## $a0 = 0000482C
/* 003EC 80B0FA9C 3C1980B1 */  lui     $t9, %hi(func_80B0FABC)    ## $t9 = 80B10000
/* 003F0 80B0FAA0 2739FABC */  addiu   $t9, $t9, %lo(func_80B0FABC) ## $t9 = 80B0FABC
/* 003F4 80B0FAA4 AE19014C */  sw      $t9, 0x014C($s0)           ## 0000014C
.L80B0FAA8:
/* 003F8 80B0FAA8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 003FC 80B0FAAC D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 00400 80B0FAB0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00404 80B0FAB4 03E00008 */  jr      $ra                        
/* 00408 80B0FAB8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
