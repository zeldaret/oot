.rdata

glabel D_808009C0
    .asciz "NOT MARIO CLUB VERSION"
    .balign 4

glabel D_808009D8
    .asciz "[Creator:%s]"
    .balign 4

glabel D_808009E8
    .asciz "[Date:%s]"
    .balign 4

 .text

glabel func_80800000
/* 00000 80800000 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 80800004 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00008 80800008 AFBE0038 */  sw      $s8, 0x0038($sp)           
/* 0000C 8080000C AFB10034 */  sw      $s1, 0x0034($sp)           
/* 00010 80800010 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00014 80800014 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 00018 80800018 8C910000 */  lw      $s1, 0x0000($a0)           ## 00000000
/* 0001C 8080001C 03A0F025 */  or      $s8, $sp, $zero            ## $s8 = FFFFFFC0
/* 00020 80800020 0C025047 */  jal     func_8009411C              
/* 00024 80800024 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00028 80800028 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFF90
/* 0002C 8080002C 27B00018 */  addiu   $s0, $sp, 0x0018           ## $s0 = FFFFFFA8
/* 00030 80800030 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 00034 80800034 0C03EEE3 */  jal     GfxPrint_Ctor              
/* 00038 80800038 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFA8
/* 0003C 8080003C 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFA8
/* 00040 80800040 0C03EF07 */  jal     GfxPrint_Open              
/* 00044 80800044 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00048 80800048 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 0004C 8080004C AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00050 80800050 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFA8
/* 00054 80800054 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 00058 80800058 2406009B */  addiu   $a2, $zero, 0x009B         ## $a2 = 0000009B
/* 0005C 8080005C 0C03ECEB */  jal     GfxPrint_SetColor              
/* 00060 80800060 240700FF */  addiu   $a3, $zero, 0x00FF         ## $a3 = 000000FF
/* 00064 80800064 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFA8
/* 00068 80800068 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 0006C 8080006C 0C03ED07 */  jal     GfxPrint_SetPos              
/* 00070 80800070 24060015 */  addiu   $a2, $zero, 0x0015         ## $a2 = 00000015
/* 00074 80800074 3C058080 */  lui     $a1, %hi(D_808009C0)       ## $a1 = 80800000
/* 00078 80800078 24A509C0 */  addiu   $a1, $a1, %lo(D_808009C0)  ## $a1 = 808009C0
/* 0007C 8080007C 0C03EF2D */  jal     GfxPrint_Printf              
/* 00080 80800080 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFA8
/* 00084 80800084 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 00088 80800088 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 0008C 8080008C 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFA8
/* 00090 80800090 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 00094 80800094 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00098 80800098 0C03ECEB */  jal     GfxPrint_SetColor              
/* 0009C 8080009C 240700FF */  addiu   $a3, $zero, 0x00FF         ## $a3 = 000000FF
/* 000A0 808000A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFA8
/* 000A4 808000A4 24050007 */  addiu   $a1, $zero, 0x0007         ## $a1 = 00000007
/* 000A8 808000A8 0C03ED07 */  jal     GfxPrint_SetPos              
/* 000AC 808000AC 24060017 */  addiu   $a2, $zero, 0x0017         ## $a2 = 00000017
/* 000B0 808000B0 3C058080 */  lui     $a1, %hi(D_808009D8)       ## $a1 = 80800000
/* 000B4 808000B4 3C068001 */  lui     $a2, 0x8001                ## $a2 = 80010000
/* 000B8 808000B8 24C62340 */  addiu   $a2, $a2, 0x2340           ## $a2 = 80012340
/* 000BC 808000BC 24A509D8 */  addiu   $a1, $a1, %lo(D_808009D8)  ## $a1 = 808009D8
/* 000C0 808000C0 0C03EF2D */  jal     GfxPrint_Printf              
/* 000C4 808000C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFA8
/* 000C8 808000C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFA8
/* 000CC 808000CC 24050007 */  addiu   $a1, $zero, 0x0007         ## $a1 = 00000007
/* 000D0 808000D0 0C03ED07 */  jal     GfxPrint_SetPos              
/* 000D4 808000D4 24060018 */  addiu   $a2, $zero, 0x0018         ## $a2 = 00000018
/* 000D8 808000D8 3C058080 */  lui     $a1, %hi(D_808009E8)       ## $a1 = 80800000
/* 000DC 808000DC 3C068001 */  lui     $a2, 0x8001                ## $a2 = 80010000
/* 000E0 808000E0 24C62350 */  addiu   $a2, $a2, 0x2350           ## $a2 = 80012350
/* 000E4 808000E4 24A509E8 */  addiu   $a1, $a1, %lo(D_808009E8)  ## $a1 = 808009E8
/* 000E8 808000E8 0C03EF2D */  jal     GfxPrint_Printf              
/* 000EC 808000EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFA8
/* 000F0 808000F0 0C03EF19 */  jal     GfxPrint_Close              
/* 000F4 808000F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFA8
/* 000F8 808000F8 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 000FC 808000FC 0C03EF05 */  jal     GfxPrint_Dtor              
/* 00100 80800100 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFA8
/* 00104 80800104 8FD90040 */  lw      $t9, 0x0040($s8)           ## 00000000
/* 00108 80800108 03C0E825 */  or      $sp, $s8, $zero            ## $sp = FFFFFFC0
/* 0010C 8080010C AF310000 */  sw      $s1, 0x0000($t9)           ## 00000000
/* 00110 80800110 8FDF003C */  lw      $ra, 0x003C($s8)           ## FFFFFFFC
/* 00114 80800114 8FD10034 */  lw      $s1, 0x0034($s8)           ## FFFFFFF4
/* 00118 80800118 8FD00030 */  lw      $s0, 0x0030($s8)           ## FFFFFFF0
/* 0011C 8080011C 8FDE0038 */  lw      $s8, 0x0038($s8)           ## FFFFFFF8
/* 00120 80800120 03E00008 */  jr      $ra                        
/* 00124 80800124 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000