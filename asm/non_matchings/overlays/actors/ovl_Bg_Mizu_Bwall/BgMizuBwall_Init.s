.rdata
glabel D_8089D870
    .asciz "Error : コリジョンデータセット失敗(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_8089D8AC
    .asciz "../z_bg_mizu_bwall.c"
    .balign 4

glabel D_8089D8C4
    .asciz "Error : コリジョンデータセット失敗(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_8089D900
    .asciz "../z_bg_mizu_bwall.c"
    .balign 4

glabel D_8089D918
    .asciz "Error : コリジョンデータセット失敗(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_8089D954
    .asciz "../z_bg_mizu_bwall.c"
    .balign 4

glabel D_8089D96C
    .asciz "Error : コリジョンデータセット失敗(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_8089D9A8
    .asciz "../z_bg_mizu_bwall.c"
    .balign 4

glabel D_8089D9C0
    .asciz "Error : コリジョンデータセット失敗(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_8089D9FC
    .asciz "../z_bg_mizu_bwall.c"
    .balign 4

.late_rodata
glabel jtbl_8089DA5C
.word L8089C5B0
.word L8089C740
.word L8089C8D4
.word L8089CA5C
.word L8089CBF0

.text
glabel BgMizuBwall_Init
/* 0004C 8089C4CC 27BDFE40 */  addiu   $sp, $sp, 0xFE40           ## $sp = FFFFFE40
/* 00050 8089C4D0 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00054 8089C4D4 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00058 8089C4D8 AFBF005C */  sw      $ra, 0x005C($sp)           
/* 0005C 8089C4DC AFB20040 */  sw      $s2, 0x0040($sp)           
/* 00060 8089C4E0 3C05808A */  lui     $a1, %hi(D_8089D854)       ## $a1 = 808A0000
/* 00064 8089C4E4 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00068 8089C4E8 AFBE0058 */  sw      $s8, 0x0058($sp)           
/* 0006C 8089C4EC AFB70054 */  sw      $s7, 0x0054($sp)           
/* 00070 8089C4F0 AFB60050 */  sw      $s6, 0x0050($sp)           
/* 00074 8089C4F4 AFB5004C */  sw      $s5, 0x004C($sp)           
/* 00078 8089C4F8 AFB40048 */  sw      $s4, 0x0048($sp)           
/* 0007C 8089C4FC AFB30044 */  sw      $s3, 0x0044($sp)           
/* 00080 8089C500 AFB1003C */  sw      $s1, 0x003C($sp)           
/* 00084 8089C504 F7B80030 */  sdc1    $f24, 0x0030($sp)          
/* 00088 8089C508 F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 0008C 8089C50C F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 00090 8089C510 AFA001B4 */  sw      $zero, 0x01B4($sp)         
/* 00094 8089C514 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00098 8089C518 24A5D854 */  addiu   $a1, $a1, %lo(D_8089D854)  ## $a1 = 8089D854
/* 0009C 8089C51C 964E001C */  lhu     $t6, 0x001C($s2)           ## 0000001C
/* 000A0 8089C520 C6440028 */  lwc1    $f4, 0x0028($s2)           ## 00000028
/* 000A4 8089C524 3C19808A */  lui     $t9, %hi(D_8089D82C)       ## $t9 = 808A0000
/* 000A8 8089C528 31CF000F */  andi    $t7, $t6, 0x000F           ## $t7 = 00000000
/* 000AC 8089C52C 000FC080 */  sll     $t8, $t7,  2               
/* 000B0 8089C530 0338C821 */  addu    $t9, $t9, $t8              
/* 000B4 8089C534 E644029C */  swc1    $f4, 0x029C($s2)           ## 0000029C
/* 000B8 8089C538 8F39D82C */  lw      $t9, %lo(D_8089D82C)($t9)  
/* 000BC 8089C53C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 000C0 8089C540 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 000C4 8089C544 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 000C8 8089C548 AE5902B8 */  sw      $t9, 0x02B8($s2)           ## 000002B8
/* 000CC 8089C54C 9648001C */  lhu     $t0, 0x001C($s2)           ## 0000001C
/* 000D0 8089C550 3C04808A */  lui     $a0, %hi(D_8089D840)       ## $a0 = 808A0000
/* 000D4 8089C554 27A501B4 */  addiu   $a1, $sp, 0x01B4           ## $a1 = FFFFFFF4
/* 000D8 8089C558 3109000F */  andi    $t1, $t0, 0x000F           ## $t1 = 00000000
/* 000DC 8089C55C 00095080 */  sll     $t2, $t1,  2               
/* 000E0 8089C560 008A2021 */  addu    $a0, $a0, $t2              
/* 000E4 8089C564 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 000E8 8089C568 8C84D840 */  lw      $a0, %lo(D_8089D840)($a0)  
/* 000EC 8089C56C 26110810 */  addiu   $s1, $s0, 0x0810           ## $s1 = 00000810
/* 000F0 8089C570 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000810
/* 000F4 8089C574 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000F8 8089C578 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000000
/* 000FC 8089C57C 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00100 8089C580 8FA701B4 */  lw      $a3, 0x01B4($sp)           
/* 00104 8089C584 9643001C */  lhu     $v1, 0x001C($s2)           ## 0000001C
/* 00108 8089C588 AE42014C */  sw      $v0, 0x014C($s2)           ## 0000014C
/* 0010C 8089C58C 306B000F */  andi    $t3, $v1, 0x000F           ## $t3 = 00000000
/* 00110 8089C590 2D610005 */  sltiu   $at, $t3, 0x0005           
/* 00114 8089C594 102001FA */  beq     $at, $zero, .L8089CD80     
/* 00118 8089C598 000B5880 */  sll     $t3, $t3,  2               
/* 0011C 8089C59C 3C01808A */  lui     $at, %hi(jtbl_8089DA5C)       ## $at = 808A0000
/* 00120 8089C5A0 002B0821 */  addu    $at, $at, $t3              
/* 00124 8089C5A4 8C2BDA5C */  lw      $t3, %lo(jtbl_8089DA5C)($at)  
/* 00128 8089C5A8 01600008 */  jr      $t3                        
/* 0012C 8089C5AC 00000000 */  nop
glabel L8089C5B0
/* 00130 8089C5B0 00032A03 */  sra     $a1, $v1,  8               
/* 00134 8089C5B4 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00138 8089C5B8 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 0013C 8089C5BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00140 8089C5C0 1040000A */  beq     $v0, $zero, .L8089C5EC     
/* 00144 8089C5C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00148 8089C5C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0014C 8089C5CC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000810
/* 00150 8089C5D0 0C00FAFE */  jal     func_8003EBF8              
/* 00154 8089C5D4 8E46014C */  lw      $a2, 0x014C($s2)           ## 0000014C
/* 00158 8089C5D8 3C0C808A */  lui     $t4, %hi(func_8089D37C)    ## $t4 = 808A0000
/* 0015C 8089C5DC 258CD37C */  addiu   $t4, $t4, %lo(func_8089D37C) ## $t4 = 8089D37C
/* 00160 8089C5E0 AE4002B8 */  sw      $zero, 0x02B8($s2)         ## 000002B8
/* 00164 8089C5E4 100001E6 */  beq     $zero, $zero, .L8089CD80   
/* 00168 8089C5E8 AE4C0298 */  sw      $t4, 0x0298($s2)           ## 00000298
.L8089C5EC:
/* 0016C 8089C5EC 265E0164 */  addiu   $s8, $s2, 0x0164           ## $s8 = 00000164
/* 00170 8089C5F0 0C0171F8 */  jal     Collider_InitTris              
/* 00174 8089C5F4 03C02825 */  or      $a1, $s8, $zero            ## $a1 = 00000164
/* 00178 8089C5F8 3C13808A */  lui     $s3, %hi(D_8089D738)       ## $s3 = 808A0000
/* 0017C 8089C5FC 2673D738 */  addiu   $s3, $s3, %lo(D_8089D738)  ## $s3 = 8089D738
/* 00180 8089C600 264D0184 */  addiu   $t5, $s2, 0x0184           ## $t5 = 00000184
/* 00184 8089C604 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00188 8089C608 02603825 */  or      $a3, $s3, $zero            ## $a3 = 8089D738
/* 0018C 8089C60C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00190 8089C610 03C02825 */  or      $a1, $s8, $zero            ## $a1 = 00000164
/* 00194 8089C614 0C0172EB */  jal     Collider_SetTris              
/* 00198 8089C618 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000000
/* 0019C 8089C61C 1440000B */  bne     $v0, $zero, .L8089C64C     
/* 001A0 8089C620 3C04808A */  lui     $a0, %hi(D_8089D870)       ## $a0 = 808A0000
/* 001A4 8089C624 3C05808A */  lui     $a1, %hi(D_8089D8AC)       ## $a1 = 808A0000
/* 001A8 8089C628 24A5D8AC */  addiu   $a1, $a1, %lo(D_8089D8AC)  ## $a1 = 8089D8AC
/* 001AC 8089C62C 2484D870 */  addiu   $a0, $a0, %lo(D_8089D870)  ## $a0 = 8089D870
/* 001B0 8089C630 240601E4 */  addiu   $a2, $zero, 0x01E4         ## $a2 = 000001E4
/* 001B4 8089C634 0C00084C */  jal     osSyncPrintf
              
