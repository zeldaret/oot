glabel func_80967FFC
/* 016AC 80967FFC 27BDFF28 */  addiu   $sp, $sp, 0xFF28           ## $sp = FFFFFF28
/* 016B0 80968000 AFBF0064 */  sw      $ra, 0x0064($sp)           
/* 016B4 80968004 AFBE0060 */  sw      $s8, 0x0060($sp)           
/* 016B8 80968008 AFB7005C */  sw      $s7, 0x005C($sp)           
/* 016BC 8096800C AFB60058 */  sw      $s6, 0x0058($sp)           
/* 016C0 80968010 AFB50054 */  sw      $s5, 0x0054($sp)           
/* 016C4 80968014 AFB40050 */  sw      $s4, 0x0050($sp)           
/* 016C8 80968018 AFB3004C */  sw      $s3, 0x004C($sp)           
/* 016CC 8096801C AFB20048 */  sw      $s2, 0x0048($sp)           
/* 016D0 80968020 AFB10044 */  sw      $s1, 0x0044($sp)           
/* 016D4 80968024 AFB00040 */  sw      $s0, 0x0040($sp)           
/* 016D8 80968028 F7B40038 */  sdc1    $f20, 0x0038($sp)          
/* 016DC 8096802C AFA500DC */  sw      $a1, 0x00DC($sp)           
/* 016E0 80968030 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 016E4 80968034 9492028E */  lhu     $s2, 0x028E($a0)           ## 0000028E
/* 016E8 80968038 3C068097 */  lui     $a2, %hi(D_80969448)       ## $a2 = 80970000
/* 016EC 8096803C 24C69448 */  addiu   $a2, $a2, %lo(D_80969448)  ## $a2 = 80969448
/* 016F0 80968040 27A400B8 */  addiu   $a0, $sp, 0x00B8           ## $a0 = FFFFFFE0
/* 016F4 80968044 2407042E */  addiu   $a3, $zero, 0x042E         ## $a3 = 0000042E
/* 016F8 80968048 0C031AB1 */  jal     func_800C6AC4              
/* 016FC 8096804C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01700 80968050 8FAF00DC */  lw      $t7, 0x00DC($sp)           
/* 01704 80968054 0C024F61 */  jal     func_80093D84              
/* 01708 80968058 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 0170C 8096805C 3C018097 */  lui     $at, %hi(D_8096963C)       ## $at = 80970000
/* 01710 80968060 C434963C */  lwc1    $f20, %lo(D_8096963C)($at) 
/* 01714 80968064 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01718 80968068 0C0342DC */  jal     Matrix_RotateX              
/* 0171C 8096806C 4600A306 */  mov.s   $f12, $f20                 
/* 01720 80968070 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01724 80968074 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 01728 80968078 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 0172C 8096807C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01730 80968080 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 01734 80968084 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 01738 80968088 8FA800DC */  lw      $t0, 0x00DC($sp)           
/* 0173C 8096808C 001248C0 */  sll     $t1, $s2,  3               
/* 01740 80968090 312A7FFF */  andi    $t2, $t1, 0x7FFF           ## $t2 = 00000000
/* 01744 80968094 8D040000 */  lw      $a0, 0x0000($t0)           ## 00000000
/* 01748 80968098 240B7FFF */  addiu   $t3, $zero, 0x7FFF         ## $t3 = 00007FFF
/* 0174C 8096809C 016A3823 */  subu    $a3, $t3, $t2              
/* 01750 809680A0 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 01754 809680A4 240C0010 */  addiu   $t4, $zero, 0x0010         ## $t4 = 00000010
/* 01758 809680A8 240D0200 */  addiu   $t5, $zero, 0x0200         ## $t5 = 00000200
/* 0175C 809680AC 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01760 809680B0 240F0010 */  addiu   $t7, $zero, 0x0010         ## $t7 = 00000010
/* 01764 809680B4 AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 01768 809680B8 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 0176C 809680BC AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 01770 809680C0 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 01774 809680C4 AFB80028 */  sw      $t8, 0x0028($sp)           
/* 01778 809680C8 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 0177C 809680CC AFA0001C */  sw      $zero, 0x001C($sp)         
/* 01780 809680D0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01784 809680D4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01788 809680D8 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 0178C 809680DC 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 01790 809680E0 3C088097 */  lui     $t0, %hi(D_80969398)       ## $t0 = 80970000
/* 01794 809680E4 25089398 */  addiu   $t0, $t0, %lo(D_80969398)  ## $t0 = 80969398
/* 01798 809680E8 AE220004 */  sw      $v0, 0x0004($s1)           ## 00000004
/* 0179C 809680EC 250A0024 */  addiu   $t2, $t0, 0x0024           ## $t2 = 809693BC
/* 017A0 809680F0 27B90088 */  addiu   $t9, $sp, 0x0088           ## $t9 = FFFFFFB0
.L809680F4:
/* 017A4 809680F4 8D0B0000 */  lw      $t3, 0x0000($t0)           ## 80969398
/* 017A8 809680F8 2508000C */  addiu   $t0, $t0, 0x000C           ## $t0 = 809693A4
/* 017AC 809680FC 2739000C */  addiu   $t9, $t9, 0x000C           ## $t9 = FFFFFFBC
/* 017B0 80968100 AF2BFFF4 */  sw      $t3, -0x000C($t9)          ## FFFFFFB0
/* 017B4 80968104 8D09FFF8 */  lw      $t1, -0x0008($t0)          ## 8096939C
/* 017B8 80968108 AF29FFF8 */  sw      $t1, -0x0008($t9)          ## FFFFFFB4
/* 017BC 8096810C 8D0BFFFC */  lw      $t3, -0x0004($t0)          ## 809693A0
/* 017C0 80968110 150AFFF8 */  bne     $t0, $t2, .L809680F4       
/* 017C4 80968114 AF2BFFFC */  sw      $t3, -0x0004($t9)          ## FFFFFFB8
/* 017C8 80968118 4600A306 */  mov.s   $f12, $f20                 
/* 017CC 8096811C 0C0343B5 */  jal     Matrix_RotateZ              
/* 017D0 80968120 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 017D4 80968124 3C0C0600 */  lui     $t4, 0x0600                ## $t4 = 06000000
/* 017D8 80968128 258C22B0 */  addiu   $t4, $t4, 0x22B0           ## $t4 = 060022B0
/* 017DC 8096812C 3C018097 */  lui     $at, %hi(D_80969640)       ## $at = 80970000
/* 017E0 80968130 3C17FA00 */  lui     $s7, 0xFA00                ## $s7 = FA000000
/* 017E4 80968134 3C158097 */  lui     $s5, %hi(D_80969458)       ## $s5 = 80970000
/* 017E8 80968138 3C14DA38 */  lui     $s4, 0xDA38                ## $s4 = DA380000
/* 017EC 8096813C 36940003 */  ori     $s4, $s4, 0x0003           ## $s4 = DA380003
/* 017F0 80968140 26B59458 */  addiu   $s5, $s5, %lo(D_80969458)  ## $s5 = 80969458
/* 017F4 80968144 36F70080 */  ori     $s7, $s7, 0x0080           ## $s7 = FA000080
/* 017F8 80968148 C4349640 */  lwc1    $f20, %lo(D_80969640)($at) 
/* 017FC 8096814C AFAC006C */  sw      $t4, 0x006C($sp)           
/* 01800 80968150 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 01804 80968154 27B10088 */  addiu   $s1, $sp, 0x0088           ## $s1 = FFFFFFB0
/* 01808 80968158 3C1EFB00 */  lui     $s8, 0xFB00                ## $s8 = FB000000
/* 0180C 8096815C 3C16E700 */  lui     $s6, 0xE700                ## $s6 = E7000000
.L80968160:
/* 01810 80968160 4600A306 */  mov.s   $f12, $f20                 
/* 01814 80968164 0C0343B5 */  jal     Matrix_RotateZ              
/* 01818 80968168 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0181C 8096816C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01820 80968170 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 80969458
/* 01824 80968174 2406045B */  addiu   $a2, $zero, 0x045B         ## $a2 = 0000045B
/* 01828 80968178 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 0182C 8096817C AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 01830 80968180 AC540000 */  sw      $s4, 0x0000($v0)           ## 00000000
/* 01834 80968184 8FAE00DC */  lw      $t6, 0x00DC($sp)           
/* 01838 80968188 00409025 */  or      $s2, $v0, $zero            ## $s2 = 00000000
/* 0183C 8096818C 0C0346A2 */  jal     Matrix_NewMtx              
/* 01840 80968190 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 01844 80968194 AE420004 */  sw      $v0, 0x0004($s2)           ## 00000004
/* 01848 80968198 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0184C 8096819C 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 01850 809681A0 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 01854 809681A4 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01858 809681A8 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 0185C 809681AC AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 01860 809681B0 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
/* 01864 809681B4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01868 809681B8 26310006 */  addiu   $s1, $s1, 0x0006           ## $s1 = FFFFFFB6
/* 0186C 809681BC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01870 809681C0 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 01874 809681C4 AC570000 */  sw      $s7, 0x0000($v0)           ## 00000000
/* 01878 809681C8 922BFFFA */  lbu     $t3, -0x0006($s1)          ## FFFFFFB0
/* 0187C 809681CC 9228FFFC */  lbu     $t0, -0x0004($s1)          ## FFFFFFB2
/* 01880 809681D0 922FFFFB */  lbu     $t7, -0x0005($s1)          ## FFFFFFB1
/* 01884 809681D4 000B6600 */  sll     $t4, $t3, 24               
/* 01888 809681D8 0008CA00 */  sll     $t9, $t0,  8               
/* 0188C 809681DC 032C6825 */  or      $t5, $t9, $t4              ## $t5 = 00000000
/* 01890 809681E0 000FC400 */  sll     $t8, $t7, 16               
/* 01894 809681E4 01B85025 */  or      $t2, $t5, $t8              ## $t2 = 00000008
/* 01898 809681E8 354800FF */  ori     $t0, $t2, 0x00FF           ## $t0 = 000000FF
/* 0189C 809681EC AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 018A0 809681F0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 018A4 809681F4 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 018A8 809681F8 AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 018AC 809681FC AC5E0000 */  sw      $s8, 0x0000($v0)           ## 00000000
/* 018B0 80968200 922FFFFD */  lbu     $t7, -0x0003($s1)          ## FFFFFFB3
/* 018B4 80968204 9239FFFF */  lbu     $t9, -0x0001($s1)          ## FFFFFFB5
/* 018B8 80968208 9228FFFE */  lbu     $t0, -0x0002($s1)          ## FFFFFFB4
/* 018BC 8096820C 000F6E00 */  sll     $t5, $t7, 24               
/* 018C0 80968210 00196200 */  sll     $t4, $t9,  8               
/* 018C4 80968214 018DC025 */  or      $t8, $t4, $t5              ## $t8 = 00000000
/* 018C8 80968218 00084C00 */  sll     $t1, $t0, 16               
/* 018CC 8096821C 03095825 */  or      $t3, $t8, $t1              ## $t3 = 00000008
/* 018D0 80968220 357900FF */  ori     $t9, $t3, 0x00FF           ## $t9 = 000000FF
/* 018D4 80968224 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 018D8 80968228 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 018DC 8096822C 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 018E0 80968230 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 018E4 80968234 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 018E8 80968238 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 018EC 8096823C 8FAC006C */  lw      $t4, 0x006C($sp)           
/* 018F0 80968240 1661FFC7 */  bne     $s3, $at, .L80968160       
/* 018F4 80968244 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 018F8 80968248 8FAD00DC */  lw      $t5, 0x00DC($sp)           
/* 018FC 8096824C 3C068097 */  lui     $a2, %hi(D_80969468)       ## $a2 = 80970000
/* 01900 80968250 24C69468 */  addiu   $a2, $a2, %lo(D_80969468)  ## $a2 = 80969468
/* 01904 80968254 27A400B8 */  addiu   $a0, $sp, 0x00B8           ## $a0 = FFFFFFE0
/* 01908 80968258 24070467 */  addiu   $a3, $zero, 0x0467         ## $a3 = 00000467
/* 0190C 8096825C 0C031AD5 */  jal     func_800C6B54              
/* 01910 80968260 8DA50000 */  lw      $a1, 0x0000($t5)           ## 00000000
/* 01914 80968264 8FBF0064 */  lw      $ra, 0x0064($sp)           
/* 01918 80968268 D7B40038 */  ldc1    $f20, 0x0038($sp)          
/* 0191C 8096826C 8FB00040 */  lw      $s0, 0x0040($sp)           
/* 01920 80968270 8FB10044 */  lw      $s1, 0x0044($sp)           
/* 01924 80968274 8FB20048 */  lw      $s2, 0x0048($sp)           
/* 01928 80968278 8FB3004C */  lw      $s3, 0x004C($sp)           
/* 0192C 8096827C 8FB40050 */  lw      $s4, 0x0050($sp)           
/* 01930 80968280 8FB50054 */  lw      $s5, 0x0054($sp)           
/* 01934 80968284 8FB60058 */  lw      $s6, 0x0058($sp)           
/* 01938 80968288 8FB7005C */  lw      $s7, 0x005C($sp)           
/* 0193C 8096828C 8FBE0060 */  lw      $s8, 0x0060($sp)           
/* 01940 80968290 03E00008 */  jr      $ra                        
/* 01944 80968294 27BD00D8 */  addiu   $sp, $sp, 0x00D8           ## $sp = 00000000


