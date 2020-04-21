glabel ObjectKankyo_Init
/* 00008 80BA2AA8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0000C 80BA2AAC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00010 80BA2AB0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00014 80BA2AB4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00018 80BA2AB8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0001C 80BA2ABC 24030054 */  addiu   $v1, $zero, 0x0054         ## $v1 = 00000054
.L80BA2AC0:
/* 00020 80BA2AC0 00430019 */  multu   $v0, $v1                   
/* 00024 80BA2AC4 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 00028 80BA2AC8 00021400 */  sll     $v0, $v0, 16               
/* 0002C 80BA2ACC 00021403 */  sra     $v0, $v0, 16               
/* 00030 80BA2AD0 28410040 */  slti    $at, $v0, 0x0040           
/* 00034 80BA2AD4 00007012 */  mflo    $t6                        
/* 00038 80BA2AD8 00CE7821 */  addu    $t7, $a2, $t6              
/* 0003C 80BA2ADC 1420FFF8 */  bne     $at, $zero, .L80BA2AC0     
/* 00040 80BA2AE0 A1E0014C */  sb      $zero, 0x014C($t7)         ## 0000014C
/* 00044 80BA2AE4 94D9001C */  lhu     $t9, 0x001C($a2)           ## 0000001C
/* 00048 80BA2AE8 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 0004C 80BA2AEC A0D80003 */  sb      $t8, 0x0003($a2)           ## 00000003
/* 00050 80BA2AF0 2F210006 */  sltiu   $at, $t9, 0x0006           
/* 00054 80BA2AF4 102000A8 */  beq     $at, $zero, .L80BA2D98     
/* 00058 80BA2AF8 0019C880 */  sll     $t9, $t9,  2               
/* 0005C 80BA2AFC 3C0180BA */  lui     $at, %hi(jtbl_80BA5BE0)       ## $at = 80BA0000
/* 00060 80BA2B00 00390821 */  addu    $at, $at, $t9              
/* 00064 80BA2B04 8C395BE0 */  lw      $t9, %lo(jtbl_80BA5BE0)($at)  
/* 00068 80BA2B08 03200008 */  jr      $t9                        
/* 0006C 80BA2B0C 00000000 */  nop
glabel L80BA2B10
/* 00070 80BA2B10 3C0880BA */  lui     $t0, %hi(D_80BA5940)       ## $t0 = 80BA0000
/* 00074 80BA2B14 91085940 */  lbu     $t0, %lo(D_80BA5940)($t0)  
/* 00078 80BA2B18 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0007C 80BA2B1C 3C0580BA */  lui     $a1, %hi(func_80BA2DD4)    ## $a1 = 80BA0000
/* 00080 80BA2B20 15000007 */  bne     $t0, $zero, .L80BA2B40     
/* 00084 80BA2B24 00000000 */  nop
/* 00088 80BA2B28 0C2E8AA8 */  jal     ObjectKankyo_SetupAction              
/* 0008C 80BA2B2C 24A52DD4 */  addiu   $a1, $a1, %lo(func_80BA2DD4) ## $a1 = 80BA2DD4
/* 00090 80BA2B30 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00094 80BA2B34 3C0180BA */  lui     $at, %hi(D_80BA5940)       ## $at = 80BA0000
/* 00098 80BA2B38 10000097 */  beq     $zero, $zero, .L80BA2D98   
/* 0009C 80BA2B3C A0295940 */  sb      $t1, %lo(D_80BA5940)($at)  
.L80BA2B40:
/* 000A0 80BA2B40 0C00B55C */  jal     Actor_Kill
              
/* 000A4 80BA2B44 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 000A8 80BA2B48 10000094 */  beq     $zero, $zero, .L80BA2D9C   
/* 000AC 80BA2B4C 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80BA2B50
/* 000B0 80BA2B50 3C0A80BA */  lui     $t2, %hi(D_80BA5940)       ## $t2 = 80BA0000
/* 000B4 80BA2B54 914A5940 */  lbu     $t2, %lo(D_80BA5940)($t2)  
/* 000B8 80BA2B58 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 000BC 80BA2B5C 3C0580BA */  lui     $a1, %hi(func_80BA2DC8)    ## $a1 = 80BA0000
/* 000C0 80BA2B60 15400007 */  bne     $t2, $zero, .L80BA2B80     
/* 000C4 80BA2B64 00000000 */  nop
/* 000C8 80BA2B68 0C2E8AA8 */  jal     ObjectKankyo_SetupAction              
/* 000CC 80BA2B6C 24A52DC8 */  addiu   $a1, $a1, %lo(func_80BA2DC8) ## $a1 = 80BA2DC8
/* 000D0 80BA2B70 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 000D4 80BA2B74 3C0180BA */  lui     $at, %hi(D_80BA5940)       ## $at = 80BA0000
/* 000D8 80BA2B78 10000087 */  beq     $zero, $zero, .L80BA2D98   
/* 000DC 80BA2B7C A02B5940 */  sb      $t3, %lo(D_80BA5940)($at)  
.L80BA2B80:
/* 000E0 80BA2B80 0C00B55C */  jal     Actor_Kill
              
