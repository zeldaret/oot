glabel func_809FB108
/* 00138 809FB108 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0013C 809FB10C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00140 809FB110 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00144 809FB114 848301F2 */  lh      $v1, 0x01F2($a0)           ## 000001F2
/* 00148 809FB118 848201F0 */  lh      $v0, 0x01F0($a0)           ## 000001F0
/* 0014C 809FB11C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00150 809FB120 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00154 809FB124 50430029 */  beql    $v0, $v1, .L809FB1CC       
/* 00158 809FB128 2C610006 */  sltiu   $at, $v1, 0x0006           
/* 0015C 809FB12C 14410003 */  bne     $v0, $at, .L809FB13C       
/* 00160 809FB130 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 00164 809FB134 A48E01F0 */  sh      $t6, 0x01F0($a0)           ## 000001F0
/* 00168 809FB138 848201F0 */  lh      $v0, 0x01F0($a0)           ## 000001F0
.L809FB13C:
/* 0016C 809FB13C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00170 809FB140 14410003 */  bne     $v0, $at, .L809FB150       
/* 00174 809FB144 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 00178 809FB148 A60F01F0 */  sh      $t7, 0x01F0($s0)           ## 000001F0
/* 0017C 809FB14C 860201F0 */  lh      $v0, 0x01F0($s0)           ## 000001F0
.L809FB150:
/* 00180 809FB150 3058FFFF */  andi    $t8, $v0, 0xFFFF           ## $t8 = 00000000
/* 00184 809FB154 2F010006 */  sltiu   $at, $t8, 0x0006           
/* 00188 809FB158 10200015 */  beq     $at, $zero, .L809FB1B0     
/* 0018C 809FB15C A60201F2 */  sh      $v0, 0x01F2($s0)           ## 000001F2
/* 00190 809FB160 0018C080 */  sll     $t8, $t8,  2               
/* 00194 809FB164 3C0180A0 */  lui     $at, %hi(jtbl_809FC050)       ## $at = 80A00000
/* 00198 809FB168 00380821 */  addu    $at, $at, $t8              
/* 0019C 809FB16C 8C38C050 */  lw      $t8, %lo(jtbl_809FC050)($at)  
/* 001A0 809FB170 03000008 */  jr      $t8                        
/* 001A4 809FB174 00000000 */  nop
glabel L809FB178
/* 001A8 809FB178 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 001AC 809FB17C 1000000C */  beq     $zero, $zero, .L809FB1B0   
/* 001B0 809FB180 AFB90024 */  sw      $t9, 0x0024($sp)           
glabel L809FB184
/* 001B4 809FB184 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 001B8 809FB188 10000009 */  beq     $zero, $zero, .L809FB1B0   
/* 001BC 809FB18C AFA80024 */  sw      $t0, 0x0024($sp)           
glabel L809FB190
/* 001C0 809FB190 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 001C4 809FB194 10000006 */  beq     $zero, $zero, .L809FB1B0   
/* 001C8 809FB198 AFA90024 */  sw      $t1, 0x0024($sp)           
glabel L809FB19C
/* 001CC 809FB19C 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 001D0 809FB1A0 10000003 */  beq     $zero, $zero, .L809FB1B0   
/* 001D4 809FB1A4 AFAA0024 */  sw      $t2, 0x0024($sp)           
glabel L809FB1A8
/* 001D8 809FB1A8 240B0006 */  addiu   $t3, $zero, 0x0006         ## $t3 = 00000006
/* 001DC 809FB1AC AFAB0024 */  sw      $t3, 0x0024($sp)           
glabel L809FB1B0
.L809FB1B0:
/* 001E0 809FB1B0 3C0580A0 */  lui     $a1, %hi(D_809FBF48)       ## $a1 = 80A00000
/* 001E4 809FB1B4 24A5BF48 */  addiu   $a1, $a1, %lo(D_809FBF48)  ## $a1 = 809FBF48
/* 001E8 809FB1B8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 001EC 809FB1BC 0C00D3B0 */  jal     func_80034EC0              
/* 001F0 809FB1C0 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 001F4 809FB1C4 860301F2 */  lh      $v1, 0x01F2($s0)           ## 000001F2
/* 001F8 809FB1C8 2C610006 */  sltiu   $at, $v1, 0x0006           
.L809FB1CC:
/* 001FC 809FB1CC 1020002E */  beq     $at, $zero, .L809FB288     
/* 00200 809FB1D0 00036080 */  sll     $t4, $v1,  2               
/* 00204 809FB1D4 3C0180A0 */  lui     $at, %hi(jtbl_809FC068)       ## $at = 80A00000
/* 00208 809FB1D8 002C0821 */  addu    $at, $at, $t4              
/* 0020C 809FB1DC 8C2CC068 */  lw      $t4, %lo(jtbl_809FC068)($at)  
/* 00210 809FB1E0 01800008 */  jr      $t4                        
/* 00214 809FB1E4 00000000 */  nop
glabel L809FB1E8
/* 00218 809FB1E8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0021C 809FB1EC 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 00220 809FB1F0 0C0295B2 */  jal     func_800A56C8              
/* 00224 809FB1F4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00228 809FB1F8 10400023 */  beq     $v0, $zero, .L809FB288     
/* 0022C 809FB1FC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00230 809FB200 3C0580A0 */  lui     $a1, %hi(D_809FBF48)       ## $a1 = 80A00000
/* 00234 809FB204 24A5BF48 */  addiu   $a1, $a1, %lo(D_809FBF48)  ## $a1 = 809FBF48
/* 00238 809FB208 0C00D3B0 */  jal     func_80034EC0              
/* 0023C 809FB20C 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00240 809FB210 240D0004 */  addiu   $t5, $zero, 0x0004         ## $t5 = 00000004
/* 00244 809FB214 A60D01F0 */  sh      $t5, 0x01F0($s0)           ## 000001F0
/* 00248 809FB218 860E01F0 */  lh      $t6, 0x01F0($s0)           ## 000001F0
/* 0024C 809FB21C 1000001A */  beq     $zero, $zero, .L809FB288   
/* 00250 809FB220 A60E01F2 */  sh      $t6, 0x01F2($s0)           ## 000001F2
glabel L809FB224
/* 00254 809FB224 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00258 809FB228 8E05015C */  lw      $a1, 0x015C($s0)           ## 0000015C
/* 0025C 809FB22C 0C0295B2 */  jal     func_800A56C8              
/* 00260 809FB230 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00264 809FB234 10400014 */  beq     $v0, $zero, .L809FB288     
/* 00268 809FB238 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0026C 809FB23C 3C0580A0 */  lui     $a1, %hi(D_809FBF48)       ## $a1 = 80A00000
/* 00270 809FB240 24A5BF48 */  addiu   $a1, $a1, %lo(D_809FBF48)  ## $a1 = 809FBF48
/* 00274 809FB244 0C00D3B0 */  jal     func_80034EC0              
/* 00278 809FB248 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 0027C 809FB24C 240F0006 */  addiu   $t7, $zero, 0x0006         ## $t7 = 00000006
/* 00280 809FB250 A60F01F0 */  sh      $t7, 0x01F0($s0)           ## 000001F0
/* 00284 809FB254 861801F0 */  lh      $t8, 0x01F0($s0)           ## 000001F0
/* 00288 809FB258 1000000B */  beq     $zero, $zero, .L809FB288   
/* 0028C 809FB25C A61801F2 */  sh      $t8, 0x01F2($s0)           ## 000001F2
glabel L809FB260
/* 00290 809FB260 0C27EBF4 */  jal     func_809FAFD0              
/* 00294 809FB264 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00298 809FB268 10000008 */  beq     $zero, $zero, .L809FB28C   
/* 0029C 809FB26C 8FBF001C */  lw      $ra, 0x001C($sp)           
glabel L809FB270
/* 002A0 809FB270 0C27EC0E */  jal     func_809FB038              
/* 002A4 809FB274 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002A8 809FB278 10000004 */  beq     $zero, $zero, .L809FB28C   
/* 002AC 809FB27C 8FBF001C */  lw      $ra, 0x001C($sp)           
glabel L809FB280
/* 002B0 809FB280 0C27EC28 */  jal     func_809FB0A0              
/* 002B4 809FB284 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
glabel L809FB288
.L809FB288:
/* 002B8 809FB288 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809FB28C:
/* 002BC 809FB28C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 002C0 809FB290 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 002C4 809FB294 03E00008 */  jr      $ra                        
/* 002C8 809FB298 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000


