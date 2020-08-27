.rdata
glabel D_809A0A10
    .asciz "../z_eff_ss_d_fire.c"
    .balign 4

glabel D_809A0A28
    .asciz "../z_eff_ss_d_fire.c"
    .balign 4

.text
glabel func_809A0698
/* 00148 809A0698 27BDFE98 */  addiu   $sp, $sp, 0xFE98           ## $sp = FFFFFE98
/* 0014C 809A069C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00150 809A06A0 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00154 809A06A4 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00158 809A06A8 AFA40168 */  sw      $a0, 0x0168($sp)           
/* 0015C 809A06AC AFA5016C */  sw      $a1, 0x016C($sp)           
/* 00160 809A06B0 84CF0054 */  lh      $t7, 0x0054($a2)           ## 00000054
/* 00164 809A06B4 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 00168 809A06B8 8C900000 */  lw      $s0, 0x0000($a0)           ## 00000000
/* 0016C 809A06BC 000FC100 */  sll     $t8, $t7,  4               
/* 00170 809A06C0 030FC021 */  addu    $t8, $t8, $t7              
/* 00174 809A06C4 0018C080 */  sll     $t8, $t8,  2               
/* 00178 809A06C8 0098C821 */  addu    $t9, $a0, $t8              
/* 0017C 809A06CC 01394821 */  addu    $t1, $t1, $t9              
/* 00180 809A06D0 8D2917B4 */  lw      $t1, 0x17B4($t1)           ## 000117B4
/* 00184 809A06D4 00C08825 */  or      $s1, $a2, $zero            ## $s1 = 00000000
/* 00188 809A06D8 3C06809A */  lui     $a2, %hi(D_809A0A10)       ## $a2 = 809A0000
/* 0018C 809A06DC 24C60A10 */  addiu   $a2, $a2, %lo(D_809A0A10)  ## $a2 = 809A0A10
/* 00190 809A06E0 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFED8
/* 00194 809A06E4 24070114 */  addiu   $a3, $zero, 0x0114         ## $a3 = 00000114
/* 00198 809A06E8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0019C 809A06EC 0C031AB1 */  jal     Graph_OpenDisps              
/* 001A0 809A06F0 AFA9005C */  sw      $t1, 0x005C($sp)           
/* 001A4 809A06F4 8FA40168 */  lw      $a0, 0x0168($sp)           
/* 001A8 809A06F8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 001AC 809A06FC 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 001B0 809A0700 2405000C */  addiu   $a1, $zero, 0x000C         ## $a1 = 0000000C
/* 001B4 809A0704 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 001B8 809A0708 00812021 */  addu    $a0, $a0, $at              
/* 001BC 809A070C 04400074 */  bltz    $v0, .L809A08E0            
/* 001C0 809A0710 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 001C4 809A0714 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 001C8 809A0718 00814021 */  addu    $t0, $a0, $at              
/* 001CC 809A071C 3C018016 */  lui     $at, %hi(gSegments+0x18)
/* 001D0 809A0720 AC286FC0 */  sw      $t0, %lo(gSegments+0x18)($at)
/* 001D4 809A0724 8E0302D0 */  lw      $v1, 0x02D0($s0)           ## 000002D0
/* 001D8 809A0728 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 001DC 809A072C 356B0018 */  ori     $t3, $t3, 0x0018           ## $t3 = DB060018
/* 001E0 809A0730 246A0008 */  addiu   $t2, $v1, 0x0008           ## $t2 = 00000008
/* 001E4 809A0734 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 001E8 809A0738 AC640004 */  sw      $a0, 0x0004($v1)           ## 00000004
/* 001EC 809A073C AC6B0000 */  sw      $t3, 0x0000($v1)           ## 00000000
/* 001F0 809A0740 862C0040 */  lh      $t4, 0x0040($s1)           ## 00000040
/* 001F4 809A0744 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 001F8 809A0748 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 001FC 809A074C 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 00200 809A0750 8E270008 */  lw      $a3, 0x0008($s1)           ## 00000008
/* 00204 809A0754 8E260004 */  lw      $a2, 0x0004($s1)           ## 00000004
/* 00208 809A0758 468021A0 */  cvt.s.w $f6, $f4                   
/* 0020C 809A075C 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 00210 809A0760 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 00214 809A0764 27A40124 */  addiu   $a0, $sp, 0x0124           ## $a0 = FFFFFFBC
/* 00218 809A0768 46083003 */  div.s   $f0, $f6, $f8              
/* 0021C 809A076C 0C029E89 */  jal     SkinMatrix_SetTranslate              
/* 00220 809A0770 E7A00054 */  swc1    $f0, 0x0054($sp)           
/* 00224 809A0774 C7A00054 */  lwc1    $f0, 0x0054($sp)           
/* 00228 809A0778 27A400E4 */  addiu   $a0, $sp, 0x00E4           ## $a0 = FFFFFF7C
/* 0022C 809A077C 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00230 809A0780 44050000 */  mfc1    $a1, $f0                   
/* 00234 809A0784 44060000 */  mfc1    $a2, $f0                   
/* 00238 809A0788 0C029DA9 */  jal     SkinMatrix_SetScale              
/* 0023C 809A078C 00000000 */  nop
/* 00240 809A0790 8FA50168 */  lw      $a1, 0x0168($sp)           
/* 00244 809A0794 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00248 809A0798 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 0024C 809A079C 27A40124 */  addiu   $a0, $sp, 0x0124           ## $a0 = FFFFFFBC
/* 00250 809A07A0 27A60064 */  addiu   $a2, $sp, 0x0064           ## $a2 = FFFFFEFC
/* 00254 809A07A4 0C029BE8 */  jal     SkinMatrix_MtxFMtxFMult              
/* 00258 809A07A8 00A12821 */  addu    $a1, $a1, $at              
/* 0025C 809A07AC 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFEFC
/* 00260 809A07B0 27A500E4 */  addiu   $a1, $sp, 0x00E4           ## $a1 = FFFFFF7C
/* 00264 809A07B4 0C029BE8 */  jal     SkinMatrix_MtxFMtxFMult              
/* 00268 809A07B8 27A600A4 */  addiu   $a2, $sp, 0x00A4           ## $a2 = FFFFFF3C
/* 0026C 809A07BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00270 809A07C0 0C029F9C */  jal     SkinMatrix_MtxFToNewMtx              
/* 00274 809A07C4 27A500A4 */  addiu   $a1, $sp, 0x00A4           ## $a1 = FFFFFF3C
/* 00278 809A07C8 10400045 */  beq     $v0, $zero, .L809A08E0     
/* 0027C 809A07CC 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 00280 809A07D0 8E0302D0 */  lw      $v1, 0x02D0($s0)           ## 000002D0
/* 00284 809A07D4 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 00288 809A07D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0028C 809A07DC 246D0008 */  addiu   $t5, $v1, 0x0008           ## $t5 = 00000008
/* 00290 809A07E0 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 00294 809A07E4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00298 809A07E8 0C0252F1 */  jal     func_80094BC4              
/* 0029C 809A07EC AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 002A0 809A07F0 8E0302D0 */  lw      $v1, 0x02D0($s0)           ## 000002D0
/* 002A4 809A07F4 3C18FB00 */  lui     $t8, 0xFB00                ## $t8 = FB000000
/* 002A8 809A07F8 3C19FF00 */  lui     $t9, 0xFF00                ## $t9 = FF000000
/* 002AC 809A07FC 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 002B0 809A0800 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 002B4 809A0804 AC790004 */  sw      $t9, 0x0004($v1)           ## 00000004
/* 002B8 809A0808 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 002BC 809A080C 8E0302D0 */  lw      $v1, 0x02D0($s0)           ## 000002D0
/* 002C0 809A0810 3C0AFA00 */  lui     $t2, 0xFA00                ## $t2 = FA000000
/* 002C4 809A0814 3C058016 */  lui     $a1, %hi(gSegments)
/* 002C8 809A0818 24690008 */  addiu   $t1, $v1, 0x0008           ## $t1 = 00000008
/* 002CC 809A081C AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 002D0 809A0820 AC6A0000 */  sw      $t2, 0x0000($v1)           ## 00000000
/* 002D4 809A0824 862F0044 */  lh      $t7, 0x0044($s1)           ## 00000044
/* 002D8 809A0828 862B004A */  lh      $t3, 0x004A($s1)           ## 0000004A
/* 002DC 809A082C 86390046 */  lh      $t9, 0x0046($s1)           ## 00000046
/* 002E0 809A0830 862D0048 */  lh      $t5, 0x0048($s1)           ## 00000048
/* 002E4 809A0834 000F7600 */  sll     $t6, $t7, 24               
/* 002E8 809A0838 316C00FF */  andi    $t4, $t3, 0x00FF           ## $t4 = 00000000
/* 002EC 809A083C 018EC025 */  or      $t8, $t4, $t6              ## $t8 = 00000008
/* 002F0 809A0840 332900FF */  andi    $t1, $t9, 0x00FF           ## $t1 = 00000000
/* 002F4 809A0844 00095400 */  sll     $t2, $t1, 16               
/* 002F8 809A0848 31AF00FF */  andi    $t7, $t5, 0x00FF           ## $t7 = 00000000
/* 002FC 809A084C 000F6200 */  sll     $t4, $t7,  8               
/* 00300 809A0850 030A5825 */  or      $t3, $t8, $t2              ## $t3 = FA000008
/* 00304 809A0854 016C7025 */  or      $t6, $t3, $t4              ## $t6 = FA000008
/* 00308 809A0858 AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
/* 0030C 809A085C 8FB90024 */  lw      $t9, 0x0024($sp)           
/* 00310 809A0860 24A56FA8 */  addiu   $a1, %lo(gSegments)
/* 00314 809A0864 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 00318 809A0868 ACB90018 */  sw      $t9, 0x0018($a1)           ## 80166FC0
/* 0031C 809A086C 8E0302D0 */  lw      $v1, 0x02D0($s0)           ## 000002D0
/* 00320 809A0870 37180020 */  ori     $t8, $t8, 0x0020           ## $t8 = DB060020
/* 00324 809A0874 3C04809A */  lui     $a0, %hi(D_809A09F8)       ## $a0 = 809A0000
/* 00328 809A0878 24690008 */  addiu   $t1, $v1, 0x0008           ## $t1 = 00000008
/* 0032C 809A087C AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 00330 809A0880 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 00334 809A0884 862A0042 */  lh      $t2, 0x0042($s1)           ## 00000042
/* 00338 809A0888 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 0033C 809A088C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00340 809A0890 000A6880 */  sll     $t5, $t2,  2               
/* 00344 809A0894 008D2021 */  addu    $a0, $a0, $t5              
/* 00348 809A0898 8C8409F8 */  lw      $a0, %lo(D_809A09F8)($a0)  
/* 0034C 809A089C 00045900 */  sll     $t3, $a0,  4               
/* 00350 809A08A0 000B6702 */  srl     $t4, $t3, 28               
/* 00354 809A08A4 000C7080 */  sll     $t6, $t4,  2               
/* 00358 809A08A8 00AEC821 */  addu    $t9, $a1, $t6              
/* 0035C 809A08AC 8F290000 */  lw      $t1, 0x0000($t9)           ## FF000000
/* 00360 809A08B0 00817824 */  and     $t7, $a0, $at              
/* 00364 809A08B4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00368 809A08B8 01E9C021 */  addu    $t8, $t7, $t1              
/* 0036C 809A08BC 03015021 */  addu    $t2, $t8, $at              
/* 00370 809A08C0 AC6A0004 */  sw      $t2, 0x0004($v1)           ## 00000004
/* 00374 809A08C4 8E0302D0 */  lw      $v1, 0x02D0($s0)           ## 000002D0
/* 00378 809A08C8 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 0037C 809A08CC 246D0008 */  addiu   $t5, $v1, 0x0008           ## $t5 = 00000008
/* 00380 809A08D0 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 00384 809A08D4 AC6B0000 */  sw      $t3, 0x0000($v1)           ## 00000000
/* 00388 809A08D8 8E2C0038 */  lw      $t4, 0x0038($s1)           ## 00000038
/* 0038C 809A08DC AC6C0004 */  sw      $t4, 0x0004($v1)           ## 00000004
.L809A08E0:
/* 00390 809A08E0 3C06809A */  lui     $a2, %hi(D_809A0A28)       ## $a2 = 809A0000
/* 00394 809A08E4 24C60A28 */  addiu   $a2, $a2, %lo(D_809A0A28)  ## $a2 = 809A0A28
/* 00398 809A08E8 27A40040 */  addiu   $a0, $sp, 0x0040           ## $a0 = FFFFFED8
/* 0039C 809A08EC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 003A0 809A08F0 0C031AD5 */  jal     Graph_CloseDisps              
/* 003A4 809A08F4 2407014A */  addiu   $a3, $zero, 0x014A         ## $a3 = 0000014A
/* 003A8 809A08F8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 003AC 809A08FC 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 003B0 809A0900 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 003B4 809A0904 03E00008 */  jr      $ra                        
/* 003B8 809A0908 27BD0168 */  addiu   $sp, $sp, 0x0168           ## $sp = 00000000
