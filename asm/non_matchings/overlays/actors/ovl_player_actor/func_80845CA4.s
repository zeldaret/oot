.late_rodata
glabel D_80855484
    .float 0.1

.text
glabel func_80845CA4
/* 13A94 80845CA4 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 13A98 80845CA8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 13A9C 80845CAC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 13AA0 80845CB0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 13AA4 80845CB4 0C20EC10 */  jal     func_8083B040              
/* 13AA8 80845CB8 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 13AAC 80845CBC 54400083 */  bnel    $v0, $zero, .L80845ECC     
/* 13AB0 80845CC0 8E08067C */  lw      $t0, 0x067C($s0)           ## 0000067C
/* 13AB4 80845CC4 860E0850 */  lh      $t6, 0x0850($s0)           ## 00000850
/* 13AB8 80845CC8 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 13ABC 80845CCC 55C00013 */  bnel    $t6, $zero, .L80845D1C     
/* 13AC0 80845CD0 8219084F */  lb      $t9, 0x084F($s0)           ## 0000084F
/* 13AC4 80845CD4 0C028EF0 */  jal     func_800A3BC0              
/* 13AC8 80845CD8 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 13ACC 80845CDC 8603042E */  lh      $v1, 0x042E($s0)           ## 0000042E
/* 13AD0 80845CE0 3C018085 */  lui     $at, %hi(D_80855484)       ## $at = 80850000
/* 13AD4 80845CE4 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 13AD8 80845CE8 14600003 */  bne     $v1, $zero, .L80845CF8     
/* 13ADC 80845CEC 246FFFFF */  addiu   $t7, $v1, 0xFFFF           ## $t7 = FFFFFFFF
/* 13AE0 80845CF0 10000003 */  beq     $zero, $zero, .L80845D00   
/* 13AE4 80845CF4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80845CF8:
/* 13AE8 80845CF8 A60F042E */  sh      $t7, 0x042E($s0)           ## 0000042E
/* 13AEC 80845CFC 8602042E */  lh      $v0, 0x042E($s0)           ## 0000042E
.L80845D00:
/* 13AF0 80845D00 54400072 */  bnel    $v0, $zero, .L80845ECC     
/* 13AF4 80845D04 8E08067C */  lw      $t0, 0x067C($s0)           ## 0000067C
/* 13AF8 80845D08 C4245484 */  lwc1    $f4, %lo(D_80855484)($at)  
/* 13AFC 80845D0C A6180850 */  sh      $t8, 0x0850($s0)           ## 00000850
/* 13B00 80845D10 1000006D */  beq     $zero, $zero, .L80845EC8   
/* 13B04 80845D14 E6040838 */  swc1    $f4, 0x0838($s0)           ## 00000838
/* 13B08 80845D18 8219084F */  lb      $t9, 0x084F($s0)           ## 0000084F
.L80845D1C:
/* 13B0C 80845D1C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 13B10 80845D20 5720001A */  bnel    $t9, $zero, .L80845D8C     
/* 13B14 80845D24 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 13B18 80845D28 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 13B1C 80845D2C 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 13B20 80845D30 3C018085 */  lui     $at, %hi(D_808535E8)       ## $at = 80850000
/* 13B24 80845D34 C42835E8 */  lwc1    $f8, %lo(D_808535E8)($at)  
/* 13B28 80845D38 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 13B2C 80845D3C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 13B30 80845D40 46083282 */  mul.s   $f10, $f6, $f8             
/* 13B34 80845D44 27A6003C */  addiu   $a2, $sp, 0x003C           ## $a2 = FFFFFFFC
/* 13B38 80845D48 2407FFFF */  addiu   $a3, $zero, 0xFFFF         ## $a3 = FFFFFFFF
/* 13B3C 80845D4C 0C2116E8 */  jal     func_80845BA0              
/* 13B40 80845D50 E7AA003C */  swc1    $f10, 0x003C($sp)          
/* 13B44 80845D54 2841001E */  slti    $at, $v0, 0x001E           
/* 13B48 80845D58 1020005B */  beq     $at, $zero, .L80845EC8     
/* 13B4C 80845D5C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 13B50 80845D60 8E09067C */  lw      $t1, 0x067C($s0)           ## 0000067C
/* 13B54 80845D64 C610045C */  lwc1    $f16, 0x045C($s0)          ## 0000045C
/* 13B58 80845D68 C6120464 */  lwc1    $f18, 0x0464($s0)          ## 00000464
/* 13B5C 80845D6C 3C012000 */  lui     $at, 0x2000                ## $at = 20000000
/* 13B60 80845D70 01215025 */  or      $t2, $t1, $at              ## $t2 = 20000000
/* 13B64 80845D74 A208084F */  sb      $t0, 0x084F($s0)           ## 0000084F
/* 13B68 80845D78 AE0A067C */  sw      $t2, 0x067C($s0)           ## 0000067C
/* 13B6C 80845D7C E6100450 */  swc1    $f16, 0x0450($s0)          ## 00000450
/* 13B70 80845D80 10000051 */  beq     $zero, $zero, .L80845EC8   
/* 13B74 80845D84 E6120458 */  swc1    $f18, 0x0458($s0)          ## 00000458
/* 13B78 80845D88 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.00
.L80845D8C:
/* 13B7C 80845D8C 24070014 */  addiu   $a3, $zero, 0x0014         ## $a3 = 00000014
/* 13B80 80845D90 3C018016 */  lui     $at, %hi(gSaveContext+0x13bc)
/* 13B84 80845D94 E7A40034 */  swc1    $f4, 0x0034($sp)           
/* 13B88 80845D98 8E0B067C */  lw      $t3, 0x067C($s0)           ## 0000067C
/* 13B8C 80845D9C 3C0D8085 */  lui     $t5, %hi(D_808535F4)       ## $t5 = 80850000
/* 13B90 80845DA0 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 13B94 80845DA4 5180001B */  beql    $t4, $zero, .L80845E14     
/* 13B98 80845DA8 86020850 */  lh      $v0, 0x0850($s0)           ## 00000850
/* 13B9C 80845DAC 8DAD35F4 */  lw      $t5, %lo(D_808535F4)($t5)  
/* 13BA0 80845DB0 C426FA1C */  lwc1    $f6, %lo(gSaveContext+0x13bc)($at)
/* 13BA4 80845DB4 3C048085 */  lui     $a0, %hi(D_808535FC)       ## $a0 = 80850000
/* 13BA8 80845DB8 11A0001D */  beq     $t5, $zero, .L80845E30     
/* 13BAC 80845DBC E7A60034 */  swc1    $f6, 0x0034($sp)           
/* 13BB0 80845DC0 848435FC */  lh      $a0, %lo(D_808535FC)($a0)  
/* 13BB4 80845DC4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 13BB8 80845DC8 AFA70030 */  sw      $a3, 0x0030($sp)           
/* 13BBC 80845DCC 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 13BC0 80845DD0 44814000 */  mtc1    $at, $f8                   ## $f8 = 400.00
/* 13BC4 80845DD4 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 13BC8 80845DD8 3C048085 */  lui     $a0, %hi(D_808535FC)       ## $a0 = 80850000
/* 13BCC 80845DDC 46080282 */  mul.s   $f10, $f0, $f8             
/* 13BD0 80845DE0 46105480 */  add.s   $f18, $f10, $f16           
/* 13BD4 80845DE4 E6120450 */  swc1    $f18, 0x0450($s0)          ## 00000450
/* 13BD8 80845DE8 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 13BDC 80845DEC 848435FC */  lh      $a0, %lo(D_808535FC)($a0)  
/* 13BE0 80845DF0 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 13BE4 80845DF4 44812000 */  mtc1    $at, $f4                   ## $f4 = 400.00
/* 13BE8 80845DF8 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 13BEC 80845DFC 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 13BF0 80845E00 46040182 */  mul.s   $f6, $f0, $f4              
/* 13BF4 80845E04 46083280 */  add.s   $f10, $f6, $f8             
/* 13BF8 80845E08 10000009 */  beq     $zero, $zero, .L80845E30   
/* 13BFC 80845E0C E60A0458 */  swc1    $f10, 0x0458($s0)          ## 00000458
/* 13C00 80845E10 86020850 */  lh      $v0, 0x0850($s0)           ## 00000850
.L80845E14:
/* 13C04 80845E14 3C018016 */  lui     $at, %hi(gSaveContext+0x13bc)
/* 13C08 80845E18 04410005 */  bgez    $v0, .L80845E30            
/* 13C0C 80845E1C 244E0001 */  addiu   $t6, $v0, 0x0001           ## $t6 = 00000001
/* 13C10 80845E20 A60E0850 */  sh      $t6, 0x0850($s0)           ## 00000850
/* 13C14 80845E24 C430FA1C */  lwc1    $f16, %lo(gSaveContext+0x13bc)($at)
/* 13C18 80845E28 2407FFFF */  addiu   $a3, $zero, 0xFFFF         ## $a3 = FFFFFFFF
/* 13C1C 80845E2C E7B00034 */  swc1    $f16, 0x0034($sp)          
.L80845E30:
/* 13C20 80845E30 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 13C24 80845E34 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 13C28 80845E38 0C2116E8 */  jal     func_80845BA0              
/* 13C2C 80845E3C 27A60034 */  addiu   $a2, $sp, 0x0034           ## $a2 = FFFFFFF4
/* 13C30 80845E40 860F0850 */  lh      $t7, 0x0850($s0)           ## 00000850
/* 13C34 80845E44 51E00011 */  beql    $t7, $zero, .L80845E8C     
/* 13C38 80845E48 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 13C3C 80845E4C 5440001F */  bnel    $v0, $zero, .L80845ECC     
/* 13C40 80845E50 8E08067C */  lw      $t0, 0x067C($s0)           ## 0000067C
/* 13C44 80845E54 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 13C48 80845E58 C6040838 */  lwc1    $f4, 0x0838($s0)           ## 00000838
/* 13C4C 80845E5C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 13C50 80845E60 46049032 */  c.eq.s  $f18, $f4                  
/* 13C54 80845E64 00000000 */  nop
/* 13C58 80845E68 45020018 */  bc1fl   .L80845ECC                 
/* 13C5C 80845E6C 8E08067C */  lw      $t0, 0x067C($s0)           ## 0000067C
/* 13C60 80845E70 0C030129 */  jal     Gameplay_GetCamera              
/* 13C64 80845E74 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 13C68 80845E78 8458014C */  lh      $t8, 0x014C($v0)           ## 0000014C
/* 13C6C 80845E7C 33190010 */  andi    $t9, $t8, 0x0010           ## $t9 = 00000000
/* 13C70 80845E80 53200012 */  beql    $t9, $zero, .L80845ECC     
/* 13C74 80845E84 8E08067C */  lw      $t0, 0x067C($s0)           ## 0000067C
/* 13C78 80845E88 8FA40044 */  lw      $a0, 0x0044($sp)           
.L80845E8C:
/* 13C7C 80845E8C 0C030129 */  jal     Gameplay_GetCamera              
/* 13C80 80845E90 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 13C84 80845E94 0C016C69 */  jal     func_8005B1A4              
/* 13C88 80845E98 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 13C8C 80845E9C 3C058016 */  lui     $a1, %hi(gSaveContext+0x137b)
/* 13C90 80845EA0 80A5F9DB */  lb      $a1, %lo(gSaveContext+0x137b)($a1)
/* 13C94 80845EA4 0C21171A */  jal     func_80845C68              
/* 13C98 80845EA8 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 13C9C 80845EAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 13CA0 80845EB0 0C20ED91 */  jal     func_8083B644              
/* 13CA4 80845EB4 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 13CA8 80845EB8 14400003 */  bne     $v0, $zero, .L80845EC8     
/* 13CAC 80845EBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 13CB0 80845EC0 0C20F3D7 */  jal     func_8083CF5C              
/* 13CB4 80845EC4 8FA50044 */  lw      $a1, 0x0044($sp)           
.L80845EC8:
/* 13CB8 80845EC8 8E08067C */  lw      $t0, 0x067C($s0)           ## 0000067C
.L80845ECC:
/* 13CBC 80845ECC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 13CC0 80845ED0 31090800 */  andi    $t1, $t0, 0x0800           ## $t1 = 00000000
/* 13CC4 80845ED4 51200004 */  beql    $t1, $zero, .L80845EE8     
/* 13CC8 80845ED8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 13CCC 80845EDC 0C20D99C */  jal     func_80836670              
/* 13CD0 80845EE0 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 13CD4 80845EE4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80845EE8:
/* 13CD8 80845EE8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 13CDC 80845EEC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 13CE0 80845EF0 03E00008 */  jr      $ra                        
/* 13CE4 80845EF4 00000000 */  nop
