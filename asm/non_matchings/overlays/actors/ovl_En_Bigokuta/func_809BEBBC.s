glabel func_809BEBBC
/* 01F5C 809BEBBC 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 01F60 809BEBC0 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 01F64 809BEBC4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01F68 809BEBC8 AFA40068 */  sw      $a0, 0x0068($sp)           
/* 01F6C 809BEBCC AFA60070 */  sw      $a2, 0x0070($sp)           
/* 01F70 809BEBD0 14A10098 */  bne     $a1, $at, .L809BEE34       
/* 01F74 809BEBD4 AFA70074 */  sw      $a3, 0x0074($sp)           
/* 01F78 809BEBD8 8FA3007C */  lw      $v1, 0x007C($sp)           
/* 01F7C 809BEBDC 3C02809C */  lui     $v0, %hi(func_809BE058)    ## $v0 = 809C0000
/* 01F80 809BEBE0 2442E058 */  addiu   $v0, $v0, %lo(func_809BE058) ## $v0 = 809BE058
/* 01F84 809BEBE4 8C640190 */  lw      $a0, 0x0190($v1)           ## 00000190
/* 01F88 809BEBE8 3C0E809C */  lui     $t6, %hi(func_809BE180)    ## $t6 = 809C0000
/* 01F8C 809BEBEC 25CEE180 */  addiu   $t6, $t6, %lo(func_809BE180) ## $t6 = 809BE180
/* 01F90 809BEBF0 10440003 */  beq     $v0, $a0, .L809BEC00       
/* 01F94 809BEBF4 8FAF0068 */  lw      $t7, 0x0068($sp)           
/* 01F98 809BEBF8 55C40128 */  bnel    $t6, $a0, .L809BF09C       
/* 01F9C 809BEBFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809BEC00:
/* 01FA0 809BEC00 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
/* 01FA4 809BEC04 3C06809C */  lui     $a2, %hi(D_809BF4B0)       ## $a2 = 809C0000
/* 01FA8 809BEC08 24C6F4B0 */  addiu   $a2, $a2, %lo(D_809BF4B0)  ## $a2 = 809BF4B0
/* 01FAC 809BEC0C AFA2001C */  sw      $v0, 0x001C($sp)           
/* 01FB0 809BEC10 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFDC
/* 01FB4 809BEC14 2407077A */  addiu   $a3, $zero, 0x077A         ## $a3 = 0000077A
/* 01FB8 809BEC18 0C031AB1 */  jal     Graph_OpenDisp              
/* 01FBC 809BEC1C AFA50054 */  sw      $a1, 0x0054($sp)           
/* 01FC0 809BEC20 8FA3007C */  lw      $v1, 0x007C($sp)           
/* 01FC4 809BEC24 8FA2001C */  lw      $v0, 0x001C($sp)           
/* 01FC8 809BEC28 8FA80054 */  lw      $t0, 0x0054($sp)           
/* 01FCC 809BEC2C 8C780190 */  lw      $t8, 0x0190($v1)           ## 00000190
/* 01FD0 809BEC30 54580020 */  bnel    $v0, $t8, .L809BECB4       
/* 01FD4 809BEC34 846A0196 */  lh      $t2, 0x0196($v1)           ## 00000196
/* 01FD8 809BEC38 84790196 */  lh      $t9, 0x0196($v1)           ## 00000196
/* 01FDC 809BEC3C 2404000C */  addiu   $a0, $zero, 0x000C         ## $a0 = 0000000C
/* 01FE0 809BEC40 0324001A */  div     $zero, $t9, $a0            
/* 01FE4 809BEC44 14800002 */  bne     $a0, $zero, .L809BEC50     
/* 01FE8 809BEC48 00000000 */  nop
/* 01FEC 809BEC4C 0007000D */  break 7
.L809BEC50:
/* 01FF0 809BEC50 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 01FF4 809BEC54 14810004 */  bne     $a0, $at, .L809BEC68       
/* 01FF8 809BEC58 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01FFC 809BEC5C 17210002 */  bne     $t9, $at, .L809BEC68       
/* 02000 809BEC60 00000000 */  nop
/* 02004 809BEC64 0006000D */  break 6
.L809BEC68:
/* 02008 809BEC68 00001010 */  mfhi    $v0                        
/* 0200C 809BEC6C 28410008 */  slti    $at, $v0, 0x0008           
/* 02010 809BEC70 14200008 */  bne     $at, $zero, .L809BEC94     
/* 02014 809BEC74 00824823 */  subu    $t1, $a0, $v0              
/* 02018 809BEC78 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 0201C 809BEC7C 3C01809C */  lui     $at, %hi(D_809BF564)       ## $at = 809C0000
/* 02020 809BEC80 C428F564 */  lwc1    $f8, %lo(D_809BF564)($at)  
/* 02024 809BEC84 468021A0 */  cvt.s.w $f6, $f4                   
/* 02028 809BEC88 46083282 */  mul.s   $f10, $f6, $f8             
/* 0202C 809BEC8C 10000025 */  beq     $zero, $zero, .L809BED24   
/* 02030 809BEC90 E7AA005C */  swc1    $f10, 0x005C($sp)          
.L809BEC94:
/* 02034 809BEC94 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 02038 809BEC98 3C01809C */  lui     $at, %hi(D_809BF568)       ## $at = 809C0000
/* 0203C 809BEC9C C424F568 */  lwc1    $f4, %lo(D_809BF568)($at)  
/* 02040 809BECA0 468084A0 */  cvt.s.w $f18, $f16                 
/* 02044 809BECA4 46049002 */  mul.s   $f0, $f18, $f4             
/* 02048 809BECA8 1000001E */  beq     $zero, $zero, .L809BED24   
/* 0204C 809BECAC E7A0005C */  swc1    $f0, 0x005C($sp)           
/* 02050 809BECB0 846A0196 */  lh      $t2, 0x0196($v1)           ## 00000196
.L809BECB4:
/* 02054 809BECB4 24040006 */  addiu   $a0, $zero, 0x0006         ## $a0 = 00000006
/* 02058 809BECB8 0144001A */  div     $zero, $t2, $a0            
/* 0205C 809BECBC 14800002 */  bne     $a0, $zero, .L809BECC8     
/* 02060 809BECC0 00000000 */  nop
/* 02064 809BECC4 0007000D */  break 7
.L809BECC8:
/* 02068 809BECC8 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 0206C 809BECCC 14810004 */  bne     $a0, $at, .L809BECE0       
/* 02070 809BECD0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02074 809BECD4 15410002 */  bne     $t2, $at, .L809BECE0       
/* 02078 809BECD8 00000000 */  nop
/* 0207C 809BECDC 0006000D */  break 6
.L809BECE0:
/* 02080 809BECE0 00001010 */  mfhi    $v0                        
/* 02084 809BECE4 28410004 */  slti    $at, $v0, 0x0004           
/* 02088 809BECE8 14200008 */  bne     $at, $zero, .L809BED0C     
/* 0208C 809BECEC 00825823 */  subu    $t3, $a0, $v0              
/* 02090 809BECF0 448B3000 */  mtc1    $t3, $f6                   ## $f6 = 0.00
/* 02094 809BECF4 3C01809C */  lui     $at, %hi(D_809BF56C)       ## $at = 809C0000
/* 02098 809BECF8 C42AF56C */  lwc1    $f10, %lo(D_809BF56C)($at) 
/* 0209C 809BECFC 46803220 */  cvt.s.w $f8, $f6                   
/* 020A0 809BED00 460A4002 */  mul.s   $f0, $f8, $f10             
/* 020A4 809BED04 10000007 */  beq     $zero, $zero, .L809BED24   
/* 020A8 809BED08 E7A0005C */  swc1    $f0, 0x005C($sp)           
.L809BED0C:
/* 020AC 809BED0C 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 020B0 809BED10 3C01809C */  lui     $at, %hi(D_809BF570)       ## $at = 809C0000
/* 020B4 809BED14 C424F570 */  lwc1    $f4, %lo(D_809BF570)($at)  
/* 020B8 809BED18 468084A0 */  cvt.s.w $f18, $f16                 
/* 020BC 809BED1C 46049002 */  mul.s   $f0, $f18, $f4             
/* 020C0 809BED20 E7A0005C */  swc1    $f0, 0x005C($sp)           
.L809BED24:
/* 020C4 809BED24 C7AC005C */  lwc1    $f12, 0x005C($sp)          
/* 020C8 809BED28 0C0400A4 */  jal     sinf
              
