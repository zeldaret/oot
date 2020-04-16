.rdata
glabel D_80ABE444
    .asciz "../z_en_ny.c"
    .balign 4

glabel D_80ABE454
    .asciz "../z_en_ny.c"
    .balign 4

glabel D_80ABE464
    .asciz "../z_en_ny.c"
    .balign 4

glabel D_80ABE474
    .asciz "../z_en_ny.c"
    .balign 4

.text
glabel EnNy_Draw
/* 01174 80ABDD24 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 01178 80ABDD28 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0117C 80ABDD2C AFB10028 */  sw      $s1, 0x0028($sp)           
/* 01180 80ABDD30 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 01184 80ABDD34 AFA50094 */  sw      $a1, 0x0094($sp)           
/* 01188 80ABDD38 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 0118C 80ABDD3C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 01190 80ABDD40 3C0680AC */  lui     $a2, %hi(D_80ABE444)       ## $a2 = 80AC0000
/* 01194 80ABDD44 24C6E444 */  addiu   $a2, $a2, %lo(D_80ABE444)  ## $a2 = 80ABE444
/* 01198 80ABDD48 27A40074 */  addiu   $a0, $sp, 0x0074           ## $a0 = FFFFFFE4
/* 0119C 80ABDD4C 24070345 */  addiu   $a3, $zero, 0x0345         ## $a3 = 00000345
/* 011A0 80ABDD50 0C031AB1 */  jal     Graph_OpenDisps              
/* 011A4 80ABDD54 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 011A8 80ABDD58 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 011AC 80ABDD5C 0C018A29 */  jal     func_800628A4              
/* 011B0 80ABDD60 26250150 */  addiu   $a1, $s1, 0x0150           ## $a1 = 00000150
/* 011B4 80ABDD64 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 011B8 80ABDD68 8FA50094 */  lw      $a1, 0x0094($sp)           
/* 011BC 80ABDD6C 0C00BB60 */  jal     func_8002ED80              
/* 011C0 80ABDD70 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 011C4 80ABDD74 8FAF0094 */  lw      $t7, 0x0094($sp)           
/* 011C8 80ABDD78 0C024F61 */  jal     func_80093D84              
/* 011CC 80ABDD7C 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 011D0 80ABDD80 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 011D4 80ABDD84 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 011D8 80ABDD88 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 011DC 80ABDD8C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 011E0 80ABDD90 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 011E4 80ABDD94 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 011E8 80ABDD98 8FA90094 */  lw      $t1, 0x0094($sp)           
/* 011EC 80ABDD9C 3C0580AC */  lui     $a1, %hi(D_80ABE454)       ## $a1 = 80AC0000
/* 011F0 80ABDDA0 24A5E454 */  addiu   $a1, $a1, %lo(D_80ABE454)  ## $a1 = 80ABE454
/* 011F4 80ABDDA4 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 011F8 80ABDDA8 2406034D */  addiu   $a2, $zero, 0x034D         ## $a2 = 0000034D
/* 011FC 80ABDDAC 0C0346A2 */  jal     Matrix_NewMtx              
/* 01200 80ABDDB0 AFA20070 */  sw      $v0, 0x0070($sp)           
/* 01204 80ABDDB4 8FA30070 */  lw      $v1, 0x0070($sp)           
/* 01208 80ABDDB8 3C04E700 */  lui     $a0, 0xE700                ## $a0 = E7000000
/* 0120C 80ABDDBC 3C05E200 */  lui     $a1, 0xE200                ## $a1 = E2000000
/* 01210 80ABDDC0 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01214 80ABDDC4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01218 80ABDDC8 3C0C0C18 */  lui     $t4, 0x0C18                ## $t4 = 0C180000
/* 0121C 80ABDDCC 358C49D8 */  ori     $t4, $t4, 0x49D8           ## $t4 = 0C1849D8
/* 01220 80ABDDD0 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 01224 80ABDDD4 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 01228 80ABDDD8 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 0122C 80ABDDDC AC440000 */  sw      $a0, 0x0000($v0)           ## 00000000
/* 01230 80ABDDE0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01234 80ABDDE4 34A5001C */  ori     $a1, $a1, 0x001C           ## $a1 = E200001C
/* 01238 80ABDDE8 3C06FB00 */  lui     $a2, 0xFB00                ## $a2 = FB000000
/* 0123C 80ABDDEC 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 01240 80ABDDF0 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 01244 80ABDDF4 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 01248 80ABDDF8 AC450000 */  sw      $a1, 0x0000($v0)           ## 00000000
/* 0124C 80ABDDFC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01250 80ABDE00 3C190600 */  lui     $t9, 0x0600                ## $t9 = 06000000
/* 01254 80ABDE04 27391EA8 */  addiu   $t9, $t9, 0x1EA8           ## $t9 = 06001EA8
/* 01258 80ABDE08 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 0125C 80ABDE0C AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 01260 80ABDE10 AC460000 */  sw      $a2, 0x0000($v0)           ## 00000000
/* 01264 80ABDE14 8E2E01D8 */  lw      $t6, 0x01D8($s1)           ## 000001D8
/* 01268 80ABDE18 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 0126C 80ABDE1C 3C0BC810 */  lui     $t3, 0xC810                ## $t3 = C8100000
/* 01270 80ABDE20 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 01274 80ABDE24 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 01278 80ABDE28 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0127C 80ABDE2C 356B49D8 */  ori     $t3, $t3, 0x49D8           ## $t3 = C81049D8
/* 01280 80ABDE30 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 01284 80ABDE34 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01288 80ABDE38 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 0128C 80ABDE3C AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 01290 80ABDE40 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 01294 80ABDE44 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01298 80ABDE48 3C180600 */  lui     $t8, 0x0600                ## $t8 = 06000000
/* 0129C 80ABDE4C 27181DD0 */  addiu   $t8, $t8, 0x1DD0           ## $t8 = 06001DD0
/* 012A0 80ABDE50 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 012A4 80ABDE54 AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 012A8 80ABDE58 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 012AC 80ABDE5C AC440000 */  sw      $a0, 0x0000($v0)           ## 00000000
/* 012B0 80ABDE60 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 012B4 80ABDE64 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.25
/* 012B8 80ABDE68 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 012BC 80ABDE6C 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 012C0 80ABDE70 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 012C4 80ABDE74 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 012C8 80ABDE78 AC450000 */  sw      $a1, 0x0000($v0)           ## 00000000
/* 012CC 80ABDE7C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 012D0 80ABDE80 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 012D4 80ABDE84 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 012D8 80ABDE88 AC460000 */  sw      $a2, 0x0000($v0)           ## 00000000
/* 012DC 80ABDE8C 8E2D01D4 */  lw      $t5, 0x01D4($s1)           ## 000001D4
/* 012E0 80ABDE90 31AE00FF */  andi    $t6, $t5, 0x00FF           ## $t6 = 00000008
/* 012E4 80ABDE94 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 012E8 80ABDE98 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 012EC 80ABDE9C 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 012F0 80ABDEA0 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 012F4 80ABDEA4 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 012F8 80ABDEA8 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 012FC 80ABDEAC C62C01E0 */  lwc1    $f12, 0x01E0($s1)          ## 000001E0
/* 01300 80ABDEB0 460C203C */  c.lt.s  $f4, $f12                  
/* 01304 80ABDEB4 00000000 */  nop
/* 01308 80ABDEB8 45020023 */  bc1fl   .L80ABDF48                 
/* 0130C 80ABDEBC 8FAF0094 */  lw      $t7, 0x0094($sp)           
/* 01310 80ABDEC0 44066000 */  mfc1    $a2, $f12                  
/* 01314 80ABDEC4 0C0342A3 */  jal     Matrix_Scale              
/* 01318 80ABDEC8 46006386 */  mov.s   $f14, $f12                 
/* 0131C 80ABDECC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01320 80ABDED0 8FA50094 */  lw      $a1, 0x0094($sp)           
/* 01324 80ABDED4 0C00BAF3 */  jal     func_8002EBCC              
/* 01328 80ABDED8 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0132C 80ABDEDC 8FB90094 */  lw      $t9, 0x0094($sp)           
/* 01330 80ABDEE0 0C024F46 */  jal     func_80093D18              
/* 01334 80ABDEE4 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 01338 80ABDEE8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0133C 80ABDEEC 3C0ADA38 */  lui     $t2, 0xDA38                ## $t2 = DA380000
/* 01340 80ABDEF0 354A0003 */  ori     $t2, $t2, 0x0003           ## $t2 = DA380003
/* 01344 80ABDEF4 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 01348 80ABDEF8 AE0902C0 */  sw      $t1, 0x02C0($s0)           ## 000002C0
/* 0134C 80ABDEFC AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 01350 80ABDF00 8FAB0094 */  lw      $t3, 0x0094($sp)           
/* 01354 80ABDF04 3C0580AC */  lui     $a1, %hi(D_80ABE464)       ## $a1 = 80AC0000
/* 01358 80ABDF08 24A5E464 */  addiu   $a1, $a1, %lo(D_80ABE464)  ## $a1 = 80ABE464
/* 0135C 80ABDF0C 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 01360 80ABDF10 24060364 */  addiu   $a2, $zero, 0x0364         ## $a2 = 00000364
/* 01364 80ABDF14 0C0346A2 */  jal     Matrix_NewMtx              
/* 01368 80ABDF18 AFA2004C */  sw      $v0, 0x004C($sp)           
/* 0136C 80ABDF1C 8FA3004C */  lw      $v1, 0x004C($sp)           
/* 01370 80ABDF20 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 01374 80ABDF24 25CE1FC8 */  addiu   $t6, $t6, 0x1FC8           ## $t6 = 06001FC8
/* 01378 80ABDF28 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 0137C 80ABDF2C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 01380 80ABDF30 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 01384 80ABDF34 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 01388 80ABDF38 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 0138C 80ABDF3C AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 01390 80ABDF40 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 01394 80ABDF44 8FAF0094 */  lw      $t7, 0x0094($sp)           
.L80ABDF48:
/* 01398 80ABDF48 3C0680AC */  lui     $a2, %hi(D_80ABE474)       ## $a2 = 80AC0000
/* 0139C 80ABDF4C 24C6E474 */  addiu   $a2, $a2, %lo(D_80ABE474)  ## $a2 = 80ABE474
/* 013A0 80ABDF50 27A40074 */  addiu   $a0, $sp, 0x0074           ## $a0 = FFFFFFE4
/* 013A4 80ABDF54 24070368 */  addiu   $a3, $zero, 0x0368         ## $a3 = 00000368
/* 013A8 80ABDF58 0C031AD5 */  jal     Graph_CloseDisps              
/* 013AC 80ABDF5C 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
/* 013B0 80ABDF60 862301CA */  lh      $v1, 0x01CA($s1)           ## 000001CA
/* 013B4 80ABDF64 10600031 */  beq     $v1, $zero, .L80ABE02C     
/* 013B8 80ABDF68 2462FFFF */  addiu   $v0, $v1, 0xFFFF           ## $v0 = FFFFFFFF
/* 013BC 80ABDF6C 92380114 */  lbu     $t8, 0x0114($s1)           ## 00000114
/* 013C0 80ABDF70 00021400 */  sll     $v0, $v0, 16               
/* 013C4 80ABDF74 00021403 */  sra     $v0, $v0, 16               
/* 013C8 80ABDF78 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 013CC 80ABDF7C 1440002B */  bne     $v0, $zero, .L80ABE02C     
/* 013D0 80ABDF80 A2390114 */  sb      $t9, 0x0114($s1)           ## 00000114
/* 013D4 80ABDF84 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 013D8 80ABDF88 44816000 */  mtc1    $at, $f12                  ## $f12 = 5.00
/* 013DC 80ABDF8C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 013E0 80ABDF90 A7A20036 */  sh      $v0, 0x0036($sp)           
/* 013E4 80ABDF94 87A20036 */  lh      $v0, 0x0036($sp)           
/* 013E8 80ABDF98 3C0B80AC */  lui     $t3, %hi(D_80ABE3A8)       ## $t3 = 80AC0000
/* 013EC 80ABDF9C 256BE3A8 */  addiu   $t3, $t3, %lo(D_80ABE3A8)  ## $t3 = 80ABE3A8
/* 013F0 80ABDFA0 30490003 */  andi    $t1, $v0, 0x0003           ## $t1 = 00000000
/* 013F4 80ABDFA4 00095080 */  sll     $t2, $t1,  2               
/* 013F8 80ABDFA8 01495023 */  subu    $t2, $t2, $t1              
/* 013FC 80ABDFAC 000A5080 */  sll     $t2, $t2,  2               
/* 01400 80ABDFB0 014B8021 */  addu    $s0, $t2, $t3              
/* 01404 80ABDFB4 C6080000 */  lwc1    $f8, 0x0000($s0)           ## 00000000
/* 01408 80ABDFB8 C6260024 */  lwc1    $f6, 0x0024($s1)           ## 00000024
/* 0140C 80ABDFBC 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01410 80ABDFC0 44816000 */  mtc1    $at, $f12                  ## $f12 = 5.00
/* 01414 80ABDFC4 46083280 */  add.s   $f10, $f6, $f8             
/* 01418 80ABDFC8 460A0400 */  add.s   $f16, $f0, $f10            
/* 0141C 80ABDFCC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 01420 80ABDFD0 E7B0003C */  swc1    $f16, 0x003C($sp)          
/* 01424 80ABDFD4 C6320028 */  lwc1    $f18, 0x0028($s1)          ## 00000028
/* 01428 80ABDFD8 C6040004 */  lwc1    $f4, 0x0004($s0)           ## 00000004
/* 0142C 80ABDFDC 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01430 80ABDFE0 44816000 */  mtc1    $at, $f12                  ## $f12 = 5.00
/* 01434 80ABDFE4 46049180 */  add.s   $f6, $f18, $f4             
/* 01438 80ABDFE8 46060200 */  add.s   $f8, $f0, $f6              
/* 0143C 80ABDFEC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 01440 80ABDFF0 E7A80040 */  swc1    $f8, 0x0040($sp)           
/* 01444 80ABDFF4 C62A002C */  lwc1    $f10, 0x002C($s1)          ## 0000002C
/* 01448 80ABDFF8 C6100008 */  lwc1    $f16, 0x0008($s0)          ## 00000008
/* 0144C 80ABDFFC 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 01450 80ABE000 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 01454 80ABE004 46105480 */  add.s   $f18, $f10, $f16           
/* 01458 80ABE008 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 0145C 80ABE00C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01460 80ABE010 8FA40094 */  lw      $a0, 0x0094($sp)           
/* 01464 80ABE014 46120100 */  add.s   $f4, $f0, $f18             
/* 01468 80ABE018 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0146C 80ABE01C 27A6003C */  addiu   $a2, $sp, 0x003C           ## $a2 = FFFFFFAC
/* 01470 80ABE020 24070064 */  addiu   $a3, $zero, 0x0064         ## $a3 = 00000064
/* 01474 80ABE024 0C00A935 */  jal     func_8002A4D4              
/* 01478 80ABE028 E7A40044 */  swc1    $f4, 0x0044($sp)           
.L80ABE02C:
/* 0147C 80ABE02C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 01480 80ABE030 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 01484 80ABE034 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 01488 80ABE038 03E00008 */  jr      $ra                        
/* 0148C 80ABE03C 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000
