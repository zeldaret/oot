.rdata
glabel D_80B8CE3C
    .asciz "../z_magic_wind.c"
    .balign 4

glabel D_80B8CE50
    .asciz "\"表示開始\" = %s\n"
    .balign 4

glabel D_80B8CE64
    .asciz "表示開始"
    .balign 4

.text
glabel func_80B8B3C8
/* 002C8 80B8B3C8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 002CC 80B8B3CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002D0 80B8B3D0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 002D4 80B8B3D4 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 002D8 80B8B3D8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 002DC 80B8B3DC 2405021B */  addiu   $a1, $zero, 0x021B         ## $a1 = 0000021B
/* 002E0 80B8B3E0 AFAF001C */  sw      $t7, 0x001C($sp)           
/* 002E4 80B8B3E4 8482016C */  lh      $v0, 0x016C($a0)           ## 0000016C
/* 002E8 80B8B3E8 18400003 */  blez    $v0, .L80B8B3F8            
/* 002EC 80B8B3EC 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 002F0 80B8B3F0 10000019 */  beq     $zero, $zero, .L80B8B458   
/* 002F4 80B8B3F4 A498016C */  sh      $t8, 0x016C($a0)           ## 0000016C
.L80B8B3F8:
/* 002F8 80B8B3F8 3C0480B9 */  lui     $a0, %hi(D_80B8CE3C)       ## $a0 = 80B90000
/* 002FC 80B8B3FC 2484CE3C */  addiu   $a0, $a0, %lo(D_80B8CE3C)  ## $a0 = 80B8CE3C
/* 00300 80B8B400 0C000B84 */  jal     LogUtils_LogThreadId
              
/* 00304 80B8B404 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00308 80B8B408 3C0480B9 */  lui     $a0, %hi(D_80B8CE50)       ## $a0 = 80B90000
/* 0030C 80B8B40C 3C0580B9 */  lui     $a1, %hi(D_80B8CE64)       ## $a1 = 80B90000
/* 00310 80B8B410 24A5CE64 */  addiu   $a1, $a1, %lo(D_80B8CE64)  ## $a1 = 80B8CE64
/* 00314 80B8B414 0C00084C */  jal     osSyncPrintf
              
/* 00318 80B8B418 2484CE50 */  addiu   $a0, $a0, %lo(D_80B8CE50)  ## $a0 = 80B8CE50
/* 0031C 80B8B41C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00320 80B8B420 0C00BDF7 */  jal     func_8002F7DC              
/* 00324 80B8B424 2405087A */  addiu   $a1, $zero, 0x087A         ## $a1 = 0000087A
/* 00328 80B8B428 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0032C 80B8B42C 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 00330 80B8B430 0C2E2CAA */  jal     func_80B8B2A8              
/* 00334 80B8B434 00000000 */  nop
/* 00338 80B8B438 3C0580B9 */  lui     $a1, %hi(func_80B8B468)    ## $a1 = 80B90000
/* 0033C 80B8B43C 24A5B468 */  addiu   $a1, $a1, %lo(func_80B8B468) ## $a1 = 80B8B468
/* 00340 80B8B440 0C2E2C40 */  jal     func_80B8B100              
/* 00344 80B8B444 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00348 80B8B448 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 0034C 80B8B44C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00350 80B8B450 0C01B231 */  jal     func_8006C8C4              
/* 00354 80B8B454 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
.L80B8B458:
/* 00358 80B8B458 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0035C 80B8B45C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00360 80B8B460 03E00008 */  jr      $ra                        
/* 00364 80B8B464 00000000 */  nop
