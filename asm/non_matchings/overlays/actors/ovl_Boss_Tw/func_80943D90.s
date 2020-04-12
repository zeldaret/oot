.rdata
glabel D_8094AC68
    .asciz "../z_boss_tw.c"
    .balign 4

glabel D_8094AC78
    .asciz "../z_boss_tw.c"
    .balign 4

glabel D_8094AC88
    .asciz "../z_boss_tw.c"
    .balign 4

.late_rodata
glabel jtbl_8094B0E0
.word L80943E54
.word L80943E54
.word L80943E54
.word L80943E54
.word L80943EDC
.word L80943EDC
.word L80943E24
.word L80943EDC
.word L80943EDC
.word L80943EDC
.word L80943EDC
.word L80943EDC
.word L80943EDC
.word L80943EDC
.word L80943EDC
.word L80943EDC
.word L80943E54
.word L80943E54
.word L80943EDC
.word L80943DEC
.word L80943EDC
.word L80943EDC
.word L80943EDC
.word L80943EDC
.word L80943EDC
.word L80943E08
.word L80943E54
.word L80943E54

.text
glabel func_80943D90
/* 0B0C0 80943D90 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0B0C4 80943D94 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0B0C8 80943D98 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 0B0CC 80943D9C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 0B0D0 80943DA0 AFA60048 */  sw      $a2, 0x0048($sp)           
/* 0B0D4 80943DA4 AFA7004C */  sw      $a3, 0x004C($sp)           
/* 0B0D8 80943DA8 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 0B0DC 80943DAC 3C068095 */  lui     $a2, %hi(D_8094AC68)       ## $a2 = 80950000
/* 0B0E0 80943DB0 24C6AC68 */  addiu   $a2, $a2, %lo(D_8094AC68)  ## $a2 = 8094AC68
/* 0B0E4 80943DB4 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFE8
/* 0B0E8 80943DB8 24071C5E */  addiu   $a3, $zero, 0x1C5E         ## $a3 = 00001C5E
/* 0B0EC 80943DBC 0C031AB1 */  jal     Graph_OpenDisps              
/* 0B0F0 80943DC0 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 0B0F4 80943DC4 8FAF0044 */  lw      $t7, 0x0044($sp)           
/* 0B0F8 80943DC8 25F8FFF1 */  addiu   $t8, $t7, 0xFFF1           ## $t8 = FFFFFFF1
/* 0B0FC 80943DCC 2F01001C */  sltiu   $at, $t8, 0x001C           
/* 0B100 80943DD0 10200042 */  beq     $at, $zero, .L80943EDC     
/* 0B104 80943DD4 0018C080 */  sll     $t8, $t8,  2               
/* 0B108 80943DD8 3C018095 */  lui     $at, %hi(jtbl_8094B0E0)       ## $at = 80950000
/* 0B10C 80943DDC 00380821 */  addu    $at, $at, $t8              
/* 0B110 80943DE0 8C38B0E0 */  lw      $t8, %lo(jtbl_8094B0E0)($at)  
/* 0B114 80943DE4 03000008 */  jr      $t8                        
/* 0B118 80943DE8 00000000 */  nop
glabel L80943DEC
/* 0B11C 80943DEC 8FA50050 */  lw      $a1, 0x0050($sp)           
/* 0B120 80943DF0 3C048095 */  lui     $a0, %hi(D_8094A9D4)       ## $a0 = 80950000
/* 0B124 80943DF4 2484A9D4 */  addiu   $a0, $a0, %lo(D_8094A9D4)  ## $a0 = 8094A9D4
/* 0B128 80943DF8 0C0346BD */  jal     Matrix_MultVec3f              
/* 0B12C 80943DFC 24A50498 */  addiu   $a1, $a1, 0x0498           ## $a1 = 00000498
/* 0B130 80943E00 10000037 */  beq     $zero, $zero, .L80943EE0   
/* 0B134 80943E04 8FB80040 */  lw      $t8, 0x0040($sp)           
glabel L80943E08
/* 0B138 80943E08 8FA50050 */  lw      $a1, 0x0050($sp)           
/* 0B13C 80943E0C 3C048095 */  lui     $a0, %hi(D_8094A9E0)       ## $a0 = 80950000
/* 0B140 80943E10 2484A9E0 */  addiu   $a0, $a0, %lo(D_8094A9E0)  ## $a0 = 8094A9E0
/* 0B144 80943E14 0C0346BD */  jal     Matrix_MultVec3f              
/* 0B148 80943E18 24A504A4 */  addiu   $a1, $a1, 0x04A4           ## $a1 = 000004A4
/* 0B14C 80943E1C 10000030 */  beq     $zero, $zero, .L80943EE0   
/* 0B150 80943E20 8FB80040 */  lw      $t8, 0x0040($sp)           
glabel L80943E24
/* 0B154 80943E24 8FA50050 */  lw      $a1, 0x0050($sp)           
/* 0B158 80943E28 3C048095 */  lui     $a0, %hi(D_8094A9BC)       ## $a0 = 80950000
/* 0B15C 80943E2C 2484A9BC */  addiu   $a0, $a0, %lo(D_8094A9BC)  ## $a0 = 8094A9BC
/* 0B160 80943E30 0C0346BD */  jal     Matrix_MultVec3f              
/* 0B164 80943E34 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
/* 0B168 80943E38 8FA50050 */  lw      $a1, 0x0050($sp)           
/* 0B16C 80943E3C 3C048095 */  lui     $a0, %hi(D_8094A9C8)       ## $a0 = 80950000
/* 0B170 80943E40 2484A9C8 */  addiu   $a0, $a0, %lo(D_8094A9C8)  ## $a0 = 8094A9C8
/* 0B174 80943E44 0C0346BD */  jal     Matrix_MultVec3f              
/* 0B178 80943E48 24A50444 */  addiu   $a1, $a1, 0x0444           ## $a1 = 00000444
/* 0B17C 80943E4C 10000024 */  beq     $zero, $zero, .L80943EE0   
/* 0B180 80943E50 8FB80040 */  lw      $t8, 0x0040($sp)           
glabel L80943E54
/* 0B184 80943E54 0C034213 */  jal     Matrix_Push              
/* 0B188 80943E58 00000000 */  nop
/* 0B18C 80943E5C 8FB90050 */  lw      $t9, 0x0050($sp)           
/* 0B190 80943E60 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0B194 80943E64 C72C01B4 */  lwc1    $f12, 0x01B4($t9)          ## 000001B4
/* 0B198 80943E68 44066000 */  mfc1    $a2, $f12                  
/* 0B19C 80943E6C 0C0342A3 */  jal     Matrix_Scale              
/* 0B1A0 80943E70 46006386 */  mov.s   $f14, $f12                 
/* 0B1A4 80943E74 8FA70038 */  lw      $a3, 0x0038($sp)           
/* 0B1A8 80943E78 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 0B1AC 80943E7C 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 0B1B0 80943E80 8CE202D0 */  lw      $v0, 0x02D0($a3)           ## 000002D0
/* 0B1B4 80943E84 3C058095 */  lui     $a1, %hi(D_8094AC78)       ## $a1 = 80950000
/* 0B1B8 80943E88 24A5AC78 */  addiu   $a1, $a1, %lo(D_8094AC78)  ## $a1 = 8094AC78
/* 0B1BC 80943E8C 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 0B1C0 80943E90 ACE802D0 */  sw      $t0, 0x02D0($a3)           ## 000002D0
/* 0B1C4 80943E94 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 0B1C8 80943E98 8FAA0040 */  lw      $t2, 0x0040($sp)           
/* 0B1CC 80943E9C 24061C7F */  addiu   $a2, $zero, 0x1C7F         ## $a2 = 00001C7F
/* 0B1D0 80943EA0 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 0B1D4 80943EA4 0C0346A2 */  jal     Matrix_NewMtx              
/* 0B1D8 80943EA8 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 0B1DC 80943EAC 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 0B1E0 80943EB0 0C034221 */  jal     Matrix_Pull              
/* 0B1E4 80943EB4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 0B1E8 80943EB8 8FAB0038 */  lw      $t3, 0x0038($sp)           
/* 0B1EC 80943EBC 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 0B1F0 80943EC0 8D6202D0 */  lw      $v0, 0x02D0($t3)           ## 000002D0
/* 0B1F4 80943EC4 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 0B1F8 80943EC8 AD6C02D0 */  sw      $t4, 0x02D0($t3)           ## 000002D0
/* 0B1FC 80943ECC AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 0B200 80943ED0 8FAE0048 */  lw      $t6, 0x0048($sp)           
/* 0B204 80943ED4 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 00000000
/* 0B208 80943ED8 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
glabel L80943EDC
.L80943EDC:
/* 0B20C 80943EDC 8FB80040 */  lw      $t8, 0x0040($sp)           
.L80943EE0:
/* 0B210 80943EE0 3C068095 */  lui     $a2, %hi(D_8094AC88)       ## $a2 = 80950000
/* 0B214 80943EE4 24C6AC88 */  addiu   $a2, $a2, %lo(D_8094AC88)  ## $a2 = 8094AC88
/* 0B218 80943EE8 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFE8
/* 0B21C 80943EEC 24071C85 */  addiu   $a3, $zero, 0x1C85         ## $a3 = 00001C85
/* 0B220 80943EF0 0C031AD5 */  jal     Graph_CloseDisps              
/* 0B224 80943EF4 8F050000 */  lw      $a1, 0x0000($t8)           ## 00000000
/* 0B228 80943EF8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0B22C 80943EFC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0B230 80943F00 03E00008 */  jr      $ra                        
/* 0B234 80943F04 00000000 */  nop
