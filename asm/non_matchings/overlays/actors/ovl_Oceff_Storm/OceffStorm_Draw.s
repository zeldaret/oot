.rdata
glabel D_80BA8C48
    .asciz "../z_oceff_storm.c"
    .balign 4

glabel D_80BA8C5C
    .asciz "../z_oceff_storm.c"
    .balign 4

glabel D_80BA8C70
    .asciz "../z_oceff_storm.c"
    .balign 4

.text
glabel OceffStorm_Draw
/* 00554 80BA7634 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 00558 80BA7638 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 0055C 80BA763C AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00560 80BA7640 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 00564 80BA7644 AFA40088 */  sw      $a0, 0x0088($sp)           
/* 00568 80BA7648 8CAE009C */  lw      $t6, 0x009C($a1)           ## 0000009C
/* 0056C 80BA764C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00570 80BA7650 3C0680BB */  lui     $a2, %hi(D_80BA8C48)       ## $a2 = 80BB0000
/* 00574 80BA7654 31CF0FFF */  andi    $t7, $t6, 0x0FFF           ## $t7 = 00000000
/* 00578 80BA7658 AFAF0084 */  sw      $t7, 0x0084($sp)           
/* 0057C 80BA765C 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00580 80BA7660 24C68C48 */  addiu   $a2, $a2, %lo(D_80BA8C48)  ## $a2 = 80BA8C48
/* 00584 80BA7664 27A40068 */  addiu   $a0, $sp, 0x0068           ## $a0 = FFFFFFE0
/* 00588 80BA7668 240701E6 */  addiu   $a3, $zero, 0x01E6         ## $a3 = 000001E6
/* 0058C 80BA766C 0C031AB1 */  jal     Graph_OpenDisps              
/* 00590 80BA7670 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00594 80BA7674 0C024F61 */  jal     func_80093D84              
/* 00598 80BA7678 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 0059C 80BA767C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 005A0 80BA7680 3C19FA00 */  lui     $t9, 0xFA00                ## $t9 = FA000000
/* 005A4 80BA7684 37398080 */  ori     $t9, $t9, 0x8080           ## $t9 = FA008080
/* 005A8 80BA7688 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 005AC 80BA768C AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 005B0 80BA7690 240BC8FF */  addiu   $t3, $zero, 0xC8FF         ## $t3 = FFFFC8FF
/* 005B4 80BA7694 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 005B8 80BA7698 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 005BC 80BA769C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 005C0 80BA76A0 3C0E9696 */  lui     $t6, 0x9696                ## $t6 = 96960000
/* 005C4 80BA76A4 35CE0080 */  ori     $t6, $t6, 0x0080           ## $t6 = 96960080
/* 005C8 80BA76A8 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 005CC 80BA76AC AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 005D0 80BA76B0 3C0DFB00 */  lui     $t5, 0xFB00                ## $t5 = FB000000
/* 005D4 80BA76B4 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 005D8 80BA76B8 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 005DC 80BA76BC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 005E0 80BA76C0 3C18E300 */  lui     $t8, 0xE300                ## $t8 = E3000000
/* 005E4 80BA76C4 37181A01 */  ori     $t8, $t8, 0x1A01           ## $t8 = E3001A01
/* 005E8 80BA76C8 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 005EC 80BA76CC AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 005F0 80BA76D0 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 005F4 80BA76D4 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 005F8 80BA76D8 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 005FC 80BA76DC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00600 80BA76E0 3C0CE300 */  lui     $t4, 0xE300                ## $t4 = E3000000
/* 00604 80BA76E4 358C1801 */  ori     $t4, $t4, 0x1801           ## $t4 = E3001801
/* 00608 80BA76E8 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 0060C 80BA76EC AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 00610 80BA76F0 240D0080 */  addiu   $t5, $zero, 0x0080         ## $t5 = 00000080
/* 00614 80BA76F4 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 00618 80BA76F8 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 0061C 80BA76FC 8FA70088 */  lw      $a3, 0x0088($sp)           
/* 00620 80BA7700 3C0180BB */  lui     $at, %hi(D_80BA8AD7)       ## $at = 80BB0000
/* 00624 80BA7704 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 00628 80BA7708 90E2014F */  lbu     $v0, 0x014F($a3)           ## 0000014F
/* 0062C 80BA770C 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 00630 80BA7710 3C0580BB */  lui     $a1, %hi(D_80BA8C5C)       ## $a1 = 80BB0000
/* 00634 80BA7714 00021043 */  sra     $v0, $v0,  1               
/* 00638 80BA7718 A0228AD7 */  sb      $v0, %lo(D_80BA8AD7)($at)  
/* 0063C 80BA771C 3C0180BB */  lui     $at, %hi(D_80BA8A47)       ## $at = 80BB0000
/* 00640 80BA7720 A0228A47 */  sb      $v0, %lo(D_80BA8A47)($at)  
/* 00644 80BA7724 3C0180BB */  lui     $at, %hi(D_80BA89A7)       ## $at = 80BB0000
/* 00648 80BA7728 A02289A7 */  sb      $v0, %lo(D_80BA89A7)($at)  
/* 0064C 80BA772C 3C0180BB */  lui     $at, %hi(D_80BA8947)       ## $at = 80BB0000
/* 00650 80BA7730 A0228947 */  sb      $v0, %lo(D_80BA8947)($at)  
/* 00654 80BA7734 90E3014F */  lbu     $v1, 0x014F($a3)           ## 0000014F
/* 00658 80BA7738 3C0180BB */  lui     $at, %hi(D_80BA8AA7)       ## $at = 80BB0000
/* 0065C 80BA773C 24A58C5C */  addiu   $a1, $a1, %lo(D_80BA8C5C)  ## $a1 = 80BA8C5C
/* 00660 80BA7740 A0238AA7 */  sb      $v1, %lo(D_80BA8AA7)($at)  
/* 00664 80BA7744 3C0180BB */  lui     $at, %hi(D_80BA89E7)       ## $at = 80BB0000
/* 00668 80BA7748 A02389E7 */  sb      $v1, %lo(D_80BA89E7)($at)  
/* 0066C 80BA774C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00670 80BA7750 240601F2 */  addiu   $a2, $zero, 0x01F2         ## $a2 = 000001F2
/* 00674 80BA7754 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 00678 80BA7758 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 0067C 80BA775C AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 00680 80BA7760 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00684 80BA7764 0C0346A2 */  jal     Matrix_NewMtx              
/* 00688 80BA7768 AFA20054 */  sw      $v0, 0x0054($sp)           
/* 0068C 80BA776C 8FA30054 */  lw      $v1, 0x0054($sp)           
/* 00690 80BA7770 3C1980BB */  lui     $t9, %hi(D_80BA8AE8)       ## $t9 = 80BB0000
/* 00694 80BA7774 27398AE8 */  addiu   $t9, $t9, %lo(D_80BA8AE8)  ## $t9 = 80BA8AE8
/* 00698 80BA7778 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 0069C 80BA777C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 006A0 80BA7780 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 006A4 80BA7784 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 006A8 80BA7788 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 006AC 80BA778C AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 006B0 80BA7790 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 006B4 80BA7794 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 006B8 80BA7798 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 006BC 80BA779C 8FAA0084 */  lw      $t2, 0x0084($sp)           
/* 006C0 80BA77A0 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 006C4 80BA77A4 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 006C8 80BA77A8 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 006CC 80BA77AC AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 006D0 80BA77B0 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 006D4 80BA77B4 000A1823 */  subu    $v1, $zero, $t2            
/* 006D8 80BA77B8 0003C080 */  sll     $t8, $v1,  2               
/* 006DC 80BA77BC 0303C023 */  subu    $t8, $t8, $v1              
/* 006E0 80BA77C0 0018C080 */  sll     $t8, $t8,  2               
/* 006E4 80BA77C4 240B0020 */  addiu   $t3, $zero, 0x0020         ## $t3 = 00000020
/* 006E8 80BA77C8 240D0020 */  addiu   $t5, $zero, 0x0020         ## $t5 = 00000020
/* 006EC 80BA77CC 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 006F0 80BA77D0 000A78C0 */  sll     $t7, $t2,  3               
/* 006F4 80BA77D4 AFAF001C */  sw      $t7, 0x001C($sp)           
/* 006F8 80BA77D8 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 006FC 80BA77DC AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 00700 80BA77E0 AFAB0028 */  sw      $t3, 0x0028($sp)           
/* 00704 80BA77E4 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 00708 80BA77E8 000338C0 */  sll     $a3, $v1,  3               
/* 0070C 80BA77EC AFB90024 */  sw      $t9, 0x0024($sp)           
/* 00710 80BA77F0 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00714 80BA77F4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00718 80BA77F8 AFA2004C */  sw      $v0, 0x004C($sp)           
/* 0071C 80BA77FC 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 00720 80BA7800 000A3080 */  sll     $a2, $t2,  2               
/* 00724 80BA7804 8FA8004C */  lw      $t0, 0x004C($sp)           
/* 00728 80BA7808 3C0E80BB */  lui     $t6, %hi(D_80BA8B90)       ## $t6 = 80BB0000
/* 0072C 80BA780C 25CE8B90 */  addiu   $t6, $t6, %lo(D_80BA8B90)  ## $t6 = 80BA8B90
/* 00730 80BA7810 AD020004 */  sw      $v0, 0x0004($t0)           ## 00000004
/* 00734 80BA7814 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00738 80BA7818 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 0073C 80BA781C 3C0680BB */  lui     $a2, %hi(D_80BA8C70)       ## $a2 = 80BB0000
/* 00740 80BA7820 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 00744 80BA7824 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 00748 80BA7828 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 0074C 80BA782C AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 00750 80BA7830 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 00754 80BA7834 24C68C70 */  addiu   $a2, $a2, %lo(D_80BA8C70)  ## $a2 = 80BA8C70
/* 00758 80BA7838 27A40068 */  addiu   $a0, $sp, 0x0068           ## $a0 = FFFFFFE0
/* 0075C 80BA783C 0C031AD5 */  jal     Graph_CloseDisps              
/* 00760 80BA7840 24070200 */  addiu   $a3, $zero, 0x0200         ## $a3 = 00000200
/* 00764 80BA7844 8FA40088 */  lw      $a0, 0x0088($sp)           
/* 00768 80BA7848 0C2E9D14 */  jal     func_80BA7450              
/* 0076C 80BA784C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00770 80BA7850 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00774 80BA7854 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 00778 80BA7858 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 0077C 80BA785C 03E00008 */  jr      $ra                        
/* 00780 80BA7860 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
/* 00784 80BA7864 00000000 */  nop
/* 00788 80BA7868 00000000 */  nop
/* 0078C 80BA786C 00000000 */  nop

