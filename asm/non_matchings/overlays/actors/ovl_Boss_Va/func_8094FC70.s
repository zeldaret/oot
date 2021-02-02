.late_rodata
glabel D_8095C588
    .float 0.7

.text
glabel func_8094FC70
/* 009B0 8094FC70 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 009B4 8094FC74 3C0E8096 */  lui     $t6, %hi(D_8095C240)       ## $t6 = 80960000
/* 009B8 8094FC78 AFBF0064 */  sw      $ra, 0x0064($sp)           
/* 009BC 8094FC7C AFB60060 */  sw      $s6, 0x0060($sp)           
/* 009C0 8094FC80 AFB5005C */  sw      $s5, 0x005C($sp)           
/* 009C4 8094FC84 AFB40058 */  sw      $s4, 0x0058($sp)           
/* 009C8 8094FC88 AFB30054 */  sw      $s3, 0x0054($sp)           
/* 009CC 8094FC8C AFB20050 */  sw      $s2, 0x0050($sp)           
/* 009D0 8094FC90 AFB1004C */  sw      $s1, 0x004C($sp)           
/* 009D4 8094FC94 AFB00048 */  sw      $s0, 0x0048($sp)           
/* 009D8 8094FC98 F7BA0040 */  sdc1    $f26, 0x0040($sp)          
/* 009DC 8094FC9C F7B80038 */  sdc1    $f24, 0x0038($sp)          
/* 009E0 8094FCA0 F7B60030 */  sdc1    $f22, 0x0030($sp)          
/* 009E4 8094FCA4 F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 009E8 8094FCA8 25CEC240 */  addiu   $t6, $t6, %lo(D_8095C240)  ## $t6 = 8095C240
/* 009EC 8094FCAC 8DD80000 */  lw      $t8, 0x0000($t6)           ## 8095C240
/* 009F0 8094FCB0 27B40078 */  addiu   $s4, $sp, 0x0078           ## $s4 = FFFFFFE0
/* 009F4 8094FCB4 3C198096 */  lui     $t9, %hi(D_8095C24C)       ## $t9 = 80960000
/* 009F8 8094FCB8 AE980000 */  sw      $t8, 0x0000($s4)           ## FFFFFFE0
/* 009FC 8094FCBC 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 8095C244
/* 00A00 8094FCC0 2739C24C */  addiu   $t9, $t9, %lo(D_8095C24C)  ## $t9 = 8095C24C
/* 00A04 8094FCC4 27B5006C */  addiu   $s5, $sp, 0x006C           ## $s5 = FFFFFFD4
/* 00A08 8094FCC8 AE8F0004 */  sw      $t7, 0x0004($s4)           ## FFFFFFE4
/* 00A0C 8094FCCC 8DD80008 */  lw      $t8, 0x0008($t6)           ## 8095C248
/* 00A10 8094FCD0 3C018096 */  lui     $at, %hi(D_8095C588)       ## $at = 80960000
/* 00A14 8094FCD4 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00A18 8094FCD8 AE980008 */  sw      $t8, 0x0008($s4)           ## FFFFFFE8
/* 00A1C 8094FCDC 8F290000 */  lw      $t1, 0x0000($t9)           ## 8095C24C
/* 00A20 8094FCE0 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 00A24 8094FCE4 24120007 */  addiu   $s2, $zero, 0x0007         ## $s2 = 00000007
/* 00A28 8094FCE8 AEA90000 */  sw      $t1, 0x0000($s5)           ## FFFFFFD4
/* 00A2C 8094FCEC 8F280004 */  lw      $t0, 0x0004($t9)           ## 8095C250
/* 00A30 8094FCF0 27B60084 */  addiu   $s6, $sp, 0x0084           ## $s6 = FFFFFFEC
/* 00A34 8094FCF4 AEA80004 */  sw      $t0, 0x0004($s5)           ## FFFFFFD8
/* 00A38 8094FCF8 8F290008 */  lw      $t1, 0x0008($t9)           ## 8095C254
/* 00A3C 8094FCFC AEA90008 */  sw      $t1, 0x0008($s5)           ## FFFFFFDC
/* 00A40 8094FD00 C43AC588 */  lwc1    $f26, %lo(D_8095C588)($at) 
/* 00A44 8094FD04 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00A48 8094FD08 4481C000 */  mtc1    $at, $f24                  ## $f24 = 1.00
/* 00A4C 8094FD0C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00A50 8094FD10 4481B000 */  mtc1    $at, $f22                  ## $f22 = 50.00
/* 00A54 8094FD14 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00A58 8094FD18 4481A000 */  mtc1    $at, $f20                  ## $f20 = 60.00
/* 00A5C 8094FD1C 00000000 */  nop
.L8094FD20:
/* 00A60 8094FD20 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 00A64 8094FD24 4600A306 */  mov.s   $f12, $f20                 
/* 00A68 8094FD28 C6240024 */  lwc1    $f4, 0x0024($s1)           ## 00000024
/* 00A6C 8094FD2C 4600B306 */  mov.s   $f12, $f22                 
/* 00A70 8094FD30 46040180 */  add.s   $f6, $f0, $f4              
/* 00A74 8094FD34 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 00A78 8094FD38 E7A60084 */  swc1    $f6, 0x0084($sp)           
/* 00A7C 8094FD3C C62800BC */  lwc1    $f8, 0x00BC($s1)           ## 000000BC
/* 00A80 8094FD40 C62A0054 */  lwc1    $f10, 0x0054($s1)          ## 00000054
/* 00A84 8094FD44 C6320028 */  lwc1    $f18, 0x0028($s1)          ## 00000028
/* 00A88 8094FD48 4600A306 */  mov.s   $f12, $f20                 
/* 00A8C 8094FD4C 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00A90 8094FD50 46109100 */  add.s   $f4, $f18, $f16            
/* 00A94 8094FD54 46040180 */  add.s   $f6, $f0, $f4              
/* 00A98 8094FD58 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 00A9C 8094FD5C E7A60088 */  swc1    $f6, 0x0088($sp)           
/* 00AA0 8094FD60 C628002C */  lwc1    $f8, 0x002C($s1)           ## 0000002C
/* 00AA4 8094FD64 46080280 */  add.s   $f10, $f0, $f8             
/* 00AA8 8094FD68 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00AAC 8094FD6C E7AA008C */  swc1    $f10, 0x008C($sp)          
/* 00AB0 8094FD70 46180480 */  add.s   $f18, $f0, $f24            
/* 00AB4 8094FD74 24040050 */  addiu   $a0, $zero, 0x0050         ## $a0 = 00000050
/* 00AB8 8094FD78 24050064 */  addiu   $a1, $zero, 0x0064         ## $a1 = 00000064
/* 00ABC 8094FD7C 0C01DF64 */  jal     Rand_S16Offset
              