/* 000E4 80BA2B84 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 000E8 80BA2B88 10000084 */  beq     $zero, $zero, .L80BA2D9C   
/* 000EC 80BA2B8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80BA2B90
/* 000F0 80BA2B90 3C0580BA */  lui     $a1, %hi(func_80BA4914)    ## $a1 = 80BA0000
/* 000F4 80BA2B94 24A54914 */  addiu   $a1, $a1, %lo(func_80BA4914) ## $a1 = 80BA4914
/* 000F8 80BA2B98 0C2E8AA8 */  jal     ObjectKankyo_SetupAction              
/* 000FC 80BA2B9C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00100 80BA2BA0 1000007E */  beq     $zero, $zero, .L80BA2D9C   
/* 00104 80BA2BA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80BA2BA8
/* 00108 80BA2BA8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0010C 80BA2BAC A0C0018C */  sb      $zero, 0x018C($a2)         ## 0000018C
/* 00110 80BA2BB0 24070007 */  addiu   $a3, $zero, 0x0007         ## $a3 = 00000007
/* 00114 80BA2BB4 E4C40198 */  swc1    $f4, 0x0198($a2)           ## 00000198
/* 00118 80BA2BB8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0011C 80BA2BBC AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00120 80BA2BC0 0C00CDD2 */  jal     Actor_ChangeType
              
/* 00124 80BA2BC4 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 00128 80BA2BC8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0012C 80BA2BCC 3C0580BA */  lui     $a1, %hi(func_80BA4BFC)    ## $a1 = 80BA0000
/* 00130 80BA2BD0 24A54BFC */  addiu   $a1, $a1, %lo(func_80BA4BFC) ## $a1 = 80BA4BFC
/* 00134 80BA2BD4 0C2E8AA8 */  jal     ObjectKankyo_SetupAction              
/* 00138 80BA2BD8 A0801659 */  sb      $zero, 0x1659($a0)         ## 00001659
/* 0013C 80BA2BDC 1000006F */  beq     $zero, $zero, .L80BA2D9C   
/* 00140 80BA2BE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80BA2BE4
/* 00144 80BA2BE4 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00148 80BA2BE8 A0C0018C */  sb      $zero, 0x018C($a2)         ## 0000018C
/* 0014C 80BA2BEC 3C0180BA */  lui     $at, %hi(D_80BA5BF8)       ## $at = 80BA0000
/* 00150 80BA2BF0 E4C60198 */  swc1    $f6, 0x0198($a2)           ## 00000198
/* 00154 80BA2BF4 C4205BF8 */  lwc1    $f0, %lo(D_80BA5BF8)($at)  
/* 00158 80BA2BF8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80BA2BFC:
/* 0015C 80BA2BFC 00430019 */  multu   $v0, $v1                   
/* 00160 80BA2C00 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 00000001
/* 00164 80BA2C04 00021400 */  sll     $v0, $v0, 16               
/* 00168 80BA2C08 00021403 */  sra     $v0, $v0, 16               
/* 0016C 80BA2C0C 28410006 */  slti    $at, $v0, 0x0006           
/* 00170 80BA2C10 00006812 */  mflo    $t5                        
/* 00174 80BA2C14 00CD7021 */  addu    $t6, $a2, $t5              
/* 00178 80BA2C18 1420FFF8 */  bne     $at, $zero, .L80BA2BFC     
/* 0017C 80BA2C1C E5C00190 */  swc1    $f0, 0x0190($t6)           ## 00000190
/* 00180 80BA2C20 240400BB */  addiu   $a0, $zero, 0x00BB         ## $a0 = 000000BB
/* 00184 80BA2C24 0C00D6D3 */  jal     Flags_GetEventChkInf
              
