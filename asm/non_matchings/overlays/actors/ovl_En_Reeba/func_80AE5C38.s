.rdata
glabel D_80AE6624
    .asciz "\n\n"
    .balign 4

glabel D_80AE6628
    .asciz "[32m☆☆☆☆☆ 何匹ＤＥＡＤ？ ☆☆☆☆☆%d\n[m"
    .balign 4

glabel D_80AE6658
    .asciz "\n\n"
    .balign 4

.late_rodata
glabel D_80AE66A0
    .float 0.01

.text
glabel func_80AE5C38
/* 00F68 80AE5C38 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 00F6C 80AE5C3C 3C0F80AE */  lui     $t7, %hi(D_80AE65CC)       ## $t7 = 80AE0000
/* 00F70 80AE5C40 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 00F74 80AE5C44 AFB00048 */  sw      $s0, 0x0048($sp)           
/* 00F78 80AE5C48 AFA50084 */  sw      $a1, 0x0084($sp)           
/* 00F7C 80AE5C4C 25EF65CC */  addiu   $t7, $t7, %lo(D_80AE65CC)  ## $t7 = 80AE65CC
/* 00F80 80AE5C50 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80AE65CC
/* 00F84 80AE5C54 27AE0068 */  addiu   $t6, $sp, 0x0068           ## $t6 = FFFFFFE8
/* 00F88 80AE5C58 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80AE65D0
/* 00F8C 80AE5C5C ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFE8
/* 00F90 80AE5C60 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80AE65D4
/* 00F94 80AE5C64 3C0980AE */  lui     $t1, %hi(D_80AE65D8)       ## $t1 = 80AE0000
/* 00F98 80AE5C68 252965D8 */  addiu   $t1, $t1, %lo(D_80AE65D8)  ## $t1 = 80AE65D8
/* 00F9C 80AE5C6C ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFEC
/* 00FA0 80AE5C70 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF0
/* 00FA4 80AE5C74 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80AE65D8
/* 00FA8 80AE5C78 27A8005C */  addiu   $t0, $sp, 0x005C           ## $t0 = FFFFFFDC
/* 00FAC 80AE5C7C 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80AE65DC
/* 00FB0 80AE5C80 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFDC
/* 00FB4 80AE5C84 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80AE65E0
/* 00FB8 80AE5C88 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFE0
/* 00FBC 80AE5C8C 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 00FC0 80AE5C90 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFE4
/* 00FC4 80AE5C94 848C0278 */  lh      $t4, 0x0278($a0)           ## 00000278
/* 00FC8 80AE5C98 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00FCC 80AE5C9C 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 00FD0 80AE5CA0 1180000D */  beq     $t4, $zero, .L80AE5CD8     
/* 00FD4 80AE5CA4 3C063C23 */  lui     $a2, 0x3C23                ## $a2 = 3C230000
/* 00FD8 80AE5CA8 C4800068 */  lwc1    $f0, 0x0068($a0)           ## 00000068
/* 00FDC 80AE5CAC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00FE0 80AE5CB0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00FE4 80AE5CB4 4604003C */  c.lt.s  $f0, $f4                   
/* 00FE8 80AE5CB8 00000000 */  nop
/* 00FEC 80AE5CBC 4502005E */  bc1fl   .L80AE5E38                 
/* 00FF0 80AE5CC0 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 00FF4 80AE5CC4 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 00FF8 80AE5CC8 00000000 */  nop
/* 00FFC 80AE5CCC 46060200 */  add.s   $f8, $f0, $f6              
/* 01000 80AE5CD0 10000058 */  beq     $zero, $zero, .L80AE5E34   
/* 01004 80AE5CD4 E4880068 */  swc1    $f8, 0x0068($a0)           ## 00000068
.L80AE5CD8:
/* 01008 80AE5CD8 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 0100C 80AE5CDC 2604028C */  addiu   $a0, $s0, 0x028C           ## $a0 = 0000028C
/* 01010 80AE5CE0 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3C23D70A
/* 01014 80AE5CE4 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 01018 80AE5CE8 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 0101C 80AE5CEC 3C0180AE */  lui     $at, %hi(D_80AE66A0)       ## $at = 80AE0000
/* 01020 80AE5CF0 C43266A0 */  lwc1    $f18, %lo(D_80AE66A0)($at) 
/* 01024 80AE5CF4 C610028C */  lwc1    $f16, 0x028C($s0)          ## 0000028C
/* 01028 80AE5CF8 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 0102C 80AE5CFC 27A50074 */  addiu   $a1, $sp, 0x0074           ## $a1 = FFFFFFF4
/* 01030 80AE5D00 4612803C */  c.lt.s  $f16, $f18                 
/* 01034 80AE5D04 27A6005C */  addiu   $a2, $sp, 0x005C           ## $a2 = FFFFFFDC
/* 01038 80AE5D08 27A70068 */  addiu   $a3, $sp, 0x0068           ## $a3 = FFFFFFE8
/* 0103C 80AE5D0C 240D0078 */  addiu   $t5, $zero, 0x0078         ## $t5 = 00000078
/* 01040 80AE5D10 45000048 */  bc1f    .L80AE5E34                 
/* 01044 80AE5D14 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 01048 80AE5D18 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 0104C 80AE5D1C 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 01050 80AE5D20 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 01054 80AE5D24 E7A40074 */  swc1    $f4, 0x0074($sp)           
/* 01058 80AE5D28 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 0105C 80AE5D2C 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 01060 80AE5D30 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 01064 80AE5D34 E7A60078 */  swc1    $f6, 0x0078($sp)           
/* 01068 80AE5D38 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 0106C 80AE5D3C 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 01070 80AE5D40 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 01074 80AE5D44 240A0009 */  addiu   $t2, $zero, 0x0009         ## $t2 = 00000009
/* 01078 80AE5D48 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 0107C 80AE5D4C AFAB003C */  sw      $t3, 0x003C($sp)           
/* 01080 80AE5D50 AFAA0038 */  sw      $t2, 0x0038($sp)           
/* 01084 80AE5D54 AFA90034 */  sw      $t1, 0x0034($sp)           
/* 01088 80AE5D58 AFA80028 */  sw      $t0, 0x0028($sp)           
/* 0108C 80AE5D5C AFA00030 */  sw      $zero, 0x0030($sp)         
/* 01090 80AE5D60 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 01094 80AE5D64 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 01098 80AE5D68 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 0109C 80AE5D6C AFAF001C */  sw      $t7, 0x001C($sp)           
/* 010A0 80AE5D70 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 010A4 80AE5D74 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 010A8 80AE5D78 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 010AC 80AE5D7C 8FA40084 */  lw      $a0, 0x0084($sp)           
/* 010B0 80AE5D80 E7AA0060 */  swc1    $f10, 0x0060($sp)          
/* 010B4 80AE5D84 0C00A9AE */  jal     func_8002A6B8              
/* 010B8 80AE5D88 E7A8007C */  swc1    $f8, 0x007C($sp)           
/* 010BC 80AE5D8C 860C027A */  lh      $t4, 0x027A($s0)           ## 0000027A
/* 010C0 80AE5D90 27A60074 */  addiu   $a2, $sp, 0x0074           ## $a2 = FFFFFFF4
/* 010C4 80AE5D94 8FA40084 */  lw      $a0, 0x0084($sp)           
/* 010C8 80AE5D98 15800007 */  bne     $t4, $zero, .L80AE5DB8     
/* 010CC 80AE5D9C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 010D0 80AE5DA0 8FA40084 */  lw      $a0, 0x0084($sp)           
/* 010D4 80AE5DA4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 010D8 80AE5DA8 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 010DC 80AE5DAC 240700E0 */  addiu   $a3, $zero, 0x00E0         ## $a3 = 000000E0
/* 010E0 80AE5DB0 10000004 */  beq     $zero, $zero, .L80AE5DC4   
/* 010E4 80AE5DB4 8E030118 */  lw      $v1, 0x0118($s0)           ## 00000118
.L80AE5DB8:
/* 010E8 80AE5DB8 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 010EC 80AE5DBC 240700C0 */  addiu   $a3, $zero, 0x00C0         ## $a3 = 000000C0
/* 010F0 80AE5DC0 8E030118 */  lw      $v1, 0x0118($s0)           ## 00000118
.L80AE5DC4:
/* 010F4 80AE5DC4 5060001C */  beql    $v1, $zero, .L80AE5E38     
/* 010F8 80AE5DC8 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 010FC 80AE5DCC 8C6D0130 */  lw      $t5, 0x0130($v1)           ## 00000130
/* 01100 80AE5DD0 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 01104 80AE5DD4 11A00015 */  beq     $t5, $zero, .L80AE5E2C     
/* 01108 80AE5DD8 00000000 */  nop
/* 0110C 80AE5DDC 860E027A */  lh      $t6, 0x027A($s0)           ## 0000027A
/* 01110 80AE5DE0 3C0480AE */  lui     $a0, %hi(D_80AE6624)       ## $a0 = 80AE0000
/* 01114 80AE5DE4 24846624 */  addiu   $a0, $a0, %lo(D_80AE6624)  ## $a0 = 80AE6624
/* 01118 80AE5DE8 15C00010 */  bne     $t6, $zero, .L80AE5E2C     
/* 0111C 80AE5DEC 00000000 */  nop
/* 01120 80AE5DF0 8463015E */  lh      $v1, 0x015E($v1)           ## 0000015E
/* 01124 80AE5DF4 2861000A */  slti    $at, $v1, 0x000A           
/* 01128 80AE5DF8 10200002 */  beq     $at, $zero, .L80AE5E04     
/* 0112C 80AE5DFC 246F0001 */  addiu   $t7, $v1, 0x0001           ## $t7 = 00000001
/* 01130 80AE5E00 A44F015E */  sh      $t7, 0x015E($v0)           ## 0000015E
.L80AE5E04:
/* 01134 80AE5E04 0C00084C */  jal     osSyncPrintf
              
