glabel func_80A779DC
/* 036CC 80A779DC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 036D0 80A779E0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 036D4 80A779E4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 036D8 80A779E8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 036DC 80A779EC 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 036E0 80A779F0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 036E4 80A779F4 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 036E8 80A779F8 0C29DC27 */  jal     func_80A7709C              
/* 036EC 80A779FC AFA6002C */  sw      $a2, 0x002C($sp)           
/* 036F0 80A77A00 10400035 */  beq     $v0, $zero, .L80A77AD8     
/* 036F4 80A77A04 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 036F8 80A77A08 944E0000 */  lhu     $t6, 0x0000($v0)           ## 00000000
/* 036FC 80A77A0C AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 03700 80A77A10 8E0304D0 */  lw      $v1, 0x04D0($s0)           ## 000004D0
/* 03704 80A77A14 25D8FFFF */  addiu   $t8, $t6, 0xFFFF           ## $t8 = FFFFFFFF
/* 03708 80A77A18 2F010007 */  sltiu   $at, $t8, 0x0007           
/* 0370C 80A77A1C 51C3002F */  beql    $t6, $v1, .L80A77ADC       
/* 03710 80A77A20 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03714 80A77A24 10200028 */  beq     $at, $zero, .L80A77AC8     
/* 03718 80A77A28 3C0480A8 */  lui     $a0, %hi(D_80A78800)       ## $a0 = 80A80000
/* 0371C 80A77A2C 0018C080 */  sll     $t8, $t8,  2               
/* 03720 80A77A30 3C0180A8 */  lui     $at, %hi(jtbl_80A78A20)       ## $at = 80A80000
/* 03724 80A77A34 00380821 */  addu    $at, $at, $t8              
/* 03728 80A77A38 8C388A20 */  lw      $t8, %lo(jtbl_80A78A20)($at)  
/* 0372C 80A77A3C 03000008 */  jr      $t8                        
/* 03730 80A77A40 00000000 */  nop
glabel L80A77A44
/* 03734 80A77A44 0C29DC52 */  jal     func_80A77148              
/* 03738 80A77A48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0373C 80A77A4C 10000021 */  beq     $zero, $zero, .L80A77AD4   
/* 03740 80A77A50 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80A77A54
/* 03744 80A77A54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03748 80A77A58 0C29DC56 */  jal     func_80A77158              
/* 0374C 80A77A5C 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 03750 80A77A60 1000001C */  beq     $zero, $zero, .L80A77AD4   
/* 03754 80A77A64 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80A77A68
/* 03758 80A77A68 0C29DC79 */  jal     func_80A771E4              
/* 0375C 80A77A6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03760 80A77A70 10000018 */  beq     $zero, $zero, .L80A77AD4   
/* 03764 80A77A74 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80A77A78
/* 03768 80A77A78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0376C 80A77A7C 0C29E058 */  jal     func_80A78160              
/* 03770 80A77A80 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 03774 80A77A84 10000013 */  beq     $zero, $zero, .L80A77AD4   
/* 03778 80A77A88 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80A77A8C
/* 0377C 80A77A8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03780 80A77A90 0C29DCD7 */  jal     func_80A7735C              
/* 03784 80A77A94 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 03788 80A77A98 1000000E */  beq     $zero, $zero, .L80A77AD4   
/* 0378C 80A77A9C 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80A77AA0
/* 03790 80A77AA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03794 80A77AA4 0C29DD0D */  jal     func_80A77434              
/* 03798 80A77AA8 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 0379C 80A77AAC 10000009 */  beq     $zero, $zero, .L80A77AD4   
/* 037A0 80A77AB0 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80A77AB4
/* 037A4 80A77AB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 037A8 80A77AB8 0C29DD1D */  jal     func_80A77474              
/* 037AC 80A77ABC 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 037B0 80A77AC0 10000004 */  beq     $zero, $zero, .L80A77AD4   
/* 037B4 80A77AC4 8FB90020 */  lw      $t9, 0x0020($sp)           
.L80A77AC8:
/* 037B8 80A77AC8 0C00084C */  jal     osSyncPrintf
              
/* 037BC 80A77ACC 24848800 */  addiu   $a0, $a0, %lo(D_80A78800)  ## $a0 = FFFF8800
/* 037C0 80A77AD0 8FB90020 */  lw      $t9, 0x0020($sp)           
.L80A77AD4:
/* 037C4 80A77AD4 AE1904D0 */  sw      $t9, 0x04D0($s0)           ## 000004D0
.L80A77AD8:
/* 037C8 80A77AD8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A77ADC:
/* 037CC 80A77ADC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 037D0 80A77AE0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 037D4 80A77AE4 03E00008 */  jr      $ra                        
/* 037D8 80A77AE8 00000000 */  nop


