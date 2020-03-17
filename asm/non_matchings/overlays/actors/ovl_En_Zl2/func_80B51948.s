glabel func_80B51948
/* 02FB8 80B51948 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02FBC 80B5194C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02FC0 80B51950 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02FC4 80B51954 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02FC8 80B51958 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 02FCC 80B5195C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 02FD0 80B51960 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02FD4 80B51964 0C2D3B65 */  jal     func_80B4ED94              
/* 02FD8 80B51968 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 02FDC 80B5196C 10400036 */  beq     $v0, $zero, .L80B51A48     
/* 02FE0 80B51970 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 02FE4 80B51974 944E0000 */  lhu     $t6, 0x0000($v0)           ## 00000000
/* 02FE8 80B51978 AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 02FEC 80B5197C 8E030240 */  lw      $v1, 0x0240($s0)           ## 00000240
/* 02FF0 80B51980 25D8FFFF */  addiu   $t8, $t6, 0xFFFF           ## $t8 = FFFFFFFF
/* 02FF4 80B51984 2F010015 */  sltiu   $at, $t8, 0x0015           
/* 02FF8 80B51988 51C30030 */  beql    $t6, $v1, .L80B51A4C       
/* 02FFC 80B5198C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03000 80B51990 10200028 */  beq     $at, $zero, .L80B51A34     
/* 03004 80B51994 0018C080 */  sll     $t8, $t8,  2               
/* 03008 80B51998 3C0180B5 */  lui     $at, %hi(jtbl_80B52C18)       ## $at = 80B50000
/* 0300C 80B5199C 00380821 */  addu    $at, $at, $t8              
/* 03010 80B519A0 8C382C18 */  lw      $t8, %lo(jtbl_80B52C18)($at)  
/* 03014 80B519A4 03000008 */  jr      $t8                        
/* 03018 80B519A8 00000000 */  nop
glabel L80B519AC
/* 0301C 80B519AC 0C2D4571 */  jal     func_80B515C4              
/* 03020 80B519B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03024 80B519B4 10000023 */  beq     $zero, $zero, .L80B51A44   
/* 03028 80B519B8 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B519BC
/* 0302C 80B519BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03030 80B519C0 0C2D4576 */  jal     func_80B515D8              
/* 03034 80B519C4 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 03038 80B519C8 1000001E */  beq     $zero, $zero, .L80B51A44   
/* 0303C 80B519CC 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B519D0
/* 03040 80B519D0 0C2D459E */  jal     func_80B51678              
/* 03044 80B519D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03048 80B519D8 1000001A */  beq     $zero, $zero, .L80B51A44   
/* 0304C 80B519DC 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B519E0
/* 03050 80B519E0 0C2D45C1 */  jal     func_80B51704              
/* 03054 80B519E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03058 80B519E8 10000016 */  beq     $zero, $zero, .L80B51A44   
/* 0305C 80B519EC 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B519F0
/* 03060 80B519F0 0C2D45E4 */  jal     func_80B51790              
/* 03064 80B519F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03068 80B519F8 10000012 */  beq     $zero, $zero, .L80B51A44   
/* 0306C 80B519FC 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B51A00
/* 03070 80B51A00 0C2D4609 */  jal     func_80B51824              
/* 03074 80B51A04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03078 80B51A08 1000000E */  beq     $zero, $zero, .L80B51A44   
/* 0307C 80B51A0C 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B51A10
/* 03080 80B51A10 0C2D4630 */  jal     func_80B518C0              
/* 03084 80B51A14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03088 80B51A18 1000000A */  beq     $zero, $zero, .L80B51A44   
/* 0308C 80B51A1C 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B51A20
/* 03090 80B51A20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03094 80B51A24 0C2D44EA */  jal     func_80B513A8              
/* 03098 80B51A28 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 0309C 80B51A2C 10000005 */  beq     $zero, $zero, .L80B51A44   
/* 030A0 80B51A30 8FB90020 */  lw      $t9, 0x0020($sp)           
glabel L80B51A34
.L80B51A34:
/* 030A4 80B51A34 3C0480B5 */  lui     $a0, %hi(D_80B529B8)       ## $a0 = 80B50000
/* 030A8 80B51A38 0C00084C */  jal     osSyncPrintf
              
/* 030AC 80B51A3C 248429B8 */  addiu   $a0, $a0, %lo(D_80B529B8)  ## $a0 = 80B529B8
/* 030B0 80B51A40 8FB90020 */  lw      $t9, 0x0020($sp)           
.L80B51A44:
/* 030B4 80B51A44 AE190240 */  sw      $t9, 0x0240($s0)           ## 00000240
.L80B51A48:
/* 030B8 80B51A48 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B51A4C:
/* 030BC 80B51A4C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 030C0 80B51A50 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 030C4 80B51A54 03E00008 */  jr      $ra                        
/* 030C8 80B51A58 00000000 */  nop


