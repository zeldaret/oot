glabel EnSa_Init
/* 00C50 80AF61B0 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00C54 80AF61B4 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 00C58 80AF61B8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C5C 80AF61BC AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00C60 80AF61C0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00C64 80AF61C4 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00C68 80AF61C8 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 00C6C 80AF61CC 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00C70 80AF61D0 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 00C74 80AF61D4 AFA40044 */  sw      $a0, 0x0044($sp)           
/* 00C78 80AF61D8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00C7C 80AF61DC 0C00AC78 */  jal     ActorShape_Init
              
/* 00C80 80AF61E0 3C074140 */  lui     $a3, 0x4140                ## $a3 = 41400000
/* 00C84 80AF61E4 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 00C88 80AF61E8 260E0220 */  addiu   $t6, $s0, 0x0220           ## $t6 = 00000220
/* 00C8C 80AF61EC 260F0286 */  addiu   $t7, $s0, 0x0286           ## $t7 = 00000286
/* 00C90 80AF61F0 24180011 */  addiu   $t8, $zero, 0x0011         ## $t8 = 00000011
/* 00C94 80AF61F4 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00C98 80AF61F8 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00C9C 80AF61FC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00CA0 80AF6200 24C6B1A0 */  addiu   $a2, $a2, 0xB1A0           ## $a2 = 0600B1A0
/* 00CA4 80AF6204 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00CA8 80AF6208 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00CAC 80AF620C 0C0291BE */  jal     func_800A46F8              
/* 00CB0 80AF6210 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00CB4 80AF6214 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 00CB8 80AF6218 AFA50040 */  sw      $a1, 0x0040($sp)           
/* 00CBC 80AF621C 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00CC0 80AF6220 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00CC4 80AF6224 3C0780AF */  lui     $a3, %hi(D_80AF7260)       ## $a3 = 80AF0000
/* 00CC8 80AF6228 8FA50040 */  lw      $a1, 0x0040($sp)           
/* 00CCC 80AF622C 24E77260 */  addiu   $a3, $a3, %lo(D_80AF7260)  ## $a3 = 80AF7260
/* 00CD0 80AF6230 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00CD4 80AF6234 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00CD8 80AF6238 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00CDC 80AF623C 3C0680AF */  lui     $a2, %hi(D_80AF728C)       ## $a2 = 80AF0000
/* 00CE0 80AF6240 24C6728C */  addiu   $a2, $a2, %lo(D_80AF728C)  ## $a2 = 80AF728C
/* 00CE4 80AF6244 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 00CE8 80AF6248 0C0187BF */  jal     func_80061EFC              
/* 00CEC 80AF624C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00CF0 80AF6250 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CF4 80AF6254 0C2BD77F */  jal     func_80AF5DFC              
/* 00CF8 80AF6258 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00CFC 80AF625C 2C410006 */  sltiu   $at, $v0, 0x0006           
/* 00D00 80AF6260 1020004A */  beq     $at, $zero, .L80AF638C     
/* 00D04 80AF6264 0002C880 */  sll     $t9, $v0,  2               
/* 00D08 80AF6268 3C0180AF */  lui     $at, %hi(jtbl_80AF74F4)       ## $at = 80AF0000
/* 00D0C 80AF626C 00390821 */  addu    $at, $at, $t9              
/* 00D10 80AF6270 8C3974F4 */  lw      $t9, %lo(jtbl_80AF74F4)($at)  
/* 00D14 80AF6274 03200008 */  jr      $t9                        
/* 00D18 80AF6278 00000000 */  nop
glabel L80AF627C
/* 00D1C 80AF627C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D20 80AF6280 0C2BD763 */  jal     func_80AF5D8C              
/* 00D24 80AF6284 2405000B */  addiu   $a1, $zero, 0x000B         ## $a1 = 0000000B
/* 00D28 80AF6288 3C0880AF */  lui     $t0, %hi(func_80AF6448)    ## $t0 = 80AF0000
/* 00D2C 80AF628C 25086448 */  addiu   $t0, $t0, %lo(func_80AF6448) ## $t0 = 80AF6448
/* 00D30 80AF6290 1000003E */  beq     $zero, $zero, .L80AF638C   
/* 00D34 80AF6294 AE080190 */  sw      $t0, 0x0190($s0)           ## 00000190
glabel L80AF6298
/* 00D38 80AF6298 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D3C 80AF629C 0C2BD763 */  jal     func_80AF5D8C              
/* 00D40 80AF62A0 2405000B */  addiu   $a1, $zero, 0x000B         ## $a1 = 0000000B
/* 00D44 80AF62A4 3C0980AF */  lui     $t1, %hi(func_80AF683C)    ## $t1 = 80AF0000
/* 00D48 80AF62A8 2529683C */  addiu   $t1, $t1, %lo(func_80AF683C) ## $t1 = 80AF683C
/* 00D4C 80AF62AC 10000037 */  beq     $zero, $zero, .L80AF638C   
/* 00D50 80AF62B0 AE090190 */  sw      $t1, 0x0190($s0)           ## 00000190
glabel L80AF62B4
/* 00D54 80AF62B4 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00D58 80AF62B8 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 00D5C 80AF62BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D60 80AF62C0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00D64 80AF62C4 0C2BD763 */  jal     func_80AF5D8C              
/* 00D68 80AF62C8 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 00D6C 80AF62CC 3C0A80AF */  lui     $t2, %hi(func_80AF6448)    ## $t2 = 80AF0000
/* 00D70 80AF62D0 254A6448 */  addiu   $t2, $t2, %lo(func_80AF6448) ## $t2 = 80AF6448
/* 00D74 80AF62D4 1000002D */  beq     $zero, $zero, .L80AF638C   
/* 00D78 80AF62D8 AE0A0190 */  sw      $t2, 0x0190($s0)           ## 00000190
glabel L80AF62DC
/* 00D7C 80AF62DC 3C020201 */  lui     $v0, 0x0201                ## $v0 = 02010000
/* 00D80 80AF62E0 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00D84 80AF62E4 24420E20 */  addiu   $v0, $v0, 0x0E20           ## $v0 = 02010E20
/* 00D88 80AF62E8 44813000 */  mtc1    $at, $f6                   ## $f6 = -1.00
/* 00D8C 80AF62EC 00025900 */  sll     $t3, $v0,  4               
/* 00D90 80AF62F0 000B6702 */  srl     $t4, $t3, 28               
/* 00D94 80AF62F4 000C6880 */  sll     $t5, $t4,  2               
/* 00D98 80AF62F8 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00D9C 80AF62FC A6000210 */  sh      $zero, 0x0210($s0)         ## 00000210
/* 00DA0 80AF6300 01CD7021 */  addu    $t6, $t6, $t5              
/* 00DA4 80AF6304 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00DA8 80AF6308 E606006C */  swc1    $f6, 0x006C($s0)           ## 0000006C
/* 00DAC 80AF630C 8DCE6FA8 */  lw      $t6, 0x6FA8($t6)           ## 80166FA8
/* 00DB0 80AF6310 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00DB4 80AF6314 00417824 */  and     $t7, $v0, $at              
/* 00DB8 80AF6318 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00DBC 80AF631C 01CFC021 */  addu    $t8, $t6, $t7              
/* 00DC0 80AF6320 0301C821 */  addu    $t9, $t8, $at              
/* 00DC4 80AF6324 AE391D68 */  sw      $t9, 0x1D68($s1)           ## 00001D68
/* 00DC8 80AF6328 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 00DCC 80AF632C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00DD0 80AF6330 A028FA74 */  sb      $t0, -0x058C($at)          ## 8015FA74
/* 00DD4 80AF6334 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DD8 80AF6338 0C2BD763 */  jal     func_80AF5D8C              
/* 00DDC 80AF633C 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 00DE0 80AF6340 3C0980AF */  lui     $t1, %hi(func_80AF68E4)    ## $t1 = 80AF0000
/* 00DE4 80AF6344 252968E4 */  addiu   $t1, $t1, %lo(func_80AF68E4) ## $t1 = 80AF68E4
/* 00DE8 80AF6348 10000010 */  beq     $zero, $zero, .L80AF638C   
/* 00DEC 80AF634C AE090190 */  sw      $t1, 0x0190($s0)           ## 00000190
glabel L80AF6350
/* 00DF0 80AF6350 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00DF4 80AF6354 44814000 */  mtc1    $at, $f8                   ## $f8 = -1.00
/* 00DF8 80AF6358 A6000210 */  sh      $zero, 0x0210($s0)         ## 00000210
/* 00DFC 80AF635C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E00 80AF6360 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00E04 80AF6364 0C2BD763 */  jal     func_80AF5D8C              
/* 00E08 80AF6368 E608006C */  swc1    $f8, 0x006C($s0)           ## 0000006C
/* 00E0C 80AF636C 3C0A80AF */  lui     $t2, %hi(func_80AF68E4)    ## $t2 = 80AF0000
/* 00E10 80AF6370 254A68E4 */  addiu   $t2, $t2, %lo(func_80AF68E4) ## $t2 = 80AF68E4
/* 00E14 80AF6374 10000005 */  beq     $zero, $zero, .L80AF638C   
/* 00E18 80AF6378 AE0A0190 */  sw      $t2, 0x0190($s0)           ## 00000190
glabel L80AF637C
/* 00E1C 80AF637C 0C00B55C */  jal     Actor_Kill
              
