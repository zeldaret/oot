.rdata
glabel D_809693E0
    .asciz "no = %d\n"
    .balign 4

glabel D_809693EC
    .asciz "bank_ID = %d\n"
    .balign 4

glabel D_809693FC
    .asciz "0"
    .balign 4

glabel D_80969400
    .asciz "../z_demo_6k.c"
    .balign 4

glabel D_80969410
    .asciz "0"
    .balign 4

glabel D_80969414
    .asciz "../z_demo_6k.c"
    .balign 4

.late_rodata
glabel jtbl_80969588
.word L80966A38
.word L80966AA4
.word L80966AD4
.word L80966B1C
.word L80966B1C
.word L80966B1C
.word L80966B1C
.word L80966B1C
.word L80966B1C
.word L80966B54
.word L80966B54
.word L80966B80
.word L80966BCC
.word L80966C14
.word L80966C48
.word L80966C48
.word L80966C48
.word L80966C48
.word L80966C48
.word L80966C48

.text
glabel Demo6K_Init
/* 00008 80966958 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 0000C 8096695C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00010 80966960 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 00014 80966964 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00018 80966968 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 0001C 8096696C 8485001C */  lh      $a1, 0x001C($a0)           ## 0000001C
/* 00020 80966970 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00024 80966974 3C048097 */  lui     $a0, %hi(D_809693E0)       ## $a0 = 80970000
/* 00028 80966978 248493E0 */  addiu   $a0, $a0, %lo(D_809693E0)  ## $a0 = 809693E0
/* 0002C 8096697C 0C00084C */  jal     osSyncPrintf
              
/* 00030 80966980 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00034 80966984 8FAE0044 */  lw      $t6, 0x0044($sp)           
/* 00038 80966988 3C058097 */  lui     $a1, %hi(D_809692D0)       ## $a1 = 80970000
/* 0003C 8096698C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00040 80966990 000E7840 */  sll     $t7, $t6,  1               
/* 00044 80966994 00AF2821 */  addu    $a1, $a1, $t7              
/* 00048 80966998 84A592D0 */  lh      $a1, %lo(D_809692D0)($a1)  
/* 0004C 8096699C 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00050 809669A0 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00054 809669A4 10A10006 */  beq     $a1, $at, .L809669C0       
/* 00058 809669A8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0005C 809669AC 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00060 809669B0 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00064 809669B4 00812021 */  addu    $a0, $a0, $at              
/* 00068 809669B8 10000001 */  beq     $zero, $zero, .L809669C0   
/* 0006C 809669BC 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
.L809669C0:
/* 00070 809669C0 3C048097 */  lui     $a0, %hi(D_809693EC)       ## $a0 = 80970000
/* 00074 809669C4 248493EC */  addiu   $a0, $a0, %lo(D_809693EC)  ## $a0 = 809693EC
/* 00078 809669C8 0C00084C */  jal     osSyncPrintf
              
/* 0007C 809669CC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00080 809669D0 06010008 */  bgez    $s0, .L809669F4            
/* 00084 809669D4 3C048097 */  lui     $a0, %hi(D_809693FC)       ## $a0 = 80970000
/* 00088 809669D8 3C058097 */  lui     $a1, %hi(D_80969400)       ## $a1 = 80970000
/* 0008C 809669DC 24A59400 */  addiu   $a1, $a1, %lo(D_80969400)  ## $a1 = 80969400
/* 00090 809669E0 248493FC */  addiu   $a0, $a0, %lo(D_809693FC)  ## $a0 = 809693FC
/* 00094 809669E4 0C0007FC */  jal     __assert
              
