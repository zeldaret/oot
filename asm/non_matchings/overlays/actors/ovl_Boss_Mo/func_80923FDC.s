.rdata
glabel D_80926A50
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926A60
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926A70
    .asciz "../z_boss_mo.c"
    .balign 4

.text
glabel func_80923FDC
/* 084DC 80923FDC 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 084E0 80923FE0 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 084E4 80923FE4 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 084E8 80923FE8 AFA40078 */  sw      $a0, 0x0078($sp)           
/* 084EC 80923FEC AFA5007C */  sw      $a1, 0x007C($sp)           
/* 084F0 80923FF0 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 084F4 80923FF4 3C068092 */  lui     $a2, %hi(D_80926A50)       ## $a2 = 80920000
/* 084F8 80923FF8 24C66A50 */  addiu   $a2, $a2, %lo(D_80926A50)  ## $a2 = 80926A50
/* 084FC 80923FFC 27A40060 */  addiu   $a0, $sp, 0x0060           ## $a0 = FFFFFFE8
/* 08500 80924000 240719B6 */  addiu   $a3, $zero, 0x19B6         ## $a3 = 000019B6
/* 08504 80924004 0C031AB1 */  jal     Graph_OpenDisps              
/* 08508 80924008 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0850C 8092400C 0C034213 */  jal     Matrix_Push              
/* 08510 80924010 00000000 */  nop
/* 08514 80924014 8FAF007C */  lw      $t7, 0x007C($sp)           
/* 08518 80924018 0C024F61 */  jal     func_80093D84              
/* 0851C 8092401C 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 08520 80924020 8FB8007C */  lw      $t8, 0x007C($sp)           
/* 08524 80924024 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 08528 80924028 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0852C 8092402C 8F1907C0 */  lw      $t9, 0x07C0($t8)           ## 000007C0
/* 08530 80924030 44066000 */  mfc1    $a2, $f12                  
/* 08534 80924034 8F290028 */  lw      $t1, 0x0028($t9)           ## 00000028
/* 08538 80924038 852A0002 */  lh      $t2, 0x0002($t1)           ## 00000002
/* 0853C 8092403C 448A2000 */  mtc1    $t2, $f4                   ## $f4 = 0.00
/* 08540 80924040 0C034261 */  jal     Matrix_Translate              
/* 08544 80924044 468023A0 */  cvt.s.w $f14, $f4                  
/* 08548 80924048 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0854C 8092404C 8FA80078 */  lw      $t0, 0x0078($sp)           
/* 08550 80924050 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 08554 80924054 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 08558 80924058 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 0855C 8092405C 358C0034 */  ori     $t4, $t4, 0x0034           ## $t4 = DB060034
/* 08560 80924060 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 08564 80924064 8FAD007C */  lw      $t5, 0x007C($sp)           
/* 08568 80924068 C50A01B0 */  lwc1    $f10, 0x01B0($t0)          ## 000001B0
/* 0856C 8092406C C50601AC */  lwc1    $f6, 0x01AC($t0)           ## 000001AC
/* 08570 80924070 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 08574 80924074 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 08578 80924078 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 0857C 8092407C 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 08580 80924080 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 08584 80924084 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 08588 80924088 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 0858C 8092408C C51201B4 */  lwc1    $f18, 0x01B4($t0)          ## 000001B4
/* 08590 80924090 4600320D */  trunc.w.s $f8, $f6                   
/* 08594 80924094 24090020 */  addiu   $t1, $zero, 0x0020         ## $t1 = 00000020
/* 08598 80924098 240A0020 */  addiu   $t2, $zero, 0x0020         ## $t2 = 00000020
/* 0859C 8092409C 4600910D */  trunc.w.s $f4, $f18                  
/* 085A0 809240A0 44064000 */  mfc1    $a2, $f8                   
/* 085A4 809240A4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 085A8 809240A8 4600540D */  trunc.w.s $f16, $f10                 
/* 085AC 809240AC 440B2000 */  mfc1    $t3, $f4                   
/* 085B0 809240B0 00063400 */  sll     $a2, $a2, 16               
/* 085B4 809240B4 00063403 */  sra     $a2, $a2, 16               
/* 085B8 809240B8 000B6400 */  sll     $t4, $t3, 16               
/* 085BC 809240BC 000C6C03 */  sra     $t5, $t4, 16               
/* 085C0 809240C0 AFAD001C */  sw      $t5, 0x001C($sp)           
/* 085C4 809240C4 C50601B8 */  lwc1    $f6, 0x01B8($t0)           ## 000001B8
/* 085C8 809240C8 44078000 */  mfc1    $a3, $f16                  
/* 085CC 809240CC AFAA0028 */  sw      $t2, 0x0028($sp)           
/* 085D0 809240D0 4600320D */  trunc.w.s $f8, $f6                   
/* 085D4 809240D4 00073C00 */  sll     $a3, $a3, 16               
/* 085D8 809240D8 00073C03 */  sra     $a3, $a3, 16               
/* 085DC 809240DC AFA90024 */  sw      $t1, 0x0024($sp)           
/* 085E0 809240E0 440F4000 */  mfc1    $t7, $f8                   
/* 085E4 809240E4 AFA2005C */  sw      $v0, 0x005C($sp)           
/* 085E8 809240E8 000FC400 */  sll     $t8, $t7, 16               
/* 085EC 809240EC 0018CC03 */  sra     $t9, $t8, 16               
/* 085F0 809240F0 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 085F4 809240F4 AFB90020 */  sw      $t9, 0x0020($sp)           
/* 085F8 809240F8 8FA3005C */  lw      $v1, 0x005C($sp)           
/* 085FC 809240FC 3C0CE700 */  lui     $t4, 0xE700                ## $t4 = E7000000
/* 08600 80924100 3C0EFA00 */  lui     $t6, 0xFA00                ## $t6 = FA000000
/* 08604 80924104 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 08608 80924108 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0860C 8092410C 35CEFFFF */  ori     $t6, $t6, 0xFFFF           ## $t6 = FA00FFFF
/* 08610 80924110 3C0F8092 */  lui     $t7, %hi(D_80925CD4)       ## $t7 = 80920000
/* 08614 80924114 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 08618 80924118 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 0861C 8092411C AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 08620 80924120 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 08624 80924124 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 08628 80924128 3C01C8FF */  lui     $at, 0xC8FF                ## $at = C8FF0000
/* 0862C 8092412C 3421FF00 */  ori     $at, $at, 0xFF00           ## $at = C8FFFF00
/* 08630 80924130 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 08634 80924134 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 08638 80924138 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 0863C 8092413C 8DEF5CD4 */  lw      $t7, %lo(D_80925CD4)($t7)  
/* 08640 80924140 3C0EFB00 */  lui     $t6, 0xFB00                ## $t6 = FB000000
/* 08644 80924144 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 08648 80924148 C5EA01C4 */  lwc1    $f10, 0x01C4($t7)          ## 809201C4
/* 0864C 8092414C 3C0F0064 */  lui     $t7, 0x0064                ## $t7 = 00640000
/* 08650 80924150 35EFFF50 */  ori     $t7, $t7, 0xFF50           ## $t7 = 0064FF50
/* 08654 80924154 4600540D */  trunc.w.s $f16, $f10                 
/* 08658 80924158 440A8000 */  mfc1    $t2, $f16                  
/* 0865C 8092415C 00000000 */  nop
/* 08660 80924160 314B00FF */  andi    $t3, $t2, 0x00FF           ## $t3 = 00000000
/* 08664 80924164 01616025 */  or      $t4, $t3, $at              ## $t4 = C8FFFF00
/* 08668 80924168 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 0866C 8092416C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 08670 80924170 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 08674 80924174 44816000 */  mtc1    $at, $f12                  ## $f12 = 0.50
/* 08678 80924178 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0867C 8092417C 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 08680 80924180 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 08684 80924184 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 08688 80924188 44066000 */  mfc1    $a2, $f12                  
/* 0868C 8092418C AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 08690 80924190 0C0342A3 */  jal     Matrix_Scale              
/* 08694 80924194 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 08698 80924198 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0869C 8092419C 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 086A0 809241A0 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 086A4 809241A4 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 086A8 809241A8 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 086AC 809241AC AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 086B0 809241B0 8FA9007C */  lw      $t1, 0x007C($sp)           
/* 086B4 809241B4 3C058092 */  lui     $a1, %hi(D_80926A60)       ## $a1 = 80920000
/* 086B8 809241B8 24A56A60 */  addiu   $a1, $a1, %lo(D_80926A60)  ## $a1 = 80926A60
/* 086BC 809241BC 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 086C0 809241C0 24061A13 */  addiu   $a2, $zero, 0x1A13         ## $a2 = 00001A13
/* 086C4 809241C4 0C0346A2 */  jal     Matrix_NewMtx              
/* 086C8 809241C8 AFA2004C */  sw      $v0, 0x004C($sp)           
/* 086CC 809241CC 8FA3004C */  lw      $v1, 0x004C($sp)           
/* 086D0 809241D0 3C0C0600 */  lui     $t4, 0x0600                ## $t4 = 06000000
/* 086D4 809241D4 258C4C50 */  addiu   $t4, $t4, 0x4C50           ## $t4 = 06004C50
/* 086D8 809241D8 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 086DC 809241DC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 086E0 809241E0 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 086E4 809241E4 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 086E8 809241E8 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 086EC 809241EC AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 086F0 809241F0 0C034221 */  jal     Matrix_Pop              
/* 086F4 809241F4 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 086F8 809241F8 8FAD007C */  lw      $t5, 0x007C($sp)           
/* 086FC 809241FC 3C068092 */  lui     $a2, %hi(D_80926A70)       ## $a2 = 80920000
/* 08700 80924200 24C66A70 */  addiu   $a2, $a2, %lo(D_80926A70)  ## $a2 = 80926A70
/* 08704 80924204 27A40060 */  addiu   $a0, $sp, 0x0060           ## $a0 = FFFFFFE8
/* 08708 80924208 24071A18 */  addiu   $a3, $zero, 0x1A18         ## $a3 = 00001A18
/* 0870C 8092420C 0C031AD5 */  jal     Graph_CloseDisps              
/* 08710 80924210 8DA50000 */  lw      $a1, 0x0000($t5)           ## 00000000
/* 08714 80924214 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 08718 80924218 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 0871C 8092421C 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
/* 08720 80924220 03E00008 */  jr      $ra                        
/* 08724 80924224 00000000 */  nop
