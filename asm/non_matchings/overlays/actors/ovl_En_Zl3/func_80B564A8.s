.rdata
glabel D_80B5A764
    .asciz "En_Zl3_inFinal2_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

.late_rodata
glabel jtbl_80B5AB48
.word L80B56544
.word L80B56554
.word L80B56564
.word L80B56574
.word L80B56584
.word L80B56594
.word L80B565A4
.word L80B565B4
.word L80B565C4
.word L80B565D4
.word L80B565E4
.word L80B565F4
.word L80B56604
.word L80B56614
.word L80B56624

.text
glabel func_80B564A8
/* 030F8 80B564A8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 030FC 80B564AC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03100 80B564B0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03104 80B564B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03108 80B564B8 0C2D4E5B */  jal     func_80B5396C              
/* 0310C 80B564BC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 03110 80B564C0 3C0380B6 */  lui     $v1, %hi(D_80B5A494)       ## $v1 = 80B60000
/* 03114 80B564C4 8C63A494 */  lw      $v1, %lo(D_80B5A494)($v1)  
/* 03118 80B564C8 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 0311C 80B564CC 3C0180B6 */  lui     $at, %hi(D_80B5A494)       ## $at = 80B60000
/* 03120 80B564D0 18600004 */  blez    $v1, .L80B564E4            
/* 03124 80B564D4 00000000 */  nop
/* 03128 80B564D8 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = 80B5FFFF
/* 0312C 80B564DC 1000000A */  beq     $zero, $zero, .L80B56508   
/* 03130 80B564E0 AC23A494 */  sw      $v1, %lo(D_80B5A494)($at)  
.L80B564E4:
/* 03134 80B564E4 14600008 */  bne     $v1, $zero, .L80B56508     
/* 03138 80B564E8 3C0180B6 */  lui     $at, %hi(D_80B5A494)       ## $at = 80B60000
/* 0313C 80B564EC 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = 80B5FFFE
/* 03140 80B564F0 AC23A494 */  sw      $v1, %lo(D_80B5A494)($at)  
/* 03144 80B564F4 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 03148 80B564F8 54410004 */  bnel    $v0, $at, .L80B5650C       
/* 0314C 80B564FC 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 03150 80B56500 0C2D5813 */  jal     func_80B5604C              
/* 03154 80B56504 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B56508:
/* 03158 80B56508 8FAE0024 */  lw      $t6, 0x0024($sp)           
.L80B5650C:
/* 0315C 80B5650C 05C2004E */  bltzl   $t6, .L80B56648            
/* 03160 80B56510 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03164 80B56514 8E0202F0 */  lw      $v0, 0x02F0($s0)           ## 000002F0
/* 03168 80B56518 2DC1000F */  sltiu   $at, $t6, 0x000F           
/* 0316C 80B5651C 51C2004A */  beql    $t6, $v0, .L80B56648       
/* 03170 80B56520 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03174 80B56524 10200043 */  beq     $at, $zero, .L80B56634     
/* 03178 80B56528 3C0480B6 */  lui     $a0, %hi(D_80B5A764)       ## $a0 = 80B60000
/* 0317C 80B5652C 000E7880 */  sll     $t7, $t6,  2               
/* 03180 80B56530 3C0180B6 */  lui     $at, %hi(jtbl_80B5AB48)       ## $at = 80B60000
/* 03184 80B56534 002F0821 */  addu    $at, $at, $t7              
/* 03188 80B56538 8C2FAB48 */  lw      $t7, %lo(jtbl_80B5AB48)($at)  
/* 0318C 80B5653C 01E00008 */  jr      $t7                        
/* 03190 80B56540 00000000 */  nop
glabel L80B56544
/* 03194 80B56544 0C2D56A1 */  jal     func_80B55A84              
/* 03198 80B56548 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0319C 80B5654C 1000003C */  beq     $zero, $zero, .L80B56640   
/* 031A0 80B56550 8FB80024 */  lw      $t8, 0x0024($sp)           
glabel L80B56554
/* 031A4 80B56554 0C2D56B1 */  jal     func_80B55AC4              
/* 031A8 80B56558 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031AC 80B5655C 10000038 */  beq     $zero, $zero, .L80B56640   
/* 031B0 80B56560 8FB80024 */  lw      $t8, 0x0024($sp)           
glabel L80B56564
/* 031B4 80B56564 0C2D56CE */  jal     func_80B55B38              
/* 031B8 80B56568 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031BC 80B5656C 10000034 */  beq     $zero, $zero, .L80B56640   
/* 031C0 80B56570 8FB80024 */  lw      $t8, 0x0024($sp)           
glabel L80B56574
/* 031C4 80B56574 0C2D56EB */  jal     func_80B55BAC              
/* 031C8 80B56578 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031CC 80B5657C 10000030 */  beq     $zero, $zero, .L80B56640   
/* 031D0 80B56580 8FB80024 */  lw      $t8, 0x0024($sp)           
glabel L80B56584
/* 031D4 80B56584 0C2D571C */  jal     func_80B55C70              
/* 031D8 80B56588 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031DC 80B5658C 1000002C */  beq     $zero, $zero, .L80B56640   
/* 031E0 80B56590 8FB80024 */  lw      $t8, 0x0024($sp)           
glabel L80B56594
/* 031E4 80B56594 0C2D5782 */  jal     func_80B55E08              
/* 031E8 80B56598 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031EC 80B5659C 10000028 */  beq     $zero, $zero, .L80B56640   
/* 031F0 80B565A0 8FB80024 */  lw      $t8, 0x0024($sp)           
glabel L80B565A4
/* 031F4 80B565A4 0C2D579F */  jal     func_80B55E7C              
/* 031F8 80B565A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031FC 80B565AC 10000024 */  beq     $zero, $zero, .L80B56640   
/* 03200 80B565B0 8FB80024 */  lw      $t8, 0x0024($sp)           
glabel L80B565B4
/* 03204 80B565B4 0C2D57BC */  jal     func_80B55EF0              
/* 03208 80B565B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0320C 80B565BC 10000020 */  beq     $zero, $zero, .L80B56640   
/* 03210 80B565C0 8FB80024 */  lw      $t8, 0x0024($sp)           
glabel L80B565C4
/* 03214 80B565C4 2403000A */  addiu   $v1, $zero, 0x000A         ## $v1 = 0000000A
/* 03218 80B565C8 3C0180B6 */  lui     $at, %hi(D_80B5A494)       ## $at = 80B60000
/* 0321C 80B565CC 1000001B */  beq     $zero, $zero, .L80B5663C   
/* 03220 80B565D0 AC23A494 */  sw      $v1, %lo(D_80B5A494)($at)  
glabel L80B565D4
/* 03224 80B565D4 0C2D5858 */  jal     func_80B56160              
/* 03228 80B565D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0322C 80B565DC 10000018 */  beq     $zero, $zero, .L80B56640   
/* 03230 80B565E0 8FB80024 */  lw      $t8, 0x0024($sp)           
glabel L80B565E4
/* 03234 80B565E4 0C2D5868 */  jal     func_80B561A0              
/* 03238 80B565E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0323C 80B565EC 10000014 */  beq     $zero, $zero, .L80B56640   
/* 03240 80B565F0 8FB80024 */  lw      $t8, 0x0024($sp)           
glabel L80B565F4
/* 03244 80B565F4 0C2D58D3 */  jal     func_80B5634C              
/* 03248 80B565F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0324C 80B565FC 10000010 */  beq     $zero, $zero, .L80B56640   
/* 03250 80B56600 8FB80024 */  lw      $t8, 0x0024($sp)           
glabel L80B56604
/* 03254 80B56604 0C2D58F0 */  jal     func_80B563C0              
/* 03258 80B56608 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0325C 80B5660C 1000000C */  beq     $zero, $zero, .L80B56640   
/* 03260 80B56610 8FB80024 */  lw      $t8, 0x0024($sp)           
glabel L80B56614
/* 03264 80B56614 0C2D590D */  jal     func_80B56434              
/* 03268 80B56618 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0326C 80B5661C 10000008 */  beq     $zero, $zero, .L80B56640   
/* 03270 80B56620 8FB80024 */  lw      $t8, 0x0024($sp)           
glabel L80B56624
/* 03274 80B56624 0C00B55C */  jal     Actor_Kill
              
/* 03278 80B56628 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0327C 80B5662C 10000004 */  beq     $zero, $zero, .L80B56640   
/* 03280 80B56630 8FB80024 */  lw      $t8, 0x0024($sp)           
.L80B56634:
/* 03284 80B56634 0C00084C */  jal     osSyncPrintf
              
/* 03288 80B56638 2484A764 */  addiu   $a0, $a0, %lo(D_80B5A764)  ## $a0 = FFFFA764
.L80B5663C:
/* 0328C 80B5663C 8FB80024 */  lw      $t8, 0x0024($sp)           
.L80B56640:
/* 03290 80B56640 AE1802F0 */  sw      $t8, 0x02F0($s0)           ## 000002F0
/* 03294 80B56644 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B56648:
/* 03298 80B56648 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0329C 80B5664C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 032A0 80B56650 03E00008 */  jr      $ra                        
/* 032A4 80B56654 00000000 */  nop