/* 00098 809669E8 2406014E */  addiu   $a2, $zero, 0x014E         ## $a2 = 0000014E
/* 0009C 809669EC 10000002 */  beq     $zero, $zero, .L809669F8   
/* 000A0 809669F0 00000000 */  nop
.L809669F4:
/* 000A4 809669F4 A2300292 */  sb      $s0, 0x0292($s1)           ## 00000292
.L809669F8:
/* 000A8 809669F8 3C058096 */  lui     $a1, %hi(func_80966DB0)    ## $a1 = 80960000
/* 000AC 809669FC 24A56DB0 */  addiu   $a1, $a1, %lo(func_80966DB0) ## $a1 = 80966DB0
/* 000B0 80966A00 0C259A54 */  jal     func_80966950              
/* 000B4 80966A04 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000B8 80966A08 A620028E */  sh      $zero, 0x028E($s1)         ## 0000028E
/* 000BC 80966A0C A620028C */  sh      $zero, 0x028C($s1)         ## 0000028C
/* 000C0 80966A10 A6200290 */  sh      $zero, 0x0290($s1)         ## 00000290
/* 000C4 80966A14 8FB80044 */  lw      $t8, 0x0044($sp)           
/* 000C8 80966A18 2F010014 */  sltiu   $at, $t8, 0x0014           
/* 000CC 80966A1C 1020009E */  beq     $at, $zero, .L80966C98     
/* 000D0 80966A20 0018C080 */  sll     $t8, $t8,  2               
/* 000D4 80966A24 3C018097 */  lui     $at, %hi(jtbl_80969588)       ## $at = 80970000
/* 000D8 80966A28 00380821 */  addu    $at, $at, $t8              
/* 000DC 80966A2C 8C389588 */  lw      $t8, %lo(jtbl_80969588)($at)  
/* 000E0 80966A30 03000008 */  jr      $t8                        
/* 000E4 80966A34 00000000 */  nop
glabel L80966A38
/* 000E8 80966A38 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 000EC 80966A3C 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 000F0 80966A40 3C198097 */  lui     $t9, %hi(func_809688C4)    ## $t9 = 80970000
/* 000F4 80966A44 3C088096 */  lui     $t0, %hi(func_80967AD0)    ## $t0 = 80960000
/* 000F8 80966A48 273988C4 */  addiu   $t9, $t9, %lo(func_809688C4) ## $t9 = 809688C4
/* 000FC 80966A4C 25087AD0 */  addiu   $t0, $t0, %lo(func_80967AD0) ## $t0 = 80967AD0
/* 00100 80966A50 44051000 */  mfc1    $a1, $f2                   
/* 00104 80966A54 AE390284 */  sw      $t9, 0x0284($s1)           ## 00000284
/* 00108 80966A58 AE28014C */  sw      $t0, 0x014C($s1)           ## 0000014C
/* 0010C 80966A5C 0C00B58B */  jal     Actor_SetScale
              
/* 00110 80966A60 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00114 80966A64 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00118 80966A68 02201025 */  or      $v0, $s1, $zero            ## $v0 = 00000000
.L80966A6C:
/* 0011C 80966A6C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00120 80966A70 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00124 80966A74 0C259E81 */  jal     func_80967A04              
/* 00128 80966A78 AFA20030 */  sw      $v0, 0x0030($sp)           
/* 0012C 80966A7C 8FA20030 */  lw      $v0, 0x0030($sp)           
/* 00130 80966A80 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00134 80966A84 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00138 80966A88 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 0013C 80966A8C 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 00000004
/* 00140 80966A90 1601FFF6 */  bne     $s0, $at, .L80966A6C       
/* 00144 80966A94 E44401B0 */  swc1    $f4, 0x01B0($v0)           ## 000001B4
/* 00148 80966A98 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 0014C 80966A9C 10000084 */  beq     $zero, $zero, .L80966CB0   
/* 00150 80966AA0 E6260170 */  swc1    $f6, 0x0170($s1)           ## 00000170
glabel L80966AA4
/* 00154 80966AA4 3C098096 */  lui     $t1, %hi(func_80967FFC)    ## $t1 = 80960000
/* 00158 80966AA8 3C0A8096 */  lui     $t2, %hi(func_80966E04)    ## $t2 = 80960000
/* 0015C 80966AAC 25297FFC */  addiu   $t1, $t1, %lo(func_80967FFC) ## $t1 = 80967FFC
/* 00160 80966AB0 254A6E04 */  addiu   $t2, $t2, %lo(func_80966E04) ## $t2 = 80966E04
/* 00164 80966AB4 3C053E69 */  lui     $a1, 0x3E69                ## $a1 = 3E690000
/* 00168 80966AB8 AE290284 */  sw      $t1, 0x0284($s1)           ## 00000284
/* 0016C 80966ABC AE2A014C */  sw      $t2, 0x014C($s1)           ## 0000014C
/* 00170 80966AC0 34A578D5 */  ori     $a1, $a1, 0x78D5           ## $a1 = 3E6978D5
/* 00174 80966AC4 0C00B58B */  jal     Actor_SetScale
              
