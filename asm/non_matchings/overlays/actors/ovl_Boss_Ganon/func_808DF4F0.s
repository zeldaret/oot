.rdata
glabel D_808F7B2C
    .asciz "../z_boss_ganon.c"
    .balign 4

glabel D_808F7B40
    .asciz "../z_boss_ganon.c"
    .balign 4

glabel D_808F7B54
    .asciz "../z_boss_ganon.c"
    .balign 4

glabel D_808F7B68
    .asciz "../z_boss_ganon.c"
    .balign 4

glabel D_808F7B7C
    .asciz "../z_boss_ganon.c"
    .balign 4

glabel D_808F7B90
    .asciz "../z_boss_ganon.c"
    .balign 4

.late_rodata
glabel D_808F8140
    .float 3.14159274101

glabel D_808F8144
    .float 3.14159274101

glabel D_808F8148
    .float 3.14159274101

.text
glabel func_808DF4F0
/* 08C80 808DF4F0 27BDFF28 */  addiu   $sp, $sp, 0xFF28           ## $sp = FFFFFF28
/* 08C84 808DF4F4 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 08C88 808DF4F8 AFB20048 */  sw      $s2, 0x0048($sp)           
/* 08C8C 808DF4FC AFB10044 */  sw      $s1, 0x0044($sp)           
/* 08C90 808DF500 AFB00040 */  sw      $s0, 0x0040($sp)           
/* 08C94 808DF504 F7B40038 */  sdc1    $f20, 0x0038($sp)          
/* 08C98 808DF508 AFA500DC */  sw      $a1, 0x00DC($sp)           
/* 08C9C 808DF50C 8CB10000 */  lw      $s1, 0x0000($a1)           ## 00000000
/* 08CA0 808DF510 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 08CA4 808DF514 3C06808F */  lui     $a2, %hi(D_808F7B2C)       ## $a2 = 808F0000
/* 08CA8 808DF518 24C67B2C */  addiu   $a2, $a2, %lo(D_808F7B2C)  ## $a2 = 808F7B2C
/* 08CAC 808DF51C 27A400B4 */  addiu   $a0, $sp, 0x00B4           ## $a0 = FFFFFFDC
/* 08CB0 808DF520 24071D7C */  addiu   $a3, $zero, 0x1D7C         ## $a3 = 00001D7C
/* 08CB4 808DF524 0C031AB1 */  jal     Graph_OpenDisps              
/* 08CB8 808DF528 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 08CBC 808DF52C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 08CC0 808DF530 C6460284 */  lwc1    $f6, 0x0284($s2)           ## 00000284
/* 08CC4 808DF534 8FAF00DC */  lw      $t7, 0x00DC($sp)           
/* 08CC8 808DF538 4606203C */  c.lt.s  $f4, $f6                   
/* 08CCC 808DF53C 00000000 */  nop
/* 08CD0 808DF540 4502019D */  bc1fl   .L808DFBB8                 
/* 08CD4 808DF544 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 08CD8 808DF548 0C024F61 */  jal     func_80093D84              
/* 08CDC 808DF54C 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 08CE0 808DF550 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 08CE4 808DF554 3C19FA00 */  lui     $t9, 0xFA00                ## $t9 = FA000000
/* 08CE8 808DF558 2401AA00 */  addiu   $at, $zero, 0xAA00         ## $at = FFFFAA00
/* 08CEC 808DF55C 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 08CF0 808DF560 AE3802D0 */  sw      $t8, 0x02D0($s1)           ## 000002D0
/* 08CF4 808DF564 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 08CF8 808DF568 C6480290 */  lwc1    $f8, 0x0290($s2)           ## 00000290
/* 08CFC 808DF56C 3C18C8FF */  lui     $t8, 0xC8FF                ## $t8 = C8FF0000
/* 08D00 808DF570 37180080 */  ori     $t8, $t8, 0x0080           ## $t8 = C8FF0080
/* 08D04 808DF574 4600428D */  trunc.w.s $f10, $f8                  
/* 08D08 808DF578 3C0FFB00 */  lui     $t7, 0xFB00                ## $t7 = FB000000
/* 08D0C 808DF57C 3C08DB06 */  lui     $t0, 0xDB06                ## $t0 = DB060000
/* 08D10 808DF580 35080020 */  ori     $t0, $t0, 0x0020           ## $t0 = DB060020
/* 08D14 808DF584 440B5000 */  mfc1    $t3, $f10                  
/* 08D18 808DF588 240A0040 */  addiu   $t2, $zero, 0x0040         ## $t2 = 00000040
/* 08D1C 808DF58C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 08D20 808DF590 316C00FF */  andi    $t4, $t3, 0x00FF           ## $t4 = 00000000
/* 08D24 808DF594 01816825 */  or      $t5, $t4, $at              ## $t5 = FFFFAA00
/* 08D28 808DF598 AC6D0004 */  sw      $t5, 0x0004($v1)           ## 00000004
/* 08D2C 808DF59C 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 08D30 808DF5A0 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 08D34 808DF5A4 240B0040 */  addiu   $t3, $zero, 0x0040         ## $t3 = 00000040
/* 08D38 808DF5A8 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 08D3C 808DF5AC AE2E02D0 */  sw      $t6, 0x02D0($s1)           ## 000002D0
/* 08D40 808DF5B0 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 08D44 808DF5B4 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 08D48 808DF5B8 8E3002D0 */  lw      $s0, 0x02D0($s1)           ## 000002D0
/* 08D4C 808DF5BC 240F0040 */  addiu   $t7, $zero, 0x0040         ## $t7 = 00000040
/* 08D50 808DF5C0 240E0040 */  addiu   $t6, $zero, 0x0040         ## $t6 = 00000040
/* 08D54 808DF5C4 26190008 */  addiu   $t9, $s0, 0x0008           ## $t9 = 00000008
/* 08D58 808DF5C8 AE3902D0 */  sw      $t9, 0x02D0($s1)           ## 000002D0
/* 08D5C 808DF5CC AE080000 */  sw      $t0, 0x0000($s0)           ## 00000000
/* 08D60 808DF5D0 864201A2 */  lh      $v0, 0x01A2($s2)           ## 000001A2
/* 08D64 808DF5D4 8FA900DC */  lw      $t1, 0x00DC($sp)           
/* 08D68 808DF5D8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 08D6C 808DF5DC 00026880 */  sll     $t5, $v0,  2               
/* 08D70 808DF5E0 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 08D74 808DF5E4 01A26821 */  addu    $t5, $t5, $v0              
/* 08D78 808DF5E8 000D6840 */  sll     $t5, $t5,  1               
/* 08D7C 808DF5EC 00020823 */  subu    $at, $zero, $v0            
/* 08D80 808DF5F0 00013040 */  sll     $a2, $at,  1               
/* 08D84 808DF5F4 AFAD0020 */  sw      $t5, 0x0020($sp)           
/* 08D88 808DF5F8 AFAF0028 */  sw      $t7, 0x0028($sp)           
/* 08D8C 808DF5FC AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 08D90 808DF600 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 08D94 808DF604 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 08D98 808DF608 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 08D9C 808DF60C 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 08DA0 808DF610 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 08DA4 808DF614 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 08DA8 808DF618 8E460280 */  lw      $a2, 0x0280($s2)           ## 00000280
/* 08DAC 808DF61C C64E027C */  lwc1    $f14, 0x027C($s2)          ## 0000027C
/* 08DB0 808DF620 C64C0278 */  lwc1    $f12, 0x0278($s2)          ## 00000278
/* 08DB4 808DF624 0C034261 */  jal     Matrix_Translate              
/* 08DB8 808DF628 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 08DBC 808DF62C 8FA400DC */  lw      $a0, 0x00DC($sp)           
/* 08DC0 808DF630 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 08DC4 808DF634 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 08DC8 808DF638 00812021 */  addu    $a0, $a0, $at              
/* 08DCC 808DF63C 0C0347F5 */  jal     Matrix_ReplaceRotation
/* 08DD0 808DF640 AFA40054 */  sw      $a0, 0x0054($sp)           
/* 08DD4 808DF644 C64C028C */  lwc1    $f12, 0x028C($s2)          ## 0000028C
/* 08DD8 808DF648 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 08DDC 808DF64C 44066000 */  mfc1    $a2, $f12                  
/* 08DE0 808DF650 0C0342A3 */  jal     Matrix_Scale              
/* 08DE4 808DF654 46006386 */  mov.s   $f14, $f12                 
/* 08DE8 808DF658 8E3002D0 */  lw      $s0, 0x02D0($s1)           ## 000002D0
/* 08DEC 808DF65C 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 08DF0 808DF660 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 08DF4 808DF664 26180008 */  addiu   $t8, $s0, 0x0008           ## $t8 = 00000008
/* 08DF8 808DF668 AE3802D0 */  sw      $t8, 0x02D0($s1)           ## 000002D0
/* 08DFC 808DF66C 3C05808F */  lui     $a1, %hi(D_808F7B40)       ## $a1 = 808F0000
/* 08E00 808DF670 24A57B40 */  addiu   $a1, $a1, %lo(D_808F7B40)  ## $a1 = 808F7B40
/* 08E04 808DF674 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 08E08 808DF678 24061DA4 */  addiu   $a2, $zero, 0x1DA4         ## $a2 = 00001DA4
/* 08E0C 808DF67C 0C0346A2 */  jal     Matrix_NewMtx              
/* 08E10 808DF680 AE190000 */  sw      $t9, 0x0000($s0)           ## 00000000
/* 08E14 808DF684 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 08E18 808DF688 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 08E1C 808DF68C 3C0A808F */  lui     $t2, %hi(D_808F2A30)       ## $t2 = 808F0000
/* 08E20 808DF690 254A2A30 */  addiu   $t2, $t2, %lo(D_808F2A30)  ## $t2 = 808F2A30
/* 08E24 808DF694 24680008 */  addiu   $t0, $v1, 0x0008           ## $t0 = 00000008
/* 08E28 808DF698 AE2802D0 */  sw      $t0, 0x02D0($s1)           ## 000002D0
/* 08E2C 808DF69C 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 08E30 808DF6A0 AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 08E34 808DF6A4 AC6A0004 */  sw      $t2, 0x0004($v1)           ## 00000004
/* 08E38 808DF6A8 8E460280 */  lw      $a2, 0x0280($s2)           ## 00000280
/* 08E3C 808DF6AC C64E027C */  lwc1    $f14, 0x027C($s2)          ## 0000027C
/* 08E40 808DF6B0 C64C0278 */  lwc1    $f12, 0x0278($s2)          ## 00000278
/* 08E44 808DF6B4 0C034261 */  jal     Matrix_Translate              
/* 08E48 808DF6B8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 08E4C 808DF6BC 0C0347F5 */  jal     Matrix_ReplaceRotation
/* 08E50 808DF6C0 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 08E54 808DF6C4 C64C0284 */  lwc1    $f12, 0x0284($s2)          ## 00000284
/* 08E58 808DF6C8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 08E5C 808DF6CC 44066000 */  mfc1    $a2, $f12                  
/* 08E60 808DF6D0 0C0342A3 */  jal     Matrix_Scale              
/* 08E64 808DF6D4 46006386 */  mov.s   $f14, $f12                 
/* 08E68 808DF6D8 8E3002D0 */  lw      $s0, 0x02D0($s1)           ## 000002D0
/* 08E6C 808DF6DC 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 08E70 808DF6E0 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = DA380003
/* 08E74 808DF6E4 260B0008 */  addiu   $t3, $s0, 0x0008           ## $t3 = 00000008
/* 08E78 808DF6E8 AE2B02D0 */  sw      $t3, 0x02D0($s1)           ## 000002D0
/* 08E7C 808DF6EC 3C05808F */  lui     $a1, %hi(D_808F7B54)       ## $a1 = 808F0000
/* 08E80 808DF6F0 24A57B54 */  addiu   $a1, $a1, %lo(D_808F7B54)  ## $a1 = 808F7B54
/* 08E84 808DF6F4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 08E88 808DF6F8 24061DB1 */  addiu   $a2, $zero, 0x1DB1         ## $a2 = 00001DB1
/* 08E8C 808DF6FC 0C0346A2 */  jal     Matrix_NewMtx              
/* 08E90 808DF700 AE0C0000 */  sw      $t4, 0x0000($s0)           ## 00000000
/* 08E94 808DF704 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 08E98 808DF708 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 08E9C 808DF70C 3C0EFA00 */  lui     $t6, 0xFA00                ## $t6 = FA000000
/* 08EA0 808DF710 3C01FF00 */  lui     $at, 0xFF00                ## $at = FF000000
/* 08EA4 808DF714 246D0008 */  addiu   $t5, $v1, 0x0008           ## $t5 = 00000008
/* 08EA8 808DF718 AE2D02D0 */  sw      $t5, 0x02D0($s1)           ## 000002D0
/* 08EAC 808DF71C AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 08EB0 808DF720 C6500288 */  lwc1    $f16, 0x0288($s2)          ## 00000288
/* 08EB4 808DF724 34216400 */  ori     $at, $at, 0x6400           ## $at = FF006400
/* 08EB8 808DF728 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 08EBC 808DF72C 4600848D */  trunc.w.s $f18, $f16                 
/* 08EC0 808DF730 358C0024 */  ori     $t4, $t4, 0x0024           ## $t4 = DB060024
/* 08EC4 808DF734 240E0020 */  addiu   $t6, $zero, 0x0020         ## $t6 = 00000020
/* 08EC8 808DF738 240F0020 */  addiu   $t7, $zero, 0x0020         ## $t7 = 00000020
/* 08ECC 808DF73C 44089000 */  mfc1    $t0, $f18                  
/* 08ED0 808DF740 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 08ED4 808DF744 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 08ED8 808DF748 310900FF */  andi    $t1, $t0, 0x00FF           ## $t1 = 00000000
/* 08EDC 808DF74C 01215025 */  or      $t2, $t1, $at              ## $t2 = FF006400
/* 08EE0 808DF750 AC6A0004 */  sw      $t2, 0x0004($v1)           ## 00000004
/* 08EE4 808DF754 8E3002D0 */  lw      $s0, 0x02D0($s1)           ## 000002D0
/* 08EE8 808DF758 240A0020 */  addiu   $t2, $zero, 0x0020         ## $t2 = 00000020
/* 08EEC 808DF75C 24090020 */  addiu   $t1, $zero, 0x0020         ## $t1 = 00000020
/* 08EF0 808DF760 260B0008 */  addiu   $t3, $s0, 0x0008           ## $t3 = 00000008
/* 08EF4 808DF764 AE2B02D0 */  sw      $t3, 0x02D0($s1)           ## 000002D0
/* 08EF8 808DF768 AE0C0000 */  sw      $t4, 0x0000($s0)           ## 00000000
/* 08EFC 808DF76C 8FAD00DC */  lw      $t5, 0x00DC($sp)           
/* 08F00 808DF770 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 08F04 808DF774 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 08F08 808DF778 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000008
/* 08F0C 808DF77C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 08F10 808DF780 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 08F14 808DF784 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 08F18 808DF788 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 08F1C 808DF78C 865901A2 */  lh      $t9, 0x01A2($s2)           ## 000001A2
/* 08F20 808DF790 AFAA0028 */  sw      $t2, 0x0028($sp)           
/* 08F24 808DF794 AFA90024 */  sw      $t1, 0x0024($sp)           
/* 08F28 808DF798 00190823 */  subu    $at, $zero, $t9            
/* 08F2C 808DF79C 00014080 */  sll     $t0, $at,  2               
/* 08F30 808DF7A0 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 08F34 808DF7A4 AFA80020 */  sw      $t0, 0x0020($sp)           
/* 08F38 808DF7A8 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 08F3C 808DF7AC 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 08F40 808DF7B0 3C0D808F */  lui     $t5, %hi(D_808F2B20)       ## $t5 = 808F0000
/* 08F44 808DF7B4 25AD2B20 */  addiu   $t5, $t5, %lo(D_808F2B20)  ## $t5 = 808F2B20
/* 08F48 808DF7B8 246B0008 */  addiu   $t3, $v1, 0x0008           ## $t3 = 00000008
/* 08F4C 808DF7BC AE2B02D0 */  sw      $t3, 0x02D0($s1)           ## 000002D0
/* 08F50 808DF7C0 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 08F54 808DF7C4 AC6C0000 */  sw      $t4, 0x0000($v1)           ## 00000000
/* 08F58 808DF7C8 AC6D0004 */  sw      $t5, 0x0004($v1)           ## 00000004
/* 08F5C 808DF7CC 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 08F60 808DF7D0 3C0FFA00 */  lui     $t7, 0xFA00                ## $t7 = FA000000
/* 08F64 808DF7D4 3C0196AA */  lui     $at, 0x96AA                ## $at = 96AA0000
/* 08F68 808DF7D8 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 08F6C 808DF7DC AE2E02D0 */  sw      $t6, 0x02D0($s1)           ## 000002D0
/* 08F70 808DF7E0 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 08F74 808DF7E4 C6440288 */  lwc1    $f4, 0x0288($s2)           ## 00000288
/* 08F78 808DF7E8 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 08F7C 808DF7EC 35AD0028 */  ori     $t5, $t5, 0x0028           ## $t5 = DB060028
/* 08F80 808DF7F0 4600218D */  trunc.w.s $f6, $f4                   
/* 08F84 808DF7F4 240F0020 */  addiu   $t7, $zero, 0x0020         ## $t7 = 00000020
/* 08F88 808DF7F8 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 08F8C 808DF7FC 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 08F90 808DF800 44093000 */  mfc1    $t1, $f6                   
/* 08F94 808DF804 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 08F98 808DF808 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 08F9C 808DF80C 312A00FF */  andi    $t2, $t1, 0x00FF           ## $t2 = 00000000
/* 08FA0 808DF810 01415825 */  or      $t3, $t2, $at              ## $t3 = 96AA0000
/* 08FA4 808DF814 AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
/* 08FA8 808DF818 8E3002D0 */  lw      $s0, 0x02D0($s1)           ## 000002D0
/* 08FAC 808DF81C 240B0040 */  addiu   $t3, $zero, 0x0040         ## $t3 = 00000040
/* 08FB0 808DF820 240A0040 */  addiu   $t2, $zero, 0x0040         ## $t2 = 00000040
/* 08FB4 808DF824 260C0008 */  addiu   $t4, $s0, 0x0008           ## $t4 = 00000008
/* 08FB8 808DF828 AE2C02D0 */  sw      $t4, 0x02D0($s1)           ## 000002D0
/* 08FBC 808DF82C AE0D0000 */  sw      $t5, 0x0000($s0)           ## 00000000
/* 08FC0 808DF830 8FAE00DC */  lw      $t6, 0x00DC($sp)           
/* 08FC4 808DF834 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 08FC8 808DF838 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000008
/* 08FCC 808DF83C AFB90018 */  sw      $t9, 0x0018($sp)           
/* 08FD0 808DF840 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 08FD4 808DF844 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 08FD8 808DF848 864201A2 */  lh      $v0, 0x01A2($s2)           ## 000001A2
/* 08FDC 808DF84C AFAB0028 */  sw      $t3, 0x0028($sp)           
/* 08FE0 808DF850 AFAA0024 */  sw      $t2, 0x0024($sp)           
/* 08FE4 808DF854 00020823 */  subu    $at, $zero, $v0            
/* 08FE8 808DF858 00014880 */  sll     $t1, $at,  2               
/* 08FEC 808DF85C 01214821 */  addu    $t1, $t1, $at              
/* 08FF0 808DF860 00094880 */  sll     $t1, $t1,  2               
/* 08FF4 808DF864 00024040 */  sll     $t0, $v0,  1               
/* 08FF8 808DF868 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 08FFC 808DF86C 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 09000 808DF870 AFA90020 */  sw      $t1, 0x0020($sp)           
/* 09004 808DF874 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 09008 808DF878 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 0900C 808DF87C 3C0D808F */  lui     $t5, %hi(D_808F2BC8)       ## $t5 = 808F0000
/* 09010 808DF880 25AD2BC8 */  addiu   $t5, $t5, %lo(D_808F2BC8)  ## $t5 = 808F2BC8
/* 09014 808DF884 246C0008 */  addiu   $t4, $v1, 0x0008           ## $t4 = 00000008
/* 09018 808DF888 AE2C02D0 */  sw      $t4, 0x02D0($s1)           ## 000002D0
/* 0901C 808DF88C 3C04DE00 */  lui     $a0, 0xDE00                ## $a0 = DE000000
/* 09020 808DF890 AC640000 */  sw      $a0, 0x0000($v1)           ## 00000000
/* 09024 808DF894 AC6D0004 */  sw      $t5, 0x0004($v1)           ## 00000004
/* 09028 808DF898 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 0902C 808DF89C 3C0FFA00 */  lui     $t7, 0xFA00                ## $t7 = FA000000
/* 09030 808DF8A0 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 09034 808DF8A4 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 09038 808DF8A8 AE2E02D0 */  sw      $t6, 0x02D0($s1)           ## 000002D0
/* 0903C 808DF8AC AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 09040 808DF8B0 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 09044 808DF8B4 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 09048 808DF8B8 3C09FFFF */  lui     $t1, 0xFFFF                ## $t1 = FFFF0000
/* 0904C 808DF8BC 35296400 */  ori     $t1, $t1, 0x6400           ## $t1 = FFFF6400
/* 09050 808DF8C0 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 09054 808DF8C4 AE3902D0 */  sw      $t9, 0x02D0($s1)           ## 000002D0
/* 09058 808DF8C8 3C08FB00 */  lui     $t0, 0xFB00                ## $t0 = FB000000
/* 0905C 808DF8CC AC680000 */  sw      $t0, 0x0000($v1)           ## 00000000
/* 09060 808DF8D0 AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
/* 09064 808DF8D4 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 09068 808DF8D8 3C0B808E */  lui     $t3, %hi(D_808E7DE8)       ## $t3 = 808E0000
/* 0906C 808DF8DC 256B7DE8 */  addiu   $t3, $t3, %lo(D_808E7DE8)  ## $t3 = 808E7DE8
/* 09070 808DF8E0 246A0008 */  addiu   $t2, $v1, 0x0008           ## $t2 = 00000008
/* 09074 808DF8E4 AE2A02D0 */  sw      $t2, 0x02D0($s1)           ## 000002D0
/* 09078 808DF8E8 AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
/* 0907C 808DF8EC AC640000 */  sw      $a0, 0x0000($v1)           ## 00000000
/* 09080 808DF8F0 8E460280 */  lw      $a2, 0x0280($s2)           ## 00000280
/* 09084 808DF8F4 C64E027C */  lwc1    $f14, 0x027C($s2)          ## 0000027C
/* 09088 808DF8F8 C64C0278 */  lwc1    $f12, 0x0278($s2)          ## 00000278
/* 0908C 808DF8FC 0C034261 */  jal     Matrix_Translate              
/* 09090 808DF900 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 09094 808DF904 0C0347F5 */  jal     Matrix_ReplaceRotation
/* 09098 808DF908 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 0909C 808DF90C C64C02D0 */  lwc1    $f12, 0x02D0($s2)          ## 000002D0
/* 090A0 808DF910 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 090A4 808DF914 44066000 */  mfc1    $a2, $f12                  
/* 090A8 808DF918 0C0342A3 */  jal     Matrix_Scale              
/* 090AC 808DF91C 46006386 */  mov.s   $f14, $f12                 
/* 090B0 808DF920 864C01A2 */  lh      $t4, 0x01A2($s2)           ## 000001A2
/* 090B4 808DF924 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 090B8 808DF928 4481A000 */  mtc1    $at, $f20                  ## $f20 = 10.00
/* 090BC 808DF92C 448C4000 */  mtc1    $t4, $f8                   ## $f8 = 0.00
/* 090C0 808DF930 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 090C4 808DF934 44819000 */  mtc1    $at, $f18                  ## $f18 = 1000.00
/* 090C8 808DF938 468042A0 */  cvt.s.w $f10, $f8                  
/* 090CC 808DF93C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 090D0 808DF940 46145402 */  mul.s   $f16, $f10, $f20           
/* 090D4 808DF944 0C0343B5 */  jal     Matrix_RotateZ              
/* 090D8 808DF948 46128303 */  div.s   $f12, $f16, $f18           
/* 090DC 808DF94C 8E3002D0 */  lw      $s0, 0x02D0($s1)           ## 000002D0
/* 090E0 808DF950 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 090E4 808DF954 35CE0003 */  ori     $t6, $t6, 0x0003           ## $t6 = DA380003
/* 090E8 808DF958 260D0008 */  addiu   $t5, $s0, 0x0008           ## $t5 = 00000008
/* 090EC 808DF95C AE2D02D0 */  sw      $t5, 0x02D0($s1)           ## 000002D0
/* 090F0 808DF960 3C05808F */  lui     $a1, %hi(D_808F7B68)       ## $a1 = 808F0000
/* 090F4 808DF964 24A57B68 */  addiu   $a1, $a1, %lo(D_808F7B68)  ## $a1 = 808F7B68
/* 090F8 808DF968 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 090FC 808DF96C 24061DF9 */  addiu   $a2, $zero, 0x1DF9         ## $a2 = 00001DF9
/* 09100 808DF970 0C0346A2 */  jal     Matrix_NewMtx              
/* 09104 808DF974 AE0E0000 */  sw      $t6, 0x0000($s0)           ## 00000000
/* 09108 808DF978 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 0910C 808DF97C 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 09110 808DF980 3C19808E */  lui     $t9, %hi(D_808E7E58)       ## $t9 = 808E0000
/* 09114 808DF984 27397E58 */  addiu   $t9, $t9, %lo(D_808E7E58)  ## $t9 = 808E7E58
/* 09118 808DF988 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 0911C 808DF98C AE2F02D0 */  sw      $t7, 0x02D0($s1)           ## 000002D0
/* 09120 808DF990 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 09124 808DF994 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 09128 808DF998 AC790004 */  sw      $t9, 0x0004($v1)           ## 00000004
/* 0912C 808DF99C 864401AA */  lh      $a0, 0x01AA($s2)           ## 000001AA
/* 09130 808DF9A0 240571AC */  addiu   $a1, $zero, 0x71AC         ## $a1 = 000071AC
/* 09134 808DF9A4 2406263A */  addiu   $a2, $zero, 0x263A         ## $a2 = 0000263A
/* 09138 808DF9A8 0C237B4C */  jal     func_808DED30              
/* 0913C 808DF9AC 24840001 */  addiu   $a0, $a0, 0x0001           ## $a0 = 00000001
/* 09140 808DF9B0 C64C0278 */  lwc1    $f12, 0x0278($s2)          ## 00000278
/* 09144 808DF9B4 C64E027C */  lwc1    $f14, 0x027C($s2)          ## 0000027C
/* 09148 808DF9B8 8E460280 */  lw      $a2, 0x0280($s2)           ## 00000280
/* 0914C 808DF9BC 0C034261 */  jal     Matrix_Translate              
/* 09150 808DF9C0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 09154 808DF9C4 864801A2 */  lh      $t0, 0x01A2($s2)           ## 000001A2
/* 09158 808DF9C8 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 0915C 808DF9CC 44815000 */  mtc1    $at, $f10                  ## $f10 = 1000.00
/* 09160 808DF9D0 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 09164 808DF9D4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 09168 808DF9D8 468021A0 */  cvt.s.w $f6, $f4                   
/* 0916C 808DF9DC 46143202 */  mul.s   $f8, $f6, $f20             
/* 09170 808DF9E0 0C034348 */  jal     Matrix_RotateY              
/* 09174 808DF9E4 460A4303 */  div.s   $f12, $f8, $f10            
/* 09178 808DF9E8 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 0917C 808DF9EC 3C0AFB00 */  lui     $t2, 0xFB00                ## $t2 = FB000000
/* 09180 808DF9F0 3C0BC8FF */  lui     $t3, 0xC8FF                ## $t3 = C8FF0000
/* 09184 808DF9F4 24690008 */  addiu   $t1, $v1, 0x0008           ## $t1 = 00000008
/* 09188 808DF9F8 AE2902D0 */  sw      $t1, 0x02D0($s1)           ## 000002D0
/* 0918C 808DF9FC AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
/* 09190 808DFA00 AC6A0000 */  sw      $t2, 0x0000($v1)           ## 00000000
/* 09194 808DFA04 864C008A */  lh      $t4, 0x008A($s2)           ## 0000008A
/* 09198 808DFA08 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 0919C 808DFA0C 44812000 */  mtc1    $at, $f4                   ## $f4 = 32768.00
/* 091A0 808DFA10 448C8000 */  mtc1    $t4, $f16                  ## $f16 = 0.00
/* 091A4 808DFA14 3C018090 */  lui     $at, %hi(D_808F8140)       ## $at = 80900000
/* 091A8 808DFA18 C4288140 */  lwc1    $f8, %lo(D_808F8140)($at)  
/* 091AC 808DFA1C 468084A0 */  cvt.s.w $f18, $f16                 
/* 091B0 808DFA20 3C0E808F */  lui     $t6, %hi(D_808F0FD8)       ## $t6 = 808F0000
/* 091B4 808DFA24 25CE0FD8 */  addiu   $t6, $t6, %lo(D_808F0FD8)  ## $t6 = 808F0FD8
/* 091B8 808DFA28 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 091BC 808DFA2C 46049183 */  div.s   $f6, $f18, $f4             
/* 091C0 808DFA30 46083282 */  mul.s   $f10, $f6, $f8             
/* 091C4 808DFA34 E7AA00D0 */  swc1    $f10, 0x00D0($sp)          
/* 091C8 808DFA38 864D01AC */  lh      $t5, 0x01AC($s2)           ## 000001AC
/* 091CC 808DFA3C 19A00057 */  blez    $t5, .L808DFB9C            
/* 091D0 808DFA40 00000000 */  nop
/* 091D4 808DFA44 AFAE0054 */  sw      $t6, 0x0054($sp)           
.L808DFA48:
/* 091D8 808DFA48 0C237B53 */  jal     func_808DED4C              
/* 091DC 808DFA4C 00000000 */  nop
/* 091E0 808DFA50 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 091E4 808DFA54 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 091E8 808DFA58 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 091EC 808DFA5C 3C018090 */  lui     $at, %hi(D_808F8144)       ## $at = 80900000
/* 091F0 808DFA60 C4248144 */  lwc1    $f4, %lo(D_808F8144)($at)  
/* 091F4 808DFA64 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 091F8 808DFA68 AE2F02D0 */  sw      $t7, 0x02D0($s1)           ## 000002D0
/* 091FC 808DFA6C 3C18FA00 */  lui     $t8, 0xFA00                ## $t8 = FA000000
/* 09200 808DFA70 0010C880 */  sll     $t9, $s0,  2               
/* 09204 808DFA74 02594021 */  addu    $t0, $s2, $t9              
/* 09208 808DFA78 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 0920C 808DFA7C 46100481 */  sub.s   $f18, $f0, $f16            
/* 09210 808DFA80 C50A0294 */  lwc1    $f10, 0x0294($t0)          ## 00000294
/* 09214 808DFA84 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 09218 808DFA88 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.50
/* 0921C 808DFA8C 4600540D */  trunc.w.s $f16, $f10                 
/* 09220 808DFA90 46049182 */  mul.s   $f6, $f18, $f4             
/* 09224 808DFA94 2401FF00 */  addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
/* 09228 808DFA98 440C8000 */  mfc1    $t4, $f16                  
/* 0922C 808DFA9C 00000000 */  nop
/* 09230 808DFAA0 318D00FF */  andi    $t5, $t4, 0x00FF           ## $t5 = 00000000
/* 09234 808DFAA4 01A17025 */  or      $t6, $t5, $at              ## $t6 = FFFFFF00
/* 09238 808DFAA8 46083502 */  mul.s   $f20, $f6, $f8             
/* 0923C 808DFAAC 0C034213 */  jal     Matrix_Push              
/* 09240 808DFAB0 AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
/* 09244 808DFAB4 C7B200D0 */  lwc1    $f18, 0x00D0($sp)          
/* 09248 808DFAB8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0924C 808DFABC 0C034348 */  jal     Matrix_RotateY              
/* 09250 808DFAC0 4612A300 */  add.s   $f12, $f20, $f18           
/* 09254 808DFAC4 0C237B53 */  jal     func_808DED4C              
/* 09258 808DFAC8 00000000 */  nop
/* 0925C 808DFACC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 09260 808DFAD0 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 09264 808DFAD4 3C018090 */  lui     $at, %hi(D_808F8148)       ## $at = 80900000
/* 09268 808DFAD8 C4288148 */  lwc1    $f8, %lo(D_808F8148)($at)  
/* 0926C 808DFADC 46040181 */  sub.s   $f6, $f0, $f4              
/* 09270 808DFAE0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 09274 808DFAE4 46083302 */  mul.s   $f12, $f6, $f8             
/* 09278 808DFAE8 0C0342DC */  jal     Matrix_RotateX              
/* 0927C 808DFAEC 00000000 */  nop
/* 09280 808DFAF0 4600A306 */  mov.s   $f12, $f20                 
/* 09284 808DFAF4 0C0343B5 */  jal     Matrix_RotateZ              
/* 09288 808DFAF8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0928C 808DFAFC 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 09290 808DFB00 3C064248 */  lui     $a2, 0x4248                ## $a2 = 42480000
/* 09294 808DFB04 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 09298 808DFB08 0C034261 */  jal     Matrix_Translate              
/* 0929C 808DFB0C 46006386 */  mov.s   $f14, $f12                 
/* 092A0 808DFB10 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 092A4 808DFB14 44816000 */  mtc1    $at, $f12                  ## $f12 = 4.00
/* 092A8 808DFB18 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 092AC 808DFB1C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 092B0 808DFB20 0C0342A3 */  jal     Matrix_Scale              
/* 092B4 808DFB24 46006386 */  mov.s   $f14, $f12                 
/* 092B8 808DFB28 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 092BC 808DFB2C 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 092C0 808DFB30 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 092C4 808DFB34 246F0008 */  addiu   $t7, $v1, 0x0008           ## $t7 = 00000008
/* 092C8 808DFB38 AE2F02D0 */  sw      $t7, 0x02D0($s1)           ## 000002D0
/* 092CC 808DFB3C 3C05808F */  lui     $a1, %hi(D_808F7B7C)       ## $a1 = 808F0000
/* 092D0 808DFB40 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 092D4 808DFB44 24A57B7C */  addiu   $a1, $a1, %lo(D_808F7B7C)  ## $a1 = 808F7B7C
/* 092D8 808DFB48 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 092DC 808DFB4C 24061E21 */  addiu   $a2, $zero, 0x1E21         ## $a2 = 00001E21
/* 092E0 808DFB50 0C0346A2 */  jal     Matrix_NewMtx              
/* 092E4 808DFB54 AFA30060 */  sw      $v1, 0x0060($sp)           
/* 092E8 808DFB58 8FA70060 */  lw      $a3, 0x0060($sp)           
/* 092EC 808DFB5C 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 092F0 808DFB60 ACE20004 */  sw      $v0, 0x0004($a3)           ## 00000004
/* 092F4 808DFB64 8E2302D0 */  lw      $v1, 0x02D0($s1)           ## 000002D0
/* 092F8 808DFB68 24790008 */  addiu   $t9, $v1, 0x0008           ## $t9 = 00000008
/* 092FC 808DFB6C AE3902D0 */  sw      $t9, 0x02D0($s1)           ## 000002D0
/* 09300 808DFB70 AC680000 */  sw      $t0, 0x0000($v1)           ## 00000000
/* 09304 808DFB74 8FA90054 */  lw      $t1, 0x0054($sp)           
/* 09308 808DFB78 0C034221 */  jal     Matrix_Pop              
/* 0930C 808DFB7C AC690004 */  sw      $t1, 0x0004($v1)           ## 00000004
/* 09310 808DFB80 864A01AC */  lh      $t2, 0x01AC($s2)           ## 000001AC
/* 09314 808DFB84 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 09318 808DFB88 00108400 */  sll     $s0, $s0, 16               
/* 0931C 808DFB8C 00108403 */  sra     $s0, $s0, 16               
/* 09320 808DFB90 020A082A */  slt     $at, $s0, $t2              
/* 09324 808DFB94 1420FFAC */  bne     $at, $zero, .L808DFA48     
/* 09328 808DFB98 00000000 */  nop
.L808DFB9C:
/* 0932C 808DFB9C 3C06808F */  lui     $a2, %hi(D_808F7B90)       ## $a2 = 808F0000
/* 09330 808DFBA0 24C67B90 */  addiu   $a2, $a2, %lo(D_808F7B90)  ## $a2 = 808F7B90
/* 09334 808DFBA4 27A400B4 */  addiu   $a0, $sp, 0x00B4           ## $a0 = FFFFFFDC
/* 09338 808DFBA8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0933C 808DFBAC 0C031AD5 */  jal     Graph_CloseDisps              
/* 09340 808DFBB0 24071E29 */  addiu   $a3, $zero, 0x1E29         ## $a3 = 00001E29
/* 09344 808DFBB4 8FBF004C */  lw      $ra, 0x004C($sp)           
.L808DFBB8:
/* 09348 808DFBB8 D7B40038 */  ldc1    $f20, 0x0038($sp)          
/* 0934C 808DFBBC 8FB00040 */  lw      $s0, 0x0040($sp)           
/* 09350 808DFBC0 8FB10044 */  lw      $s1, 0x0044($sp)           
/* 09354 808DFBC4 8FB20048 */  lw      $s2, 0x0048($sp)           
/* 09358 808DFBC8 03E00008 */  jr      $ra                        
/* 0935C 808DFBCC 27BD00D8 */  addiu   $sp, $sp, 0x00D8           ## $sp = 00000000
