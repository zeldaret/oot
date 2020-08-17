.rdata
glabel D_80A060C4
    .asciz "0"
    .balign 4

glabel D_80A060C8
    .asciz "../z_en_elf.c"
    .balign 4

.text
glabel func_80A03AB0
/* 01E80 80A03AB0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01E84 80A03AB4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01E88 80A03AB8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01E8C 80A03ABC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01E90 80A03AC0 948E02C4 */  lhu     $t6, 0x02C4($a0)           ## 000002C4
/* 01E94 80A03AC4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01E98 80A03AC8 31CF0004 */  andi    $t7, $t6, 0x0004           ## $t7 = 00000000
/* 01E9C 80A03ACC 11E00003 */  beq     $t7, $zero, .L80A03ADC     
/* 01EA0 80A03AD0 00000000 */  nop
/* 01EA4 80A03AD4 0C281105 */  jal     func_80A04414              
/* 01EA8 80A03AD8 00000000 */  nop
.L80A03ADC:
/* 01EAC 80A03ADC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01EB0 80A03AE0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01EB4 80A03AE4 8E0202C8 */  lw      $v0, 0x02C8($s0)           ## 000002C8
/* 01EB8 80A03AE8 3C0480A0 */  lui     $a0, %hi(D_80A060C4)       ## $a0 = 80A00000
/* 01EBC 80A03AEC 248460C4 */  addiu   $a0, $a0, %lo(D_80A060C4)  ## $a0 = 80A060C4
/* 01EC0 80A03AF0 14400005 */  bne     $v0, $zero, .L80A03B08     
/* 01EC4 80A03AF4 3C0580A0 */  lui     $a1, %hi(D_80A060C8)       ## $a1 = 80A00000
/* 01EC8 80A03AF8 24A560C8 */  addiu   $a1, $a1, %lo(D_80A060C8)  ## $a1 = 80A060C8
/* 01ECC 80A03AFC 0C0007FC */  jal     __assert
              
/* 01ED0 80A03B00 240606BD */  addiu   $a2, $zero, 0x06BD         ## $a2 = 000006BD
/* 01ED4 80A03B04 8E0202C8 */  lw      $v0, 0x02C8($s0)           ## 000002C8
.L80A03B08:
/* 01ED8 80A03B08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EDC 80A03B0C 0040F809 */  jalr    $ra, $v0                   
/* 01EE0 80A03B10 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01EE4 80A03B14 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01EE8 80A03B18 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01EEC 80A03B1C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01EF0 80A03B20 03E00008 */  jr      $ra                        
/* 01EF4 80A03B24 00000000 */  nop