/* 00178 80966AC8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0017C 80966ACC 10000079 */  beq     $zero, $zero, .L80966CB4   
/* 00180 80966AD0 8FAD0044 */  lw      $t5, 0x0044($sp)           
glabel L80966AD4
/* 00184 80966AD4 3C0B8097 */  lui     $t3, %hi(func_80968298)    ## $t3 = 80970000
/* 00188 80966AD8 3C0C8096 */  lui     $t4, %hi(func_80966F84)    ## $t4 = 80960000
/* 0018C 80966ADC 256B8298 */  addiu   $t3, $t3, %lo(func_80968298) ## $t3 = 80968298
/* 00190 80966AE0 258C6F84 */  addiu   $t4, $t4, %lo(func_80966F84) ## $t4 = 80966F84
/* 00194 80966AE4 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 00198 80966AE8 AE2B0284 */  sw      $t3, 0x0284($s1)           ## 00000284
/* 0019C 80966AEC AE2C014C */  sw      $t4, 0x014C($s1)           ## 0000014C
/* 001A0 80966AF0 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 001A4 80966AF4 0C00B58B */  jal     Actor_SetScale
              
/* 001A8 80966AF8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001AC 80966AFC 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 001B0 80966B00 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 001B4 80966B04 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 001B8 80966B08 E632016C */  swc1    $f18, 0x016C($s1)          ## 0000016C
/* 001BC 80966B0C E6320170 */  swc1    $f18, 0x0170($s1)          ## 00000170
/* 001C0 80966B10 E6300164 */  swc1    $f16, 0x0164($s1)          ## 00000164
/* 001C4 80966B14 10000066 */  beq     $zero, $zero, .L80966CB0   
/* 001C8 80966B18 E6300168 */  swc1    $f16, 0x0168($s1)          ## 00000168
glabel L80966B1C
/* 001CC 80966B1C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 001D0 80966B20 3C0D8097 */  lui     $t5, %hi(func_8096865C)    ## $t5 = 80970000
/* 001D4 80966B24 3C0E8096 */  lui     $t6, %hi(func_8096712C)    ## $t6 = 80960000
/* 001D8 80966B28 25AD865C */  addiu   $t5, $t5, %lo(func_8096865C) ## $t5 = 8096865C
/* 001DC 80966B2C 25CE712C */  addiu   $t6, $t6, %lo(func_8096712C) ## $t6 = 8096712C
/* 001E0 80966B30 44050000 */  mfc1    $a1, $f0                   
/* 001E4 80966B34 AE2D0284 */  sw      $t5, 0x0284($s1)           ## 00000284
/* 001E8 80966B38 AE2E014C */  sw      $t6, 0x014C($s1)           ## 0000014C
/* 001EC 80966B3C 0C00B58B */  jal     Actor_SetScale
              
/* 001F0 80966B40 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001F4 80966B44 8FAF0044 */  lw      $t7, 0x0044($sp)           
/* 001F8 80966B48 25F8FFFD */  addiu   $t8, $t7, 0xFFFD           ## $t8 = FFFFFFFD
/* 001FC 80966B4C 10000058 */  beq     $zero, $zero, .L80966CB0   
/* 00200 80966B50 A2380293 */  sb      $t8, 0x0293($s1)           ## 00000293
glabel L80966B54
/* 00204 80966B54 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00208 80966B58 3C198097 */  lui     $t9, %hi(func_8096865C)    ## $t9 = 80970000
/* 0020C 80966B5C 2739865C */  addiu   $t9, $t9, %lo(func_8096865C) ## $t9 = 8096865C
/* 00210 80966B60 44050000 */  mfc1    $a1, $f0                   
/* 00214 80966B64 AE390284 */  sw      $t9, 0x0284($s1)           ## 00000284
/* 00218 80966B68 0C00B58B */  jal     Actor_SetScale
              
