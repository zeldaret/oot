.rdata
glabel D_80A55258
    .asciz "../z_en_heishi2.c"
    .balign 4

glabel D_80A5526C
    .asciz "../z_en_heishi2.c"
    .balign 4

glabel D_80A55280
    .asciz "../z_en_heishi2.c"
    .balign 4

.text
glabel func_80A54C6C
/* 01DCC 80A54C6C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01DD0 80A54C70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01DD4 80A54C74 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 01DD8 80A54C78 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 01DDC 80A54C7C 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01DE0 80A54C80 3C0680A5 */  lui     $a2, %hi(D_80A55258)       ## $a2 = 80A50000
/* 01DE4 80A54C84 24C65258 */  addiu   $a2, $a2, %lo(D_80A55258)  ## $a2 = 80A55258
/* 01DE8 80A54C88 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFEC
/* 01DEC 80A54C8C 240706EC */  addiu   $a3, $zero, 0x06EC         ## $a3 = 000006EC
/* 01DF0 80A54C90 0C031AB1 */  jal     Graph_OpenDisps              
/* 01DF4 80A54C94 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01DF8 80A54C98 8FA80034 */  lw      $t0, 0x0034($sp)           
/* 01DFC 80A54C9C 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 01E00 80A54CA0 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 01E04 80A54CA4 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01E08 80A54CA8 3C0580A5 */  lui     $a1, %hi(D_80A5526C)       ## $a1 = 80A50000
/* 01E0C 80A54CAC 24A5526C */  addiu   $a1, $a1, %lo(D_80A5526C)  ## $a1 = 80A5526C
/* 01E10 80A54CB0 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01E14 80A54CB4 AD0F02C0 */  sw      $t7, 0x02C0($t0)           ## 000002C0
/* 01E18 80A54CB8 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 01E1C 80A54CBC 8FB9003C */  lw      $t9, 0x003C($sp)           
/* 01E20 80A54CC0 240606EE */  addiu   $a2, $zero, 0x06EE         ## $a2 = 000006EE
/* 01E24 80A54CC4 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 01E28 80A54CC8 AFA80034 */  sw      $t0, 0x0034($sp)           
/* 01E2C 80A54CCC 0C0346A2 */  jal     Matrix_NewMtx              
/* 01E30 80A54CD0 AFA20020 */  sw      $v0, 0x0020($sp)           
/* 01E34 80A54CD4 8FA30020 */  lw      $v1, 0x0020($sp)           
/* 01E38 80A54CD8 8FA80034 */  lw      $t0, 0x0034($sp)           
/* 01E3C 80A54CDC 3C0B0600 */  lui     $t3, 0x0600                ## $t3 = 06000000
/* 01E40 80A54CE0 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01E44 80A54CE4 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01E48 80A54CE8 256B2C10 */  addiu   $t3, $t3, 0x2C10           ## $t3 = 06002C10
/* 01E4C 80A54CEC 3C0ADE00 */  lui     $t2, 0xDE00                ## $t2 = DE000000
/* 01E50 80A54CF0 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 01E54 80A54CF4 AD0902C0 */  sw      $t1, 0x02C0($t0)           ## 000002C0
/* 01E58 80A54CF8 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 01E5C 80A54CFC AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 01E60 80A54D00 8FAC003C */  lw      $t4, 0x003C($sp)           
/* 01E64 80A54D04 3C0680A5 */  lui     $a2, %hi(D_80A55280)       ## $a2 = 80A50000
/* 01E68 80A54D08 24C65280 */  addiu   $a2, $a2, %lo(D_80A55280)  ## $a2 = 80A55280
/* 01E6C 80A54D0C 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFEC
/* 01E70 80A54D10 240706F1 */  addiu   $a3, $zero, 0x06F1         ## $a3 = 000006F1
/* 01E74 80A54D14 0C031AD5 */  jal     Graph_CloseDisps              
/* 01E78 80A54D18 8D850000 */  lw      $a1, 0x0000($t4)           ## 00000000
/* 01E7C 80A54D1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01E80 80A54D20 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01E84 80A54D24 03E00008 */  jr      $ra                        
/* 01E88 80A54D28 00000000 */  nop
