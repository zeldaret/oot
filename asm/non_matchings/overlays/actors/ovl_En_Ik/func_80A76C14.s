glabel func_80A76C14
/* 02904 80A76C14 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02908 80A76C18 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0290C 80A76C1C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02910 80A76C20 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 02914 80A76C24 2490014C */  addiu   $s0, $a0, 0x014C           ## $s0 = 0000014C
/* 02918 80A76C28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 0291C 80A76C2C 0C0295B2 */  jal     func_800A56C8              
/* 02920 80A76C30 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 02924 80A76C34 1040000E */  beq     $v0, $zero, .L80A76C70     
/* 02928 80A76C38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 0292C 80A76C3C 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 02930 80A76C40 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 02934 80A76C44 3C0E8013 */  lui     $t6, 0x8013                ## $t6 = 80130000
/* 02938 80A76C48 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 0293C 80A76C4C 25CE33E8 */  addiu   $t6, $t6, 0x33E8           ## $t6 = 801333E8
/* 02940 80A76C50 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 02944 80A76C54 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 02948 80A76C58 240439C2 */  addiu   $a0, $zero, 0x39C2         ## $a0 = 000039C2
/* 0294C 80A76C5C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 02950 80A76C60 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 02954 80A76C64 24A500E4 */  addiu   $a1, $a1, 0x00E4           ## $a1 = 000000E4
/* 02958 80A76C68 10000058 */  beq     $zero, $zero, .L80A76DCC   
/* 0295C 80A76C6C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A76C70:
/* 02960 80A76C70 0C0295B2 */  jal     func_800A56C8              
/* 02964 80A76C74 3C054204 */  lui     $a1, 0x4204                ## $a1 = 42040000
/* 02968 80A76C78 1040000E */  beq     $v0, $zero, .L80A76CB4     
/* 0296C 80A76C7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 02970 80A76C80 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 02974 80A76C84 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 02978 80A76C88 3C0F8013 */  lui     $t7, 0x8013                ## $t7 = 80130000
/* 0297C 80A76C8C 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 02980 80A76C90 25EF33E8 */  addiu   $t7, $t7, 0x33E8           ## $t7 = 801333E8
/* 02984 80A76C94 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 02988 80A76C98 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0298C 80A76C9C 24043928 */  addiu   $a0, $zero, 0x3928         ## $a0 = 00003928
/* 02990 80A76CA0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 02994 80A76CA4 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 02998 80A76CA8 24A500E4 */  addiu   $a1, $a1, 0x00E4           ## $a1 = 000000E4
/* 0299C 80A76CAC 10000047 */  beq     $zero, $zero, .L80A76DCC   
/* 029A0 80A76CB0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A76CB4:
/* 029A4 80A76CB4 0C0295B2 */  jal     func_800A56C8              
/* 029A8 80A76CB8 3C054288 */  lui     $a1, 0x4288                ## $a1 = 42880000
/* 029AC 80A76CBC 14400005 */  bne     $v0, $zero, .L80A76CD4     
/* 029B0 80A76CC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 029B4 80A76CC4 0C0295B2 */  jal     func_800A56C8              
/* 029B8 80A76CC8 3C0542A0 */  lui     $a1, 0x42A0                ## $a1 = 42A00000
/* 029BC 80A76CCC 1040000E */  beq     $v0, $zero, .L80A76D08     
/* 029C0 80A76CD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
.L80A76CD4:
/* 029C4 80A76CD4 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 029C8 80A76CD8 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 029CC 80A76CDC 3C188013 */  lui     $t8, 0x8013                ## $t8 = 80130000
/* 029D0 80A76CE0 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 029D4 80A76CE4 271833E8 */  addiu   $t8, $t8, 0x33E8           ## $t8 = 801333E8
/* 029D8 80A76CE8 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 029DC 80A76CEC AFA70010 */  sw      $a3, 0x0010($sp)           
/* 029E0 80A76CF0 2404392A */  addiu   $a0, $zero, 0x392A         ## $a0 = 0000392A
/* 029E4 80A76CF4 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 029E8 80A76CF8 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 029EC 80A76CFC 24A500E4 */  addiu   $a1, $a1, 0x00E4           ## $a1 = 000000E4
/* 029F0 80A76D00 10000032 */  beq     $zero, $zero, .L80A76DCC   
/* 029F4 80A76D04 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A76D08:
/* 029F8 80A76D08 0C0295B2 */  jal     func_800A56C8              
/* 029FC 80A76D0C 3C0542D6 */  lui     $a1, 0x42D6                ## $a1 = 42D60000
/* 02A00 80A76D10 1040000E */  beq     $v0, $zero, .L80A76D4C     
/* 02A04 80A76D14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 02A08 80A76D18 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 02A0C 80A76D1C 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 02A10 80A76D20 3C198013 */  lui     $t9, 0x8013                ## $t9 = 80130000
/* 02A14 80A76D24 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 02A18 80A76D28 273933E8 */  addiu   $t9, $t9, 0x33E8           ## $t9 = 801333E8
/* 02A1C 80A76D2C AFB90014 */  sw      $t9, 0x0014($sp)           
/* 02A20 80A76D30 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 02A24 80A76D34 24043939 */  addiu   $a0, $zero, 0x3939         ## $a0 = 00003939
/* 02A28 80A76D38 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 02A2C 80A76D3C 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 02A30 80A76D40 24A500E4 */  addiu   $a1, $a1, 0x00E4           ## $a1 = 000000E4
/* 02A34 80A76D44 10000021 */  beq     $zero, $zero, .L80A76DCC   
/* 02A38 80A76D48 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A76D4C:
/* 02A3C 80A76D4C 0C0295B2 */  jal     func_800A56C8              
/* 02A40 80A76D50 3C05431C */  lui     $a1, 0x431C                ## $a1 = 431C0000
/* 02A44 80A76D54 1040000E */  beq     $v0, $zero, .L80A76D90     
/* 02A48 80A76D58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 02A4C 80A76D5C 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 02A50 80A76D60 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 02A54 80A76D64 3C088013 */  lui     $t0, 0x8013                ## $t0 = 80130000
/* 02A58 80A76D68 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 02A5C 80A76D6C 250833E8 */  addiu   $t0, $t0, 0x33E8           ## $t0 = 801333E8
/* 02A60 80A76D70 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 02A64 80A76D74 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 02A68 80A76D78 2404392A */  addiu   $a0, $zero, 0x392A         ## $a0 = 0000392A
/* 02A6C 80A76D7C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 02A70 80A76D80 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 02A74 80A76D84 24A500E4 */  addiu   $a1, $a1, 0x00E4           ## $a1 = 000000E4
/* 02A78 80A76D88 10000010 */  beq     $zero, $zero, .L80A76DCC   
/* 02A7C 80A76D8C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A76D90:
/* 02A80 80A76D90 0C0295B2 */  jal     func_800A56C8              
/* 02A84 80A76D94 3C05433C */  lui     $a1, 0x433C                ## $a1 = 433C0000
/* 02A88 80A76D98 1040000B */  beq     $v0, $zero, .L80A76DC8     
/* 02A8C 80A76D9C 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 02A90 80A76DA0 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 02A94 80A76DA4 3C098013 */  lui     $t1, 0x8013                ## $t1 = 80130000
/* 02A98 80A76DA8 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 02A9C 80A76DAC 252933E8 */  addiu   $t1, $t1, 0x33E8           ## $t1 = 801333E8
/* 02AA0 80A76DB0 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 02AA4 80A76DB4 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 02AA8 80A76DB8 24043938 */  addiu   $a0, $zero, 0x3938         ## $a0 = 00003938
/* 02AAC 80A76DBC 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 02AB0 80A76DC0 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 02AB4 80A76DC4 24A500E4 */  addiu   $a1, $a1, 0x00E4           ## $a1 = 000000E4
.L80A76DC8:
/* 02AB8 80A76DC8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A76DCC:
/* 02ABC 80A76DCC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02AC0 80A76DD0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02AC4 80A76DD4 03E00008 */  jr      $ra                        
/* 02AC8 80A76DD8 00000000 */  nop