/* 0021C 80966B6C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00220 80966B70 3C088096 */  lui     $t0, %hi(func_809674E0)    ## $t0 = 80960000
/* 00224 80966B74 250874E0 */  addiu   $t0, $t0, %lo(func_809674E0) ## $t0 = 809674E0
/* 00228 80966B78 1000004D */  beq     $zero, $zero, .L80966CB0   
/* 0022C 80966B7C AE28014C */  sw      $t0, 0x014C($s1)           ## 0000014C
glabel L80966B80
/* 00230 80966B80 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00234 80966B84 3C098097 */  lui     $t1, %hi(func_8096865C)    ## $t1 = 80970000
/* 00238 80966B88 2529865C */  addiu   $t1, $t1, %lo(func_8096865C) ## $t1 = 8096865C
/* 0023C 80966B8C 44050000 */  mfc1    $a1, $f0                   
/* 00240 80966B90 AE290284 */  sw      $t1, 0x0284($s1)           ## 00000284
/* 00244 80966B94 0C00B58B */  jal     Actor_SetScale
              
/* 00248 80966B98 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0024C 80966B9C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00250 80966BA0 3C0A8096 */  lui     $t2, %hi(func_8096784C)    ## $t2 = 80960000
/* 00254 80966BA4 254A784C */  addiu   $t2, $t2, %lo(func_8096784C) ## $t2 = 8096784C
/* 00258 80966BA8 AE2A014C */  sw      $t2, 0x014C($s1)           ## 0000014C
/* 0025C 80966BAC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00260 80966BB0 240528A5 */  addiu   $a1, $zero, 0x28A5         ## $a1 = 000028A5
/* 00264 80966BB4 E6200064 */  swc1    $f0, 0x0064($s1)           ## 00000064
/* 00268 80966BB8 E6200060 */  swc1    $f0, 0x0060($s1)           ## 00000060
/* 0026C 80966BBC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00270 80966BC0 E620005C */  swc1    $f0, 0x005C($s1)           ## 0000005C
/* 00274 80966BC4 1000003B */  beq     $zero, $zero, .L80966CB4   
/* 00278 80966BC8 8FAD0044 */  lw      $t5, 0x0044($sp)           
glabel L80966BCC
/* 0027C 80966BCC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00280 80966BD0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00284 80966BD4 44050000 */  mfc1    $a1, $f0                   
/* 00288 80966BD8 0C00B58B */  jal     Actor_SetScale
              
/* 0028C 80966BDC 00000000 */  nop
/* 00290 80966BE0 3C0B8096 */  lui     $t3, %hi(func_80967F10)    ## $t3 = 80960000
/* 00294 80966BE4 3C0C8097 */  lui     $t4, %hi(func_80968B70)    ## $t4 = 80970000
/* 00298 80966BE8 256B7F10 */  addiu   $t3, $t3, %lo(func_80967F10) ## $t3 = 80967F10
/* 0029C 80966BEC 258C8B70 */  addiu   $t4, $t4, %lo(func_80968B70) ## $t4 = 80968B70
/* 002A0 80966BF0 AE2B014C */  sw      $t3, 0x014C($s1)           ## 0000014C
/* 002A4 80966BF4 AE2C0284 */  sw      $t4, 0x0284($s1)           ## 00000284
/* 002A8 80966BF8 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 002AC 80966BFC 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 002B0 80966C00 24070007 */  addiu   $a3, $zero, 0x0007         ## $a3 = 00000007
/* 002B4 80966C04 0C00CDD2 */  jal     Actor_ChangeCategory
              
/* 002B8 80966C08 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 002BC 80966C0C 10000029 */  beq     $zero, $zero, .L80966CB4   
/* 002C0 80966C10 8FAD0044 */  lw      $t5, 0x0044($sp)           
glabel L80966C14
/* 002C4 80966C14 3C053E0F */  lui     $a1, 0x3E0F                ## $a1 = 3E0F0000
/* 002C8 80966C18 34A55C29 */  ori     $a1, $a1, 0x5C29           ## $a1 = 3E0F5C29
/* 002CC 80966C1C 0C00B58B */  jal     Actor_SetScale
              
