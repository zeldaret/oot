.rdata

glabel D_8082FA60
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FA7C
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

.text
glabel func_8081F1F0
/* 0B9D0 8081F1F0 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 0B9D4 8081F1F4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0B9D8 8081F1F8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0B9DC 8081F1FC AFA40058 */  sw      $a0, 0x0058($sp)           
/* 0B9E0 8081F200 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 0B9E4 8081F204 3C068083 */  lui     $a2, %hi(D_8082FA60)       ## $a2 = 80830000
/* 0B9E8 8081F208 24C6FA60 */  addiu   $a2, $a2, %lo(D_8082FA60)  ## $a2 = 8082FA60
/* 0B9EC 8081F20C 8CAF02DC */  lw      $t7, 0x02DC($a1)           ## 000002DC
/* 0B9F0 8081F210 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE0
/* 0B9F4 8081F214 240701F0 */  addiu   $a3, $zero, 0x01F0         ## $a3 = 000001F0
/* 0B9F8 8081F218 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0B9FC 8081F21C 0C031AB1 */  jal     Graph_OpenDisps              
/* 0BA00 8081F220 AFAF004C */  sw      $t7, 0x004C($sp)           
/* 0BA04 8081F224 8E0402C0 */  lw      $a0, 0x02C0($s0)           ## 000002C0
/* 0BA08 8081F228 0C031B08 */  jal     Graph_GfxPlusOne              
/* 0BA0C 8081F22C AFA40050 */  sw      $a0, 0x0050($sp)           
/* 0BA10 8081F230 AFA20054 */  sw      $v0, 0x0054($sp)           
/* 0BA14 8081F234 8E0301BC */  lw      $v1, 0x01BC($s0)           ## 000001BC
/* 0BA18 8081F238 3C19DE00 */  lui     $t9, 0xDE00                ## $t9 = DE000000
/* 0BA1C 8081F23C 3C048083 */  lui     $a0, %hi(D_808321B0)       ## $a0 = 80830000
/* 0BA20 8081F240 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 0BA24 8081F244 AE1801BC */  sw      $t8, 0x01BC($s0)           ## 000001BC
/* 0BA28 8081F248 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 0BA2C 8081F24C 8FA80054 */  lw      $t0, 0x0054($sp)           
/* 0BA30 8081F250 248421B0 */  addiu   $a0, $a0, %lo(D_808321B0)  ## $a0 = 808321B0
/* 0BA34 8081F254 24050040 */  addiu   $a1, $zero, 0x0040         ## $a1 = 00000040
/* 0BA38 8081F258 AC680004 */  sw      $t0, 0x0004($v1)           ## 00000004
/* 0BA3C 8081F25C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0BA40 8081F260 8FA7004C */  lw      $a3, 0x004C($sp)           
/* 0BA44 8081F264 0C0303B6 */  jal     func_800C0ED8              
/* 0BA48 8081F268 24060070 */  addiu   $a2, $zero, 0x0070         ## $a2 = 00000070
/* 0BA4C 8081F26C 3C048083 */  lui     $a0, %hi(D_808321B0)       ## $a0 = 80830000
/* 0BA50 8081F270 248421B0 */  addiu   $a0, $a0, %lo(D_808321B0)  ## $a0 = 808321B0
/* 0BA54 8081F274 0C0307C8 */  jal     func_800C1F20              
/* 0BA58 8081F278 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFFC
/* 0BA5C 8081F27C 3C048083 */  lui     $a0, %hi(D_808321B0)       ## $a0 = 80830000
/* 0BA60 8081F280 248421B0 */  addiu   $a0, $a0, %lo(D_808321B0)  ## $a0 = 808321B0
/* 0BA64 8081F284 0C03082D */  jal     func_800C20B4              
/* 0BA68 8081F288 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFFC
/* 0BA6C 8081F28C 8FA90054 */  lw      $t1, 0x0054($sp)           
/* 0BA70 8081F290 3C0BDF00 */  lui     $t3, 0xDF00                ## $t3 = DF000000
/* 0BA74 8081F294 252A0008 */  addiu   $t2, $t1, 0x0008           ## $t2 = 00000008
/* 0BA78 8081F298 AFAA0054 */  sw      $t2, 0x0054($sp)           
/* 0BA7C 8081F29C AD200004 */  sw      $zero, 0x0004($t1)         ## 00000004
/* 0BA80 8081F2A0 AD2B0000 */  sw      $t3, 0x0000($t1)           ## 00000000
/* 0BA84 8081F2A4 8FA50054 */  lw      $a1, 0x0054($sp)           
/* 0BA88 8081F2A8 0C031B0A */  jal     Graph_BranchDlist              
/* 0BA8C 8081F2AC 8FA40050 */  lw      $a0, 0x0050($sp)           
/* 0BA90 8081F2B0 8FAC0054 */  lw      $t4, 0x0054($sp)           
/* 0BA94 8081F2B4 3C038016 */  lui     $v1, %hi(gGameInfo)
/* 0BA98 8081F2B8 3C068083 */  lui     $a2, %hi(D_8082FA7C)       ## $a2 = 80830000
/* 0BA9C 8081F2BC AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 0BAA0 8081F2C0 8C63FA90 */  lw      $v1, %lo(gGameInfo)($v1)
/* 0BAA4 8081F2C4 24C6FA7C */  addiu   $a2, $a2, %lo(D_8082FA7C)  ## $a2 = 8082FA7C
/* 0BAA8 8081F2C8 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE0
/* 0BAAC 8081F2CC 846D0116 */  lh      $t5, 0x0116($v1)           ## 80160116
/* 0BAB0 8081F2D0 240701FD */  addiu   $a3, $zero, 0x01FD         ## $a3 = 000001FD
/* 0BAB4 8081F2D4 35AE0001 */  ori     $t6, $t5, 0x0001           ## $t6 = 00000001
/* 0BAB8 8081F2D8 A46E0116 */  sh      $t6, 0x0116($v1)           ## 80160116
/* 0BABC 8081F2DC 8FAF0058 */  lw      $t7, 0x0058($sp)           
/* 0BAC0 8081F2E0 0C031AD5 */  jal     Graph_CloseDisps              
/* 0BAC4 8081F2E4 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
/* 0BAC8 8081F2E8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0BACC 8081F2EC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0BAD0 8081F2F0 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 0BAD4 8081F2F4 03E00008 */  jr      $ra                        
/* 0BAD8 8081F2F8 00000000 */  nop