/* 00AC0 8094FD80 E7B2007C */  swc1    $f18, 0x007C($sp)          
/* 00AC4 8094FD84 00028400 */  sll     $s0, $v0, 16               
/* 00AC8 8094FD88 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00ACC 8094FD8C 00108403 */  sra     $s0, $s0, 16               
/* 00AD0 8094FD90 461A003C */  c.lt.s  $f0, $f26                  
/* 00AD4 8094FD94 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00AD8 8094FD98 02C02825 */  or      $a1, $s6, $zero            ## $a1 = FFFFFFEC
/* 00ADC 8094FD9C 02803025 */  or      $a2, $s4, $zero            ## $a2 = FFFFFFE0
/* 00AE0 8094FDA0 4500000F */  bc1f    .L8094FDE0                 
/* 00AE4 8094FDA4 02A03825 */  or      $a3, $s5, $zero            ## $a3 = FFFFFFD4
/* 00AE8 8094FDA8 240A0019 */  addiu   $t2, $zero, 0x0019         ## $t2 = 00000019
/* 00AEC 8094FDAC 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 00AF0 8094FDB0 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00AF4 8094FDB4 AFAC001C */  sw      $t4, 0x001C($sp)           
/* 00AF8 8094FDB8 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 00AFC 8094FDBC AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 00B00 8094FDC0 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00B04 8094FDC4 02C02825 */  or      $a1, $s6, $zero            ## $a1 = FFFFFFEC
/* 00B08 8094FDC8 02803025 */  or      $a2, $s4, $zero            ## $a2 = FFFFFFE0
/* 00B0C 8094FDCC 02A03825 */  or      $a3, $s5, $zero            ## $a3 = FFFFFFD4
/* 00B10 8094FDD0 0C00A586 */  jal     EffectSsDtBubble_SpawnColorProfile              
/* 00B14 8094FDD4 AFB00010 */  sw      $s0, 0x0010($sp)           
/* 00B18 8094FDD8 10000009 */  beq     $zero, $zero, .L8094FE00   
/* 00B1C 8094FDDC 2652FFFF */  addiu   $s2, $s2, 0xFFFF           ## $s2 = 00000006
.L8094FDE0:
/* 00B20 8094FDE0 240D0019 */  addiu   $t5, $zero, 0x0019         ## $t5 = 00000019
/* 00B24 8094FDE4 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00B28 8094FDE8 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 00B2C 8094FDEC AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 00B30 8094FDF0 AFB00010 */  sw      $s0, 0x0010($sp)           
/* 00B34 8094FDF4 0C00A586 */  jal     EffectSsDtBubble_SpawnColorProfile              
/* 00B38 8094FDF8 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00B3C 8094FDFC 2652FFFF */  addiu   $s2, $s2, 0xFFFF           ## $s2 = 00000005
.L8094FE00:
/* 00B40 8094FE00 0641FFC7 */  bgez    $s2, .L8094FD20            
/* 00B44 8094FE04 00000000 */  nop
/* 00B48 8094FE08 3C028096 */  lui     $v0, %hi(D_809668D1)       ## $v0 = 80960000
/* 00B4C 8094FE0C 244268D1 */  addiu   $v0, $v0, %lo(D_809668D1)  ## $v0 = 809668D1
/* 00B50 8094FE10 904F0000 */  lbu     $t7, 0x0000($v0)           ## 809668D1
/* 00B54 8094FE14 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B58 8094FE18 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00B5C 8094FE1C 0C255F04 */  jal     func_80957C10              
/* 00B60 8094FE20 A0580000 */  sb      $t8, 0x0000($v0)           ## 809668D1
/* 00B64 8094FE24 8FBF0064 */  lw      $ra, 0x0064($sp)           
/* 00B68 8094FE28 D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 00B6C 8094FE2C D7B60030 */  ldc1    $f22, 0x0030($sp)          
/* 00B70 8094FE30 D7B80038 */  ldc1    $f24, 0x0038($sp)          
/* 00B74 8094FE34 D7BA0040 */  ldc1    $f26, 0x0040($sp)          
/* 00B78 8094FE38 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 00B7C 8094FE3C 8FB1004C */  lw      $s1, 0x004C($sp)           
/* 00B80 8094FE40 8FB20050 */  lw      $s2, 0x0050($sp)           
/* 00B84 8094FE44 8FB30054 */  lw      $s3, 0x0054($sp)           
/* 00B88 8094FE48 8FB40058 */  lw      $s4, 0x0058($sp)           
/* 00B8C 8094FE4C 8FB5005C */  lw      $s5, 0x005C($sp)           
/* 00B90 8094FE50 8FB60060 */  lw      $s6, 0x0060($sp)           
/* 00B94 8094FE54 03E00008 */  jr      $ra                        
/* 00B98 8094FE58 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000
