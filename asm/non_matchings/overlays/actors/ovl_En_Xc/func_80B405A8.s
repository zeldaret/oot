glabel func_80B405A8
/* 043C8 80B405A8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 043CC 80B405AC AFB10018 */  sw      $s1, 0x0018($sp)           
/* 043D0 80B405B0 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 043D4 80B405B4 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 043D8 80B405B8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 043DC 80B405BC 2490014C */  addiu   $s0, $a0, 0x014C           ## $s0 = 0000014C
/* 043E0 80B405C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 043E4 80B405C4 0C0295B2 */  jal     func_800A56C8              
/* 043E8 80B405C8 3C054110 */  lui     $a1, 0x4110                ## $a1 = 41100000
/* 043EC 80B405CC 1040000A */  beq     $v0, $zero, .L80B405F8     
/* 043F0 80B405D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 043F4 80B405D4 263000E4 */  addiu   $s0, $s1, 0x00E4           ## $s0 = 000000E4
/* 043F8 80B405D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000000E4
/* 043FC 80B405DC 0C01E245 */  jal     func_80078914              
/* 04400 80B405E0 24050858 */  addiu   $a1, $zero, 0x0858         ## $a1 = 00000858
/* 04404 80B405E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000000E4
/* 04408 80B405E8 0C01E245 */  jal     func_80078914              
/* 0440C 80B405EC 24056872 */  addiu   $a1, $zero, 0x6872         ## $a1 = 00006872
/* 04410 80B405F0 1000001A */  beq     $zero, $zero, .L80B4065C   
/* 04414 80B405F4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B405F8:
/* 04418 80B405F8 0C0295B2 */  jal     func_800A56C8              
/* 0441C 80B405FC 3C0541D0 */  lui     $a1, 0x41D0                ## $a1 = 41D00000
/* 04420 80B40600 10400006 */  beq     $v0, $zero, .L80B4061C     
/* 04424 80B40604 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000000E4
/* 04428 80B40608 262400E4 */  addiu   $a0, $s1, 0x00E4           ## $a0 = 000000E4
/* 0442C 80B4060C 0C01E245 */  jal     func_80078914              
/* 04430 80B40610 24050858 */  addiu   $a1, $zero, 0x0858         ## $a1 = 00000858
/* 04434 80B40614 10000011 */  beq     $zero, $zero, .L80B4065C   
/* 04438 80B40618 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B4061C:
/* 0443C 80B4061C 0C0295B2 */  jal     func_800A56C8              
/* 04440 80B40620 3C0541E0 */  lui     $a1, 0x41E0                ## $a1 = 41E00000
/* 04444 80B40624 10400006 */  beq     $v0, $zero, .L80B40640     
/* 04448 80B40628 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000000E4
/* 0444C 80B4062C 262400E4 */  addiu   $a0, $s1, 0x00E4           ## $a0 = 000000E4
/* 04450 80B40630 0C01E245 */  jal     func_80078914              
/* 04454 80B40634 24050808 */  addiu   $a1, $zero, 0x0808         ## $a1 = 00000808
/* 04458 80B40638 10000008 */  beq     $zero, $zero, .L80B4065C   
/* 0445C 80B4063C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B40640:
/* 04460 80B40640 0C0295B2 */  jal     func_800A56C8              
/* 04464 80B40644 3C054208 */  lui     $a1, 0x4208                ## $a1 = 42080000
/* 04468 80B40648 10400003 */  beq     $v0, $zero, .L80B40658     
/* 0446C 80B4064C 262400E4 */  addiu   $a0, $s1, 0x00E4           ## $a0 = 000000E4
/* 04470 80B40650 0C01E245 */  jal     func_80078914              
/* 04474 80B40654 24050808 */  addiu   $a1, $zero, 0x0808         ## $a1 = 00000808
.L80B40658:
/* 04478 80B40658 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B4065C:
/* 0447C 80B4065C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 04480 80B40660 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 04484 80B40664 03E00008 */  jr      $ra                        
/* 04488 80B40668 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
