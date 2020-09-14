.late_rodata
glabel jtbl_80A9A98C
    .word L80A989F4
    .word L80A98A28
    .word L80A98AA4
    .word L80A98B04
    .word L80A98C0C
    .word L80A98C0C
    .word L80A98C0C
    .word L80A98B5C

.text
glabel func_80A98934
/* 01B84 80A98934 84A300A4 */  lh      $v1, 0x00A4($a1)           ## 000000A4
/* 01B88 80A98938 28610056 */  slti    $at, $v1, 0x0056           
/* 01B8C 80A9893C 14200005 */  bne     $at, $zero, .L80A98954     
/* 01B90 80A98940 2401005B */  addiu   $at, $zero, 0x005B         ## $at = 0000005B
/* 01B94 80A98944 106100A4 */  beq     $v1, $at, .L80A98BD8       
/* 01B98 80A98948 3C0B8012 */  lui     $t3, %hi(gItemSlots+0x2d)
/* 01B9C 80A9894C 100000B0 */  beq     $zero, $zero, .L80A98C10   
/* 01BA0 80A98950 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A98954:
/* 01BA4 80A98954 2861002E */  slti    $at, $v1, 0x002E           
/* 01BA8 80A98958 14200006 */  bne     $at, $zero, .L80A98974     
/* 01BAC 80A9895C 246EFFDA */  addiu   $t6, $v1, 0xFFDA           ## $t6 = FFFFFFDA
/* 01BB0 80A98960 24010055 */  addiu   $at, $zero, 0x0055         ## $at = 00000055
/* 01BB4 80A98964 5061000C */  beql    $v1, $at, .L80A98998       
/* 01BB8 80A98968 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 01BBC 80A9896C 100000A8 */  beq     $zero, $zero, .L80A98C10   
/* 01BC0 80A98970 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A98974:
/* 01BC4 80A98974 2DC10008 */  sltiu   $at, $t6, 0x0008           
/* 01BC8 80A98978 102000A4 */  beq     $at, $zero, .L80A98C0C     
/* 01BCC 80A9897C 000E7080 */  sll     $t6, $t6,  2               
/* 01BD0 80A98980 3C0180AA */  lui     $at, %hi(jtbl_80A9A98C)       ## $at = 80AA0000
/* 01BD4 80A98984 002E0821 */  addu    $at, $at, $t6              
/* 01BD8 80A98988 8C2EA98C */  lw      $t6, %lo(jtbl_80A9A98C)($at)  
/* 01BDC 80A9898C 01C00008 */  jr      $t6                        
/* 01BE0 80A98990 00000000 */  nop
/* 01BE4 80A98994 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
.L80A98998:
/* 01BE8 80A98998 3C0F8012 */  lui     $t7, %hi(gBitFlags)
/* 01BEC 80A9899C 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 00000000
/* 01BF0 80A989A0 28410007 */  slti    $at, $v0, 0x0007           
/* 01BF4 80A989A4 14200005 */  bne     $at, $zero, .L80A989BC     
/* 01BF8 80A989A8 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 01BFC 80A989AC 10410003 */  beq     $v0, $at, .L80A989BC       
/* 01C00 80A989B0 00000000 */  nop
/* 01C04 80A989B4 03E00008 */  jr      $ra                        
/* 01C08 80A989B8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A989BC:
/* 01C0C 80A989BC 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01C10 80A989C0 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01C14 80A989C4 8C5800A4 */  lw      $t8, 0x00A4($v0)           ## 8015E704
/* 01C18 80A989C8 8DEF7120 */  lw      $t7, %lo(gBitFlags)($t7)
/* 01C1C 80A989CC 01F8C824 */  and     $t9, $t7, $t8              
/* 01C20 80A989D0 17200006 */  bne     $t9, $zero, .L80A989EC     
/* 01C24 80A989D4 00000000 */  nop
/* 01C28 80A989D8 8C480004 */  lw      $t0, 0x0004($v0)           ## 8015E664
/* 01C2C 80A989DC 15000003 */  bne     $t0, $zero, .L80A989EC     
/* 01C30 80A989E0 00000000 */  nop
/* 01C34 80A989E4 03E00008 */  jr      $ra                        
/* 01C38 80A989E8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A989EC:
/* 01C3C 80A989EC 03E00008 */  jr      $ra                        
/* 01C40 80A989F0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
glabel L80A989F4
/* 01C44 80A989F4 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 01C48 80A989F8 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 01C4C 80A989FC 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 00000000
/* 01C50 80A98A00 10410007 */  beq     $v0, $at, .L80A98A20       
/* 01C54 80A98A04 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 01C58 80A98A08 10410005 */  beq     $v0, $at, .L80A98A20       
/* 01C5C 80A98A0C 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 01C60 80A98A10 10410003 */  beq     $v0, $at, .L80A98A20       
/* 01C64 80A98A14 00000000 */  nop
/* 01C68 80A98A18 03E00008 */  jr      $ra                        
/* 01C6C 80A98A1C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A98A20:
/* 01C70 80A98A20 03E00008 */  jr      $ra                        
/* 01C74 80A98A24 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
glabel L80A98A28
/* 01C78 80A98A28 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01C7C 80A98A2C 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01C80 80A98A30 8C490004 */  lw      $t1, 0x0004($v0)           ## 8015E664
/* 01C84 80A98A34 3C0A8012 */  lui     $t2, %hi(gBitFlags)
/* 01C88 80A98A38 55200012 */  bnel    $t1, $zero, .L80A98A84     
/* 01C8C 80A98A3C 848D001C */  lh      $t5, 0x001C($a0)           ## 0000001C
/* 01C90 80A98A40 8D4A7120 */  lw      $t2, %lo(gBitFlags)($t2)
/* 01C94 80A98A44 8C4B00A4 */  lw      $t3, 0x00A4($v0)           ## 8015E704
/* 01C98 80A98A48 014B6024 */  and     $t4, $t2, $t3              
/* 01C9C 80A98A4C 5580000D */  bnel    $t4, $zero, .L80A98A84     
/* 01CA0 80A98A50 848D001C */  lh      $t5, 0x001C($a0)           ## 0000001C
/* 01CA4 80A98A54 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 01CA8 80A98A58 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01CAC 80A98A5C 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 00000060
/* 01CB0 80A98A60 10410005 */  beq     $v0, $at, .L80A98A78       
/* 01CB4 80A98A64 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 01CB8 80A98A68 10410003 */  beq     $v0, $at, .L80A98A78       
/* 01CBC 80A98A6C 00000000 */  nop
/* 01CC0 80A98A70 03E00008 */  jr      $ra                        
/* 01CC4 80A98A74 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A98A78:
/* 01CC8 80A98A78 03E00008 */  jr      $ra                        
/* 01CCC 80A98A7C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A98A80:
/* 01CD0 80A98A80 848D001C */  lh      $t5, 0x001C($a0)           ## 0000001C
.L80A98A84:
/* 01CD4 80A98A84 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 01CD8 80A98A88 31AE00FF */  andi    $t6, $t5, 0x00FF           ## $t6 = 00000000
/* 01CDC 80A98A8C 11C10003 */  beq     $t6, $at, .L80A98A9C       
/* 01CE0 80A98A90 00000000 */  nop
/* 01CE4 80A98A94 03E00008 */  jr      $ra                        
/* 01CE8 80A98A98 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A98A9C:
/* 01CEC 80A98A9C 03E00008 */  jr      $ra                        
/* 01CF0 80A98AA0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
glabel L80A98AA4
/* 01CF4 80A98AA4 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01CF8 80A98AA8 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01CFC 80A98AAC 8C4F0004 */  lw      $t7, 0x0004($v0)           ## 8015E664
/* 01D00 80A98AB0 3C188012 */  lui     $t8, %hi(gBitFlags)
/* 01D04 80A98AB4 15E00011 */  bne     $t7, $zero, .L80A98AFC     
/* 01D08 80A98AB8 00000000 */  nop
/* 01D0C 80A98ABC 8F187120 */  lw      $t8, %lo(gBitFlags)($t8)
/* 01D10 80A98AC0 8C5900A4 */  lw      $t9, 0x00A4($v0)           ## 8015E704
/* 01D14 80A98AC4 03194024 */  and     $t0, $t8, $t9              
/* 01D18 80A98AC8 1500000C */  bne     $t0, $zero, .L80A98AFC     
/* 01D1C 80A98ACC 00000000 */  nop
/* 01D20 80A98AD0 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 01D24 80A98AD4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 01D28 80A98AD8 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 00000060
/* 01D2C 80A98ADC 10400005 */  beq     $v0, $zero, .L80A98AF4     
/* 01D30 80A98AE0 00000000 */  nop
/* 01D34 80A98AE4 10410003 */  beq     $v0, $at, .L80A98AF4       
/* 01D38 80A98AE8 00000000 */  nop
/* 01D3C 80A98AEC 03E00008 */  jr      $ra                        
/* 01D40 80A98AF0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A98AF4:
/* 01D44 80A98AF4 03E00008 */  jr      $ra                        
/* 01D48 80A98AF8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A98AFC:
/* 01D4C 80A98AFC 03E00008 */  jr      $ra                        
/* 01D50 80A98B00 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
glabel L80A98B04
/* 01D54 80A98B04 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01D58 80A98B08 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01D5C 80A98B0C 8C490004 */  lw      $t1, 0x0004($v0)           ## 8015E664
/* 01D60 80A98B10 3C0A8012 */  lui     $t2, %hi(gBitFlags)
/* 01D64 80A98B14 1520000F */  bne     $t1, $zero, .L80A98B54     
/* 01D68 80A98B18 00000000 */  nop
/* 01D6C 80A98B1C 8D4A7120 */  lw      $t2, %lo(gBitFlags)($t2)
/* 01D70 80A98B20 8C4B00A4 */  lw      $t3, 0x00A4($v0)           ## 8015E704
/* 01D74 80A98B24 014B6024 */  and     $t4, $t2, $t3              
/* 01D78 80A98B28 1580000A */  bne     $t4, $zero, .L80A98B54     
/* 01D7C 80A98B2C 00000000 */  nop
/* 01D80 80A98B30 848D001C */  lh      $t5, 0x001C($a0)           ## 0000001C
/* 01D84 80A98B34 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 01D88 80A98B38 31AE00FF */  andi    $t6, $t5, 0x00FF           ## $t6 = 00000000
/* 01D8C 80A98B3C 11C10003 */  beq     $t6, $at, .L80A98B4C       
/* 01D90 80A98B40 00000000 */  nop
/* 01D94 80A98B44 03E00008 */  jr      $ra                        
/* 01D98 80A98B48 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A98B4C:
/* 01D9C 80A98B4C 03E00008 */  jr      $ra                        
/* 01DA0 80A98B50 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A98B54:
/* 01DA4 80A98B54 03E00008 */  jr      $ra                        
/* 01DA8 80A98B58 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
glabel L80A98B5C
/* 01DAC 80A98B5C 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01DB0 80A98B60 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01DB4 80A98B64 8C4F0004 */  lw      $t7, 0x0004($v0)           ## 8015E664
/* 01DB8 80A98B68 3C188012 */  lui     $t8, %hi(gBitFlags)
/* 01DBC 80A98B6C 55E00012 */  bnel    $t7, $zero, .L80A98BB8     
/* 01DC0 80A98B70 8489001C */  lh      $t1, 0x001C($a0)           ## 0000001C
/* 01DC4 80A98B74 8F187120 */  lw      $t8, %lo(gBitFlags)($t8)
/* 01DC8 80A98B78 8C5900A4 */  lw      $t9, 0x00A4($v0)           ## 8015E704
/* 01DCC 80A98B7C 03194024 */  and     $t0, $t8, $t9              
/* 01DD0 80A98B80 5500000D */  bnel    $t0, $zero, .L80A98BB8     
/* 01DD4 80A98B84 8489001C */  lh      $t1, 0x001C($a0)           ## 0000001C
/* 01DD8 80A98B88 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 01DDC 80A98B8C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01DE0 80A98B90 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 00000060
/* 01DE4 80A98B94 10410005 */  beq     $v0, $at, .L80A98BAC       
/* 01DE8 80A98B98 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 01DEC 80A98B9C 10410003 */  beq     $v0, $at, .L80A98BAC       
/* 01DF0 80A98BA0 00000000 */  nop
/* 01DF4 80A98BA4 03E00008 */  jr      $ra                        
/* 01DF8 80A98BA8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A98BAC:
/* 01DFC 80A98BAC 03E00008 */  jr      $ra                        
/* 01E00 80A98BB0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A98BB4:
/* 01E04 80A98BB4 8489001C */  lh      $t1, 0x001C($a0)           ## 0000001C
.L80A98BB8:
/* 01E08 80A98BB8 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 01E0C 80A98BBC 312A00FF */  andi    $t2, $t1, 0x00FF           ## $t2 = 00000000
/* 01E10 80A98BC0 11410003 */  beq     $t2, $at, .L80A98BD0       
/* 01E14 80A98BC4 00000000 */  nop
/* 01E18 80A98BC8 03E00008 */  jr      $ra                        
/* 01E1C 80A98BCC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A98BD0:
/* 01E20 80A98BD0 03E00008 */  jr      $ra                        
/* 01E24 80A98BD4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A98BD8:
/* 01E28 80A98BD8 916B7491 */  lbu     $t3, %lo(gItemSlots+0x2d)($t3)
/* 01E2C 80A98BDC 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01E30 80A98BE0 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01E34 80A98BE4 004B6021 */  addu    $t4, $v0, $t3              
/* 01E38 80A98BE8 918D0074 */  lbu     $t5, 0x0074($t4)           ## 00000074
/* 01E3C 80A98BEC 24010031 */  addiu   $at, $zero, 0x0031         ## $at = 00000031
/* 01E40 80A98BF0 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 01E44 80A98BF4 15A10003 */  bne     $t5, $at, .L80A98C04       
/* 01E48 80A98BF8 00000000 */  nop
/* 01E4C 80A98BFC 03E00008 */  jr      $ra                        
/* 01E50 80A98C00 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A98C04:
/* 01E54 80A98C04 03E00008 */  jr      $ra                        
/* 01E58 80A98C08 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
glabel L80A98C0C
.L80A98C0C:
/* 01E5C 80A98C0C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A98C10:
/* 01E60 80A98C10 03E00008 */  jr      $ra                        
/* 01E64 80A98C14 00000000 */  nop