/* 00188 80BA2C28 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 0018C 80BA2C2C 10400004 */  beq     $v0, $zero, .L80BA2C40     
/* 00190 80BA2C30 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00194 80BA2C34 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00198 80BA2C38 00000000 */  nop
/* 0019C 80BA2C3C E4C80190 */  swc1    $f8, 0x0190($a2)           ## 00000190
.L80BA2C40:
/* 001A0 80BA2C40 240400BC */  addiu   $a0, $zero, 0x00BC         ## $a0 = 000000BC
/* 001A4 80BA2C44 0C00D6D3 */  jal     Flags_GetEventChkInf
              
/* 001A8 80BA2C48 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 001AC 80BA2C4C 10400004 */  beq     $v0, $zero, .L80BA2C60     
/* 001B0 80BA2C50 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 001B4 80BA2C54 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 001B8 80BA2C58 00000000 */  nop
/* 001BC 80BA2C5C E4CA01E4 */  swc1    $f10, 0x01E4($a2)          ## 000001E4
.L80BA2C60:
/* 001C0 80BA2C60 240400BD */  addiu   $a0, $zero, 0x00BD         ## $a0 = 000000BD
/* 001C4 80BA2C64 0C00D6D3 */  jal     Flags_GetEventChkInf
              
/* 001C8 80BA2C68 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 001CC 80BA2C6C 10400004 */  beq     $v0, $zero, .L80BA2C80     
/* 001D0 80BA2C70 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 001D4 80BA2C74 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 001D8 80BA2C78 00000000 */  nop
/* 001DC 80BA2C7C E4D00238 */  swc1    $f16, 0x0238($a2)          ## 00000238
.L80BA2C80:
/* 001E0 80BA2C80 240400BE */  addiu   $a0, $zero, 0x00BE         ## $a0 = 000000BE
/* 001E4 80BA2C84 0C00D6D3 */  jal     Flags_GetEventChkInf
              
/* 001E8 80BA2C88 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 001EC 80BA2C8C 10400004 */  beq     $v0, $zero, .L80BA2CA0     
/* 001F0 80BA2C90 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 001F4 80BA2C94 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 001F8 80BA2C98 00000000 */  nop
/* 001FC 80BA2C9C E4D2028C */  swc1    $f18, 0x028C($a2)          ## 0000028C
.L80BA2CA0:
/* 00200 80BA2CA0 240400BF */  addiu   $a0, $zero, 0x00BF         ## $a0 = 000000BF
/* 00204 80BA2CA4 0C00D6D3 */  jal     Flags_GetEventChkInf
              
/* 00208 80BA2CA8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 0020C 80BA2CAC 10400004 */  beq     $v0, $zero, .L80BA2CC0     
/* 00210 80BA2CB0 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00214 80BA2CB4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00218 80BA2CB8 00000000 */  nop
/* 0021C 80BA2CBC E4C402E0 */  swc1    $f4, 0x02E0($a2)           ## 000002E0
.L80BA2CC0:
/* 00220 80BA2CC0 240400AD */  addiu   $a0, $zero, 0x00AD         ## $a0 = 000000AD
/* 00224 80BA2CC4 0C00D6D3 */  jal     Flags_GetEventChkInf
              
