.rdata
glabel D_809B4EB0
    .asciz "../z_en_arrow.c"
    .balign 4

glabel D_809B4EC0
    .asciz "this->at_info.cl_elem.at_btl_info.at_type = %x\n"
    .balign 4

.text
glabel EnArrow_Init
/* 00008 809B3928 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0000C 809B392C AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00010 809B3930 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00014 809B3934 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00018 809B3938 3C05809B */  lui     $a1, %hi(D_809B4DA0)       ## $a1 = 809B0000
/* 0001C 809B393C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00020 809B3940 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00024 809B3944 24A54DA0 */  addiu   $a1, $a1, %lo(D_809B4DA0)  ## $a1 = 809B4DA0
/* 00028 809B3948 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 0002C 809B394C 2401FFF6 */  addiu   $at, $zero, 0xFFF6         ## $at = FFFFFFF6
/* 00030 809B3950 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00034 809B3954 14410004 */  bne     $v0, $at, .L809B3968       
/* 00038 809B3958 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 0003C 809B395C A60F001C */  sh      $t7, 0x001C($s0)           ## 0000001C
/* 00040 809B3960 A20E024B */  sb      $t6, 0x024B($s0)           ## 0000024B
/* 00044 809B3964 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
.L809B3968:
/* 00048 809B3968 2841000A */  slti    $at, $v0, 0x000A           
/* 0004C 809B396C 1020006E */  beq     $at, $zero, .L809B3B28     
/* 00050 809B3970 28410009 */  slti    $at, $v0, 0x0009           
/* 00054 809B3974 1020000B */  beq     $at, $zero, .L809B39A4     
/* 00058 809B3978 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0005C 809B397C 3C060400 */  lui     $a2, %hi(D_04006010)                ## $a2 = 04000000
/* 00060 809B3980 3C070400 */  lui     $a3, %hi(D_0400436C)                ## $a3 = 04000000
/* 00064 809B3984 24E7436C */  addiu   $a3, $a3, %lo(D_0400436C)           ## $a3 = 0400436C
/* 00068 809B3988 24C66010 */  addiu   $a2, $a2, %lo(D_04006010)           ## $a2 = 04006010
/* 0006C 809B398C 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00070 809B3990 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00074 809B3994 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00078 809B3998 0C02915F */  jal     SkelAnime_Init
              
/* 0007C 809B399C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00080 809B39A0 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
.L809B39A4:
/* 00084 809B39A4 28410003 */  slti    $at, $v0, 0x0003           
/* 00088 809B39A8 10200014 */  beq     $at, $zero, .L809B39FC     
/* 0008C 809B39AC 26050228 */  addiu   $a1, $s0, 0x0228           ## $a1 = 00000228
/* 00090 809B39B0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00094 809B39B4 14410005 */  bne     $v0, $at, .L809B39CC       
/* 00098 809B39B8 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 0009C 809B39BC 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 000A0 809B39C0 3C01809B */  lui     $at, %hi(D_809B4DBC)       ## $at = 809B0000
/* 000A4 809B39C4 10000004 */  beq     $zero, $zero, .L809B39D8   
/* 000A8 809B39C8 A0384DBC */  sb      $t8, %lo(D_809B4DBC)($at)  
.L809B39CC:
/* 000AC 809B39CC 24190010 */  addiu   $t9, $zero, 0x0010         ## $t9 = 00000010
/* 000B0 809B39D0 3C01809B */  lui     $at, %hi(D_809B4DBC)       ## $at = 809B0000
/* 000B4 809B39D4 A0394DBC */  sb      $t9, %lo(D_809B4DBC)($at)  
.L809B39D8:
/* 000B8 809B39D8 3C08809B */  lui     $t0, %hi(D_809B4DA4)       ## $t0 = 809B0000
/* 000BC 809B39DC 25084DA4 */  addiu   $t0, $t0, %lo(D_809B4DA4)  ## $t0 = 809B4DA4
/* 000C0 809B39E0 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 000C4 809B39E4 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 000C8 809B39E8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 000CC 809B39EC 0C009B35 */  jal     Effect_Add
              ## Effect_Add
