.rdata
glabel D_80B3ABC0
    .asciz "\x1b[35m☆☆☆☆☆ わー %d\n\x1b[m"
    .balign 4

glabel D_80B3ABDC
    .asciz "\x1b[35m☆☆☆☆☆ (強制)セーブしたよ！おもいっきり！ %x\n\x1b[m"
    .balign 4

.text
glabel func_80B3A3D4
/* 00504 80B3A3D4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00508 80B3A3D8 3C0E8016 */  lui     $t6, %hi(gGameInfo)
/* 0050C 80B3A3DC 8DCEFA90 */  lw      $t6, %lo(gGameInfo)($t6)
/* 00510 80B3A3E0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00514 80B3A3E4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00518 80B3A3E8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0051C 80B3A3EC 85CF12D8 */  lh      $t7, 0x12D8($t6)           ## 801612D8
/* 00520 80B3A3F0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00524 80B3A3F4 51E00008 */  beql    $t7, $zero, .L80B3A418     
/* 00528 80B3A3F8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0052C 80B3A3FC 0C042F6F */  jal     func_8010BDBC              
/* 00530 80B3A400 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00534 80B3A404 3C0480B4 */  lui     $a0, %hi(D_80B3ABC0)       ## $a0 = 80B40000
/* 00538 80B3A408 2484ABC0 */  addiu   $a0, $a0, %lo(D_80B3ABC0)  ## $a0 = 80B3ABC0
/* 0053C 80B3A40C 0C00084C */  jal     osSyncPrintf
              
/* 00540 80B3A410 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 00544 80B3A414 8FA40034 */  lw      $a0, 0x0034($sp)           
.L80B3A418:
/* 00548 80B3A418 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 0054C 80B3A41C 0C042F6F */  jal     func_8010BDBC              
/* 00550 80B3A420 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00554 80B3A424 10400010 */  beq     $v0, $zero, .L80B3A468     
/* 00558 80B3A428 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0055C 80B3A42C 10410003 */  beq     $v0, $at, .L80B3A43C       
/* 00560 80B3A430 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00564 80B3A434 5441002C */  bnel    $v0, $at, .L80B3A4E8       
/* 00568 80B3A438 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B3A43C:
/* 0056C 80B3A43C 0C041AF2 */  jal     func_80106BC8              
/* 00570 80B3A440 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00574 80B3A444 50400028 */  beql    $v0, $zero, .L80B3A4E8     
/* 00578 80B3A448 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0057C 80B3A44C 0C042F6F */  jal     func_8010BDBC              
/* 00580 80B3A450 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00584 80B3A454 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00588 80B3A458 54410004 */  bnel    $v0, $at, .L80B3A46C       
/* 0058C 80B3A45C 86050152 */  lh      $a1, 0x0152($s0)           ## 00000152
/* 00590 80B3A460 0C041B33 */  jal     func_80106CCC              
/* 00594 80B3A464 8FA40034 */  lw      $a0, 0x0034($sp)           
.L80B3A468:
/* 00598 80B3A468 86050152 */  lh      $a1, 0x0152($s0)           ## 00000152
.L80B3A46C:
/* 0059C 80B3A46C 04A2000C */  bltzl   $a1, .L80B3A4A0            
/* 005A0 80B3A470 86190154 */  lh      $t9, 0x0154($s0)           ## 00000154
/* 005A4 80B3A474 86180154 */  lh      $t8, 0x0154($s0)           ## 00000154
/* 005A8 80B3A478 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 005AC 80B3A47C 53010008 */  beql    $t8, $at, .L80B3A4A0       
/* 005B0 80B3A480 86190154 */  lh      $t9, 0x0154($s0)           ## 00000154
/* 005B4 80B3A484 0C00B2DD */  jal     Flags_SetSwitch
              
/* 005B8 80B3A488 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 005BC 80B3A48C 3C0480B4 */  lui     $a0, %hi(D_80B3ABDC)       ## $a0 = 80B40000
/* 005C0 80B3A490 2484ABDC */  addiu   $a0, $a0, %lo(D_80B3ABDC)  ## $a0 = 80B3ABDC
/* 005C4 80B3A494 0C00084C */  jal     osSyncPrintf
              
/* 005C8 80B3A498 86050152 */  lh      $a1, 0x0152($s0)           ## 00000152
/* 005CC 80B3A49C 86190154 */  lh      $t9, 0x0154($s0)           ## 00000154
.L80B3A4A0:
/* 005D0 80B3A4A0 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 005D4 80B3A4A4 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 005D8 80B3A4A8 17210002 */  bne     $t9, $at, .L80B3A4B4       
/* 005DC 80B3A4AC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 005E0 80B3A4B0 A208015A */  sb      $t0, 0x015A($s0)           ## 0000015A
.L80B3A4B4:
/* 005E4 80B3A4B4 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
/* 005E8 80B3A4B8 2401FFEE */  addiu   $at, $zero, 0xFFEE         ## $at = FFFFFFEE
/* 005EC 80B3A4BC 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 005F0 80B3A4C0 01215024 */  and     $t2, $t1, $at              
/* 005F4 80B3A4C4 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 005F8 80B3A4C8 0C00B7D5 */  jal     func_8002DF54              
/* 005FC 80B3A4CC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00600 80B3A4D0 3C0C80B4 */  lui     $t4, %hi(func_80B3A4F8)    ## $t4 = 80B40000
/* 00604 80B3A4D4 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00608 80B3A4D8 258CA4F8 */  addiu   $t4, $t4, %lo(func_80B3A4F8) ## $t4 = 80B3A4F8
/* 0060C 80B3A4DC A60B0156 */  sh      $t3, 0x0156($s0)           ## 00000156
/* 00610 80B3A4E0 AE0C014C */  sw      $t4, 0x014C($s0)           ## 0000014C
/* 00614 80B3A4E4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B3A4E8:
/* 00618 80B3A4E8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0061C 80B3A4EC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00620 80B3A4F0 03E00008 */  jr      $ra                        
/* 00624 80B3A4F4 00000000 */  nop