/* 001B8 8089C638 8647001C */  lh      $a3, 0x001C($s2)           ## 0000001C
/* 001BC 8089C63C 0C00B55C */  jal     Actor_Kill
              
/* 001C0 8089C640 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 001C4 8089C644 100001CF */  beq     $zero, $zero, .L8089CD84   
/* 001C8 8089C648 8FBF005C */  lw      $ra, 0x005C($sp)           
.L8089C64C:
/* 001CC 8089C64C 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 001D0 8089C650 864400B6 */  lh      $a0, 0x00B6($s2)           ## 000000B6
/* 001D4 8089C654 46000586 */  mov.s   $f22, $f0                  
/* 001D8 8089C658 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 001DC 8089C65C 864400B6 */  lh      $a0, 0x00B6($s2)           ## 000000B6
/* 001E0 8089C660 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 001E4 8089C664 27B50198 */  addiu   $s5, $sp, 0x0198           ## $s5 = FFFFFFD8
/* 001E8 8089C668 4481A000 */  mtc1    $at, $f20                  ## $f20 = 2.00
/* 001EC 8089C66C 46000606 */  mov.s   $f24, $f0                  
/* 001F0 8089C670 02A0B025 */  or      $s6, $s5, $zero            ## $s6 = FFFFFFD8
/* 001F4 8089C674 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 001F8 8089C678 24170002 */  addiu   $s7, $zero, 0x0002         ## $s7 = 00000002
/* 001FC 8089C67C 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
.L8089C680:
/* 00200 8089C680 27B00174 */  addiu   $s0, $sp, 0x0174           ## $s0 = FFFFFFB4
.L8089C684:
/* 00204 8089C684 8E6F000C */  lw      $t7, 0x000C($s3)           ## 8089D744
/* 00208 8089C688 0014C100 */  sll     $t8, $s4,  4               
/* 0020C 8089C68C 0314C023 */  subu    $t8, $t8, $s4              
/* 00210 8089C690 0018C080 */  sll     $t8, $t8,  2               
/* 00214 8089C694 01F8C821 */  addu    $t9, $t7, $t8              
/* 00218 8089C698 03311021 */  addu    $v0, $t9, $s1              
/* 0021C 8089C69C C4460018 */  lwc1    $f6, 0x0018($v0)           ## 00000018
/* 00220 8089C6A0 4406B000 */  mfc1    $a2, $f22                  
/* 00224 8089C6A4 4407C000 */  mfc1    $a3, $f24                  
/* 00228 8089C6A8 E7A60198 */  swc1    $f6, 0x0198($sp)           
/* 0022C 8089C6AC C448001C */  lwc1    $f8, 0x001C($v0)           ## 0000001C
/* 00230 8089C6B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFB4
/* 00234 8089C6B4 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFD8
/* 00238 8089C6B8 E7A8019C */  swc1    $f8, 0x019C($sp)           
/* 0023C 8089C6BC C44A0020 */  lwc1    $f10, 0x0020($v0)          ## 00000020
/* 00240 8089C6C0 46145400 */  add.s   $f16, $f10, $f20           
/* 00244 8089C6C4 0C227120 */  jal     func_8089C480              
/* 00248 8089C6C8 E7B001A0 */  swc1    $f16, 0x01A0($sp)          
/* 0024C 8089C6CC C6120000 */  lwc1    $f18, 0x0000($s0)          ## FFFFFFB4
/* 00250 8089C6D0 C6440024 */  lwc1    $f4, 0x0024($s2)           ## 00000024
/* 00254 8089C6D4 C6080004 */  lwc1    $f8, 0x0004($s0)           ## FFFFFFB8
/* 00258 8089C6D8 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = FFFFFFC0
/* 0025C 8089C6DC 46049180 */  add.s   $f6, $f18, $f4             
/* 00260 8089C6E0 C612FFFC */  lwc1    $f18, -0x0004($s0)         ## FFFFFFBC
/* 00264 8089C6E4 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 0000000C
/* 00268 8089C6E8 E606FFF4 */  swc1    $f6, -0x000C($s0)          ## FFFFFFB4
/* 0026C 8089C6EC C64A0028 */  lwc1    $f10, 0x0028($s2)          ## 00000028
/* 00270 8089C6F0 460A4400 */  add.s   $f16, $f8, $f10            
/* 00274 8089C6F4 E610FFF8 */  swc1    $f16, -0x0008($s0)         ## FFFFFFB8
/* 00278 8089C6F8 C644002C */  lwc1    $f4, 0x002C($s2)           ## 0000002C
/* 0027C 8089C6FC 46049180 */  add.s   $f6, $f18, $f4             
/* 00280 8089C700 1616FFE0 */  bne     $s0, $s6, .L8089C684       
/* 00284 8089C704 E606FFFC */  swc1    $f6, -0x0004($s0)          ## FFFFFFBC
/* 00288 8089C708 27A8018C */  addiu   $t0, $sp, 0x018C           ## $t0 = FFFFFFCC
/* 0028C 8089C70C AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00290 8089C710 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000164
/* 00294 8089C714 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 00298 8089C718 27A60174 */  addiu   $a2, $sp, 0x0174           ## $a2 = FFFFFFB4
/* 0029C 8089C71C 0C0189E8 */  jal     Collider_SetTrisVertices              
/* 002A0 8089C720 27A70180 */  addiu   $a3, $sp, 0x0180           ## $a3 = FFFFFFC0
/* 002A4 8089C724 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000001
/* 002A8 8089C728 5697FFD5 */  bnel    $s4, $s7, .L8089C680       
/* 002AC 8089C72C 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 002B0 8089C730 3C09808A */  lui     $t1, %hi(func_8089D258)    ## $t1 = 808A0000
/* 002B4 8089C734 2529D258 */  addiu   $t1, $t1, %lo(func_8089D258) ## $t1 = 8089D258
/* 002B8 8089C738 10000191 */  beq     $zero, $zero, .L8089CD80   
/* 002BC 8089C73C AE490298 */  sw      $t1, 0x0298($s2)           ## 00000298
glabel L8089C740
/* 002C0 8089C740 00032A03 */  sra     $a1, $v1,  8               
/* 002C4 8089C744 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 002C8 8089C748 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 002CC 8089C74C 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFC0
/* 002D0 8089C750 1040000A */  beq     $v0, $zero, .L8089C77C     
/* 002D4 8089C754 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFC0
/* 002D8 8089C758 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFC0
/* 002DC 8089C75C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 002E0 8089C760 0C00FAFE */  jal     func_8003EBF8              
/* 002E4 8089C764 8E46014C */  lw      $a2, 0x014C($s2)           ## 0000014C
/* 002E8 8089C768 3C0A808A */  lui     $t2, %hi(func_8089D37C)    ## $t2 = 808A0000
/* 002EC 8089C76C 254AD37C */  addiu   $t2, $t2, %lo(func_8089D37C) ## $t2 = 8089D37C
/* 002F0 8089C770 AE4002B8 */  sw      $zero, 0x02B8($s2)         ## 000002B8
/* 002F4 8089C774 10000182 */  beq     $zero, $zero, .L8089CD80   
/* 002F8 8089C778 AE4A0298 */  sw      $t2, 0x0298($s2)           ## 00000298
.L8089C77C:
/* 002FC 8089C77C 265E0164 */  addiu   $s8, $s2, 0x0164           ## $s8 = 00000164
/* 00300 8089C780 0C0171F8 */  jal     Collider_InitTris              
/* 00304 8089C784 03C02825 */  or      $a1, $s8, $zero            ## $a1 = 00000164
/* 00308 8089C788 3C16808A */  lui     $s6, %hi(D_8089D784)       ## $s6 = 808A0000
/* 0030C 8089C78C 26D6D784 */  addiu   $s6, $s6, %lo(D_8089D784)  ## $s6 = 8089D784
/* 00310 8089C790 264B0184 */  addiu   $t3, $s2, 0x0184           ## $t3 = 00000184
/* 00314 8089C794 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 00318 8089C798 02C03825 */  or      $a3, $s6, $zero            ## $a3 = 8089D784
/* 0031C 8089C79C 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFC0
/* 00320 8089C7A0 03C02825 */  or      $a1, $s8, $zero            ## $a1 = 00000164
/* 00324 8089C7A4 0C0172EB */  jal     Collider_SetTris              
/* 00328 8089C7A8 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000000
/* 0032C 8089C7AC 1440000B */  bne     $v0, $zero, .L8089C7DC     
/* 00330 8089C7B0 3C04808A */  lui     $a0, %hi(D_8089D8C4)       ## $a0 = 808A0000
/* 00334 8089C7B4 3C05808A */  lui     $a1, %hi(D_8089D900)       ## $a1 = 808A0000
/* 00338 8089C7B8 24A5D900 */  addiu   $a1, $a1, %lo(D_8089D900)  ## $a1 = 8089D900
/* 0033C 8089C7BC 2484D8C4 */  addiu   $a0, $a0, %lo(D_8089D8C4)  ## $a0 = 8089D8C4
/* 00340 8089C7C0 2406022E */  addiu   $a2, $zero, 0x022E         ## $a2 = 0000022E
/* 00344 8089C7C4 0C00084C */  jal     osSyncPrintf
              
