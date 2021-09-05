.rdata
glabel D_808F7A50
    .asciz "../z_boss_ganon.c"
    .balign 4

glabel D_808F7A64
    .asciz "../z_boss_ganon.c"
    .balign 4

glabel D_808F7A78
    .asciz "../z_boss_ganon.c"
    .balign 4

.text
glabel func_808DE988
/* 08118 808DE988 3C0E808E */  lui     $t6, %hi(D_808E4D80)       ## $t6 = 808E0000
/* 0811C 808DE98C 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 08120 808DE990 25CE4D80 */  addiu   $t6, $t6, %lo(D_808E4D80)  ## $t6 = 808E4D80
/* 08124 808DE994 AFA60060 */  sw      $a2, 0x0060($sp)           
/* 08128 808DE998 00AE1021 */  addu    $v0, $a1, $t6              
/* 0812C 808DE99C 80460000 */  lb      $a2, 0x0000($v0)           ## 00000000
/* 08130 808DE9A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 08134 808DE9A4 AFA40058 */  sw      $a0, 0x0058($sp)           
/* 08138 808DE9A8 04C0000C */  bltz    $a2, .L808DE9DC            
/* 0813C 808DE9AC AFA70064 */  sw      $a3, 0x0064($sp)           
/* 08140 808DE9B0 8FA30068 */  lw      $v1, 0x0068($sp)           
/* 08144 808DE9B4 00067880 */  sll     $t7, $a2,  2               
/* 08148 808DE9B8 01E67823 */  subu    $t7, $t7, $a2              
/* 0814C 808DE9BC 000F7880 */  sll     $t7, $t7,  2               
/* 08150 808DE9C0 3C04808E */  lui     $a0, %hi(D_808E4DB8)       ## $a0 = 808E0000
/* 08154 808DE9C4 006F2821 */  addu    $a1, $v1, $t7              
/* 08158 808DE9C8 24A502EC */  addiu   $a1, $a1, 0x02EC           ## $a1 = 000002EC
/* 0815C 808DE9CC 24844DB8 */  addiu   $a0, $a0, %lo(D_808E4DB8)  ## $a0 = 808E4DB8
/* 08160 808DE9D0 0C0346BD */  jal     Matrix_MultVec3f              
/* 08164 808DE9D4 AFA20018 */  sw      $v0, 0x0018($sp)           
/* 08168 808DE9D8 8FA20018 */  lw      $v0, 0x0018($sp)           
.L808DE9DC:
/* 0816C 808DE9DC 3C18808E */  lui     $t8, %hi(D_808E4D82)       ## $t8 = 808E0000
/* 08170 808DE9E0 27184D82 */  addiu   $t8, $t8, %lo(D_808E4D82)  ## $t8 = 808E4D82
/* 08174 808DE9E4 14580007 */  bne     $v0, $t8, .L808DEA04       
/* 08178 808DE9E8 8FA30068 */  lw      $v1, 0x0068($sp)           
/* 0817C 808DE9EC 3C04808E */  lui     $a0, %hi(D_808E4DB8)       ## $a0 = 808E0000
/* 08180 808DE9F0 24844DB8 */  addiu   $a0, $a0, %lo(D_808E4DB8)  ## $a0 = 808E4DB8
/* 08184 808DE9F4 0C0346BD */  jal     Matrix_MultVec3f              
/* 08188 808DE9F8 246501FC */  addiu   $a1, $v1, 0x01FC           ## $a1 = 000001FC
/* 0818C 808DE9FC 100000C9 */  beq     $zero, $zero, .L808DED24   
/* 08190 808DEA00 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808DEA04:
/* 08194 808DEA04 3C19808E */  lui     $t9, %hi(D_808E4D93)       ## $t9 = 808E0000
/* 08198 808DEA08 27394D93 */  addiu   $t9, $t9, %lo(D_808E4D93)  ## $t9 = 808E4D93
/* 0819C 808DEA0C 14590007 */  bne     $v0, $t9, .L808DEA2C       
/* 081A0 808DEA10 3C08808E */  lui     $t0, %hi(D_808E4D8B)       ## $t0 = 808E0000
/* 081A4 808DEA14 3C04808E */  lui     $a0, %hi(D_808E4DB8)       ## $a0 = 808E0000
/* 081A8 808DEA18 24844DB8 */  addiu   $a0, $a0, %lo(D_808E4DB8)  ## $a0 = 808E4DB8
/* 081AC 808DEA1C 0C0346BD */  jal     Matrix_MultVec3f              
/* 081B0 808DEA20 24650038 */  addiu   $a1, $v1, 0x0038           ## $a1 = 00000038
/* 081B4 808DEA24 100000BF */  beq     $zero, $zero, .L808DED24   
/* 081B8 808DEA28 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808DEA2C:
/* 081BC 808DEA2C 25084D8B */  addiu   $t0, $t0, %lo(D_808E4D8B)  ## $t0 = 00004D8B
/* 081C0 808DEA30 1448003C */  bne     $v0, $t0, .L808DEB24       
/* 081C4 808DEA34 3C0D808E */  lui     $t5, %hi(D_808E4D86)       ## $t5 = 808E0000
/* 081C8 808DEA38 8FA90058 */  lw      $t1, 0x0058($sp)           
/* 081CC 808DEA3C 3C06808F */  lui     $a2, %hi(D_808F7A50)       ## $a2 = 808F0000
/* 081D0 808DEA40 24C67A50 */  addiu   $a2, $a2, %lo(D_808F7A50)  ## $a2 = 808F7A50
/* 081D4 808DEA44 8D250000 */  lw      $a1, 0x0000($t1)           ## 00000000
/* 081D8 808DEA48 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 081DC 808DEA4C 24071C17 */  addiu   $a3, $zero, 0x1C17         ## $a3 = 00001C17
/* 081E0 808DEA50 0C031AB1 */  jal     Graph_OpenDisps              
/* 081E4 808DEA54 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 081E8 808DEA58 8FA30068 */  lw      $v1, 0x0068($sp)           
/* 081EC 808DEA5C 3C04808E */  lui     $a0, %hi(D_808E4DB8)       ## $a0 = 808E0000
/* 081F0 808DEA60 24844DB8 */  addiu   $a0, $a0, %lo(D_808E4DB8)  ## $a0 = 808E4DB8
/* 081F4 808DEA64 0C0346BD */  jal     Matrix_MultVec3f              
/* 081F8 808DEA68 24650208 */  addiu   $a1, $v1, 0x0208           ## $a1 = 00000208
/* 081FC 808DEA6C 8FA7004C */  lw      $a3, 0x004C($sp)           
/* 08200 808DEA70 3C0BDA38 */  lui     $t3, 0xDA38                ## $t3 = DA380000
/* 08204 808DEA74 356B0003 */  ori     $t3, $t3, 0x0003           ## $t3 = DA380003
/* 08208 808DEA78 8CE202D0 */  lw      $v0, 0x02D0($a3)           ## 000002D0
/* 0820C 808DEA7C 3C05808F */  lui     $a1, %hi(D_808F7A64)       ## $a1 = 808F0000
/* 08210 808DEA80 24A57A64 */  addiu   $a1, $a1, %lo(D_808F7A64)  ## $a1 = 808F7A64
/* 08214 808DEA84 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 08218 808DEA88 ACEA02D0 */  sw      $t2, 0x02D0($a3)           ## 000002D0
/* 0821C 808DEA8C AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 08220 808DEA90 8FAC0058 */  lw      $t4, 0x0058($sp)           
/* 08224 808DEA94 24061C1C */  addiu   $a2, $zero, 0x1C1C         ## $a2 = 00001C1C
/* 08228 808DEA98 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 0822C 808DEA9C 0C0346A2 */  jal     Matrix_NewMtx              
/* 08230 808DEAA0 AFA20038 */  sw      $v0, 0x0038($sp)           
/* 08234 808DEAA4 8FA30038 */  lw      $v1, 0x0038($sp)           
/* 08238 808DEAA8 3C040601 */  lui     $a0, %hi(object_ganon_DL_00BE90)                ## $a0 = 06010000
/* 0823C 808DEAAC 2484BE90 */  addiu   $a0, $a0, %lo(object_ganon_DL_00BE90)           ## $a0 = 0600BE90
/* 08240 808DEAB0 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 08244 808DEAB4 8FAD004C */  lw      $t5, 0x004C($sp)           
/* 08248 808DEAB8 0004C100 */  sll     $t8, $a0,  4               
/* 0824C 808DEABC 0018CF02 */  srl     $t9, $t8, 28               
/* 08250 808DEAC0 8DA202D0 */  lw      $v0, 0x02D0($t5)           ## 000002D0
/* 08254 808DEAC4 00194080 */  sll     $t0, $t9,  2               
/* 08258 808DEAC8 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 0825C 808DEACC 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 08260 808DEAD0 3C098016 */  lui     $t1, %hi(gSegments)
/* 08264 808DEAD4 ADAE02D0 */  sw      $t6, 0x02D0($t5)           ## 000002D0
/* 08268 808DEAD8 01284821 */  addu    $t1, $t1, $t0              
/* 0826C 808DEADC 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 08270 808DEAE0 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 08274 808DEAE4 8D296FA8 */  lw      $t1, %lo(gSegments)($t1)
/* 08278 808DEAE8 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0827C 808DEAEC 00815024 */  and     $t2, $a0, $at              
/* 08280 808DEAF0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 08284 808DEAF4 012A5821 */  addu    $t3, $t1, $t2              
/* 08288 808DEAF8 01616021 */  addu    $t4, $t3, $at              
/* 0828C 808DEAFC AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 08290 808DEB00 8FAE0058 */  lw      $t6, 0x0058($sp)           
/* 08294 808DEB04 3C06808F */  lui     $a2, %hi(D_808F7A78)       ## $a2 = 808F0000
/* 08298 808DEB08 24C67A78 */  addiu   $a2, $a2, %lo(D_808F7A78)  ## $a2 = 808F7A78
/* 0829C 808DEB0C 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 082A0 808DEB10 24071C1E */  addiu   $a3, $zero, 0x1C1E         ## $a3 = 00001C1E
/* 082A4 808DEB14 0C031AD5 */  jal     Graph_CloseDisps              
/* 082A8 808DEB18 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000008
/* 082AC 808DEB1C 10000081 */  beq     $zero, $zero, .L808DED24   
/* 082B0 808DEB20 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808DEB24:
/* 082B4 808DEB24 25AD4D86 */  addiu   $t5, $t5, %lo(D_808E4D86)  ## $t5 = 00004D86
/* 082B8 808DEB28 144D0007 */  bne     $v0, $t5, .L808DEB48       
/* 082BC 808DEB2C 3C0F808E */  lui     $t7, %hi(D_808E4D8A)       ## $t7 = 808E0000
/* 082C0 808DEB30 3C04808E */  lui     $a0, %hi(D_808E4DC4)       ## $a0 = 808E0000
/* 082C4 808DEB34 24844DC4 */  addiu   $a0, $a0, %lo(D_808E4DC4)  ## $a0 = 808E4DC4
/* 082C8 808DEB38 0C0346BD */  jal     Matrix_MultVec3f              
/* 082CC 808DEB3C 24650238 */  addiu   $a1, $v1, 0x0238           ## $a1 = 00000238
/* 082D0 808DEB40 10000078 */  beq     $zero, $zero, .L808DED24   
/* 082D4 808DEB44 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808DEB48:
/* 082D8 808DEB48 25EF4D8A */  addiu   $t7, $t7, %lo(D_808E4D8A)  ## $t7 = 00004D8A
/* 082DC 808DEB4C 144F0018 */  bne     $v0, $t7, .L808DEBB0       
/* 082E0 808DEB50 3C08808E */  lui     $t0, %hi(D_808E4D84)       ## $t0 = 808E0000
/* 082E4 808DEB54 3C04808E */  lui     $a0, %hi(D_808E4DD0)       ## $a0 = 808E0000
/* 082E8 808DEB58 24844DD0 */  addiu   $a0, $a0, %lo(D_808E4DD0)  ## $a0 = 808E4DD0
/* 082EC 808DEB5C 0C0346BD */  jal     Matrix_MultVec3f              
/* 082F0 808DEB60 2465022C */  addiu   $a1, $v1, 0x022C           ## $a1 = 0000022C
/* 082F4 808DEB64 8FA30068 */  lw      $v1, 0x0068($sp)           
/* 082F8 808DEB68 3C04808E */  lui     $a0, %hi(D_808E4DDC)       ## $a0 = 808E0000
/* 082FC 808DEB6C 24844DDC */  addiu   $a0, $a0, %lo(D_808E4DDC)  ## $a0 = 808E4DDC
/* 08300 808DEB70 9078025C */  lbu     $t8, 0x025C($v1)           ## 0000025C
/* 08304 808DEB74 57000005 */  bnel    $t8, $zero, .L808DEB8C     
/* 08308 808DEB78 847901AE */  lh      $t9, 0x01AE($v1)           ## 000001AE
/* 0830C 808DEB7C 0C0346BD */  jal     Matrix_MultVec3f              
/* 08310 808DEB80 24650260 */  addiu   $a1, $v1, 0x0260           ## $a1 = 00000260
/* 08314 808DEB84 8FA30068 */  lw      $v1, 0x0068($sp)           
/* 08318 808DEB88 847901AE */  lh      $t9, 0x01AE($v1)           ## 000001AE
.L808DEB8C:
/* 0831C 808DEB8C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 08320 808DEB90 A060025C */  sb      $zero, 0x025C($v1)         ## 0000025C
/* 08324 808DEB94 17210062 */  bne     $t9, $at, .L808DED20       
/* 08328 808DEB98 3C04808E */  lui     $a0, %hi(D_808E4DE8)       ## $a0 = 808E0000
/* 0832C 808DEB9C 24844DE8 */  addiu   $a0, $a0, %lo(D_808E4DE8)  ## $a0 = 808E4DE8
/* 08330 808DEBA0 0C0346BD */  jal     Matrix_MultVec3f              
/* 08334 808DEBA4 246502D8 */  addiu   $a1, $v1, 0x02D8           ## $a1 = 000002D8
/* 08338 808DEBA8 1000005E */  beq     $zero, $zero, .L808DED24   
/* 0833C 808DEBAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808DEBB0:
/* 08340 808DEBB0 25084D84 */  addiu   $t0, $t0, %lo(D_808E4D84)  ## $t0 = 00004D84
/* 08344 808DEBB4 1448002B */  bne     $v0, $t0, .L808DEC64       
/* 08348 808DEBB8 3C0C808E */  lui     $t4, %hi(D_808E4D88)       ## $t4 = 808E0000
/* 0834C 808DEBBC 3C09808E */  lui     $t1, %hi(D_808E4DA0)       ## $t1 = 808E0000
/* 08350 808DEBC0 25294DA0 */  addiu   $t1, $t1, %lo(D_808E4DA0)  ## $t1 = 808E4DA0
/* 08354 808DEBC4 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 808E4DA0
/* 08358 808DEBC8 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFD0
/* 0835C 808DEBCC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 08360 808DEBD0 AC8B0000 */  sw      $t3, 0x0000($a0)           ## FFFFFFD0
/* 08364 808DEBD4 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 808E4DA4
/* 08368 808DEBD8 AC8A0004 */  sw      $t2, 0x0004($a0)           ## FFFFFFD4
/* 0836C 808DEBDC 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 808E4DA8
/* 08370 808DEBE0 AC8B0008 */  sw      $t3, 0x0008($a0)           ## FFFFFFD8
/* 08374 808DEBE4 90620198 */  lbu     $v0, 0x0198($v1)           ## 00000198
/* 08378 808DEBE8 C7A40028 */  lwc1    $f4, 0x0028($sp)           
/* 0837C 808DEBEC 1441000D */  bne     $v0, $at, .L808DEC24       
/* 08380 808DEBF0 3C01C396 */  lui     $at, 0xC396                ## $at = C3960000
/* 08384 808DEBF4 44810000 */  mtc1    $at, $f0                   ## $f0 = -300.00
/* 08388 808DEBF8 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
/* 0838C 808DEBFC C7A8002C */  lwc1    $f8, 0x002C($sp)           
/* 08390 808DEC00 44819000 */  mtc1    $at, $f18                  ## $f18 = 700.00
/* 08394 808DEC04 C7B00030 */  lwc1    $f16, 0x0030($sp)          
/* 08398 808DEC08 46002180 */  add.s   $f6, $f4, $f0              
/* 0839C 808DEC0C 46004280 */  add.s   $f10, $f8, $f0             
/* 083A0 808DEC10 E7A60028 */  swc1    $f6, 0x0028($sp)           
/* 083A4 808DEC14 46128100 */  add.s   $f4, $f16, $f18            
/* 083A8 808DEC18 E7AA002C */  swc1    $f10, 0x002C($sp)          
/* 083AC 808DEC1C 1000000D */  beq     $zero, $zero, .L808DEC54   
/* 083B0 808DEC20 E7A40030 */  swc1    $f4, 0x0030($sp)           
.L808DEC24:
/* 083B4 808DEC24 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 083B8 808DEC28 1441000A */  bne     $v0, $at, .L808DEC54       
/* 083BC 808DEC2C C7A60028 */  lwc1    $f6, 0x0028($sp)           
/* 083C0 808DEC30 3C01C396 */  lui     $at, 0xC396                ## $at = C3960000
/* 083C4 808DEC34 44810000 */  mtc1    $at, $f0                   ## $f0 = -300.00
/* 083C8 808DEC38 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
/* 083CC 808DEC3C 44818000 */  mtc1    $at, $f16                  ## $f16 = 700.00
/* 083D0 808DEC40 C7AA0030 */  lwc1    $f10, 0x0030($sp)          
/* 083D4 808DEC44 46003200 */  add.s   $f8, $f6, $f0              
/* 083D8 808DEC48 46105480 */  add.s   $f18, $f10, $f16           
/* 083DC 808DEC4C E7A80028 */  swc1    $f8, 0x0028($sp)           
/* 083E0 808DEC50 E7B20030 */  swc1    $f18, 0x0030($sp)          
.L808DEC54:
/* 083E4 808DEC54 0C0346BD */  jal     Matrix_MultVec3f              
/* 083E8 808DEC58 24650220 */  addiu   $a1, $v1, 0x0220           ## $a1 = 00000220
/* 083EC 808DEC5C 10000031 */  beq     $zero, $zero, .L808DED24   
/* 083F0 808DEC60 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808DEC64:
/* 083F4 808DEC64 258C4D88 */  addiu   $t4, $t4, %lo(D_808E4D88)  ## $t4 = 00004D88
/* 083F8 808DEC68 144C002D */  bne     $v0, $t4, .L808DED20       
/* 083FC 808DEC6C 3C0E808E */  lui     $t6, %hi(D_808E4DAC)       ## $t6 = 808E0000
/* 08400 808DEC70 25CE4DAC */  addiu   $t6, $t6, %lo(D_808E4DAC)  ## $t6 = 808E4DAC
/* 08404 808DEC74 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 808E4DAC
/* 08408 808DEC78 27A4001C */  addiu   $a0, $sp, 0x001C           ## $a0 = FFFFFFC4
/* 0840C 808DEC7C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 08410 808DEC80 AC8F0000 */  sw      $t7, 0x0000($a0)           ## FFFFFFC4
/* 08414 808DEC84 8DCD0004 */  lw      $t5, 0x0004($t6)           ## 808E4DB0
/* 08418 808DEC88 AC8D0004 */  sw      $t5, 0x0004($a0)           ## FFFFFFC8
/* 0841C 808DEC8C 8DCF0008 */  lw      $t7, 0x0008($t6)           ## 808E4DB4
/* 08420 808DEC90 AC8F0008 */  sw      $t7, 0x0008($a0)           ## FFFFFFCC
/* 08424 808DEC94 90620198 */  lbu     $v0, 0x0198($v1)           ## 00000198
/* 08428 808DEC98 C7A4001C */  lwc1    $f4, 0x001C($sp)           
/* 0842C 808DEC9C 1441000D */  bne     $v0, $at, .L808DECD4       
/* 08430 808DECA0 3C01C396 */  lui     $at, 0xC396                ## $at = C3960000
/* 08434 808DECA4 44810000 */  mtc1    $at, $f0                   ## $f0 = -300.00
/* 08438 808DECA8 3C01C42F */  lui     $at, 0xC42F                ## $at = C42F0000
/* 0843C 808DECAC C7A80020 */  lwc1    $f8, 0x0020($sp)           
/* 08440 808DECB0 44819000 */  mtc1    $at, $f18                  ## $f18 = -700.00
/* 08444 808DECB4 C7B00024 */  lwc1    $f16, 0x0024($sp)          
/* 08448 808DECB8 46002180 */  add.s   $f6, $f4, $f0              
/* 0844C 808DECBC 46004280 */  add.s   $f10, $f8, $f0             
/* 08450 808DECC0 E7A6001C */  swc1    $f6, 0x001C($sp)           
/* 08454 808DECC4 46128100 */  add.s   $f4, $f16, $f18            
/* 08458 808DECC8 E7AA0020 */  swc1    $f10, 0x0020($sp)          
/* 0845C 808DECCC 10000012 */  beq     $zero, $zero, .L808DED18   
/* 08460 808DECD0 E7A40024 */  swc1    $f4, 0x0024($sp)           
.L808DECD4:
/* 08464 808DECD4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 08468 808DECD8 1441000F */  bne     $v0, $at, .L808DED18       
/* 0846C 808DECDC C7A6001C */  lwc1    $f6, 0x001C($sp)           
/* 08470 808DECE0 3C01C396 */  lui     $at, 0xC396                ## $at = C3960000
/* 08474 808DECE4 44810000 */  mtc1    $at, $f0                   ## $f0 = -300.00
/* 08478 808DECE8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0847C 808DECEC 44818000 */  mtc1    $at, $f16                  ## $f16 = 100.00
/* 08480 808DECF0 46003200 */  add.s   $f8, $f6, $f0              
/* 08484 808DECF4 3C01C42F */  lui     $at, 0xC42F                ## $at = C42F0000
/* 08488 808DECF8 C7AA0020 */  lwc1    $f10, 0x0020($sp)          
/* 0848C 808DECFC 44813000 */  mtc1    $at, $f6                   ## $f6 = -700.00
/* 08490 808DED00 C7A40024 */  lwc1    $f4, 0x0024($sp)           
/* 08494 808DED04 E7A8001C */  swc1    $f8, 0x001C($sp)           
/* 08498 808DED08 46105480 */  add.s   $f18, $f10, $f16           
/* 0849C 808DED0C 46062200 */  add.s   $f8, $f4, $f6              
/* 084A0 808DED10 E7B20020 */  swc1    $f18, 0x0020($sp)          
/* 084A4 808DED14 E7A80024 */  swc1    $f8, 0x0024($sp)           
.L808DED18:
/* 084A8 808DED18 0C0346BD */  jal     Matrix_MultVec3f              
/* 084AC 808DED1C 24650214 */  addiu   $a1, $v1, 0x0214           ## $a1 = 00000214
.L808DED20:
/* 084B0 808DED20 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808DED24:
/* 084B4 808DED24 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 084B8 808DED28 03E00008 */  jr      $ra                        
/* 084BC 808DED2C 00000000 */  nop