/* 000D0 809B39F0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 000D4 809B39F4 10000027 */  beq     $zero, $zero, .L809B3A94   
/* 000D8 809B39F8 26050190 */  addiu   $a1, $s0, 0x0190           ## $a1 = 00000190
.L809B39FC:
/* 000DC 809B39FC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 000E0 809B3A00 1441000B */  bne     $v0, $at, .L809B3A30       
/* 000E4 809B3A04 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 000E8 809B3A08 3C09809B */  lui     $t1, %hi(D_809B4DC8)       ## $t1 = 809B0000
/* 000EC 809B3A0C 25294DC8 */  addiu   $t1, $t1, %lo(D_809B4DC8)  ## $t1 = 809B4DC8
/* 000F0 809B3A10 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 000F4 809B3A14 26050228 */  addiu   $a1, $s0, 0x0228           ## $a1 = 00000228
/* 000F8 809B3A18 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 000FC 809B3A1C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00100 809B3A20 0C009B35 */  jal     Effect_Add
              ## Effect_Add
/* 00104 809B3A24 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00108 809B3A28 1000001A */  beq     $zero, $zero, .L809B3A94   
/* 0010C 809B3A2C 26050190 */  addiu   $a1, $s0, 0x0190           ## $a1 = 00000190
.L809B3A30:
/* 00110 809B3A30 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00114 809B3A34 1441000B */  bne     $v0, $at, .L809B3A64       
/* 00118 809B3A38 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0011C 809B3A3C 3C0A809B */  lui     $t2, %hi(D_809B4DEC)       ## $t2 = 809B0000
/* 00120 809B3A40 254A4DEC */  addiu   $t2, $t2, %lo(D_809B4DEC)  ## $t2 = 809B4DEC
/* 00124 809B3A44 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 00128 809B3A48 26050228 */  addiu   $a1, $s0, 0x0228           ## $a1 = 00000228
/* 0012C 809B3A4C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00130 809B3A50 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00134 809B3A54 0C009B35 */  jal     Effect_Add
              ## Effect_Add
/* 00138 809B3A58 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0013C 809B3A5C 1000000D */  beq     $zero, $zero, .L809B3A94   
/* 00140 809B3A60 26050190 */  addiu   $a1, $s0, 0x0190           ## $a1 = 00000190
.L809B3A64:
/* 00144 809B3A64 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00148 809B3A68 14410009 */  bne     $v0, $at, .L809B3A90       
/* 0014C 809B3A6C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00150 809B3A70 3C0B809B */  lui     $t3, %hi(D_809B4E10)       ## $t3 = 809B0000
/* 00154 809B3A74 256B4E10 */  addiu   $t3, $t3, %lo(D_809B4E10)  ## $t3 = 809B4E10
/* 00158 809B3A78 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 0015C 809B3A7C 26050228 */  addiu   $a1, $s0, 0x0228           ## $a1 = 00000228
/* 00160 809B3A80 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00164 809B3A84 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00168 809B3A88 0C009B35 */  jal     Effect_Add
              ## Effect_Add