/* 00348 8089C7C8 8647001C */  lh      $a3, 0x001C($s2)           ## 0000001C
/* 0034C 8089C7CC 0C00B55C */  jal     Actor_Kill
              
/* 00350 8089C7D0 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00354 8089C7D4 1000016B */  beq     $zero, $zero, .L8089CD84   
/* 00358 8089C7D8 8FBF005C */  lw      $ra, 0x005C($sp)           
.L8089C7DC:
/* 0035C 8089C7DC 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00360 8089C7E0 864400B6 */  lh      $a0, 0x00B6($s2)           ## 000000B6
/* 00364 8089C7E4 46000586 */  mov.s   $f22, $f0                  
/* 00368 8089C7E8 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 0036C 8089C7EC 864400B6 */  lh      $a0, 0x00B6($s2)           ## 000000B6
/* 00370 8089C7F0 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00374 8089C7F4 27B40158 */  addiu   $s4, $sp, 0x0158           ## $s4 = FFFFFF98
/* 00378 8089C7F8 4481A000 */  mtc1    $at, $f20                  ## $f20 = 2.00
/* 0037C 8089C7FC 46000606 */  mov.s   $f24, $f0                  
/* 00380 8089C800 0280A825 */  or      $s5, $s4, $zero            ## $s5 = FFFFFF98
/* 00384 8089C804 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 00388 8089C808 27B70134 */  addiu   $s7, $sp, 0x0134           ## $s7 = FFFFFF74
/* 0038C 8089C80C 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
.L8089C810:
/* 00390 8089C810 27B00134 */  addiu   $s0, $sp, 0x0134           ## $s0 = FFFFFF74
.L8089C814:
/* 00394 8089C814 8ECD000C */  lw      $t5, 0x000C($s6)           ## 8089D790
/* 00398 8089C818 00137100 */  sll     $t6, $s3,  4               
/* 0039C 8089C81C 01D37023 */  subu    $t6, $t6, $s3              
/* 003A0 8089C820 000E7080 */  sll     $t6, $t6,  2               
/* 003A4 8089C824 01AE7821 */  addu    $t7, $t5, $t6              
/* 003A8 8089C828 01F11021 */  addu    $v0, $t7, $s1              
/* 003AC 8089C82C C4480018 */  lwc1    $f8, 0x0018($v0)           ## 00000018
/* 003B0 8089C830 4406B000 */  mfc1    $a2, $f22                  
/* 003B4 8089C834 4407C000 */  mfc1    $a3, $f24                  
/* 003B8 8089C838 E7A80158 */  swc1    $f8, 0x0158($sp)           
/* 003BC 8089C83C C44A001C */  lwc1    $f10, 0x001C($v0)          ## 0000001C
/* 003C0 8089C840 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFF74
/* 003C4 8089C844 02802825 */  or      $a1, $s4, $zero            ## $a1 = FFFFFF98
/* 003C8 8089C848 E7AA015C */  swc1    $f10, 0x015C($sp)          
/* 003CC 8089C84C C4500020 */  lwc1    $f16, 0x0020($v0)          ## 00000020
/* 003D0 8089C850 46148480 */  add.s   $f18, $f16, $f20           
/* 003D4 8089C854 0C227120 */  jal     func_8089C480              
/* 003D8 8089C858 E7B20160 */  swc1    $f18, 0x0160($sp)          
/* 003DC 8089C85C C6040000 */  lwc1    $f4, 0x0000($s0)           ## FFFFFF74
/* 003E0 8089C860 C6460024 */  lwc1    $f6, 0x0024($s2)           ## 00000024
/* 003E4 8089C864 C60A0004 */  lwc1    $f10, 0x0004($s0)          ## FFFFFF78
/* 003E8 8089C868 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = FFFFFF80
/* 003EC 8089C86C 46062200 */  add.s   $f8, $f4, $f6              
/* 003F0 8089C870 C604FFFC */  lwc1    $f4, -0x0004($s0)          ## FFFFFF7C
/* 003F4 8089C874 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 0000000C
/* 003F8 8089C878 E608FFF4 */  swc1    $f8, -0x000C($s0)          ## FFFFFF74
/* 003FC 8089C87C C6500028 */  lwc1    $f16, 0x0028($s2)          ## 00000028
/* 00400 8089C880 46105480 */  add.s   $f18, $f10, $f16           
/* 00404 8089C884 E612FFF8 */  swc1    $f18, -0x0008($s0)         ## FFFFFF78
/* 00408 8089C888 C646002C */  lwc1    $f6, 0x002C($s2)           ## 0000002C
/* 0040C 8089C88C 46062200 */  add.s   $f8, $f4, $f6              
/* 00410 8089C890 1615FFE0 */  bne     $s0, $s5, .L8089C814       
/* 00414 8089C894 E608FFFC */  swc1    $f8, -0x0004($s0)          ## FFFFFF7C
/* 00418 8089C898 27B8014C */  addiu   $t8, $sp, 0x014C           ## $t8 = FFFFFF8C
/* 0041C 8089C89C AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00420 8089C8A0 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000164
/* 00424 8089C8A4 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 00428 8089C8A8 02E03025 */  or      $a2, $s7, $zero            ## $a2 = FFFFFF74
/* 0042C 8089C8AC 0C0189E8 */  jal     Collider_SetTrisVertices              
/* 00430 8089C8B0 27A70140 */  addiu   $a3, $sp, 0x0140           ## $a3 = FFFFFF80
/* 00434 8089C8B4 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 00438 8089C8B8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0043C 8089C8BC 5661FFD4 */  bnel    $s3, $at, .L8089C810       
/* 00440 8089C8C0 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00444 8089C8C4 3C19808A */  lui     $t9, %hi(func_8089D258)    ## $t9 = 808A0000
/* 00448 8089C8C8 2739D258 */  addiu   $t9, $t9, %lo(func_8089D258) ## $t9 = 8089D258
/* 0044C 8089C8CC 1000012C */  beq     $zero, $zero, .L8089CD80   
/* 00450 8089C8D0 AE590298 */  sw      $t9, 0x0298($s2)           ## 00000298
glabel L8089C8D4
/* 00454 8089C8D4 00032A03 */  sra     $a1, $v1,  8               
/* 00458 8089C8D8 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 0045C 8089C8DC 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00460 8089C8E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFF80
/* 00464 8089C8E4 1040000A */  beq     $v0, $zero, .L8089C910     
/* 00468 8089C8E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFF80
/* 0046C 8089C8EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFF80
/* 00470 8089C8F0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00474 8089C8F4 0C00FAFE */  jal     func_8003EBF8              
/* 00478 8089C8F8 8E46014C */  lw      $a2, 0x014C($s2)           ## 0000014C
/* 0047C 8089C8FC 3C08808A */  lui     $t0, %hi(func_8089D37C)    ## $t0 = 808A0000
/* 00480 8089C900 2508D37C */  addiu   $t0, $t0, %lo(func_8089D37C) ## $t0 = 8089D37C
/* 00484 8089C904 AE4002B8 */  sw      $zero, 0x02B8($s2)         ## 000002B8
/* 00488 8089C908 1000011D */  beq     $zero, $zero, .L8089CD80   
/* 0048C 8089C90C AE480298 */  sw      $t0, 0x0298($s2)           ## 00000298
.L8089C910:
/* 00490 8089C910 265E0164 */  addiu   $s8, $s2, 0x0164           ## $s8 = 00000164
/* 00494 8089C914 0C0171F8 */  jal     Collider_InitTris              
/* 00498 8089C918 03C02825 */  or      $a1, $s8, $zero            ## $a1 = 00000164
/* 0049C 8089C91C 3C07808A */  lui     $a3, %hi(D_8089D80C)       ## $a3 = 808A0000
/* 004A0 8089C920 26490184 */  addiu   $t1, $s2, 0x0184           ## $t1 = 00000184
/* 004A4 8089C924 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 004A8 8089C928 24E7D80C */  addiu   $a3, $a3, %lo(D_8089D80C)  ## $a3 = 8089D80C
/* 004AC 8089C92C 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFF80
/* 004B0 8089C930 03C02825 */  or      $a1, $s8, $zero            ## $a1 = 00000164
/* 004B4 8089C934 0C0172EB */  jal     Collider_SetTris              
/* 004B8 8089C938 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000000
/* 004BC 8089C93C 1440000B */  bne     $v0, $zero, .L8089C96C     
/* 004C0 8089C940 3C04808A */  lui     $a0, %hi(D_8089D918)       ## $a0 = 808A0000
/* 004C4 8089C944 3C05808A */  lui     $a1, %hi(D_8089D954)       ## $a1 = 808A0000
/* 004C8 8089C948 24A5D954 */  addiu   $a1, $a1, %lo(D_8089D954)  ## $a1 = 8089D954
/* 004CC 8089C94C 2484D918 */  addiu   $a0, $a0, %lo(D_8089D918)  ## $a0 = 8089D918
/* 004D0 8089C950 2406027E */  addiu   $a2, $zero, 0x027E         ## $a2 = 0000027E
/* 004D4 8089C954 0C00084C */  jal     osSyncPrintf
              
