.rdata
glabel D_8087CD10
    .asciz "../z_bg_haka_gate.c"
    .balign 4

glabel D_8087CD24
    .asciz "../z_bg_haka_gate.c"
    .balign 4

glabel D_8087CD38
    .asciz "../z_bg_haka_gate.c"
    .balign 4

.late_rodata
glabel D_8087CDA4
    .float 9.58738e-5
glabel D_8087CDA8
    .float 1.0e-5

	
.text
glabel func_8087C85C
/* 00A6C 8087C85C 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 00A70 8087C860 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00A74 8087C864 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00A78 8087C868 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 00A7C 8087C86C AFA40078 */  sw      $a0, 0x0078($sp)           
/* 00A80 8087C870 848F016E */  lh      $t7, 0x016E($a0)           ## 0000016E
/* 00A84 8087C874 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00A88 8087C878 27A4005C */  addiu   $a0, $sp, 0x005C           ## $a0 = FFFFFFE4
/* 00A8C 8087C87C 19E00077 */  blez    $t7, .L8087CA5C            
/* 00A90 8087C880 3C068088 */  lui     $a2, %hi(D_8087CD10)       ## $a2 = 80880000
/* 00A94 8087C884 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00A98 8087C888 24C6CD10 */  addiu   $a2, $a2, %lo(D_8087CD10)  ## $a2 = 8087CD10
/* 00A9C 8087C88C 240702CC */  addiu   $a3, $zero, 0x02CC         ## $a3 = 000002CC
/* 00AA0 8087C890 0C031AB1 */  jal     Graph_OpenDisps              
/* 00AA4 8087C894 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00AA8 8087C898 0C024F61 */  jal     func_80093D84              
/* 00AAC 8087C89C 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00AB0 8087C8A0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00AB4 8087C8A4 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 00AB8 8087C8A8 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 00ABC 8087C8AC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00AC0 8087C8B0 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 00AC4 8087C8B4 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00AC8 8087C8B8 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00ACC 8087C8BC 8FAB0078 */  lw      $t3, 0x0078($sp)           
/* 00AD0 8087C8C0 24080020 */  addiu   $t0, $zero, 0x0020         ## $t0 = 00000020
/* 00AD4 8087C8C4 24090040 */  addiu   $t1, $zero, 0x0040         ## $t1 = 00000040
/* 00AD8 8087C8C8 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00ADC 8087C8CC AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 00AE0 8087C8D0 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00AE4 8087C8D4 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00AE8 8087C8D8 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00AEC 8087C8DC 856C0172 */  lh      $t4, 0x0172($t3)           ## 00000172
/* 00AF0 8087C8E0 24180080 */  addiu   $t8, $zero, 0x0080         ## $t8 = 00000080
/* 00AF4 8087C8E4 240F0020 */  addiu   $t7, $zero, 0x0020         ## $t7 = 00000020
/* 00AF8 8087C8E8 000C0823 */  subu    $at, $zero, $t4            
/* 00AFC 8087C8EC 00016880 */  sll     $t5, $at,  2               
/* 00B00 8087C8F0 01A16821 */  addu    $t5, $t5, $at              
/* 00B04 8087C8F4 000D6880 */  sll     $t5, $t5,  2               
/* 00B08 8087C8F8 31AE01FF */  andi    $t6, $t5, 0x01FF           ## $t6 = 00000000
/* 00B0C 8087C8FC AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 00B10 8087C900 AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 00B14 8087C904 AFB80028 */  sw      $t8, 0x0028($sp)           
/* 00B18 8087C908 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00B1C 8087C90C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00B20 8087C910 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00B24 8087C914 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 00B28 8087C918 AFA20058 */  sw      $v0, 0x0058($sp)           
/* 00B2C 8087C91C 8FA30058 */  lw      $v1, 0x0058($sp)           
/* 00B30 8087C920 3C08FA00 */  lui     $t0, 0xFA00                ## $t0 = FA000000
/* 00B34 8087C924 3C09FFFF */  lui     $t1, 0xFFFF                ## $t1 = FFFF0000
/* 00B38 8087C928 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00B3C 8087C92C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00B40 8087C930 352900FF */  ori     $t1, $t1, 0x00FF           ## $t1 = FFFF00FF
/* 00B44 8087C934 35088080 */  ori     $t0, $t0, 0x8080           ## $t0 = FA008080
/* 00B48 8087C938 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 00B4C 8087C93C AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 00B50 8087C940 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 00B54 8087C944 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 00B58 8087C948 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00B5C 8087C94C 3C0BFB00 */  lui     $t3, 0xFB00                ## $t3 = FB000000
/* 00B60 8087C950 3C0CFF00 */  lui     $t4, 0xFF00                ## $t4 = FF000000
/* 00B64 8087C954 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00B68 8087C958 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 00B6C 8087C95C AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 00B70 8087C960 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00B74 8087C964 8FA20078 */  lw      $v0, 0x0078($sp)           
/* 00B78 8087C968 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00B7C 8087C96C 44813000 */  mtc1    $at, $f6                   ## $f6 = 15.00
/* 00B80 8087C970 C4440028 */  lwc1    $f4, 0x0028($v0)           ## 00000028
/* 00B84 8087C974 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00B88 8087C978 C44C0024 */  lwc1    $f12, 0x0024($v0)          ## 00000024
/* 00B8C 8087C97C 8C46002C */  lw      $a2, 0x002C($v0)           ## 0000002C
/* 00B90 8087C980 0C034261 */  jal     Matrix_Translate              
/* 00B94 8087C984 46062380 */  add.s   $f14, $f4, $f6             
/* 00B98 8087C988 862D07A0 */  lh      $t5, 0x07A0($s1)           ## 000007A0
/* 00B9C 8087C98C 000D7080 */  sll     $t6, $t5,  2               
/* 00BA0 8087C990 022E7821 */  addu    $t7, $s1, $t6              
/* 00BA4 8087C994 0C016A7D */  jal     Camera_GetCamDirYaw              
/* 00BA8 8087C998 8DE40790 */  lw      $a0, 0x0790($t7)           ## 00000790
/* 00BAC 8087C99C 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 00BB0 8087C9A0 3C018088 */  lui     $at, %hi(D_8087CDA4)       ## $at = 80880000
/* 00BB4 8087C9A4 C430CDA4 */  lwc1    $f16, %lo(D_8087CDA4)($at) 
/* 00BB8 8087C9A8 468042A0 */  cvt.s.w $f10, $f8                  
/* 00BBC 8087C9AC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00BC0 8087C9B0 46105302 */  mul.s   $f12, $f10, $f16           
/* 00BC4 8087C9B4 0C034348 */  jal     Matrix_RotateY              
/* 00BC8 8087C9B8 00000000 */  nop
/* 00BCC 8087C9BC 8FB80078 */  lw      $t8, 0x0078($sp)           
/* 00BD0 8087C9C0 3C018088 */  lui     $at, %hi(D_8087CDA8)       ## $at = 80880000
/* 00BD4 8087C9C4 C426CDA8 */  lwc1    $f6, %lo(D_8087CDA8)($at)  
/* 00BD8 8087C9C8 8719016E */  lh      $t9, 0x016E($t8)           ## 0000016E
/* 00BDC 8087C9CC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00BE0 8087C9D0 44999000 */  mtc1    $t9, $f18                  ## $f18 = 0.00
/* 00BE4 8087C9D4 00000000 */  nop
/* 00BE8 8087C9D8 46809120 */  cvt.s.w $f4, $f18                  
/* 00BEC 8087C9DC 46062302 */  mul.s   $f12, $f4, $f6             
/* 00BF0 8087C9E0 44066000 */  mfc1    $a2, $f12                  
/* 00BF4 8087C9E4 0C0342A3 */  jal     Matrix_Scale              
/* 00BF8 8087C9E8 46006386 */  mov.s   $f14, $f12                 
/* 00BFC 8087C9EC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00C00 8087C9F0 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 00C04 8087C9F4 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 00C08 8087C9F8 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 00C0C 8087C9FC AE0802D0 */  sw      $t0, 0x02D0($s0)           ## 000002D0
/* 00C10 8087CA00 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 00C14 8087CA04 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00C18 8087CA08 3C058088 */  lui     $a1, %hi(D_8087CD24)       ## $a1 = 80880000
/* 00C1C 8087CA0C 24A5CD24 */  addiu   $a1, $a1, %lo(D_8087CD24)  ## $a1 = 8087CD24
/* 00C20 8087CA10 240602E8 */  addiu   $a2, $zero, 0x02E8         ## $a2 = 000002E8
/* 00C24 8087CA14 0C0346A2 */  jal     Matrix_NewMtx              
/* 00C28 8087CA18 AFA2004C */  sw      $v0, 0x004C($sp)           
/* 00C2C 8087CA1C 8FA3004C */  lw      $v1, 0x004C($sp)           
/* 00C30 8087CA20 3C0C0405 */  lui     $t4, %hi(gEffectSsFireTailDL)                ## $t4 = 04050000
/* 00C34 8087CA24 258CD4E0 */  addiu   $t4, $t4, %lo(gEffectSsFireTailDL)           ## $t4 = 0404D4E0
/* 00C38 8087CA28 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00C3C 8087CA2C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00C40 8087CA30 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 00C44 8087CA34 3C068088 */  lui     $a2, %hi(D_8087CD38)       ## $a2 = 80880000
/* 00C48 8087CA38 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00C4C 8087CA3C AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 00C50 8087CA40 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 00C54 8087CA44 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00C58 8087CA48 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 00C5C 8087CA4C 24C6CD38 */  addiu   $a2, $a2, %lo(D_8087CD38)  ## $a2 = 8087CD38
/* 00C60 8087CA50 27A4005C */  addiu   $a0, $sp, 0x005C           ## $a0 = FFFFFFE4
/* 00C64 8087CA54 0C031AD5 */  jal     Graph_CloseDisps              
/* 00C68 8087CA58 240702ED */  addiu   $a3, $zero, 0x02ED         ## $a3 = 000002ED
.L8087CA5C:
/* 00C6C 8087CA5C 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00C70 8087CA60 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 00C74 8087CA64 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 00C78 8087CA68 03E00008 */  jr      $ra                        
/* 00C7C 8087CA6C 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