/* 020CC 809BED2C AFA80054 */  sw      $t0, 0x0054($sp)           
/* 020D0 809BED30 3C0142FA */  lui     $at, 0x42FA                ## $at = 42FA0000
/* 020D4 809BED34 44813000 */  mtc1    $at, $f6                   ## $f6 = 125.00
/* 020D8 809BED38 3C014302 */  lui     $at, 0x4302                ## $at = 43020000
/* 020DC 809BED3C 44815000 */  mtc1    $at, $f10                  ## $f10 = 130.00
/* 020E0 809BED40 46060202 */  mul.s   $f8, $f0, $f6              
/* 020E4 809BED44 8FA80054 */  lw      $t0, 0x0054($sp)           
/* 020E8 809BED48 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 020EC 809BED4C 3C0DE700 */  lui     $t5, 0xE700                ## $t5 = E7000000
/* 020F0 809BED50 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 020F4 809BED54 3C0FFB00 */  lui     $t7, 0xFB00                ## $t7 = FB000000
/* 020F8 809BED58 3C06809C */  lui     $a2, %hi(D_809BF4C4)       ## $a2 = 809C0000
/* 020FC 809BED5C 460A4400 */  add.s   $f16, $f8, $f10            
/* 02100 809BED60 246C0008 */  addiu   $t4, $v1, 0x0008           ## $t4 = 00000008
/* 02104 809BED64 AD0C02C0 */  sw      $t4, 0x02C0($t0)           ## 000002C0
/* 02108 809BED68 AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 0210C 809BED6C 4458F800 */  cfc1    $t8, $31
/* 02110 809BED70 44C2F800 */  ctc1    $v0, $31
/* 02114 809BED74 AC6D0000 */  sw      $t5, 0x0000($v1)           ## 00000000
/* 02118 809BED78 8D0402C0 */  lw      $a0, 0x02C0($t0)           ## 000002C0
/* 0211C 809BED7C 460084A4 */  cvt.w.s $f18, $f16                 
/* 02120 809BED80 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 02124 809BED84 248E0008 */  addiu   $t6, $a0, 0x0008           ## $t6 = 00000008
/* 02128 809BED88 AD0E02C0 */  sw      $t6, 0x02C0($t0)           ## 000002C0
/* 0212C 809BED8C 4442F800 */  cfc1    $v0, $31
/* 02130 809BED90 24C6F4C4 */  addiu   $a2, $a2, %lo(D_809BF4C4)  ## $a2 = 809BF4C4
/* 02134 809BED94 24070799 */  addiu   $a3, $zero, 0x0799         ## $a3 = 00000799
/* 02138 809BED98 30420078 */  andi    $v0, $v0, 0x0078           ## $v0 = 00000000
/* 0213C 809BED9C 10400012 */  beq     $v0, $zero, .L809BEDE8     
/* 02140 809BEDA0 AC8F0000 */  sw      $t7, 0x0000($a0)           ## 00000000
/* 02144 809BEDA4 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 02148 809BEDA8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 0214C 809BEDAC 46128481 */  sub.s   $f18, $f16, $f18           
/* 02150 809BEDB0 44C2F800 */  ctc1    $v0, $31
/* 02154 809BEDB4 00000000 */  nop
/* 02158 809BEDB8 460094A4 */  cvt.w.s $f18, $f18                 
/* 0215C 809BEDBC 4442F800 */  cfc1    $v0, $31
/* 02160 809BEDC0 00000000 */  nop
/* 02164 809BEDC4 30420078 */  andi    $v0, $v0, 0x0078           ## $v0 = 00000000
/* 02168 809BEDC8 14400005 */  bne     $v0, $zero, .L809BEDE0     
/* 0216C 809BEDCC 00000000 */  nop
/* 02170 809BEDD0 44029000 */  mfc1    $v0, $f18                  
/* 02174 809BEDD4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02178 809BEDD8 10000007 */  beq     $zero, $zero, .L809BEDF8   
/* 0217C 809BEDDC 00411025 */  or      $v0, $v0, $at              ## $v0 = 80000000
.L809BEDE0:
/* 02180 809BEDE0 10000005 */  beq     $zero, $zero, .L809BEDF8   
/* 02184 809BEDE4 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L809BEDE8:
/* 02188 809BEDE8 44029000 */  mfc1    $v0, $f18                  
/* 0218C 809BEDEC 00000000 */  nop
/* 02190 809BEDF0 0440FFFB */  bltz    $v0, .L809BEDE0            
/* 02194 809BEDF4 00000000 */  nop
.L809BEDF8:
/* 02198 809BEDF8 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 000000FF
/* 0219C 809BEDFC 0002CE00 */  sll     $t9, $v0, 24               
/* 021A0 809BEE00 00024C00 */  sll     $t1, $v0, 16               
/* 021A4 809BEE04 03295025 */  or      $t2, $t9, $t1              ## $t2 = 00000000
/* 021A8 809BEE08 00025A00 */  sll     $t3, $v0,  8               
/* 021AC 809BEE0C 014B6025 */  or      $t4, $t2, $t3              ## $t4 = 00000000
/* 021B0 809BEE10 358D00FF */  ori     $t5, $t4, 0x00FF           ## $t5 = 000000FF
/* 021B4 809BEE14 AC8D0004 */  sw      $t5, 0x0004($a0)           ## 00000004
/* 021B8 809BEE18 8FAE0068 */  lw      $t6, 0x0068($sp)           
/* 021BC 809BEE1C 44D8F800 */  ctc1    $t8, $31
/* 021C0 809BEE20 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFDC
/* 021C4 809BEE24 0C031AD5 */  jal     Graph_CloseDisp              
/* 021C8 809BEE28 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000008
/* 021CC 809BEE2C 1000009B */  beq     $zero, $zero, .L809BF09C   
/* 021D0 809BEE30 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809BEE34:
/* 021D4 809BEE34 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 021D8 809BEE38 14A10058 */  bne     $a1, $at, .L809BEF9C       
/* 021DC 809BEE3C 8FAF0068 */  lw      $t7, 0x0068($sp)           
/* 021E0 809BEE40 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
/* 021E4 809BEE44 3C06809C */  lui     $a2, %hi(D_809BF4D8)       ## $a2 = 809C0000
/* 021E8 809BEE48 24C6F4D8 */  addiu   $a2, $a2, %lo(D_809BF4D8)  ## $a2 = 809BF4D8
/* 021EC 809BEE4C 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFC0
/* 021F0 809BEE50 2407079E */  addiu   $a3, $zero, 0x079E         ## $a3 = 0000079E
/* 021F4 809BEE54 0C031AB1 */  jal     Graph_OpenDisp              
/* 021F8 809BEE58 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 021FC 809BEE5C 8FA3007C */  lw      $v1, 0x007C($sp)           
/* 02200 809BEE60 3C18809C */  lui     $t8, %hi(func_809BE26C)    ## $t8 = 809C0000
/* 02204 809BEE64 2718E26C */  addiu   $t8, $t8, %lo(func_809BE26C) ## $t8 = 809BE26C
/* 02208 809BEE68 8C790190 */  lw      $t9, 0x0190($v1)           ## 00000190
/* 0220C 809BEE6C 8FA80038 */  lw      $t0, 0x0038($sp)           
/* 02210 809BEE70 3C0CE700 */  lui     $t4, 0xE700                ## $t4 = E7000000
/* 02214 809BEE74 1719002E */  bne     $t8, $t9, .L809BEF30       
/* 02218 809BEE78 3C0EFB00 */  lui     $t6, 0xFB00                ## $t6 = FB000000
/* 0221C 809BEE7C 84690196 */  lh      $t1, 0x0196($v1)           ## 00000196
/* 02220 809BEE80 3C01809C */  lui     $at, %hi(D_809BF574)       ## $at = 809C0000
/* 02224 809BEE84 C428F574 */  lwc1    $f8, %lo(D_809BF574)($at)  
/* 02228 809BEE88 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 0222C 809BEE8C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02230 809BEE90 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 02234 809BEE94 468021A0 */  cvt.s.w $f6, $f4                   
/* 02238 809BEE98 46083282 */  mul.s   $f10, $f6, $f8             
/* 0223C 809BEE9C 444AF800 */  cfc1    $t2, $31
/* 02240 809BEEA0 44C5F800 */  ctc1    $a1, $31
/* 02244 809BEEA4 00000000 */  nop
/* 02248 809BEEA8 46005424 */  cvt.w.s $f16, $f10                 
/* 0224C 809BEEAC 4445F800 */  cfc1    $a1, $31
/* 02250 809BEEB0 00000000 */  nop
/* 02254 809BEEB4 30A50078 */  andi    $a1, $a1, 0x0078           ## $a1 = 00000000
/* 02258 809BEEB8 50A00017 */  beql    $a1, $zero, .L809BEF18     
/* 0225C 809BEEBC 44058000 */  mfc1    $a1, $f16                  
/* 02260 809BEEC0 44818000 */  mtc1    $at, $f16                  ## $f16 = 2147483648.00
/* 02264 809BEEC4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02268 809BEEC8 46105401 */  sub.s   $f16, $f10, $f16           
/* 0226C 809BEECC 44C5F800 */  ctc1    $a1, $31
/* 02270 809BEED0 00000000 */  nop
/* 02274 809BEED4 46008424 */  cvt.w.s $f16, $f16                 
/* 02278 809BEED8 4445F800 */  cfc1    $a1, $31
/* 0227C 809BEEDC 00000000 */  nop
/* 02280 809BEEE0 30A50078 */  andi    $a1, $a1, 0x0078           ## $a1 = 00000000
/* 02284 809BEEE4 54A00008 */  bnel    $a1, $zero, .L809BEF08     
/* 02288 809BEEE8 2405FFFF */  addiu   $a1, $zero, 0xFFFF         ## $a1 = FFFFFFFF
/* 0228C 809BEEEC 44058000 */  mfc1    $a1, $f16                  
/* 02290 809BEEF0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 02294 809BEEF4 44CAF800 */  ctc1    $t2, $31
/* 02298 809BEEF8 00A12825 */  or      $a1, $a1, $at              ## $a1 = FFFFFFFF
/* 0229C 809BEEFC 1000000D */  beq     $zero, $zero, .L809BEF34   
/* 022A0 809BEF00 30A500FF */  andi    $a1, $a1, 0x00FF           ## $a1 = 000000FF
/* 022A4 809BEF04 2405FFFF */  addiu   $a1, $zero, 0xFFFF         ## $a1 = FFFFFFFF
.L809BEF08:
/* 022A8 809BEF08 44CAF800 */  ctc1    $t2, $31
/* 022AC 809BEF0C 10000009 */  beq     $zero, $zero, .L809BEF34   
/* 022B0 809BEF10 30A500FF */  andi    $a1, $a1, 0x00FF           ## $a1 = 000000FF
/* 022B4 809BEF14 44058000 */  mfc1    $a1, $f16                  
.L809BEF18:
/* 022B8 809BEF18 00000000 */  nop
/* 022BC 809BEF1C 04A2FFFA */  bltzl   $a1, .L809BEF08            
/* 022C0 809BEF20 2405FFFF */  addiu   $a1, $zero, 0xFFFF         ## $a1 = FFFFFFFF
/* 022C4 809BEF24 44CAF800 */  ctc1    $t2, $31
/* 022C8 809BEF28 10000002 */  beq     $zero, $zero, .L809BEF34   
/* 022CC 809BEF2C 30A500FF */  andi    $a1, $a1, 0x00FF           ## $a1 = 000000FF
.L809BEF30:
/* 022D0 809BEF30 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
.L809BEF34:
/* 022D4 809BEF34 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 022D8 809BEF38 30A200FF */  andi    $v0, $a1, 0x00FF           ## $v0 = 000000FF
/* 022DC 809BEF3C 00027E00 */  sll     $t7, $v0, 24               
/* 022E0 809BEF40 246B0008 */  addiu   $t3, $v1, 0x0008           ## $t3 = 00000008
/* 022E4 809BEF44 AD0B02C0 */  sw      $t3, 0x02C0($t0)           ## 000002C0
/* 022E8 809BEF48 AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 022EC 809BEF4C AC6C0000 */  sw      $t4, 0x0000($v1)           ## 00000000
/* 022F0 809BEF50 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 022F4 809BEF54 0002C400 */  sll     $t8, $v0, 16               
/* 022F8 809BEF58 01F8C825 */  or      $t9, $t7, $t8              ## $t9 = 809BE26C
/* 022FC 809BEF5C 00024A00 */  sll     $t1, $v0,  8               
/* 02300 809BEF60 246D0008 */  addiu   $t5, $v1, 0x0008           ## $t5 = 00000008
/* 02304 809BEF64 AD0D02C0 */  sw      $t5, 0x02C0($t0)           ## 000002C0
/* 02308 809BEF68 03295025 */  or      $t2, $t9, $t1              ## $t2 = 809BE26C
/* 0230C 809BEF6C 01425825 */  or      $t3, $t2, $v0              ## $t3 = 809BE2FF
/* 02310 809BEF70 AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
/* 02314 809BEF74 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 00000000
/* 02318 809BEF78 8FAC0068 */  lw      $t4, 0x0068($sp)           
/* 0231C 809BEF7C 3C06809C */  lui     $a2, %hi(D_809BF4EC)       ## $a2 = 809C0000
/* 02320 809BEF80 24C6F4EC */  addiu   $a2, $a2, %lo(D_809BF4EC)  ## $a2 = 809BF4EC
/* 02324 809BEF84 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFC0
/* 02328 809BEF88 240707B4 */  addiu   $a3, $zero, 0x07B4         ## $a3 = 000007B4
/* 0232C 809BEF8C 0C031AD5 */  jal     Graph_CloseDisp              
/* 02330 809BEF90 8D850000 */  lw      $a1, 0x0000($t4)           ## E7000000
/* 02334 809BEF94 10000041 */  beq     $zero, $zero, .L809BF09C   
/* 02338 809BEF98 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809BEF9C:
/* 0233C 809BEF9C 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 02340 809BEFA0 14A1003D */  bne     $a1, $at, .L809BF098       
/* 02344 809BEFA4 8FA3007C */  lw      $v1, 0x007C($sp)           
/* 02348 809BEFA8 8C6E0190 */  lw      $t6, 0x0190($v1)           ## 00000190
/* 0234C 809BEFAC 3C0D809C */  lui     $t5, %hi(func_809BE26C)    ## $t5 = 809C0000
/* 02350 809BEFB0 25ADE26C */  addiu   $t5, $t5, %lo(func_809BE26C) ## $t5 = 809BE26C
/* 02354 809BEFB4 55AE0039 */  bnel    $t5, $t6, .L809BF09C       
/* 02358 809BEFB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0235C 809BEFBC 84620198 */  lh      $v0, 0x0198($v1)           ## 00000198
/* 02360 809BEFC0 28410005 */  slti    $at, $v0, 0x0005           
/* 02364 809BEFC4 50200012 */  beql    $at, $zero, .L809BF010     
/* 02368 809BEFC8 28410008 */  slti    $at, $v0, 0x0008           
/* 0236C 809BEFCC 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 02370 809BEFD0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02374 809BEFD4 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 02378 809BEFD8 46809120 */  cvt.s.w $f4, $f18                  
/* 0237C 809BEFDC 3C01809C */  lui     $at, %hi(D_809BF578)       ## $at = 809C0000
/* 02380 809BEFE0 C426F578 */  lwc1    $f6, %lo(D_809BF578)($at)  
/* 02384 809BEFE4 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 02388 809BEFE8 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.25
/* 0238C 809BEFEC 44067000 */  mfc1    $a2, $f14                  
/* 02390 809BEFF0 46062202 */  mul.s   $f8, $f4, $f6              
/* 02394 809BEFF4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02398 809BEFF8 460A4402 */  mul.s   $f16, $f8, $f10            
/* 0239C 809BEFFC 0C0342A3 */  jal     Matrix_Scale              
/* 023A0 809BF000 460E8300 */  add.s   $f12, $f16, $f14           
/* 023A4 809BF004 10000025 */  beq     $zero, $zero, .L809BF09C   
/* 023A8 809BF008 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 023AC 809BF00C 28410008 */  slti    $at, $v0, 0x0008           
.L809BF010:
/* 023B0 809BF010 10200013 */  beq     $at, $zero, .L809BF060     
/* 023B4 809BF014 2458FFF8 */  addiu   $t8, $v0, 0xFFF8           ## $t8 = FFFFFFF8
/* 023B8 809BF018 244FFFFB */  addiu   $t7, $v0, 0xFFFB           ## $t7 = FFFFFFFB
/* 023BC 809BF01C 448F9000 */  mtc1    $t7, $f18                  ## $f18 = NaN
/* 023C0 809BF020 3C01809C */  lui     $at, %hi(D_809BF57C)       ## $at = 809C0000
/* 023C4 809BF024 C426F57C */  lwc1    $f6, %lo(D_809BF57C)($at)  
/* 023C8 809BF028 46809120 */  cvt.s.w $f4, $f18                  
/* 023CC 809BF02C 3C013FA0 */  lui     $at, 0x3FA0                ## $at = 3FA00000
/* 023D0 809BF030 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.25
/* 023D4 809BF034 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 023D8 809BF038 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 023DC 809BF03C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 023E0 809BF040 46062002 */  mul.s   $f0, $f4, $f6              
/* 023E4 809BF044 46005380 */  add.s   $f14, $f10, $f0            
/* 023E8 809BF048 46004301 */  sub.s   $f12, $f8, $f0             
/* 023EC 809BF04C 44067000 */  mfc1    $a2, $f14                  
/* 023F0 809BF050 0C0342A3 */  jal     Matrix_Scale              
/* 023F4 809BF054 00000000 */  nop
/* 023F8 809BF058 10000010 */  beq     $zero, $zero, .L809BF09C   
/* 023FC 809BF05C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809BF060:
/* 02400 809BF060 44988000 */  mtc1    $t8, $f16                  ## $f16 = 0.00
/* 02404 809BF064 3C013E00 */  lui     $at, 0x3E00                ## $at = 3E000000
/* 02408 809BF068 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.12
/* 0240C 809BF06C 468084A0 */  cvt.s.w $f18, $f16                 
/* 02410 809BF070 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02414 809BF074 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 02418 809BF078 3C013FA0 */  lui     $at, 0x3FA0                ## $at = 3FA00000
/* 0241C 809BF07C 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.25
/* 02420 809BF080 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02424 809BF084 46049002 */  mul.s   $f0, $f18, $f4             
/* 02428 809BF088 46003381 */  sub.s   $f14, $f6, $f0             
/* 0242C 809BF08C 44067000 */  mfc1    $a2, $f14                  
/* 02430 809BF090 0C0342A3 */  jal     Matrix_Scale              
/* 02434 809BF094 00000000 */  nop
.L809BF098:
/* 02438 809BF098 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809BF09C:
/* 0243C 809BF09C 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 02440 809BF0A0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 02444 809BF0A4 03E00008 */  jr      $ra                        
/* 02448 809BF0A8 00000000 */  nop