/* 004D8 8089C958 8647001C */  lh      $a3, 0x001C($s2)           ## 0000001C
/* 004DC 8089C95C 0C00B55C */  jal     Actor_Kill
              
/* 004E0 8089C960 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 004E4 8089C964 10000107 */  beq     $zero, $zero, .L8089CD84   
/* 004E8 8089C968 8FBF005C */  lw      $ra, 0x005C($sp)           
.L8089C96C:
/* 004EC 8089C96C 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 004F0 8089C970 864400B6 */  lh      $a0, 0x00B6($s2)           ## 000000B6
/* 004F4 8089C974 46000506 */  mov.s   $f20, $f0                  
/* 004F8 8089C978 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 004FC 8089C97C 864400B6 */  lh      $a0, 0x00B6($s2)           ## 000000B6
/* 00500 8089C980 27B50118 */  addiu   $s5, $sp, 0x0118           ## $s5 = FFFFFF58
/* 00504 8089C984 3C13808A */  lui     $s3, %hi(D_8089D738)       ## $s3 = 808A0000
/* 00508 8089C988 46000586 */  mov.s   $f22, $f0                  
/* 0050C 8089C98C 2673D738 */  addiu   $s3, $s3, %lo(D_8089D738)  ## $s3 = 8089D738
/* 00510 8089C990 02A0B025 */  or      $s6, $s5, $zero            ## $s6 = FFFFFF58
/* 00514 8089C994 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 00518 8089C998 24170002 */  addiu   $s7, $zero, 0x0002         ## $s7 = 00000002
/* 0051C 8089C99C 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
.L8089C9A0:
/* 00520 8089C9A0 27B000F4 */  addiu   $s0, $sp, 0x00F4           ## $s0 = FFFFFF34
.L8089C9A4:
/* 00524 8089C9A4 8E6B000C */  lw      $t3, 0x000C($s3)           ## 8089D744
/* 00528 8089C9A8 00146100 */  sll     $t4, $s4,  4               
/* 0052C 8089C9AC 01946023 */  subu    $t4, $t4, $s4              
/* 00530 8089C9B0 000C6080 */  sll     $t4, $t4,  2               
/* 00534 8089C9B4 016C6821 */  addu    $t5, $t3, $t4              
/* 00538 8089C9B8 01B11021 */  addu    $v0, $t5, $s1              
/* 0053C 8089C9BC C44A0018 */  lwc1    $f10, 0x0018($v0)          ## 00000018
/* 00540 8089C9C0 4406A000 */  mfc1    $a2, $f20                  
/* 00544 8089C9C4 4407B000 */  mfc1    $a3, $f22                  
/* 00548 8089C9C8 E7AA0118 */  swc1    $f10, 0x0118($sp)          
/* 0054C 8089C9CC C450001C */  lwc1    $f16, 0x001C($v0)          ## 0000001C
/* 00550 8089C9D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFF34
/* 00554 8089C9D4 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFF58
/* 00558 8089C9D8 E7B0011C */  swc1    $f16, 0x011C($sp)          
/* 0055C 8089C9DC C4520020 */  lwc1    $f18, 0x0020($v0)          ## 00000020
/* 00560 8089C9E0 0C227120 */  jal     func_8089C480              
/* 00564 8089C9E4 E7B20120 */  swc1    $f18, 0x0120($sp)          
/* 00568 8089C9E8 C6040000 */  lwc1    $f4, 0x0000($s0)           ## FFFFFF34
/* 0056C 8089C9EC C6460024 */  lwc1    $f6, 0x0024($s2)           ## 00000024
/* 00570 8089C9F0 C60A0004 */  lwc1    $f10, 0x0004($s0)          ## FFFFFF38
/* 00574 8089C9F4 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = FFFFFF40
/* 00578 8089C9F8 46062200 */  add.s   $f8, $f4, $f6              
/* 0057C 8089C9FC C604FFFC */  lwc1    $f4, -0x0004($s0)          ## FFFFFF3C
/* 00580 8089CA00 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 0000000C
/* 00584 8089CA04 E608FFF4 */  swc1    $f8, -0x000C($s0)          ## FFFFFF34
/* 00588 8089CA08 C6500028 */  lwc1    $f16, 0x0028($s2)          ## 00000028
/* 0058C 8089CA0C 46105480 */  add.s   $f18, $f10, $f16           
/* 00590 8089CA10 E612FFF8 */  swc1    $f18, -0x0008($s0)         ## FFFFFF38
/* 00594 8089CA14 C646002C */  lwc1    $f6, 0x002C($s2)           ## 0000002C
/* 00598 8089CA18 46062200 */  add.s   $f8, $f4, $f6              
/* 0059C 8089CA1C 1616FFE1 */  bne     $s0, $s6, .L8089C9A4       
/* 005A0 8089CA20 E608FFFC */  swc1    $f8, -0x0004($s0)          ## FFFFFF3C
/* 005A4 8089CA24 27AE010C */  addiu   $t6, $sp, 0x010C           ## $t6 = FFFFFF4C
/* 005A8 8089CA28 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 005AC 8089CA2C 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000164
/* 005B0 8089CA30 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 005B4 8089CA34 27A600F4 */  addiu   $a2, $sp, 0x00F4           ## $a2 = FFFFFF34
/* 005B8 8089CA38 0C0189E8 */  jal     Collider_SetTrisVertices              
/* 005BC 8089CA3C 27A70100 */  addiu   $a3, $sp, 0x0100           ## $a3 = FFFFFF40
/* 005C0 8089CA40 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000001
/* 005C4 8089CA44 5697FFD6 */  bnel    $s4, $s7, .L8089C9A0       
/* 005C8 8089CA48 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 005CC 8089CA4C 3C0F808A */  lui     $t7, %hi(func_8089D258)    ## $t7 = 808A0000
/* 005D0 8089CA50 25EFD258 */  addiu   $t7, $t7, %lo(func_8089D258) ## $t7 = 8089D258
/* 005D4 8089CA54 100000CA */  beq     $zero, $zero, .L8089CD80   
/* 005D8 8089CA58 AE4F0298 */  sw      $t7, 0x0298($s2)           ## 00000298
glabel L8089CA5C
/* 005DC 8089CA5C 00032A03 */  sra     $a1, $v1,  8               
/* 005E0 8089CA60 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 005E4 8089CA64 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 005E8 8089CA68 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFF40
/* 005EC 8089CA6C 1040000A */  beq     $v0, $zero, .L8089CA98     
/* 005F0 8089CA70 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFF40
/* 005F4 8089CA74 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFF40
/* 005F8 8089CA78 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 005FC 8089CA7C 0C00FAFE */  jal     func_8003EBF8              
/* 00600 8089CA80 8E46014C */  lw      $a2, 0x014C($s2)           ## 0000014C
/* 00604 8089CA84 3C18808A */  lui     $t8, %hi(func_8089D37C)    ## $t8 = 808A0000
/* 00608 8089CA88 2718D37C */  addiu   $t8, $t8, %lo(func_8089D37C) ## $t8 = 8089D37C
/* 0060C 8089CA8C AE4002B8 */  sw      $zero, 0x02B8($s2)         ## 000002B8
/* 00610 8089CA90 100000BB */  beq     $zero, $zero, .L8089CD80   
/* 00614 8089CA94 AE580298 */  sw      $t8, 0x0298($s2)           ## 00000298
.L8089CA98:
/* 00618 8089CA98 265E0164 */  addiu   $s8, $s2, 0x0164           ## $s8 = 00000164
/* 0061C 8089CA9C 0C0171F8 */  jal     Collider_InitTris              
/* 00620 8089CAA0 03C02825 */  or      $a1, $s8, $zero            ## $a1 = 00000164
/* 00624 8089CAA4 3C07808A */  lui     $a3, %hi(D_8089D81C)       ## $a3 = 808A0000
/* 00628 8089CAA8 26590184 */  addiu   $t9, $s2, 0x0184           ## $t9 = 00000184
/* 0062C 8089CAAC AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00630 8089CAB0 24E7D81C */  addiu   $a3, $a3, %lo(D_8089D81C)  ## $a3 = 8089D81C
/* 00634 8089CAB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFF40
/* 00638 8089CAB8 03C02825 */  or      $a1, $s8, $zero            ## $a1 = 00000164
/* 0063C 8089CABC 0C0172EB */  jal     Collider_SetTris              
/* 00640 8089CAC0 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000000
/* 00644 8089CAC4 1440000B */  bne     $v0, $zero, .L8089CAF4     
/* 00648 8089CAC8 3C04808A */  lui     $a0, %hi(D_8089D96C)       ## $a0 = 808A0000
/* 0064C 8089CACC 3C05808A */  lui     $a1, %hi(D_8089D9A8)       ## $a1 = 808A0000
/* 00650 8089CAD0 24A5D9A8 */  addiu   $a1, $a1, %lo(D_8089D9A8)  ## $a1 = 8089D9A8
/* 00654 8089CAD4 2484D96C */  addiu   $a0, $a0, %lo(D_8089D96C)  ## $a0 = 8089D96C
/* 00658 8089CAD8 240602D4 */  addiu   $a2, $zero, 0x02D4         ## $a2 = 000002D4
/* 0065C 8089CADC 0C00084C */  jal     osSyncPrintf
              
