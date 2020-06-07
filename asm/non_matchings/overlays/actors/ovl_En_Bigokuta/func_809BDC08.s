.late_rodata
glabel D_809BF54C
 .word 0x3F088889
glabel D_809BF550
 .word 0x43838000
glabel D_809BF554
    .float 1.1

glabel D_809BF558
    .float 0.6

.text
glabel func_809BDC08
/* 00FA8 809BDC08 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00FAC 809BDC0C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00FB0 809BDC10 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00FB4 809BDC14 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00FB8 809BDC18 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00FBC 809BDC1C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00FC0 809BDC20 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00FC4 809BDC24 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00FC8 809BDC28 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00FCC 809BDC2C AFAF003C */  sw      $t7, 0x003C($sp)           
/* 00FD0 809BDC30 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00FD4 809BDC34 0C0295B2 */  jal     func_800A56C8              
/* 00FD8 809BDC38 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00FDC 809BDC3C 10400003 */  beq     $v0, $zero, .L809BDC4C     
/* 00FE0 809BDC40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FE4 809BDC44 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00FE8 809BDC48 240538C5 */  addiu   $a1, $zero, 0x38C5         ## $a1 = 000038C5
.L809BDC4C:
/* 00FEC 809BDC4C 86180196 */  lh      $t8, 0x0196($s0)           ## 00000196
/* 00FF0 809BDC50 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00FF4 809BDC54 07010015 */  bgez    $t8, .L809BDCAC            
/* 00FF8 809BDC58 00000000 */  nop
/* 00FFC 809BDC5C 82080194 */  lb      $t0, 0x0194($s0)           ## 00000194
/* 01000 809BDC60 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 01004 809BDC64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01008 809BDC68 00084A40 */  sll     $t1, $t0,  9               
/* 0100C 809BDC6C 03295021 */  addu    $t2, $t9, $t1              
/* 01010 809BDC70 0C26F38F */  jal     func_809BCE3C              
/* 01014 809BDC74 A60A00B6 */  sh      $t2, 0x00B6($s0)           ## 000000B6
/* 01018 809BDC78 860B0196 */  lh      $t3, 0x0196($s0)           ## 00000196
/* 0101C 809BDC7C 240E015E */  addiu   $t6, $zero, 0x015E         ## $t6 = 0000015E
/* 01020 809BDC80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01024 809BDC84 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 01028 809BDC88 A60C0196 */  sh      $t4, 0x0196($s0)           ## 00000196
/* 0102C 809BDC8C 860D0196 */  lh      $t5, 0x0196($s0)           ## 00000196
/* 01030 809BDC90 15A00002 */  bne     $t5, $zero, .L809BDC9C     
/* 01034 809BDC94 00000000 */  nop
/* 01038 809BDC98 A60E0196 */  sh      $t6, 0x0196($s0)           ## 00000196
.L809BDC9C:
/* 0103C 809BDC9C 0C26F3DA */  jal     func_809BCF68              
/* 01040 809BDCA0 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 01044 809BDCA4 1000009F */  beq     $zero, $zero, .L809BDF24   
/* 01048 809BDCA8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809BDCAC:
/* 0104C 809BDCAC 0C00B6EC */  jal     func_8002DBB0              
/* 01050 809BDCB0 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 01054 809BDCB4 3C014334 */  lui     $at, 0x4334                ## $at = 43340000
/* 01058 809BDCB8 44812000 */  mtc1    $at, $f4                   ## $f4 = 180.00
/* 0105C 809BDCBC 3C01809C */  lui     $at, %hi(D_809BF54C)       ## $at = 809C0000
/* 01060 809BDCC0 C428F54C */  lwc1    $f8, %lo(D_809BF54C)($at)  
/* 01064 809BDCC4 46040181 */  sub.s   $f6, $f0, $f4              
/* 01068 809BDCC8 8FA6003C */  lw      $a2, 0x003C($sp)           
/* 0106C 809BDCCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01070 809BDCD0 27A50028 */  addiu   $a1, $sp, 0x0028           ## $a1 = FFFFFFE8
/* 01074 809BDCD4 46083282 */  mul.s   $f10, $f6, $f8             
/* 01078 809BDCD8 24C60024 */  addiu   $a2, $a2, 0x0024           ## $a2 = 00000024
/* 0107C 809BDCDC 4600540D */  trunc.w.s $f16, $f10                 
/* 01080 809BDCE0 44038000 */  mfc1    $v1, $f16                  
/* 01084 809BDCE4 00000000 */  nop
/* 01088 809BDCE8 00031C00 */  sll     $v1, $v1, 16               
/* 0108C 809BDCEC 00031C03 */  sra     $v1, $v1, 16               
/* 01090 809BDCF0 0C00B6F4 */  jal     func_8002DBD0              
/* 01094 809BDCF4 A7A30036 */  sh      $v1, 0x0036($sp)           
/* 01098 809BDCF8 C7A00028 */  lwc1    $f0, 0x0028($sp)           
/* 0109C 809BDCFC 3C01809C */  lui     $at, %hi(D_809BF550)       ## $at = 809C0000
/* 010A0 809BDD00 C432F550 */  lwc1    $f18, %lo(D_809BF550)($at) 
/* 010A4 809BDD04 46000005 */  abs.s   $f0, $f0                   
/* 010A8 809BDD08 87A30036 */  lh      $v1, 0x0036($sp)           
/* 010AC 809BDD0C 4600903C */  c.lt.s  $f18, $f0                  
/* 010B0 809BDD10 C7A60030 */  lwc1    $f6, 0x0030($sp)           
/* 010B4 809BDD14 45030014 */  bc1tl   .L809BDD68                 
/* 010B8 809BDD18 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
/* 010BC 809BDD1C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 010C0 809BDD20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 010C4 809BDD24 24051B00 */  addiu   $a1, $zero, 0x1B00         ## $a1 = 00001B00
/* 010C8 809BDD28 4606203C */  c.lt.s  $f4, $f6                   
/* 010CC 809BDD2C 00000000 */  nop
/* 010D0 809BDD30 45020014 */  bc1fl   .L809BDD84                 
/* 010D4 809BDD34 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 010D8 809BDD38 0C00B821 */  jal     func_8002E084              
/* 010DC 809BDD3C A7A30036 */  sh      $v1, 0x0036($sp)           
/* 010E0 809BDD40 1440000F */  bne     $v0, $zero, .L809BDD80     
/* 010E4 809BDD44 87A30036 */  lh      $v1, 0x0036($sp)           
/* 010E8 809BDD48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 010EC 809BDD4C 24052000 */  addiu   $a1, $zero, 0x2000         ## $a1 = 00002000
/* 010F0 809BDD50 8FA60044 */  lw      $a2, 0x0044($sp)           
/* 010F4 809BDD54 0C00B7F2 */  jal     func_8002DFC8              
/* 010F8 809BDD58 A7A30036 */  sh      $v1, 0x0036($sp)           
/* 010FC 809BDD5C 14400008 */  bne     $v0, $zero, .L809BDD80     
/* 01100 809BDD60 87A30036 */  lh      $v1, 0x0036($sp)           
/* 01104 809BDD64 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
.L809BDD68:
/* 01108 809BDD68 2463FF80 */  addiu   $v1, $v1, 0xFF80           ## $v1 = FFFFFF80
/* 0110C 809BDD6C 00031C00 */  sll     $v1, $v1, 16               
/* 01110 809BDD70 10400003 */  beq     $v0, $zero, .L809BDD80     
/* 01114 809BDD74 00031C03 */  sra     $v1, $v1, 16               
/* 01118 809BDD78 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 0111C 809BDD7C A6180196 */  sh      $t8, 0x0196($s0)           ## 00000196
.L809BDD80:
/* 01120 809BDD80 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
.L809BDD84:
/* 01124 809BDD84 44815000 */  mtc1    $at, $f10                  ## $f10 = 250.00
/* 01128 809BDD88 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 0112C 809BDD8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01130 809BDD90 24056000 */  addiu   $a1, $zero, 0x6000         ## $a1 = 00006000
/* 01134 809BDD94 460A403C */  c.lt.s  $f8, $f10                  
/* 01138 809BDD98 00000000 */  nop
/* 0113C 809BDD9C 45020015 */  bc1fl   .L809BDDF4                 
/* 01140 809BDDA0 24190050 */  addiu   $t9, $zero, 0x0050         ## $t9 = 00000050
/* 01144 809BDDA4 0C00B821 */  jal     func_8002E084              
/* 01148 809BDDA8 A7A30036 */  sh      $v1, 0x0036($sp)           
/* 0114C 809BDDAC 14400010 */  bne     $v0, $zero, .L809BDDF0     
/* 01150 809BDDB0 87A30036 */  lh      $v1, 0x0036($sp)           
/* 01154 809BDDB4 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
/* 01158 809BDDB8 3C014334 */  lui     $at, 0x4334                ## $at = 43340000
/* 0115C 809BDDBC 44819000 */  mtc1    $at, $f18                  ## $f18 = 180.00
/* 01160 809BDDC0 10400002 */  beq     $v0, $zero, .L809BDDCC     
/* 01164 809BDDC4 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 01168 809BDDC8 A6080198 */  sh      $t0, 0x0198($s0)           ## 00000198
.L809BDDCC:
/* 0116C 809BDDCC C6100090 */  lwc1    $f16, 0x0090($s0)          ## 00000090
/* 01170 809BDDD0 4612803C */  c.lt.s  $f16, $f18                 
/* 01174 809BDDD4 00000000 */  nop
/* 01178 809BDDD8 45020008 */  bc1fl   .L809BDDFC                 
/* 0117C 809BDDDC 920900AF */  lbu     $t1, 0x00AF($s0)           ## 000000AF
/* 01180 809BDDE0 24630020 */  addiu   $v1, $v1, 0x0020           ## $v1 = 00000020
/* 01184 809BDDE4 00031C00 */  sll     $v1, $v1, 16               
/* 01188 809BDDE8 10000003 */  beq     $zero, $zero, .L809BDDF8   
/* 0118C 809BDDEC 00031C03 */  sra     $v1, $v1, 16               
.L809BDDF0:
/* 01190 809BDDF0 24190050 */  addiu   $t9, $zero, 0x0050         ## $t9 = 00000050
.L809BDDF4:
/* 01194 809BDDF4 A6190198 */  sh      $t9, 0x0198($s0)           ## 00000198
.L809BDDF8:
/* 01198 809BDDF8 920900AF */  lbu     $t1, 0x00AF($s0)           ## 000000AF
.L809BDDFC:
/* 0119C 809BDDFC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 011A0 809BDE00 246A0130 */  addiu   $t2, $v1, 0x0130           ## $t2 = 00000150
/* 011A4 809BDE04 5521000D */  bnel    $t1, $at, .L809BDE3C       
/* 011A8 809BDE08 24630130 */  addiu   $v1, $v1, 0x0130           ## $v1 = 00000150
/* 011AC 809BDE0C 448A2000 */  mtc1    $t2, $f4                   ## $f4 = 0.00
/* 011B0 809BDE10 3C01809C */  lui     $at, %hi(D_809BF554)       ## $at = 809C0000
/* 011B4 809BDE14 C428F554 */  lwc1    $f8, %lo(D_809BF554)($at)  
/* 011B8 809BDE18 468021A0 */  cvt.s.w $f6, $f4                   
/* 011BC 809BDE1C 46083282 */  mul.s   $f10, $f6, $f8             
/* 011C0 809BDE20 4600540D */  trunc.w.s $f16, $f10                 
/* 011C4 809BDE24 44038000 */  mfc1    $v1, $f16                  
/* 011C8 809BDE28 00000000 */  nop
/* 011CC 809BDE2C 00031C00 */  sll     $v1, $v1, 16               
/* 011D0 809BDE30 10000004 */  beq     $zero, $zero, .L809BDE44   
/* 011D4 809BDE34 00031C03 */  sra     $v1, $v1, 16               
/* 011D8 809BDE38 24630130 */  addiu   $v1, $v1, 0x0130           ## $v1 = 00000280
.L809BDE3C:
/* 011DC 809BDE3C 00031C00 */  sll     $v1, $v1, 16               
/* 011E0 809BDE40 00031C03 */  sra     $v1, $v1, 16               
.L809BDE44:
/* 011E4 809BDE44 820D0194 */  lb      $t5, 0x0194($s0)           ## 00000194
/* 011E8 809BDE48 860C00B6 */  lh      $t4, 0x00B6($s0)           ## 000000B6
/* 011EC 809BDE4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011F0 809BDE50 006D0019 */  multu   $v1, $t5                   
/* 011F4 809BDE54 00007012 */  mflo    $t6                        
/* 011F8 809BDE58 018E7821 */  addu    $t7, $t4, $t6              
/* 011FC 809BDE5C 0C26F38F */  jal     func_809BCE3C              
/* 01200 809BDE60 A60F00B6 */  sh      $t7, 0x00B6($s0)           ## 000000B6
/* 01204 809BDE64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01208 809BDE68 0C26F3DA */  jal     func_809BCF68              
/* 0120C 809BDE6C 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 01210 809BDE70 86180198 */  lh      $t8, 0x0198($s0)           ## 00000198
/* 01214 809BDE74 57000006 */  bnel    $t8, $zero, .L809BDE90     
/* 01218 809BDE78 86080196 */  lh      $t0, 0x0196($s0)           ## 00000196
/* 0121C 809BDE7C 0C26F5DA */  jal     func_809BD768              
/* 01220 809BDE80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01224 809BDE84 10000027 */  beq     $zero, $zero, .L809BDF24   
/* 01228 809BDE88 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0122C 809BDE8C 86080196 */  lh      $t0, 0x0196($s0)           ## 00000196
.L809BDE90:
/* 01230 809BDE90 55000006 */  bnel    $t0, $zero, .L809BDEAC     
/* 01234 809BDE94 92190195 */  lbu     $t9, 0x0195($s0)           ## 00000195
/* 01238 809BDE98 0C26F529 */  jal     func_809BD4A4              
/* 0123C 809BDE9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01240 809BDEA0 10000020 */  beq     $zero, $zero, .L809BDF24   
/* 01244 809BDEA4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01248 809BDEA8 92190195 */  lbu     $t9, 0x0195($s0)           ## 00000195
.L809BDEAC:
/* 0124C 809BDEAC 5320001D */  beql    $t9, $zero, .L809BDF24     
/* 01250 809BDEB0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01254 809BDEB4 8609008A */  lh      $t1, 0x008A($s0)           ## 0000008A
/* 01258 809BDEB8 860A00B6 */  lh      $t2, 0x00B6($s0)           ## 000000B6
/* 0125C 809BDEBC 012A1023 */  subu    $v0, $t1, $t2              
/* 01260 809BDEC0 00021400 */  sll     $v0, $v0, 16               
/* 01264 809BDEC4 00021403 */  sra     $v0, $v0, 16               
/* 01268 809BDEC8 04430005 */  bgezl   $v0, .L809BDEE0            
/* 0126C 809BDECC 28414100 */  slti    $at, $v0, 0x4100           
/* 01270 809BDED0 00021023 */  subu    $v0, $zero, $v0            
/* 01274 809BDED4 00021400 */  sll     $v0, $v0, 16               
/* 01278 809BDED8 00021403 */  sra     $v0, $v0, 16               
/* 0127C 809BDEDC 28414100 */  slti    $at, $v0, 0x4100           
.L809BDEE0:
/* 01280 809BDEE0 1020000F */  beq     $at, $zero, .L809BDF20     
/* 01284 809BDEE4 28413F01 */  slti    $at, $v0, 0x3F01           
/* 01288 809BDEE8 5420000E */  bnel    $at, $zero, .L809BDF24     
/* 0128C 809BDEEC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01290 809BDEF0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01294 809BDEF4 00000000 */  nop
/* 01298 809BDEF8 3C01809C */  lui     $at, %hi(D_809BF558)       ## $at = 809C0000
/* 0129C 809BDEFC C432F558 */  lwc1    $f18, %lo(D_809BF558)($at) 
/* 012A0 809BDF00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012A4 809BDF04 4612003C */  c.lt.s  $f0, $f18                  
/* 012A8 809BDF08 00000000 */  nop
/* 012AC 809BDF0C 45020004 */  bc1fl   .L809BDF20                 
/* 012B0 809BDF10 A2000195 */  sb      $zero, 0x0195($s0)         ## 00000195
/* 012B4 809BDF14 0C26F529 */  jal     func_809BD4A4              
/* 012B8 809BDF18 A6000196 */  sh      $zero, 0x0196($s0)         ## 00000196
/* 012BC 809BDF1C A2000195 */  sb      $zero, 0x0195($s0)         ## 00000195
.L809BDF20:
/* 012C0 809BDF20 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809BDF24:
/* 012C4 809BDF24 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 012C8 809BDF28 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 012CC 809BDF2C 03E00008 */  jr      $ra                        
/* 012D0 809BDF30 00000000 */  nop
