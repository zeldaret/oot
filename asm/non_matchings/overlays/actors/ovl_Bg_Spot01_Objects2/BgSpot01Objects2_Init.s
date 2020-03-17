glabel BgSpot01Objects2_Init
/* 00000 808AC140 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00004 808AC144 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00008 808AC148 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0000C 808AC14C 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00010 808AC150 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00014 808AC154 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 00018 808AC158 31CF0007 */  andi    $t7, $t6, 0x0007           ## $t7 = 00000000
/* 0001C 808AC15C 2DE10005 */  sltiu   $at, $t7, 0x0005           
/* 00020 808AC160 1020000E */  beq     $at, $zero, .L808AC19C     
/* 00024 808AC164 000F7880 */  sll     $t7, $t7,  2               
/* 00028 808AC168 3C01808B */  lui     $at, %hi(jtbl_808AC58C)       ## $at = 808B0000
/* 0002C 808AC16C 002F0821 */  addu    $at, $at, $t7              
/* 00030 808AC170 8C2FC58C */  lw      $t7, %lo(jtbl_808AC58C)($at)  
/* 00034 808AC174 01E00008 */  jr      $t7                        
/* 00038 808AC178 00000000 */  nop
glabel L808AC17C
/* 0003C 808AC17C 24180180 */  addiu   $t8, $zero, 0x0180         ## $t8 = 00000180
/* 00040 808AC180 10000006 */  beq     $zero, $zero, .L808AC19C   
/* 00044 808AC184 AE180178 */  sw      $t8, 0x0178($s0)           ## 00000178
glabel L808AC188
/* 00048 808AC188 24190181 */  addiu   $t9, $zero, 0x0181         ## $t9 = 00000181
/* 0004C 808AC18C 10000003 */  beq     $zero, $zero, .L808AC19C   
/* 00050 808AC190 AE190178 */  sw      $t9, 0x0178($s0)           ## 00000178
glabel L808AC194
/* 00054 808AC194 24080180 */  addiu   $t0, $zero, 0x0180         ## $t0 = 00000180
/* 00058 808AC198 AE080178 */  sw      $t0, 0x0178($s0)           ## 00000178
.L808AC19C:
/* 0005C 808AC19C 8E020178 */  lw      $v0, 0x0178($s0)           ## 00000178
/* 00060 808AC1A0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00064 808AC1A4 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00068 808AC1A8 0440000F */  bltz    $v0, .L808AC1E8            
/* 0006C 808AC1AC 00C12021 */  addu    $a0, $a2, $at              
/* 00070 808AC1B0 00022C00 */  sll     $a1, $v0, 16               
/* 00074 808AC1B4 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00078 808AC1B8 00052C03 */  sra     $a1, $a1, 16               
/* 0007C 808AC1BC A202017C */  sb      $v0, 0x017C($s0)           ## 0000017C
/* 00080 808AC1C0 8209017C */  lb      $t1, 0x017C($s0)           ## 0000017C
/* 00084 808AC1C4 3C04808B */  lui     $a0, %hi(D_808AC530)       ## $a0 = 808B0000
/* 00088 808AC1C8 05210009 */  bgez    $t1, .L808AC1F0            
/* 0008C 808AC1CC 00000000 */  nop
/* 00090 808AC1D0 0C00084C */  jal     osSyncPrintf
              
/* 00094 808AC1D4 2484C530 */  addiu   $a0, $a0, %lo(D_808AC530)  ## $a0 = 808AC530
/* 00098 808AC1D8 0C00B55C */  jal     Actor_Kill
              
/* 0009C 808AC1DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000A0 808AC1E0 1000000B */  beq     $zero, $zero, .L808AC210   
/* 000A4 808AC1E4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808AC1E8:
/* 000A8 808AC1E8 0C00B55C */  jal     Actor_Kill
              
/* 000AC 808AC1EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L808AC1F0:
/* 000B0 808AC1F0 3C0A808B */  lui     $t2, %hi(func_808AC2BC)    ## $t2 = 808B0000
/* 000B4 808AC1F4 254AC2BC */  addiu   $t2, $t2, %lo(func_808AC2BC) ## $t2 = 808AC2BC
/* 000B8 808AC1F8 3C05808B */  lui     $a1, %hi(D_808AC500)       ## $a1 = 808B0000
/* 000BC 808AC1FC AE0A0164 */  sw      $t2, 0x0164($s0)           ## 00000164
/* 000C0 808AC200 24A5C500 */  addiu   $a1, $a1, %lo(D_808AC500)  ## $a1 = 808AC500
/* 000C4 808AC204 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 000C8 808AC208 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000CC 808AC20C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808AC210:
/* 000D0 808AC210 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 000D4 808AC214 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 000D8 808AC218 03E00008 */  jr      $ra                        
/* 000DC 808AC21C 00000000 */  nop


