.rdata
glabel D_809CCEB0
    .asciz "../z_en_bubble.c"
    .balign 4

glabel D_809CCEC4
    .asciz "../z_en_bubble.c"
    .balign 4

glabel D_809CCED8
    .asciz "../z_en_bubble.c"
    .balign 4

.late_rodata
glabel D_809CCF14
 .word 0x3C8EFA35
glabel D_809CCF18
 .word 0x3C8EFA35
glabel D_809CCF1C
    .float 0.2

.text
glabel EnBubble_Draw
/* 00FD0 809CCBD0 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00FD4 809CCBD4 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00FD8 809CCBD8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00FDC 809CCBDC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00FE0 809CCBE0 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00FE4 809CCBE4 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00FE8 809CCBE8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00FEC 809CCBEC 3C06809D */  lui     $a2, %hi(D_809CCEB0)       ## $a2 = 809D0000
/* 00FF0 809CCBF0 24C6CEB0 */  addiu   $a2, $a2, %lo(D_809CCEB0)  ## $a2 = 809CCEB0
/* 00FF4 809CCBF4 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 00FF8 809CCBF8 24070497 */  addiu   $a3, $zero, 0x0497         ## $a3 = 00000497
/* 00FFC 809CCBFC 0C031AB1 */  jal     Graph_OpenDisps              
/* 01000 809CCC00 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 01004 809CCC04 3C0E809D */  lui     $t6, %hi(func_809CCAA8)    ## $t6 = 809D0000
/* 01008 809CCC08 25CECAA8 */  addiu   $t6, $t6, %lo(func_809CCAA8) ## $t6 = 809CCAA8
/* 0100C 809CCC0C AFAE0030 */  sw      $t6, 0x0030($sp)           
/* 01010 809CCC10 8E0F014C */  lw      $t7, 0x014C($s0)           ## 0000014C
/* 01014 809CCC14 11CF0062 */  beq     $t6, $t7, .L809CCDA0       
/* 01018 809CCC18 00000000 */  nop
/* 0101C 809CCC1C 0C024F61 */  jal     func_80093D84              
/* 01020 809CCC20 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 01024 809CCC24 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01028 809CCC28 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 0102C 809CCC2C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 01030 809CCC30 26040210 */  addiu   $a0, $s0, 0x0210           ## $a0 = 00000210
/* 01034 809CCC34 3C054180 */  lui     $a1, 0x4180                ## $a1 = 41800000
/* 01038 809CCC38 3C07447A */  lui     $a3, 0x447A                ## $a3 = 447A0000
/* 0103C 809CCC3C 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 01040 809CCC40 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01044 809CCC44 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01048 809CCC48 3C053DA3 */  lui     $a1, 0x3DA3                ## $a1 = 3DA30000
/* 0104C 809CCC4C 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 01050 809CCC50 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 01054 809CCC54 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3DA3D70A
/* 01058 809CCC58 26040214 */  addiu   $a0, $s0, 0x0214           ## $a0 = 00000214
/* 0105C 809CCC5C 3C07447A */  lui     $a3, 0x447A                ## $a3 = 447A0000
/* 01060 809CCC60 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 01064 809CCC64 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01068 809CCC68 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0106C 809CCC6C 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 01070 809CCC70 0C0347F5 */  jal     func_800D1FD4              
/* 01074 809CCC74 02212021 */  addu    $a0, $s1, $at              
/* 01078 809CCC78 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0107C 809CCC7C 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 01080 809CCC80 C6080220 */  lwc1    $f8, 0x0220($s0)           ## 00000220
/* 01084 809CCC84 C60A0224 */  lwc1    $f10, 0x0224($s0)          ## 00000224
/* 01088 809CCC88 44060000 */  mfc1    $a2, $f0                   
/* 0108C 809CCC8C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01090 809CCC90 46004300 */  add.s   $f12, $f8, $f0             
/* 01094 809CCC94 0C0342A3 */  jal     Matrix_Scale              
/* 01098 809CCC98 46005380 */  add.s   $f14, $f10, $f0            
/* 0109C 809CCC9C 8E38009C */  lw      $t8, 0x009C($s1)           ## 0000009C
/* 010A0 809CCCA0 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 010A4 809CCCA4 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 010A8 809CCCA8 07010004 */  bgez    $t8, .L809CCCBC            
/* 010AC 809CCCAC 468084A0 */  cvt.s.w $f18, $f16                 
/* 010B0 809CCCB0 44812000 */  mtc1    $at, $f4                   ## $f4 = 4294967296.00
/* 010B4 809CCCB4 00000000 */  nop
/* 010B8 809CCCB8 46049480 */  add.s   $f18, $f18, $f4            
.L809CCCBC:
/* 010BC 809CCCBC 3C01809D */  lui     $at, %hi(D_809CCF14)       ## $at = 809D0000
/* 010C0 809CCCC0 C426CF14 */  lwc1    $f6, %lo(D_809CCF14)($at)  
/* 010C4 809CCCC4 C60A0210 */  lwc1    $f10, 0x0210($s0)          ## 00000210
/* 010C8 809CCCC8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 010CC 809CCCCC 46069202 */  mul.s   $f8, $f18, $f6             
/* 010D0 809CCCD0 00000000 */  nop
/* 010D4 809CCCD4 460A4302 */  mul.s   $f12, $f8, $f10            
/* 010D8 809CCCD8 0C0343B5 */  jal     Matrix_RotateZ              
/* 010DC 809CCCDC 00000000 */  nop
/* 010E0 809CCCE0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 010E4 809CCCE4 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 010E8 809CCCE8 C6100214 */  lwc1    $f16, 0x0214($s0)          ## 00000214
/* 010EC 809CCCEC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 010F0 809CCCF0 44067000 */  mfc1    $a2, $f14                  
/* 010F4 809CCCF4 0C0342A3 */  jal     Matrix_Scale              
/* 010F8 809CCCF8 460E8300 */  add.s   $f12, $f16, $f14           
/* 010FC 809CCCFC 8E39009C */  lw      $t9, 0x009C($s1)           ## 0000009C
/* 01100 809CCD00 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 01104 809CCD04 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 01108 809CCD08 07210004 */  bgez    $t9, .L809CCD1C            
/* 0110C 809CCD0C 468024A0 */  cvt.s.w $f18, $f4                  
/* 01110 809CCD10 44813000 */  mtc1    $at, $f6                   ## $f6 = 4294967296.00
/* 01114 809CCD14 00000000 */  nop
/* 01118 809CCD18 46069480 */  add.s   $f18, $f18, $f6            
.L809CCD1C:
/* 0111C 809CCD1C 3C01809D */  lui     $at, %hi(D_809CCF18)       ## $at = 809D0000
/* 01120 809CCD20 C42ACF18 */  lwc1    $f10, %lo(D_809CCF18)($at) 
/* 01124 809CCD24 46009207 */  neg.s   $f8, $f18                  
/* 01128 809CCD28 C6040210 */  lwc1    $f4, 0x0210($s0)           ## 00000210
/* 0112C 809CCD2C 460A4402 */  mul.s   $f16, $f8, $f10            
/* 01130 809CCD30 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01134 809CCD34 46048302 */  mul.s   $f12, $f16, $f4            
/* 01138 809CCD38 0C0343B5 */  jal     Matrix_RotateZ              
/* 0113C 809CCD3C 00000000 */  nop
/* 01140 809CCD40 8FA7004C */  lw      $a3, 0x004C($sp)           
/* 01144 809CCD44 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 01148 809CCD48 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 0114C 809CCD4C 8CE202D0 */  lw      $v0, 0x02D0($a3)           ## 000002D0
/* 01150 809CCD50 3C05809D */  lui     $a1, %hi(D_809CCEC4)       ## $a1 = 809D0000
/* 01154 809CCD54 24A5CEC4 */  addiu   $a1, $a1, %lo(D_809CCEC4)  ## $a1 = 809CCEC4
/* 01158 809CCD58 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 0115C 809CCD5C ACE802D0 */  sw      $t0, 0x02D0($a3)           ## 000002D0
/* 01160 809CCD60 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 01164 809CCD64 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 01168 809CCD68 240604C4 */  addiu   $a2, $zero, 0x04C4         ## $a2 = 000004C4
/* 0116C 809CCD6C 0C0346A2 */  jal     Matrix_NewMtx              
/* 01170 809CCD70 AFA20038 */  sw      $v0, 0x0038($sp)           
/* 01174 809CCD74 8FA30038 */  lw      $v1, 0x0038($sp)           
/* 01178 809CCD78 3C0D0600 */  lui     $t5, %hi(D_06001000)                ## $t5 = 06000000
/* 0117C 809CCD7C 25AD1000 */  addiu   $t5, $t5, %lo(D_06001000)           ## $t5 = 06001000
/* 01180 809CCD80 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01184 809CCD84 8FAA004C */  lw      $t2, 0x004C($sp)           
/* 01188 809CCD88 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 0118C 809CCD8C 8D4202D0 */  lw      $v0, 0x02D0($t2)           ## 000002D0
/* 01190 809CCD90 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 01194 809CCD94 AD4B02D0 */  sw      $t3, 0x02D0($t2)           ## 000002D0
/* 01198 809CCD98 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 0119C 809CCD9C AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
.L809CCDA0:
/* 011A0 809CCDA0 3C06809D */  lui     $a2, %hi(D_809CCED8)       ## $a2 = 809D0000
/* 011A4 809CCDA4 24C6CED8 */  addiu   $a2, $a2, %lo(D_809CCED8)  ## $a2 = 809CCED8
/* 011A8 809CCDA8 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 011AC 809CCDAC 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 011B0 809CCDB0 0C031AD5 */  jal     Graph_CloseDisps              
/* 011B4 809CCDB4 240704CA */  addiu   $a3, $zero, 0x04CA         ## $a3 = 000004CA
/* 011B8 809CCDB8 8FAE0030 */  lw      $t6, 0x0030($sp)           
/* 011BC 809CCDBC 8E0F014C */  lw      $t7, 0x014C($s0)           ## 0000014C
/* 011C0 809CCDC0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 011C4 809CCDC4 51CF000B */  beql    $t6, $t7, .L809CCDF4       
/* 011C8 809CCDC8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 011CC 809CCDCC C6060220 */  lwc1    $f6, 0x0220($s0)           ## 00000220
/* 011D0 809CCDD0 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 011D4 809CCDD4 3C01809D */  lui     $at, %hi(D_809CCF1C)       ## $at = 809D0000
/* 011D8 809CCDD8 C42ACF1C */  lwc1    $f10, %lo(D_809CCF1C)($at) 
/* 011DC 809CCDDC 46123200 */  add.s   $f8, $f6, $f18             
/* 011E0 809CCDE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011E4 809CCDE4 460A4402 */  mul.s   $f16, $f8, $f10            
/* 011E8 809CCDE8 0C2731DD */  jal     func_809CC774              
/* 011EC 809CCDEC E61000C4 */  swc1    $f16, 0x00C4($s0)          ## 000000C4
/* 011F0 809CCDF0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809CCDF4:
/* 011F4 809CCDF4 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 011F8 809CCDF8 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 011FC 809CCDFC 03E00008 */  jr      $ra                        
/* 01200 809CCE00 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 01204 809CCE04 00000000 */  nop
/* 01208 809CCE08 00000000 */  nop
/* 0120C 809CCE0C 00000000 */  nop
