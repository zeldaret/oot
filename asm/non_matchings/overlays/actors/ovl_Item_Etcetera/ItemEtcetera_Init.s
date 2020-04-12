.rdata
glabel D_80B85DA0
    .asciz "no = %d\n"
    .balign 4

glabel D_80B85DAC
    .asciz "bank_ID = %d\n"
    .balign 4

glabel D_80B85DBC
    .asciz "0"
    .balign 4

glabel D_80B85DC0
    .asciz "../z_item_etcetera.c"
    .balign 4

.late_rodata
glabel jtbl_80B85E24
.word L80B85710
.word L80B857B0
.word L80B857B0
.word L80B857B0
.word L80B857B0
.word L80B857B0
.word L80B8574C
.word L80B85778
.word L80B85778
.word L80B85778
.word L80B85778
.word L80B85778
.word L80B85778

.text
glabel ItemEtcetera_Init
/* 00008 80B855F8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0000C 80B855FC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00010 80B85600 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00014 80B85604 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00018 80B85608 8485001C */  lh      $a1, 0x001C($a0)           ## 0000001C
/* 0001C 80B8560C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00020 80B85610 3C0480B8 */  lui     $a0, %hi(D_80B85DA0)       ## $a0 = 80B80000
/* 00024 80B85614 30A500FF */  andi    $a1, $a1, 0x00FF           ## $a1 = 00000000
/* 00028 80B85618 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0002C 80B8561C 0C00084C */  jal     osSyncPrintf
              
/* 00030 80B85620 24845DA0 */  addiu   $a0, $a0, %lo(D_80B85DA0)  ## $a0 = 80B85DA0
/* 00034 80B85624 8FA2002C */  lw      $v0, 0x002C($sp)           
/* 00038 80B85628 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0003C 80B8562C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00040 80B85630 3C0580B8 */  lui     $a1, %hi(D_80B85D20)       ## $a1 = 80B80000
/* 00044 80B85634 00021040 */  sll     $v0, $v0,  1               
/* 00048 80B85638 00A22821 */  addu    $a1, $a1, $v0              
/* 0004C 80B8563C 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00050 80B85640 84A55D20 */  lh      $a1, %lo(D_80B85D20)($a1)  
/* 00054 80B85644 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 00058 80B85648 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 0005C 80B8564C 00812021 */  addu    $a0, $a0, $at              
/* 00060 80B85650 3C0480B8 */  lui     $a0, %hi(D_80B85DAC)       ## $a0 = 80B80000
/* 00064 80B85654 24845DAC */  addiu   $a0, $a0, %lo(D_80B85DAC)  ## $a0 = 80B85DAC
/* 00068 80B85658 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 0006C 80B8565C 0C00084C */  jal     osSyncPrintf
              
/* 00070 80B85660 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 00074 80B85664 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 00078 80B85668 3C0480B8 */  lui     $a0, %hi(D_80B85DBC)       ## $a0 = 80B80000
/* 0007C 80B8566C 24845DBC */  addiu   $a0, $a0, %lo(D_80B85DBC)  ## $a0 = 80B85DBC
/* 00080 80B85670 04610006 */  bgez    $v1, .L80B8568C            
/* 00084 80B85674 3C0580B8 */  lui     $a1, %hi(D_80B85DC0)       ## $a1 = 80B80000
/* 00088 80B85678 24A55DC0 */  addiu   $a1, $a1, %lo(D_80B85DC0)  ## $a1 = 80B85DC0
/* 0008C 80B8567C 0C0007FC */  jal     __assert
              
/* 00090 80B85680 240600F1 */  addiu   $a2, $zero, 0x00F1         ## $a2 = 000000F1
/* 00094 80B85684 10000003 */  beq     $zero, $zero, .L80B85694   
/* 00098 80B85688 8FA20024 */  lw      $v0, 0x0024($sp)           
.L80B8568C:
/* 0009C 80B8568C A2030154 */  sb      $v1, 0x0154($s0)           ## 00000154
/* 000A0 80B85690 8FA20024 */  lw      $v0, 0x0024($sp)           
.L80B85694:
/* 000A4 80B85694 3C0E80B8 */  lui     $t6, %hi(D_80B85D3C)       ## $t6 = 80B80000
/* 000A8 80B85698 3C0F80B8 */  lui     $t7, %hi(D_80B85D58)       ## $t7 = 80B80000
/* 000AC 80B8569C 01C27021 */  addu    $t6, $t6, $v0              
/* 000B0 80B856A0 85CE5D3C */  lh      $t6, %lo(D_80B85D3C)($t6)  
/* 000B4 80B856A4 01E27821 */  addu    $t7, $t7, $v0              
/* 000B8 80B856A8 3C1880B8 */  lui     $t8, %hi(func_80B85824)    ## $t8 = 80B80000
/* 000BC 80B856AC A60E0150 */  sh      $t6, 0x0150($s0)           ## 00000150
/* 000C0 80B856B0 85EF5D58 */  lh      $t7, %lo(D_80B85D58)($t7)  
/* 000C4 80B856B4 3C1980B8 */  lui     $t9, %hi(func_80B85CB8)    ## $t9 = 80B80000
/* 000C8 80B856B8 27185824 */  addiu   $t8, $t8, %lo(func_80B85824) ## $t8 = 80B85824
/* 000CC 80B856BC 27395CB8 */  addiu   $t9, $t9, %lo(func_80B85CB8) ## $t9 = 80B85CB8
/* 000D0 80B856C0 AE18014C */  sw      $t8, 0x014C($s0)           ## 0000014C
/* 000D4 80B856C4 AE190158 */  sw      $t9, 0x0158($s0)           ## 00000158
/* 000D8 80B856C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000DC 80B856CC 3C053E80 */  lui     $a1, 0x3E80                ## $a1 = 3E800000
/* 000E0 80B856D0 0C00B58B */  jal     Actor_SetScale
              