/* 01138 80AE5E08 AFA20058 */  sw      $v0, 0x0058($sp)           
/* 0113C 80AE5E0C 8FA20058 */  lw      $v0, 0x0058($sp)           
/* 01140 80AE5E10 3C0480AE */  lui     $a0, %hi(D_80AE6628)       ## $a0 = 80AE0000
/* 01144 80AE5E14 24846628 */  addiu   $a0, $a0, %lo(D_80AE6628)  ## $a0 = 80AE6628
/* 01148 80AE5E18 0C00084C */  jal     osSyncPrintf
              
/* 0114C 80AE5E1C 8445015E */  lh      $a1, 0x015E($v0)           ## 0000015E
/* 01150 80AE5E20 3C0480AE */  lui     $a0, %hi(D_80AE6658)       ## $a0 = 80AE0000
/* 01154 80AE5E24 0C00084C */  jal     osSyncPrintf
              
/* 01158 80AE5E28 24846658 */  addiu   $a0, $a0, %lo(D_80AE6658)  ## $a0 = 80AE6658
.L80AE5E2C:
/* 0115C 80AE5E2C 0C00B55C */  jal     Actor_Kill
              
/* 01160 80AE5E30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AE5E34:
/* 01164 80AE5E34 8FBF004C */  lw      $ra, 0x004C($sp)           
.L80AE5E38:
/* 01168 80AE5E38 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 0116C 80AE5E3C 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
/* 01170 80AE5E40 03E00008 */  jr      $ra                        
/* 01174 80AE5E44 00000000 */  nop