/* 002D0 80966C20 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 002D4 80966C24 3C058096 */  lui     $a1, %hi(func_80967DBC)    ## $a1 = 80960000
/* 002D8 80966C28 24A57DBC */  addiu   $a1, $a1, %lo(func_80967DBC) ## $a1 = 80967DBC
/* 002DC 80966C2C 0C259A54 */  jal     func_80966950              
/* 002E0 80966C30 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 002E4 80966C34 3C0E8097 */  lui     $t6, %hi(func_80968FB0)    ## $t6 = 80970000
/* 002E8 80966C38 25CE8FB0 */  addiu   $t6, $t6, %lo(func_80968FB0) ## $t6 = 80968FB0
/* 002EC 80966C3C AE2E0134 */  sw      $t6, 0x0134($s1)           ## 00000134
/* 002F0 80966C40 1000001B */  beq     $zero, $zero, .L80966CB0   
/* 002F4 80966C44 A2200293 */  sb      $zero, 0x0293($s1)         ## 00000293
glabel L80966C48
/* 002F8 80966C48 8E2F0004 */  lw      $t7, 0x0004($s1)           ## 00000004
/* 002FC 80966C4C 9629028C */  lhu     $t1, 0x028C($s1)           ## 0000028C
/* 00300 80966C50 3C198097 */  lui     $t9, %hi(func_8096865C)    ## $t9 = 80970000
/* 00304 80966C54 3C088096 */  lui     $t0, %hi(func_80967410)    ## $t0 = 80960000
/* 00308 80966C58 2739865C */  addiu   $t9, $t9, %lo(func_8096865C) ## $t9 = 8096865C
/* 0030C 80966C5C 25087410 */  addiu   $t0, $t0, %lo(func_80967410) ## $t0 = 80967410
/* 00310 80966C60 3C053E4C */  lui     $a1, 0x3E4C                ## $a1 = 3E4C0000
/* 00314 80966C64 35F80020 */  ori     $t8, $t7, 0x0020           ## $t8 = 00000020
/* 00318 80966C68 352A0001 */  ori     $t2, $t1, 0x0001           ## $t2 = 00000001
/* 0031C 80966C6C AE380004 */  sw      $t8, 0x0004($s1)           ## 00000004
/* 00320 80966C70 AE390284 */  sw      $t9, 0x0284($s1)           ## 00000284
/* 00324 80966C74 AE28014C */  sw      $t0, 0x014C($s1)           ## 0000014C
/* 00328 80966C78 A62A028C */  sh      $t2, 0x028C($s1)           ## 0000028C
/* 0032C 80966C7C 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3E4CCCCD
/* 00330 80966C80 0C00B58B */  jal     Actor_SetScale
              
/* 00334 80966C84 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00338 80966C88 8FAB0044 */  lw      $t3, 0x0044($sp)           
/* 0033C 80966C8C 256CFFF2 */  addiu   $t4, $t3, 0xFFF2           ## $t4 = FFFFFFF2
/* 00340 80966C90 10000007 */  beq     $zero, $zero, .L80966CB0   
/* 00344 80966C94 A22C0293 */  sb      $t4, 0x0293($s1)           ## 00000293
.L80966C98:
/* 00348 80966C98 3C048097 */  lui     $a0, %hi(D_80969410)       ## $a0 = 80970000
/* 0034C 80966C9C 3C058097 */  lui     $a1, %hi(D_80969414)       ## $a1 = 80970000
/* 00350 80966CA0 24A59414 */  addiu   $a1, $a1, %lo(D_80969414)  ## $a1 = 80969414
/* 00354 80966CA4 24849410 */  addiu   $a0, $a0, %lo(D_80969410)  ## $a0 = 80969410
/* 00358 80966CA8 0C0007FC */  jal     __assert
              
