.rdata
glabel D_80B2D120
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D134
    .asciz "../z_en_viewer.c"
    .balign 4

.text
glabel EnViewer_Draw
/* 02078 80B2C278 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0207C 80B2C27C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 02080 80B2C280 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 02084 80B2C284 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 02088 80B2C288 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 0208C 80B2C28C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02090 80B2C290 3C0680B3 */  lui     $a2, %hi(D_80B2D120)       ## $a2 = 80B30000
/* 02094 80B2C294 24C6D120 */  addiu   $a2, $a2, %lo(D_80B2D120)  ## $a2 = 80B2D120
/* 02098 80B2C298 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 0209C 80B2C29C 27A40020 */  addiu   $a0, $sp, 0x0020           ## $a0 = FFFFFFE0
/* 020A0 80B2C2A0 0C031AB1 */  jal     Graph_OpenDisps              
/* 020A4 80B2C2A4 240706E0 */  addiu   $a3, $zero, 0x06E0         ## $a3 = 000006E0
/* 020A8 80B2C2A8 922E01E6 */  lbu     $t6, 0x01E6($s1)           ## 000001E6
/* 020AC 80B2C2AC 11C0002F */  beq     $t6, $zero, .L80B2C36C     
/* 020B0 80B2C2B0 00000000 */  nop
/* 020B4 80B2C2B4 8622001C */  lh      $v0, 0x001C($s1)           ## 0000001C
/* 020B8 80B2C2B8 00021203 */  sra     $v0, $v0,  8               
/* 020BC 80B2C2BC 00021400 */  sll     $v0, $v0, 16               
/* 020C0 80B2C2C0 00021403 */  sra     $v0, $v0, 16               
/* 020C4 80B2C2C4 28410003 */  slti    $at, $v0, 0x0003           
/* 020C8 80B2C2C8 50200015 */  beql    $at, $zero, .L80B2C320     
/* 020CC 80B2C2CC 92091D6C */  lbu     $t1, 0x1D6C($s0)           ## 00001D6C
/* 020D0 80B2C2D0 920F1D6C */  lbu     $t7, 0x1D6C($s0)           ## 00001D6C
/* 020D4 80B2C2D4 11E00025 */  beq     $t7, $zero, .L80B2C36C     
/* 020D8 80B2C2D8 00000000 */  nop
/* 020DC 80B2C2DC 8E181D8C */  lw      $t8, 0x1D8C($s0)           ## 00001D8C
/* 020E0 80B2C2E0 13000022 */  beq     $t8, $zero, .L80B2C36C     
/* 020E4 80B2C2E4 00000000 */  nop
/* 020E8 80B2C2E8 0C024F46 */  jal     func_80093D18              
/* 020EC 80B2C2EC 8E040000 */  lw      $a0, 0x0000($s0)           ## 00000000
/* 020F0 80B2C2F0 923901DD */  lbu     $t9, 0x01DD($s1)           ## 000001DD
/* 020F4 80B2C2F4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 020F8 80B2C2F8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 020FC 80B2C2FC 00194080 */  sll     $t0, $t9,  2               
/* 02100 80B2C300 3C1980B3 */  lui     $t9, %hi(D_80B2CFDC)       ## $t9 = 80B30000
/* 02104 80B2C304 0328C821 */  addu    $t9, $t9, $t0              
/* 02108 80B2C308 8F39CFDC */  lw      $t9, %lo(D_80B2CFDC)($t9)  
/* 0210C 80B2C30C 0320F809 */  jalr    $ra, $t9                   
/* 02110 80B2C310 00000000 */  nop
/* 02114 80B2C314 10000015 */  beq     $zero, $zero, .L80B2C36C   
/* 02118 80B2C318 00000000 */  nop
/* 0211C 80B2C31C 92091D6C */  lbu     $t1, 0x1D6C($s0)           ## 00001D6C
.L80B2C320:
/* 02120 80B2C320 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 02124 80B2C324 11200004 */  beq     $t1, $zero, .L80B2C338     
/* 02128 80B2C328 00000000 */  nop
/* 0212C 80B2C32C 8E0A1D90 */  lw      $t2, 0x1D90($s0)           ## 00001D90
/* 02130 80B2C330 15400003 */  bne     $t2, $zero, .L80B2C340     
/* 02134 80B2C334 00000000 */  nop
.L80B2C338:
/* 02138 80B2C338 1441000C */  bne     $v0, $at, .L80B2C36C       
/* 0213C 80B2C33C 00000000 */  nop
.L80B2C340:
/* 02140 80B2C340 0C024F46 */  jal     func_80093D18              
/* 02144 80B2C344 8E040000 */  lw      $a0, 0x0000($s0)           ## 00000000
/* 02148 80B2C348 922B01DD */  lbu     $t3, 0x01DD($s1)           ## 000001DD
/* 0214C 80B2C34C 3C1980B3 */  lui     $t9, %hi(D_80B2CFDC)       ## $t9 = 80B30000
/* 02150 80B2C350 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02154 80B2C354 000B6080 */  sll     $t4, $t3,  2               
/* 02158 80B2C358 032CC821 */  addu    $t9, $t9, $t4              
/* 0215C 80B2C35C 8F39CFDC */  lw      $t9, %lo(D_80B2CFDC)($t9)  
/* 02160 80B2C360 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02164 80B2C364 0320F809 */  jalr    $ra, $t9                   
/* 02168 80B2C368 00000000 */  nop
.L80B2C36C:
/* 0216C 80B2C36C 3C0680B3 */  lui     $a2, %hi(D_80B2D134)       ## $a2 = 80B30000
/* 02170 80B2C370 24C6D134 */  addiu   $a2, $a2, %lo(D_80B2D134)  ## $a2 = 80B2D134
/* 02174 80B2C374 27A40020 */  addiu   $a0, $sp, 0x0020           ## $a0 = FFFFFFE0
/* 02178 80B2C378 8E050000 */  lw      $a1, 0x0000($s0)           ## 00000000
/* 0217C 80B2C37C 0C031AD5 */  jal     Graph_CloseDisps              
/* 02180 80B2C380 240706F8 */  addiu   $a3, $zero, 0x06F8         ## $a3 = 000006F8
/* 02184 80B2C384 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02188 80B2C388 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 0218C 80B2C38C 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 02190 80B2C390 03E00008 */  jr      $ra                        
/* 02194 80B2C394 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