/* 00228 80BA2CC8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 0022C 80BA2CCC 3C0180BA */  lui     $at, %hi(D_80BA5C10)       ## $at = 80BA0000
/* 00230 80BA2CD0 C4205C10 */  lwc1    $f0, %lo(D_80BA5C10)($at)  
/* 00234 80BA2CD4 10400004 */  beq     $v0, $zero, .L80BA2CE8     
/* 00238 80BA2CD8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0023C 80BA2CDC 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00240 80BA2CE0 00000000 */  nop
/* 00244 80BA2CE4 E4C60334 */  swc1    $f6, 0x0334($a2)           ## 00000334
.L80BA2CE8:
/* 00248 80BA2CE8 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 0024C 80BA2CEC 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 00250 80BA2CF0 906F1414 */  lbu     $t7, 0x1414($v1)           ## 8015FA74
/* 00254 80BA2CF4 3C0580BA */  lui     $a1, %hi(func_80BA5304)    ## $a1 = 80BA0000
/* 00258 80BA2CF8 24A55304 */  addiu   $a1, $a1, %lo(func_80BA5304) ## $a1 = 80BA5304
/* 0025C 80BA2CFC 11E00024 */  beq     $t7, $zero, .L80BA2D90     
/* 00260 80BA2D00 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00264 80BA2D04 8C620000 */  lw      $v0, 0x0000($v1)           ## 8015E660
/* 00268 80BA2D08 24010538 */  addiu   $at, $zero, 0x0538         ## $at = 00000538
/* 0026C 80BA2D0C 54410005 */  bnel    $v0, $at, .L80BA2D24       
/* 00270 80BA2D10 2401053C */  addiu   $at, $zero, 0x053C         ## $at = 0000053C
/* 00274 80BA2D14 E4C00190 */  swc1    $f0, 0x0190($a2)           ## 00000190
/* 00278 80BA2D18 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 0027C 80BA2D1C 8C42E660 */  lw      $v0, %lo(gSaveContext)($v0)
/* 00280 80BA2D20 2401053C */  addiu   $at, $zero, 0x053C         ## $at = 0000053C
.L80BA2D24:
/* 00284 80BA2D24 54410005 */  bnel    $v0, $at, .L80BA2D3C       
/* 00288 80BA2D28 24010540 */  addiu   $at, $zero, 0x0540         ## $at = 00000540
/* 0028C 80BA2D2C E4C001E4 */  swc1    $f0, 0x01E4($a2)           ## 000001E4
/* 00290 80BA2D30 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00294 80BA2D34 8C42E660 */  lw      $v0, %lo(gSaveContext)($v0)
/* 00298 80BA2D38 24010540 */  addiu   $at, $zero, 0x0540         ## $at = 00000540
.L80BA2D3C:
/* 0029C 80BA2D3C 54410005 */  bnel    $v0, $at, .L80BA2D54       
/* 002A0 80BA2D40 24010544 */  addiu   $at, $zero, 0x0544         ## $at = 00000544
/* 002A4 80BA2D44 E4C00238 */  swc1    $f0, 0x0238($a2)           ## 00000238
/* 002A8 80BA2D48 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 002AC 80BA2D4C 8C42E660 */  lw      $v0, %lo(gSaveContext)($v0)
/* 002B0 80BA2D50 24010544 */  addiu   $at, $zero, 0x0544         ## $at = 00000544
.L80BA2D54:
/* 002B4 80BA2D54 54410005 */  bnel    $v0, $at, .L80BA2D6C       
/* 002B8 80BA2D58 24010548 */  addiu   $at, $zero, 0x0548         ## $at = 00000548
/* 002BC 80BA2D5C E4C0028C */  swc1    $f0, 0x028C($a2)           ## 0000028C
/* 002C0 80BA2D60 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 002C4 80BA2D64 8C42E660 */  lw      $v0, %lo(gSaveContext)($v0)
/* 002C8 80BA2D68 24010548 */  addiu   $at, $zero, 0x0548         ## $at = 00000548
.L80BA2D6C:
/* 002CC 80BA2D6C 54410005 */  bnel    $v0, $at, .L80BA2D84       
/* 002D0 80BA2D70 2401054C */  addiu   $at, $zero, 0x054C         ## $at = 0000054C
/* 002D4 80BA2D74 E4C002E0 */  swc1    $f0, 0x02E0($a2)           ## 000002E0
/* 002D8 80BA2D78 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 002DC 80BA2D7C 8C42E660 */  lw      $v0, %lo(gSaveContext)($v0)
/* 002E0 80BA2D80 2401054C */  addiu   $at, $zero, 0x054C         ## $at = 0000054C
.L80BA2D84:
/* 002E4 80BA2D84 14410002 */  bne     $v0, $at, .L80BA2D90       
/* 002E8 80BA2D88 00000000 */  nop
/* 002EC 80BA2D8C E4C00334 */  swc1    $f0, 0x0334($a2)           ## 00000334
.L80BA2D90:
/* 002F0 80BA2D90 0C2E8AA8 */  jal     ObjectKankyo_SetupAction              
/* 002F4 80BA2D94 A0C01659 */  sb      $zero, 0x1659($a2)         ## 00001659
glabel L80BA2D98
.L80BA2D98:
/* 002F8 80BA2D98 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80BA2D9C:
/* 002FC 80BA2D9C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00300 80BA2DA0 03E00008 */  jr      $ra                        
/* 00304 80BA2DA4 00000000 */  nop