/* 0035C 80966CAC 240601B3 */  addiu   $a2, $zero, 0x01B3         ## $a2 = 000001B3
.L80966CB0:
/* 00360 80966CB0 8FAD0044 */  lw      $t5, 0x0044($sp)           
.L80966CB4:
/* 00364 80966CB4 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 00368 80966CB8 26300150 */  addiu   $s0, $s1, 0x0150           ## $s0 = 00000150
/* 0036C 80966CBC 11A10009 */  beq     $t5, $at, .L80966CE4       
/* 00370 80966CC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000150
/* 00374 80966CC4 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 00378 80966CC8 11A10008 */  beq     $t5, $at, .L80966CEC       
/* 0037C 80966CCC 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 00380 80966CD0 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 00384 80966CD4 11A10007 */  beq     $t5, $at, .L80966CF4       
/* 00388 80966CD8 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 0038C 80966CDC 10000007 */  beq     $zero, $zero, .L80966CFC   
/* 00390 80966CE0 C6280024 */  lwc1    $f8, 0x0024($s1)           ## 00000024
.L80966CE4:
/* 00394 80966CE4 10000004 */  beq     $zero, $zero, .L80966CF8   
/* 00398 80966CE8 A2200293 */  sb      $zero, 0x0293($s1)         ## 00000293
.L80966CEC:
/* 0039C 80966CEC 10000002 */  beq     $zero, $zero, .L80966CF8   
/* 003A0 80966CF0 A22E0293 */  sb      $t6, 0x0293($s1)           ## 00000293
.L80966CF4:
/* 003A4 80966CF4 A22F0293 */  sb      $t7, 0x0293($s1)           ## 00000293
.L80966CF8:
/* 003A8 80966CF8 C6280024 */  lwc1    $f8, 0x0024($s1)           ## 00000024
.L80966CFC:
/* 003AC 80966CFC C6300028 */  lwc1    $f16, 0x0028($s1)          ## 00000028
/* 003B0 80966D00 C624002C */  lwc1    $f4, 0x002C($s1)           ## 0000002C
/* 003B4 80966D04 4600428D */  trunc.w.s $f10, $f8                  
/* 003B8 80966D08 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 003BC 80966D0C 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 003C0 80966D10 4600848D */  trunc.w.s $f18, $f16                 
/* 003C4 80966D14 44055000 */  mfc1    $a1, $f10                  
/* 003C8 80966D18 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 003CC 80966D1C 4600218D */  trunc.w.s $f6, $f4                   
/* 003D0 80966D20 44069000 */  mfc1    $a2, $f18                  
/* 003D4 80966D24 240C0064 */  addiu   $t4, $zero, 0x0064         ## $t4 = 00000064
/* 003D8 80966D28 00052C00 */  sll     $a1, $a1, 16               
/* 003DC 80966D2C 44073000 */  mfc1    $a3, $f6                   
/* 003E0 80966D30 00063400 */  sll     $a2, $a2, 16               
/* 003E4 80966D34 00063403 */  sra     $a2, $a2, 16               
/* 003E8 80966D38 00073C00 */  sll     $a3, $a3, 16               
/* 003EC 80966D3C 00073C03 */  sra     $a3, $a3, 16               
/* 003F0 80966D40 00052C03 */  sra     $a1, $a1, 16               
/* 003F4 80966D44 AFAC001C */  sw      $t4, 0x001C($sp)           
/* 003F8 80966D48 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 003FC 80966D4C AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 00400 80966D50 0C01E763 */  jal     Lights_PointNoGlowSetInfo
              
/* 00404 80966D54 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 00408 80966D58 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 0040C 80966D5C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000150
/* 00410 80966D60 0C01E9D9 */  jal     LightContext_InsertLight
              
/* 00414 80966D64 248507A8 */  addiu   $a1, $a0, 0x07A8           ## $a1 = 000007A8
/* 00418 80966D68 AE220160 */  sw      $v0, 0x0160($s1)           ## 00000160
/* 0041C 80966D6C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00420 80966D70 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 00424 80966D74 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 00428 80966D78 03E00008 */  jr      $ra                        
/* 0042C 80966D7C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
