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
/* 01BD0 80A98980 3C0180AA */  lui     $at, %hi(D_80A9A98C)       ## $at = 80AA0000
/* 01BD4 80A98984 002E0821 */  addu    $at, $at, $t6              
/* 01BD8 80A98988 8C2EA98C */  lw      $t6, %lo(D_80A9A98C)($at)  
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
