.rdata
glabel D_80B7B2E4
    .asciz "../z_fishing.c"
    .balign 4

glabel D_80B7B2F4
    .asciz "../z_fishing.c"
    .balign 4

.text
glabel func_80B7A140
/* 107A0 80B7A140 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 107A4 80B7A144 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 107A8 80B7A148 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 107AC 80B7A14C AFA40038 */  sw      $a0, 0x0038($sp)           
/* 107B0 80B7A150 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 107B4 80B7A154 14A10044 */  bne     $a1, $at, .L80B7A268       
/* 107B8 80B7A158 AFA70044 */  sw      $a3, 0x0044($sp)           
/* 107BC 80B7A15C 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 107C0 80B7A160 3C0680B8 */  lui     $a2, %hi(D_80B7B2E4)       ## $a2 = 80B80000
/* 107C4 80B7A164 24C6B2E4 */  addiu   $a2, $a2, %lo(D_80B7B2E4)  ## $a2 = 80B7B2E4
/* 107C8 80B7A168 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFEC
/* 107CC 80B7A16C 240723AE */  addiu   $a3, $zero, 0x23AE         ## $a3 = 000023AE
/* 107D0 80B7A170 0C031AB1 */  jal     Graph_OpenDisps              
/* 107D4 80B7A174 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 107D8 80B7A178 3C0480B8 */  lui     $a0, %hi(D_80B7A89C)       ## $a0 = 80B80000
/* 107DC 80B7A17C 3C0580B8 */  lui     $a1, %hi(D_80B7E090)       ## $a1 = 80B80000
/* 107E0 80B7A180 24A5E090 */  addiu   $a1, $a1, %lo(D_80B7E090)  ## $a1 = 80B7E090
/* 107E4 80B7A184 0C0346BD */  jal     Matrix_MultVec3f              
/* 107E8 80B7A188 2484A89C */  addiu   $a0, $a0, %lo(D_80B7A89C)  ## $a0 = 80B7A89C
/* 107EC 80B7A18C 3C0280B8 */  lui     $v0, %hi(D_80B7A688)       ## $v0 = 80B80000
/* 107F0 80B7A190 9042A688 */  lbu     $v0, %lo(D_80B7A688)($v0)  
/* 107F4 80B7A194 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 107F8 80B7A198 8FA80034 */  lw      $t0, 0x0034($sp)           
/* 107FC 80B7A19C 14410016 */  bne     $v0, $at, .L80B7A1F8       
/* 10800 80B7A1A0 3C0680B8 */  lui     $a2, %hi(D_80B7B2F4)       ## $a2 = 80B80000
/* 10804 80B7A1A4 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 10808 80B7A1A8 3C040600 */  lui     $a0, %hi(D_060074C8)                ## $a0 = 06000000
/* 1080C 80B7A1AC 248474C8 */  addiu   $a0, $a0, %lo(D_060074C8)           ## $a0 = 060074C8
/* 10810 80B7A1B0 0004C900 */  sll     $t9, $a0,  4               
/* 10814 80B7A1B4 00194F02 */  srl     $t1, $t9, 28               
/* 10818 80B7A1B8 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 1081C 80B7A1BC AD0F02C0 */  sw      $t7, 0x02C0($t0)           ## 000002C0
/* 10820 80B7A1C0 00095080 */  sll     $t2, $t1,  2               
/* 10824 80B7A1C4 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 10828 80B7A1C8 3C0B8016 */  lui     $t3, %hi(gSegments)
/* 1082C 80B7A1CC 016A5821 */  addu    $t3, $t3, $t2              
/* 10830 80B7A1D0 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 10834 80B7A1D4 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 10838 80B7A1D8 8D6B6FA8 */  lw      $t3, %lo(gSegments)($t3)
/* 1083C 80B7A1DC 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 10840 80B7A1E0 00816024 */  and     $t4, $a0, $at              
/* 10844 80B7A1E4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 10848 80B7A1E8 016C6821 */  addu    $t5, $t3, $t4              
/* 1084C 80B7A1EC 01A17021 */  addu    $t6, $t5, $at              
/* 10850 80B7A1F0 10000017 */  beq     $zero, $zero, .L80B7A250   
/* 10854 80B7A1F4 AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
.L80B7A1F8:
/* 10858 80B7A1F8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 1085C 80B7A1FC 14410014 */  bne     $v0, $at, .L80B7A250       
/* 10860 80B7A200 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 10864 80B7A204 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 10868 80B7A208 3C040600 */  lui     $a0, %hi(D_06007350)                ## $a0 = 06000000
/* 1086C 80B7A20C 24847350 */  addiu   $a0, $a0, %lo(D_06007350)           ## $a0 = 06007350
/* 10870 80B7A210 0004C900 */  sll     $t9, $a0,  4               
/* 10874 80B7A214 00194F02 */  srl     $t1, $t9, 28               
/* 10878 80B7A218 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 1087C 80B7A21C AD0F02C0 */  sw      $t7, 0x02C0($t0)           ## 000002C0
/* 10880 80B7A220 00095080 */  sll     $t2, $t1,  2               
/* 10884 80B7A224 3C0B8016 */  lui     $t3, %hi(gSegments)
/* 10888 80B7A228 016A5821 */  addu    $t3, $t3, $t2              
/* 1088C 80B7A22C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 10890 80B7A230 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 10894 80B7A234 8D6B6FA8 */  lw      $t3, %lo(gSegments)($t3)
/* 10898 80B7A238 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 1089C 80B7A23C 00816024 */  and     $t4, $a0, $at              
/* 108A0 80B7A240 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 108A4 80B7A244 016C6821 */  addu    $t5, $t3, $t4              
/* 108A8 80B7A248 01A17021 */  addu    $t6, $t5, $at              
/* 108AC 80B7A24C AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
.L80B7A250:
/* 108B0 80B7A250 8FAF0038 */  lw      $t7, 0x0038($sp)           
/* 108B4 80B7A254 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFEC
/* 108B8 80B7A258 24C6B2F4 */  addiu   $a2, $a2, %lo(D_80B7B2F4)  ## $a2 = 80B7B2F4
/* 108BC 80B7A25C 240723B6 */  addiu   $a3, $zero, 0x23B6         ## $a3 = 000023B6
/* 108C0 80B7A260 0C031AD5 */  jal     Graph_CloseDisps              
/* 108C4 80B7A264 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000008
.L80B7A268:
/* 108C8 80B7A268 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 108CC 80B7A26C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 108D0 80B7A270 03E00008 */  jr      $ra                        
/* 108D4 80B7A274 00000000 */  nop