/* 0016C 809B3A8C AFA00010 */  sw      $zero, 0x0010($sp)         
.L809B3A90:
/* 00170 809B3A90 26050190 */  addiu   $a1, $s0, 0x0190           ## $a1 = 00000190
.L809B3A94:
/* 00174 809B3A94 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00178 809B3A98 0C017406 */  jal     Collider_InitQuad              
/* 0017C 809B3A9C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00180 809B3AA0 3C07809B */  lui     $a3, %hi(D_809B4D50)       ## $a3 = 809B0000
/* 00184 809B3AA4 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00188 809B3AA8 24E74D50 */  addiu   $a3, $a3, %lo(D_809B4D50)  ## $a3 = 809B4D50
/* 0018C 809B3AAC 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00190 809B3AB0 0C017441 */  jal     Collider_SetQuad              
/* 00194 809B3AB4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00198 809B3AB8 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 0019C 809B3ABC 240F0011 */  addiu   $t7, $zero, 0x0011         ## $t7 = 00000011
/* 001A0 809B3AC0 28410003 */  slti    $at, $v0, 0x0003           
/* 001A4 809B3AC4 10200006 */  beq     $at, $zero, .L809B3AE0     
/* 001A8 809B3AC8 00000000 */  nop
/* 001AC 809B3ACC 920C01BD */  lbu     $t4, 0x01BD($s0)           ## 000001BD
/* 001B0 809B3AD0 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 001B4 809B3AD4 318EFFE7 */  andi    $t6, $t4, 0xFFE7           ## $t6 = 00000000
/* 001B8 809B3AD8 A20E01BD */  sb      $t6, 0x01BD($s0)           ## 000001BD
/* 001BC 809B3ADC A20E01BD */  sb      $t6, 0x01BD($s0)           ## 000001BD
.L809B3AE0:
/* 001C0 809B3AE0 04410003 */  bgez    $v0, .L809B3AF0            
/* 001C4 809B3AE4 2841000A */  slti    $at, $v0, 0x000A           
/* 001C8 809B3AE8 1000000F */  beq     $zero, $zero, .L809B3B28   
/* 001CC 809B3AEC A20F01A0 */  sb      $t7, 0x01A0($s0)           ## 000001A0
.L809B3AF0:
/* 001D0 809B3AF0 1020000D */  beq     $at, $zero, .L809B3B28     
/* 001D4 809B3AF4 0002C080 */  sll     $t8, $v0,  2               
/* 001D8 809B3AF8 3C19809B */  lui     $t9, %hi(D_809B4E34)       ## $t9 = 809B0000
/* 001DC 809B3AFC 0338C821 */  addu    $t9, $t9, $t8              
/* 001E0 809B3B00 8F394E34 */  lw      $t9, %lo(D_809B4E34)($t9)  
/* 001E4 809B3B04 3C04809B */  lui     $a0, %hi(D_809B4EB0)       ## $a0 = 809B0000
/* 001E8 809B3B08 24844EB0 */  addiu   $a0, $a0, %lo(D_809B4EB0)  ## $a0 = 809B4EB0
/* 001EC 809B3B0C 240502C3 */  addiu   $a1, $zero, 0x02C3         ## $a1 = 000002C3
/* 001F0 809B3B10 0C000B84 */  jal     LogUtils_LogThreadId
              
/* 001F4 809B3B14 AE1901A8 */  sw      $t9, 0x01A8($s0)           ## 000001A8
/* 001F8 809B3B18 3C04809B */  lui     $a0, %hi(D_809B4EC0)       ## $a0 = 809B0000
/* 001FC 809B3B1C 24844EC0 */  addiu   $a0, $a0, %lo(D_809B4EC0)  ## $a0 = 809B4EC0
/* 00200 809B3B20 0C00084C */  jal     osSyncPrintf
              
/* 00204 809B3B24 8E0501A8 */  lw      $a1, 0x01A8($s0)           ## 000001A8
.L809B3B28:
/* 00208 809B3B28 3C05809B */  lui     $a1, %hi(func_809B3BD4)    ## $a1 = 809B0000
/* 0020C 809B3B2C 24A53BD4 */  addiu   $a1, $a1, %lo(func_809B3BD4) ## $a1 = 809B3BD4
/* 00210 809B3B30 0C26CE48 */  jal     func_809B3920              
/* 00214 809B3B34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00218 809B3B38 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0021C 809B3B3C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00220 809B3B40 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00224 809B3B44 03E00008 */  jr      $ra                        
/* 00228 809B3B48 00000000 */  nop
