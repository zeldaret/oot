glabel func_80B4BC78
/* 01138 80B4BC78 27BDFF48 */  addiu   $sp, $sp, 0xFF48           ## $sp = FFFFFF48
/* 0113C 80B4BC7C 3C0F80B5 */  lui     $t7, %hi(D_80B4E6D4)       ## $t7 = 80B50000
/* 01140 80B4BC80 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 01144 80B4BC84 25EFE6D4 */  addiu   $t7, $t7, %lo(D_80B4E6D4)  ## $t7 = 80B4E6D4
/* 01148 80B4BC88 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0114C 80B4BC8C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01150 80B4BC90 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 01154 80B4BC94 AFA500BC */  sw      $a1, 0x00BC($sp)           
/* 01158 80B4BC98 25E80024 */  addiu   $t0, $t7, 0x0024           ## $t0 = 80B4E6F8
/* 0115C 80B4BC9C 27AE0090 */  addiu   $t6, $sp, 0x0090           ## $t6 = FFFFFFD8
.L80B4BCA0:
/* 01160 80B4BCA0 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B4E6D4
/* 01164 80B4BCA4 25EF000C */  addiu   $t7, $t7, 0x000C           ## $t7 = 80B4E6E0
/* 01168 80B4BCA8 25CE000C */  addiu   $t6, $t6, 0x000C           ## $t6 = FFFFFFE4
/* 0116C 80B4BCAC ADD9FFF4 */  sw      $t9, -0x000C($t6)          ## FFFFFFD8
/* 01170 80B4BCB0 8DF8FFF8 */  lw      $t8, -0x0008($t7)          ## 80B4E6D8
/* 01174 80B4BCB4 ADD8FFF8 */  sw      $t8, -0x0008($t6)          ## FFFFFFDC
/* 01178 80B4BCB8 8DF9FFFC */  lw      $t9, -0x0004($t7)          ## 80B4E6DC
/* 0117C 80B4BCBC 15E8FFF8 */  bne     $t7, $t0, .L80B4BCA0       
/* 01180 80B4BCC0 ADD9FFFC */  sw      $t9, -0x0004($t6)          ## FFFFFFE0
/* 01184 80B4BCC4 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B4E6E0
/* 01188 80B4BCC8 3C0A80B5 */  lui     $t2, %hi(D_80B4E6FC)       ## $t2 = 80B50000
/* 0118C 80B4BCCC 254AE6FC */  addiu   $t2, $t2, %lo(D_80B4E6FC)  ## $t2 = 80B4E6FC
/* 01190 80B4BCD0 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFE4
/* 01194 80B4BCD4 8D4C0000 */  lw      $t4, 0x0000($t2)           ## 80B4E6FC
/* 01198 80B4BCD8 27A90084 */  addiu   $t1, $sp, 0x0084           ## $t1 = FFFFFFCC
/* 0119C 80B4BCDC 8D4B0004 */  lw      $t3, 0x0004($t2)           ## 80B4E700
/* 011A0 80B4BCE0 AD2C0000 */  sw      $t4, 0x0000($t1)           ## FFFFFFCC
/* 011A4 80B4BCE4 954C0008 */  lhu     $t4, 0x0008($t2)           ## 80B4E704
/* 011A8 80B4BCE8 3C0880B5 */  lui     $t0, %hi(D_80B4E708)       ## $t0 = 80B50000
/* 011AC 80B4BCEC 2508E708 */  addiu   $t0, $t0, %lo(D_80B4E708)  ## $t0 = 80B4E708
/* 011B0 80B4BCF0 AD2B0004 */  sw      $t3, 0x0004($t1)           ## FFFFFFD0
/* 011B4 80B4BCF4 A52C0008 */  sh      $t4, 0x0008($t1)           ## FFFFFFD4
/* 011B8 80B4BCF8 8D0E0000 */  lw      $t6, 0x0000($t0)           ## 80B4E708
/* 011BC 80B4BCFC 27AD0058 */  addiu   $t5, $sp, 0x0058           ## $t5 = FFFFFFA0
/* 011C0 80B4BD00 8D0F0004 */  lw      $t7, 0x0004($t0)           ## 80B4E70C
/* 011C4 80B4BD04 ADAE0000 */  sw      $t6, 0x0000($t5)           ## FFFFFFA0
/* 011C8 80B4BD08 8D0E0008 */  lw      $t6, 0x0008($t0)           ## 80B4E710
/* 011CC 80B4BD0C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 011D0 80B4BD10 ADAF0004 */  sw      $t7, 0x0004($t5)           ## FFFFFFA4
/* 011D4 80B4BD14 ADAE0008 */  sw      $t6, 0x0008($t5)           ## FFFFFFA8
/* 011D8 80B4BD18 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 011DC 80B4BD1C AFA4003C */  sw      $a0, 0x003C($sp)           
/* 011E0 80B4BD20 50400016 */  beql    $v0, $zero, .L80B4BD7C     
/* 011E4 80B4BD24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011E8 80B4BD28 8E190154 */  lw      $t9, 0x0154($s0)           ## 00000154
/* 011EC 80B4BD2C 3C180601 */  lui     $t8, 0x0601                ## $t8 = 06010000
/* 011F0 80B4BD30 27180B38 */  addiu   $t8, $t8, 0x0B38           ## $t8 = 06010B38
/* 011F4 80B4BD34 17190010 */  bne     $t8, $t9, .L80B4BD78       
/* 011F8 80B4BD38 3C110601 */  lui     $s1, 0x0601                ## $s1 = 06010000
/* 011FC 80B4BD3C 26311348 */  addiu   $s1, $s1, 0x1348           ## $s1 = 06011348
/* 01200 80B4BD40 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 01204 80B4BD44 02202025 */  or      $a0, $s1, $zero            ## $a0 = 06011348
/* 01208 80B4BD48 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0120C 80B4BD4C 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 01210 80B4BD50 44814000 */  mtc1    $at, $f8                   ## $f8 = -10.00
/* 01214 80B4BD54 468021A0 */  cvt.s.w $f6, $f4                   
/* 01218 80B4BD58 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0121C 80B4BD5C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 06011348
/* 01220 80B4BD60 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01224 80B4BD64 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01228 80B4BD68 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 0122C 80B4BD6C E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01230 80B4BD70 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 01234 80B4BD74 E7A80018 */  swc1    $f8, 0x0018($sp)           
.L80B4BD78:
/* 01238 80B4BD78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B4BD7C:
/* 0123C 80B4BD7C 0C2D2E1D */  jal     func_80B4B874              
/* 01240 80B4BD80 8FA500BC */  lw      $a1, 0x00BC($sp)           
/* 01244 80B4BD84 8FA900BC */  lw      $t1, 0x00BC($sp)           
/* 01248 80B4BD88 8D311D8C */  lw      $s1, 0x1D8C($t1)           ## 00001D8C
/* 0124C 80B4BD8C 12200062 */  beq     $s1, $zero, .L80B4BF18     
/* 01250 80B4BD90 02202025 */  or      $a0, $s1, $zero            ## $a0 = 06011348
/* 01254 80B4BD94 0C2D2DFD */  jal     func_80B4B7F4              
/* 01258 80B4BD98 27A50070 */  addiu   $a1, $sp, 0x0070           ## $a1 = FFFFFFB8
/* 0125C 80B4BD9C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 06011348
/* 01260 80B4BDA0 0C2D2E0D */  jal     func_80B4B834              
/* 01264 80B4BDA4 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFAC
/* 01268 80B4BDA8 860201E6 */  lh      $v0, 0x01E6($s0)           ## 000001E6
/* 0126C 80B4BDAC 27AA0070 */  addiu   $t2, $sp, 0x0070           ## $t2 = FFFFFFB8
/* 01270 80B4BDB0 54400016 */  bnel    $v0, $zero, .L80B4BE0C     
/* 01274 80B4BDB4 96230000 */  lhu     $v1, 0x0000($s1)           ## 06011348
/* 01278 80B4BDB8 8D4C0000 */  lw      $t4, 0x0000($t2)           ## FFFFFFB8
/* 0127C 80B4BDBC 27A30040 */  addiu   $v1, $sp, 0x0040           ## $v1 = FFFFFF88
/* 01280 80B4BDC0 AC6C0000 */  sw      $t4, 0x0000($v1)           ## FFFFFF88
/* 01284 80B4BDC4 8D4B0004 */  lw      $t3, 0x0004($t2)           ## FFFFFFBC
/* 01288 80B4BDC8 8C680000 */  lw      $t0, 0x0000($v1)           ## FFFFFF88
/* 0128C 80B4BDCC AC6B0004 */  sw      $t3, 0x0004($v1)           ## FFFFFF8C
/* 01290 80B4BDD0 8D4C0008 */  lw      $t4, 0x0008($t2)           ## FFFFFFC0
/* 01294 80B4BDD4 AC6C0008 */  sw      $t4, 0x0008($v1)           ## FFFFFF90
/* 01298 80B4BDD8 AE080008 */  sw      $t0, 0x0008($s0)           ## 00000008
/* 0129C 80B4BDDC 8C6D0004 */  lw      $t5, 0x0004($v1)           ## FFFFFF8C
/* 012A0 80B4BDE0 860201E6 */  lh      $v0, 0x01E6($s0)           ## 000001E6
/* 012A4 80B4BDE4 AE0D000C */  sw      $t5, 0x000C($s0)           ## 0000000C
/* 012A8 80B4BDE8 8C680008 */  lw      $t0, 0x0008($v1)           ## FFFFFF90
/* 012AC 80B4BDEC AE080010 */  sw      $t0, 0x0010($s0)           ## 00000010
/* 012B0 80B4BDF0 8C6E0000 */  lw      $t6, 0x0000($v1)           ## FFFFFF88
/* 012B4 80B4BDF4 AE0E0024 */  sw      $t6, 0x0024($s0)           ## 00000024
/* 012B8 80B4BDF8 8C6F0004 */  lw      $t7, 0x0004($v1)           ## FFFFFF8C
/* 012BC 80B4BDFC AE0F0028 */  sw      $t7, 0x0028($s0)           ## 00000028
/* 012C0 80B4BE00 8C6E0008 */  lw      $t6, 0x0008($v1)           ## FFFFFF90
/* 012C4 80B4BE04 AE0E002C */  sw      $t6, 0x002C($s0)           ## 0000002C
/* 012C8 80B4BE08 96230000 */  lhu     $v1, 0x0000($s1)           ## 06011348
.L80B4BE0C:
/* 012CC 80B4BE0C 10620017 */  beq     $v1, $v0, .L80B4BE6C       
/* 012D0 80B4BE10 0003C080 */  sll     $t8, $v1,  2               
/* 012D4 80B4BE14 03B82021 */  addu    $a0, $sp, $t8              
/* 012D8 80B4BE18 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 012DC 80B4BE1C 8C840090 */  lw      $a0, 0x0090($a0)           ## 00000090
/* 012E0 80B4BE20 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 012E4 80B4BE24 96230000 */  lhu     $v1, 0x0000($s1)           ## 06011348
/* 012E8 80B4BE28 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 012EC 80B4BE2C 46805420 */  cvt.s.w $f16, $f10                 
/* 012F0 80B4BE30 0003C880 */  sll     $t9, $v1,  2               
/* 012F4 80B4BE34 03B92821 */  addu    $a1, $sp, $t9              
/* 012F8 80B4BE38 8CA50090 */  lw      $a1, 0x0090($a1)           ## 00000090
/* 012FC 80B4BE3C 03A34821 */  addu    $t1, $sp, $v1              
/* 01300 80B4BE40 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 01304 80B4BE44 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 01308 80B4BE48 91290084 */  lbu     $t1, 0x0084($t1)           ## 00000084
/* 0130C 80B4BE4C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 01310 80B4BE50 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01314 80B4BE54 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01318 80B4BE58 E7B20018 */  swc1    $f18, 0x0018($sp)          
/* 0131C 80B4BE5C 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 01320 80B4BE60 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 01324 80B4BE64 962A0000 */  lhu     $t2, 0x0000($s1)           ## 06011348
/* 01328 80B4BE68 A60A01E6 */  sh      $t2, 0x01E6($s0)           ## 000001E6
.L80B4BE6C:
/* 0132C 80B4BE6C 27AB0058 */  addiu   $t3, $sp, 0x0058           ## $t3 = FFFFFFA0
/* 01330 80B4BE70 8D6D0000 */  lw      $t5, 0x0000($t3)           ## FFFFFFA0
/* 01334 80B4BE74 AE0D005C */  sw      $t5, 0x005C($s0)           ## 0000005C
/* 01338 80B4BE78 8D6C0004 */  lw      $t4, 0x0004($t3)           ## FFFFFFA4
/* 0133C 80B4BE7C AE0C0060 */  sw      $t4, 0x0060($s0)           ## 00000060
/* 01340 80B4BE80 8D6D0008 */  lw      $t5, 0x0008($t3)           ## FFFFFFA8
/* 01344 80B4BE84 AE0D0064 */  sw      $t5, 0x0064($s0)           ## 00000064
/* 01348 80B4BE88 8FA800BC */  lw      $t0, 0x00BC($sp)           
/* 0134C 80B4BE8C 96220004 */  lhu     $v0, 0x0004($s1)           ## 0601134C
/* 01350 80B4BE90 950F1D74 */  lhu     $t7, 0x1D74($t0)           ## 00001D74
/* 01354 80B4BE94 01E2082A */  slt     $at, $t7, $v0              
/* 01358 80B4BE98 50200020 */  beql    $at, $zero, .L80B4BF1C     
/* 0135C 80B4BE9C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 01360 80B4BEA0 962E0002 */  lhu     $t6, 0x0002($s1)           ## 0601134A
/* 01364 80B4BEA4 C7A60064 */  lwc1    $f6, 0x0064($sp)           
/* 01368 80B4BEA8 C7A80070 */  lwc1    $f8, 0x0070($sp)           
/* 0136C 80B4BEAC 004EC023 */  subu    $t8, $v0, $t6              
/* 01370 80B4BEB0 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 01374 80B4BEB4 46083281 */  sub.s   $f10, $f6, $f8             
/* 01378 80B4BEB8 C6020070 */  lwc1    $f2, 0x0070($s0)           ## 00000070
/* 0137C 80B4BEBC 46802020 */  cvt.s.w $f0, $f4                   
/* 01380 80B4BEC0 46005403 */  div.s   $f16, $f10, $f0            
/* 01384 80B4BEC4 E610005C */  swc1    $f16, 0x005C($s0)          ## 0000005C
/* 01388 80B4BEC8 C7A40074 */  lwc1    $f4, 0x0074($sp)           
/* 0138C 80B4BECC C7B20068 */  lwc1    $f18, 0x0068($sp)          
/* 01390 80B4BED0 C610006C */  lwc1    $f16, 0x006C($s0)          ## 0000006C
/* 01394 80B4BED4 46049181 */  sub.s   $f6, $f18, $f4             
/* 01398 80B4BED8 46003203 */  div.s   $f8, $f6, $f0              
/* 0139C 80B4BEDC E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 013A0 80B4BEE0 C60A0060 */  lwc1    $f10, 0x0060($s0)          ## 00000060
/* 013A4 80B4BEE4 46105480 */  add.s   $f18, $f10, $f16           
/* 013A8 80B4BEE8 E6120060 */  swc1    $f18, 0x0060($s0)          ## 00000060
/* 013AC 80B4BEEC C6040060 */  lwc1    $f4, 0x0060($s0)           ## 00000060
/* 013B0 80B4BEF0 4602203C */  c.lt.s  $f4, $f2                   
/* 013B4 80B4BEF4 00000000 */  nop
/* 013B8 80B4BEF8 45020003 */  bc1fl   .L80B4BF08                 
/* 013BC 80B4BEFC C7A6006C */  lwc1    $f6, 0x006C($sp)           
/* 013C0 80B4BF00 E6020060 */  swc1    $f2, 0x0060($s0)           ## 00000060
/* 013C4 80B4BF04 C7A6006C */  lwc1    $f6, 0x006C($sp)           
.L80B4BF08:
/* 013C8 80B4BF08 C7A80078 */  lwc1    $f8, 0x0078($sp)           
/* 013CC 80B4BF0C 46083281 */  sub.s   $f10, $f6, $f8             
/* 013D0 80B4BF10 46005403 */  div.s   $f16, $f10, $f0            
/* 013D4 80B4BF14 E6100064 */  swc1    $f16, 0x0064($s0)          ## 00000064
.L80B4BF18:
/* 013D8 80B4BF18 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80B4BF1C:
/* 013DC 80B4BF1C 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 013E0 80B4BF20 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 013E4 80B4BF24 03E00008 */  jr      $ra                        
/* 013E8 80B4BF28 27BD00B8 */  addiu   $sp, $sp, 0x00B8           ## $sp = 00000000