/* 00660 8089CAE0 8647001C */  lh      $a3, 0x001C($s2)           ## 0000001C
/* 00664 8089CAE4 0C00B55C */  jal     Actor_Kill
              
/* 00668 8089CAE8 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 0066C 8089CAEC 100000A5 */  beq     $zero, $zero, .L8089CD84   
/* 00670 8089CAF0 8FBF005C */  lw      $ra, 0x005C($sp)           
.L8089CAF4:
/* 00674 8089CAF4 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00678 8089CAF8 864400B6 */  lh      $a0, 0x00B6($s2)           ## 000000B6
/* 0067C 8089CAFC 46000586 */  mov.s   $f22, $f0                  
/* 00680 8089CB00 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 00684 8089CB04 864400B6 */  lh      $a0, 0x00B6($s2)           ## 000000B6
/* 00688 8089CB08 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 0068C 8089CB0C 27B500D8 */  addiu   $s5, $sp, 0x00D8           ## $s5 = FFFFFF18
/* 00690 8089CB10 3C13808A */  lui     $s3, %hi(D_8089D738)       ## $s3 = 808A0000
/* 00694 8089CB14 4481A000 */  mtc1    $at, $f20                  ## $f20 = 2.00
/* 00698 8089CB18 46000606 */  mov.s   $f24, $f0                  
/* 0069C 8089CB1C 2673D738 */  addiu   $s3, $s3, %lo(D_8089D738)  ## $s3 = 8089D738
/* 006A0 8089CB20 02A0B025 */  or      $s6, $s5, $zero            ## $s6 = FFFFFF18
/* 006A4 8089CB24 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 006A8 8089CB28 24170002 */  addiu   $s7, $zero, 0x0002         ## $s7 = 00000002
/* 006AC 8089CB2C 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
.L8089CB30:
/* 006B0 8089CB30 27B000B4 */  addiu   $s0, $sp, 0x00B4           ## $s0 = FFFFFEF4
.L8089CB34:
/* 006B4 8089CB34 8E69000C */  lw      $t1, 0x000C($s3)           ## 8089D744
/* 006B8 8089CB38 00145100 */  sll     $t2, $s4,  4               
/* 006BC 8089CB3C 01545023 */  subu    $t2, $t2, $s4              
/* 006C0 8089CB40 000A5080 */  sll     $t2, $t2,  2               
/* 006C4 8089CB44 012A5821 */  addu    $t3, $t1, $t2              
/* 006C8 8089CB48 01711021 */  addu    $v0, $t3, $s1              
/* 006CC 8089CB4C C44A0018 */  lwc1    $f10, 0x0018($v0)          ## 00000018
/* 006D0 8089CB50 4406B000 */  mfc1    $a2, $f22                  
/* 006D4 8089CB54 4407C000 */  mfc1    $a3, $f24                  
/* 006D8 8089CB58 E7AA00D8 */  swc1    $f10, 0x00D8($sp)          
/* 006DC 8089CB5C C450001C */  lwc1    $f16, 0x001C($v0)          ## 0000001C
/* 006E0 8089CB60 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFEF4
/* 006E4 8089CB64 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFF18
/* 006E8 8089CB68 E7B000DC */  swc1    $f16, 0x00DC($sp)          
/* 006EC 8089CB6C C4520020 */  lwc1    $f18, 0x0020($v0)          ## 00000020
/* 006F0 8089CB70 46149100 */  add.s   $f4, $f18, $f20            
/* 006F4 8089CB74 0C227120 */  jal     func_8089C480              
/* 006F8 8089CB78 E7A400E0 */  swc1    $f4, 0x00E0($sp)           
/* 006FC 8089CB7C C6060000 */  lwc1    $f6, 0x0000($s0)           ## FFFFFEF4
/* 00700 8089CB80 C6480024 */  lwc1    $f8, 0x0024($s2)           ## 00000024
/* 00704 8089CB84 C6100004 */  lwc1    $f16, 0x0004($s0)          ## FFFFFEF8
/* 00708 8089CB88 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = FFFFFF00
/* 0070C 8089CB8C 46083280 */  add.s   $f10, $f6, $f8             
/* 00710 8089CB90 C606FFFC */  lwc1    $f6, -0x0004($s0)          ## FFFFFEFC
/* 00714 8089CB94 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 0000000C
/* 00718 8089CB98 E60AFFF4 */  swc1    $f10, -0x000C($s0)         ## FFFFFEF4
/* 0071C 8089CB9C C6520028 */  lwc1    $f18, 0x0028($s2)          ## 00000028
/* 00720 8089CBA0 46128100 */  add.s   $f4, $f16, $f18            
/* 00724 8089CBA4 E604FFF8 */  swc1    $f4, -0x0008($s0)          ## FFFFFEF8
/* 00728 8089CBA8 C648002C */  lwc1    $f8, 0x002C($s2)           ## 0000002C
/* 0072C 8089CBAC 46083280 */  add.s   $f10, $f6, $f8             
/* 00730 8089CBB0 1616FFE0 */  bne     $s0, $s6, .L8089CB34       
/* 00734 8089CBB4 E60AFFFC */  swc1    $f10, -0x0004($s0)         ## FFFFFEFC
/* 00738 8089CBB8 27AC00CC */  addiu   $t4, $sp, 0x00CC           ## $t4 = FFFFFF0C
/* 0073C 8089CBBC AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00740 8089CBC0 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000164
/* 00744 8089CBC4 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 00748 8089CBC8 27A600B4 */  addiu   $a2, $sp, 0x00B4           ## $a2 = FFFFFEF4
/* 0074C 8089CBCC 0C0189E8 */  jal     Collider_SetTrisVertices              
/* 00750 8089CBD0 27A700C0 */  addiu   $a3, $sp, 0x00C0           ## $a3 = FFFFFF00
/* 00754 8089CBD4 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000001
/* 00758 8089CBD8 5697FFD5 */  bnel    $s4, $s7, .L8089CB30       
/* 0075C 8089CBDC 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00760 8089CBE0 3C0D808A */  lui     $t5, %hi(func_8089D258)    ## $t5 = 808A0000
/* 00764 8089CBE4 25ADD258 */  addiu   $t5, $t5, %lo(func_8089D258) ## $t5 = 8089D258
/* 00768 8089CBE8 10000065 */  beq     $zero, $zero, .L8089CD80   
/* 0076C 8089CBEC AE4D0298 */  sw      $t5, 0x0298($s2)           ## 00000298
glabel L8089CBF0
/* 00770 8089CBF0 00032A03 */  sra     $a1, $v1,  8               
/* 00774 8089CBF4 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00778 8089CBF8 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 0077C 8089CBFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFF00
/* 00780 8089CC00 1040000A */  beq     $v0, $zero, .L8089CC2C     
/* 00784 8089CC04 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFF00
/* 00788 8089CC08 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFF00
/* 0078C 8089CC0C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00790 8089CC10 0C00FAFE */  jal     func_8003EBF8              
/* 00794 8089CC14 8E46014C */  lw      $a2, 0x014C($s2)           ## 0000014C
/* 00798 8089CC18 3C0E808A */  lui     $t6, %hi(func_8089D37C)    ## $t6 = 808A0000
/* 0079C 8089CC1C 25CED37C */  addiu   $t6, $t6, %lo(func_8089D37C) ## $t6 = 8089D37C
/* 007A0 8089CC20 AE4002B8 */  sw      $zero, 0x02B8($s2)         ## 000002B8
/* 007A4 8089CC24 10000056 */  beq     $zero, $zero, .L8089CD80   
/* 007A8 8089CC28 AE4E0298 */  sw      $t6, 0x0298($s2)           ## 00000298
.L8089CC2C:
/* 007AC 8089CC2C 265E0164 */  addiu   $s8, $s2, 0x0164           ## $s8 = 00000164
/* 007B0 8089CC30 0C0171F8 */  jal     Collider_InitTris              
/* 007B4 8089CC34 03C02825 */  or      $a1, $s8, $zero            ## $a1 = 00000164
/* 007B8 8089CC38 3C07808A */  lui     $a3, %hi(D_8089D81C)       ## $a3 = 808A0000
/* 007BC 8089CC3C 264F0184 */  addiu   $t7, $s2, 0x0184           ## $t7 = 00000184
/* 007C0 8089CC40 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 007C4 8089CC44 24E7D81C */  addiu   $a3, $a3, %lo(D_8089D81C)  ## $a3 = 8089D81C
/* 007C8 8089CC48 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFF00
/* 007CC 8089CC4C 03C02825 */  or      $a1, $s8, $zero            ## $a1 = 00000164
/* 007D0 8089CC50 0C0172EB */  jal     Collider_SetTris              
/* 007D4 8089CC54 02403025 */  or      $a2, $s2, $zero            ## $a2 = 00000000
/* 007D8 8089CC58 1440000B */  bne     $v0, $zero, .L8089CC88     
/* 007DC 8089CC5C 3C04808A */  lui     $a0, %hi(D_8089D9C0)       ## $a0 = 808A0000
/* 007E0 8089CC60 3C05808A */  lui     $a1, %hi(D_8089D9FC)       ## $a1 = 808A0000
/* 007E4 8089CC64 24A5D9FC */  addiu   $a1, $a1, %lo(D_8089D9FC)  ## $a1 = 8089D9FC
/* 007E8 8089CC68 2484D9C0 */  addiu   $a0, $a0, %lo(D_8089D9C0)  ## $a0 = 8089D9C0
/* 007EC 8089CC6C 2406031E */  addiu   $a2, $zero, 0x031E         ## $a2 = 0000031E
/* 007F0 8089CC70 0C00084C */  jal     osSyncPrintf
              