/* 00E20 80AF6380 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E24 80AF6384 10000022 */  beq     $zero, $zero, .L80AF6410   
/* 00E28 80AF6388 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80AF638C:
/* 00E2C 80AF638C 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00E30 80AF6390 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 00E34 80AF6394 0C00B58B */  jal     Actor_SetScale
              
/* 00E38 80AF6398 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E3C 80AF639C 240B0006 */  addiu   $t3, $zero, 0x0006         ## $t3 = 00000006
/* 00E40 80AF63A0 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 00E44 80AF63A4 A20B001F */  sb      $t3, 0x001F($s0)           ## 0000001F
/* 00E48 80AF63A8 A60001E0 */  sh      $zero, 0x01E0($s0)         ## 000001E0
/* 00E4C 80AF63AC A60C0218 */  sh      $t4, 0x0218($s0)           ## 00000218
/* 00E50 80AF63B0 8FAD0044 */  lw      $t5, 0x0044($sp)           
/* 00E54 80AF63B4 C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 00E58 80AF63B8 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 00E5C 80AF63BC 89AF0000 */  lwl     $t7, 0x0000($t5)           ## 00000000
/* 00E60 80AF63C0 99AF0003 */  lwr     $t7, 0x0003($t5)           ## 00000003
/* 00E64 80AF63C4 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 00E68 80AF63C8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00E6C 80AF63CC AA0F021A */  swl     $t7, 0x021A($s0)           ## 0000021A
/* 00E70 80AF63D0 BA0F021D */  swr     $t7, 0x021D($s0)           ## 0000021D
/* 00E74 80AF63D4 95AF0004 */  lhu     $t7, 0x0004($t5)           ## 00000004
/* 00E78 80AF63D8 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 00E7C 80AF63DC 24070018 */  addiu   $a3, $zero, 0x0018         ## $a3 = 00000018
/* 00E80 80AF63E0 A60F021E */  sh      $t7, 0x021E($s0)           ## 0000021E
/* 00E84 80AF63E4 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 00E88 80AF63E8 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 00E8C 80AF63EC E7B00014 */  swc1    $f16, 0x0014($sp)          
/* 00E90 80AF63F0 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 00E94 80AF63F4 AFB80028 */  sw      $t8, 0x0028($sp)           
/* 00E98 80AF63F8 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00E9C 80AF63FC AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00EA0 80AF6400 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00EA4 80AF6404 0C00C916 */  jal     Actor_SpawnAttached
              
/* 00EA8 80AF6408 E7B20018 */  swc1    $f18, 0x0018($sp)          
/* 00EAC 80AF640C 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80AF6410:
/* 00EB0 80AF6410 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 00EB4 80AF6414 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 00EB8 80AF6418 03E00008 */  jr      $ra                        
/* 00EBC 80AF641C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000