/* 000E4 80B856D4 A60F0152 */  sh      $t7, 0x0152($s0)           ## 00000152
/* 000E8 80B856D8 3C0580B8 */  lui     $a1, %hi(func_80B857D0)    ## $a1 = 80B80000
/* 000EC 80B856DC 24A557D0 */  addiu   $a1, $a1, %lo(func_80B857D0) ## $a1 = 80B857D0
/* 000F0 80B856E0 0C2E157C */  jal     func_80B855F0              
/* 000F4 80B856E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000F8 80B856E8 8FA8002C */  lw      $t0, 0x002C($sp)           
/* 000FC 80B856EC 2509FFFF */  addiu   $t1, $t0, 0xFFFF           ## $t1 = FFFFFFFF
/* 00100 80B856F0 2D21000D */  sltiu   $at, $t1, 0x000D           
/* 00104 80B856F4 1020002E */  beq     $at, $zero, .L80B857B0     
/* 00108 80B856F8 00094880 */  sll     $t1, $t1,  2               
/* 0010C 80B856FC 3C0180B8 */  lui     $at, %hi(jtbl_80B85E24)       ## $at = 80B80000
/* 00110 80B85700 00290821 */  addu    $at, $at, $t1              
/* 00114 80B85704 8C295E24 */  lw      $t1, %lo(jtbl_80B85E24)($at)  
/* 00118 80B85708 01200008 */  jr      $t1                        
/* 0011C 80B8570C 00000000 */  nop
glabel L80B85710
/* 00120 80B85710 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00124 80B85714 0C00B58B */  jal     Actor_SetScale
              
/* 00128 80B85718 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 0012C 80B8571C 3C0A80B8 */  lui     $t2, %hi(func_80B858B4)    ## $t2 = 80B80000
/* 00130 80B85720 254A58B4 */  addiu   $t2, $t2, %lo(func_80B858B4) ## $t2 = 80B858B4
/* 00134 80B85724 AE0A014C */  sw      $t2, 0x014C($s0)           ## 0000014C
/* 00138 80B85728 3C0B8016 */  lui     $t3, 0x8016                ## $t3 = 80160000
/* 0013C 80B8572C 956BF53A */  lhu     $t3, -0x0AC6($t3)          ## 8015F53A
/* 00140 80B85730 316C0002 */  andi    $t4, $t3, 0x0002           ## $t4 = 00000000
/* 00144 80B85734 5180001F */  beql    $t4, $zero, .L80B857B4     
/* 00148 80B85738 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0014C 80B8573C 0C00B55C */  jal     Actor_Kill
              
/* 00150 80B85740 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00154 80B85744 1000001B */  beq     $zero, $zero, .L80B857B4   
/* 00158 80B85748 8FBF001C */  lw      $ra, 0x001C($sp)           
glabel L80B8574C
/* 0015C 80B8574C 3C0D80B8 */  lui     $t5, %hi(func_80B85B6C)    ## $t5 = 80B80000
/* 00160 80B85750 25AD5B6C */  addiu   $t5, $t5, %lo(func_80B85B6C) ## $t5 = 80B85B6C
/* 00164 80B85754 AE0D014C */  sw      $t5, 0x014C($s0)           ## 0000014C
/* 00168 80B85758 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0016C 80B8575C 0C00B58B */  jal     Actor_SetScale
              
/* 00170 80B85760 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 00174 80B85764 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00178 80B85768 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 0017C 80B8576C AE000134 */  sw      $zero, 0x0134($s0)         ## 00000134
/* 00180 80B85770 1000000F */  beq     $zero, $zero, .L80B857B0   
/* 00184 80B85774 E60400BC */  swc1    $f4, 0x00BC($s0)           ## 000000BC
glabel L80B85778
/* 00188 80B85778 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0018C 80B8577C 0C00B58B */  jal     Actor_SetScale
              
/* 00190 80B85780 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 00194 80B85784 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00198 80B85788 44814000 */  mtc1    $at, $f8                   ## $f8 = 15.00
/* 0019C 80B8578C C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 001A0 80B85790 3C0E80B8 */  lui     $t6, %hi(func_80B85B28)    ## $t6 = 80B80000
/* 001A4 80B85794 3C0F80B8 */  lui     $t7, %hi(func_80B85C64)    ## $t7 = 80B80000
/* 001A8 80B85798 46083280 */  add.s   $f10, $f6, $f8             
/* 001AC 80B8579C 25CE5B28 */  addiu   $t6, $t6, %lo(func_80B85B28) ## $t6 = 80B85B28
/* 001B0 80B857A0 25EF5C64 */  addiu   $t7, $t7, %lo(func_80B85C64) ## $t7 = 80B85C64
/* 001B4 80B857A4 AE0E014C */  sw      $t6, 0x014C($s0)           ## 0000014C
/* 001B8 80B857A8 AE0F0158 */  sw      $t7, 0x0158($s0)           ## 00000158
/* 001BC 80B857AC E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
glabel L80B857B0
.L80B857B0:
/* 001C0 80B857B0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B857B4:
/* 001C4 80B857B4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 001C8 80B857B8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 001CC 80B857BC 03E00008 */  jr      $ra                        
/* 001D0 80B857C0 00000000 */  nop
