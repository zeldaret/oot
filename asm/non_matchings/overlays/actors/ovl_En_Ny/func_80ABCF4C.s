glabel func_80ABCF4C
/* 0039C 80ABCF4C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 003A0 80ABCF50 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 003A4 80ABCF54 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 003A8 80ABCF58 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 003AC 80ABCF5C C4860084 */  lwc1    $f6, 0x0084($a0)           ## 00000084
/* 003B0 80ABCF60 C48401F0 */  lwc1    $f4, 0x01F0($a0)           ## 000001F0
/* 003B4 80ABCF64 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 003B8 80ABCF68 4606203C */  c.lt.s  $f4, $f6                   
/* 003BC 80ABCF6C 00000000 */  nop
/* 003C0 80ABCF70 45010003 */  bc1t    .L80ABCF80                 
/* 003C4 80ABCF74 00000000 */  nop
/* 003C8 80ABCF78 0C00BE5D */  jal     func_8002F974              
/* 003CC 80ABCF7C 240530E9 */  addiu   $a1, $zero, 0x30E9         ## $a1 = 000030E9
.L80ABCF80:
/* 003D0 80ABCF80 0C2AF350 */  jal     func_80ABCD40              
/* 003D4 80ABCF84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003D8 80ABCF88 8E0201DC */  lw      $v0, 0x01DC($s0)           ## 000001DC
/* 003DC 80ABCF8C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 003E0 80ABCF90 18400004 */  blez    $v0, .L80ABCFA4            
/* 003E4 80ABCF94 AE0E01DC */  sw      $t6, 0x01DC($s0)           ## 000001DC
/* 003E8 80ABCF98 860F01CC */  lh      $t7, 0x01CC($s0)           ## 000001CC
/* 003EC 80ABCF9C 51E00006 */  beql    $t7, $zero, .L80ABCFB8     
/* 003F0 80ABCFA0 C60801F4 */  lwc1    $f8, 0x01F4($s0)           ## 000001F4
.L80ABCFA4:
/* 003F4 80ABCFA4 0C2AF37F */  jal     func_80ABCDFC              
/* 003F8 80ABCFA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003FC 80ABCFAC 10000027 */  beq     $zero, $zero, .L80ABD04C   
/* 00400 80ABCFB0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00404 80ABCFB4 C60801F4 */  lwc1    $f8, 0x01F4($s0)           ## 000001F4
.L80ABCFB8:
/* 00408 80ABCFB8 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 0040C 80ABCFBC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00410 80ABCFC0 4600428D */  trunc.w.s $f10, $f8                  
/* 00414 80ABCFC4 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00418 80ABCFC8 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 0041C 80ABCFCC 44075000 */  mfc1    $a3, $f10                  
/* 00420 80ABCFD0 00000000 */  nop
/* 00424 80ABCFD4 00073C00 */  sll     $a3, $a3, 16               
/* 00428 80ABCFD8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0042C 80ABCFDC 00073C03 */  sra     $a3, $a3, 16               
/* 00430 80ABCFE0 260401F4 */  addiu   $a0, $s0, 0x01F4           ## $a0 = 000001F4
/* 00434 80ABCFE4 3C0544FA */  lui     $a1, 0x44FA                ## $a1 = 44FA0000
/* 00438 80ABCFE8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0043C 80ABCFEC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00440 80ABCFF0 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 00444 80ABCFF4 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 00448 80ABCFF8 C60C0094 */  lwc1    $f12, 0x0094($s0)          ## 00000094
/* 0044C 80ABCFFC C60E0090 */  lwc1    $f14, 0x0090($s0)          ## 00000090
/* 00450 80ABD000 0C03F494 */  jal     func_800FD250              
/* 00454 80ABD004 A6190032 */  sh      $t9, 0x0032($s0)           ## 00000032
/* 00458 80ABD008 E7A0002C */  swc1    $f0, 0x002C($sp)           
/* 0045C 80ABD00C 0C041184 */  jal     cosf
              
/* 00460 80ABD010 46000306 */  mov.s   $f12, $f0                  
/* 00464 80ABD014 C61001E8 */  lwc1    $f16, 0x01E8($s0)          ## 000001E8
/* 00468 80ABD018 C61201F0 */  lwc1    $f18, 0x01F0($s0)          ## 000001F0
/* 0046C 80ABD01C C6040084 */  lwc1    $f4, 0x0084($s0)           ## 00000084
/* 00470 80ABD020 46100002 */  mul.s   $f0, $f0, $f16             
/* 00474 80ABD024 4604903C */  c.lt.s  $f18, $f4                  
/* 00478 80ABD028 46000005 */  abs.s   $f0, $f0                   
/* 0047C 80ABD02C 45000006 */  bc1f    .L80ABD048                 
/* 00480 80ABD030 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 00484 80ABD034 0C0400A4 */  jal     sinf
              
/* 00488 80ABD038 C7AC002C */  lwc1    $f12, 0x002C($sp)          
/* 0048C 80ABD03C C60601E8 */  lwc1    $f6, 0x01E8($s0)           ## 000001E8
/* 00490 80ABD040 46060202 */  mul.s   $f8, $f0, $f6              
/* 00494 80ABD044 E60801EC */  swc1    $f8, 0x01EC($s0)           ## 000001EC
.L80ABD048:
/* 00498 80ABD048 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80ABD04C:
/* 0049C 80ABD04C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 004A0 80ABD050 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 004A4 80ABD054 03E00008 */  jr      $ra                        
/* 004A8 80ABD058 00000000 */  nop