/* 007F4 8089CC74 8647001C */  lh      $a3, 0x001C($s2)           ## 0000001C
/* 007F8 8089CC78 0C00B55C */  jal     Actor_Kill
              
/* 007FC 8089CC7C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00800 8089CC80 10000040 */  beq     $zero, $zero, .L8089CD84   
/* 00804 8089CC84 8FBF005C */  lw      $ra, 0x005C($sp)           
.L8089CC88:
/* 00808 8089CC88 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 0080C 8089CC8C 864400B6 */  lh      $a0, 0x00B6($s2)           ## 000000B6
/* 00810 8089CC90 46000586 */  mov.s   $f22, $f0                  
/* 00814 8089CC94 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 00818 8089CC98 864400B6 */  lh      $a0, 0x00B6($s2)           ## 000000B6
/* 0081C 8089CC9C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00820 8089CCA0 27B50098 */  addiu   $s5, $sp, 0x0098           ## $s5 = FFFFFED8
/* 00824 8089CCA4 3C13808A */  lui     $s3, %hi(D_8089D738)       ## $s3 = 808A0000
/* 00828 8089CCA8 4481A000 */  mtc1    $at, $f20                  ## $f20 = 2.00
/* 0082C 8089CCAC 46000606 */  mov.s   $f24, $f0                  
/* 00830 8089CCB0 2673D738 */  addiu   $s3, $s3, %lo(D_8089D738)  ## $s3 = 8089D738
/* 00834 8089CCB4 02A0B025 */  or      $s6, $s5, $zero            ## $s6 = FFFFFED8
/* 00838 8089CCB8 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 0083C 8089CCBC 24170002 */  addiu   $s7, $zero, 0x0002         ## $s7 = 00000002
/* 00840 8089CCC0 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
.L8089CCC4:
/* 00844 8089CCC4 27B00074 */  addiu   $s0, $sp, 0x0074           ## $s0 = FFFFFEB4
.L8089CCC8:
/* 00848 8089CCC8 8E79000C */  lw      $t9, 0x000C($s3)           ## 8089D744
/* 0084C 8089CCCC 00144100 */  sll     $t0, $s4,  4               
/* 00850 8089CCD0 01144023 */  subu    $t0, $t0, $s4              
/* 00854 8089CCD4 00084080 */  sll     $t0, $t0,  2               
/* 00858 8089CCD8 03284821 */  addu    $t1, $t9, $t0              
/* 0085C 8089CCDC 01311021 */  addu    $v0, $t1, $s1              
/* 00860 8089CCE0 C4500018 */  lwc1    $f16, 0x0018($v0)          ## 00000018
/* 00864 8089CCE4 4406B000 */  mfc1    $a2, $f22                  
/* 00868 8089CCE8 4407C000 */  mfc1    $a3, $f24                  
/* 0086C 8089CCEC E7B00098 */  swc1    $f16, 0x0098($sp)          
/* 00870 8089CCF0 C452001C */  lwc1    $f18, 0x001C($v0)          ## 0000001C
/* 00874 8089CCF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFEB4
/* 00878 8089CCF8 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFED8
/* 0087C 8089CCFC E7B2009C */  swc1    $f18, 0x009C($sp)          
/* 00880 8089CD00 C4440020 */  lwc1    $f4, 0x0020($v0)           ## 00000020
/* 00884 8089CD04 46142180 */  add.s   $f6, $f4, $f20             
/* 00888 8089CD08 0C227120 */  jal     func_8089C480              
/* 0088C 8089CD0C E7A600A0 */  swc1    $f6, 0x00A0($sp)           
/* 00890 8089CD10 C6080000 */  lwc1    $f8, 0x0000($s0)           ## FFFFFEB4
/* 00894 8089CD14 C64A0024 */  lwc1    $f10, 0x0024($s2)          ## 00000024
/* 00898 8089CD18 C6120004 */  lwc1    $f18, 0x0004($s0)          ## FFFFFEB8
/* 0089C 8089CD1C 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = FFFFFEC0
/* 008A0 8089CD20 460A4400 */  add.s   $f16, $f8, $f10            
/* 008A4 8089CD24 C608FFFC */  lwc1    $f8, -0x0004($s0)          ## FFFFFEBC
/* 008A8 8089CD28 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 0000000C
/* 008AC 8089CD2C E610FFF4 */  swc1    $f16, -0x000C($s0)         ## FFFFFEB4
/* 008B0 8089CD30 C6440028 */  lwc1    $f4, 0x0028($s2)           ## 00000028
/* 008B4 8089CD34 46049180 */  add.s   $f6, $f18, $f4             
/* 008B8 8089CD38 E606FFF8 */  swc1    $f6, -0x0008($s0)          ## FFFFFEB8
/* 008BC 8089CD3C C64A002C */  lwc1    $f10, 0x002C($s2)          ## 0000002C
/* 008C0 8089CD40 460A4400 */  add.s   $f16, $f8, $f10            
/* 008C4 8089CD44 1616FFE0 */  bne     $s0, $s6, .L8089CCC8       
/* 008C8 8089CD48 E610FFFC */  swc1    $f16, -0x0004($s0)         ## FFFFFEBC
/* 008CC 8089CD4C 27AA008C */  addiu   $t2, $sp, 0x008C           ## $t2 = FFFFFECC
/* 008D0 8089CD50 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 008D4 8089CD54 03C02025 */  or      $a0, $s8, $zero            ## $a0 = 00000164
/* 008D8 8089CD58 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 008DC 8089CD5C 27A60074 */  addiu   $a2, $sp, 0x0074           ## $a2 = FFFFFEB4
/* 008E0 8089CD60 0C0189E8 */  jal     Collider_SetTrisVertices              
/* 008E4 8089CD64 27A70080 */  addiu   $a3, $sp, 0x0080           ## $a3 = FFFFFEC0
/* 008E8 8089CD68 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000001
/* 008EC 8089CD6C 5697FFD5 */  bnel    $s4, $s7, .L8089CCC4       
/* 008F0 8089CD70 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 008F4 8089CD74 3C0B808A */  lui     $t3, %hi(func_8089D258)    ## $t3 = 808A0000
/* 008F8 8089CD78 256BD258 */  addiu   $t3, $t3, %lo(func_8089D258) ## $t3 = 8089D258
/* 008FC 8089CD7C AE4B0298 */  sw      $t3, 0x0298($s2)           ## 00000298
.L8089CD80:
/* 00900 8089CD80 8FBF005C */  lw      $ra, 0x005C($sp)           
.L8089CD84:
/* 00904 8089CD84 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 00908 8089CD88 D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 0090C 8089CD8C D7B80030 */  ldc1    $f24, 0x0030($sp)          
/* 00910 8089CD90 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 00914 8089CD94 8FB1003C */  lw      $s1, 0x003C($sp)           
/* 00918 8089CD98 8FB20040 */  lw      $s2, 0x0040($sp)           
/* 0091C 8089CD9C 8FB30044 */  lw      $s3, 0x0044($sp)           
/* 00920 8089CDA0 8FB40048 */  lw      $s4, 0x0048($sp)           
/* 00924 8089CDA4 8FB5004C */  lw      $s5, 0x004C($sp)           
/* 00928 8089CDA8 8FB60050 */  lw      $s6, 0x0050($sp)           
/* 0092C 8089CDAC 8FB70054 */  lw      $s7, 0x0054($sp)           
/* 00930 8089CDB0 8FBE0058 */  lw      $s8, 0x0058($sp)           
/* 00934 8089CDB4 03E00008 */  jr      $ra                        
/* 00938 8089CDB8 27BD01C0 */  addiu   $sp, $sp, 0x01C0           ## $sp = 00000000
