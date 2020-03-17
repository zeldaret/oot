glabel func_80B9BCB8
/* 00B38 80B9BCB8 27BDFF10 */  addiu   $sp, $sp, 0xFF10           ## $sp = FFFFFF10
/* 00B3C 80B9BCBC F7BC0058 */  sdc1    $f28, 0x0058($sp)          
/* 00B40 80B9BCC0 4480E000 */  mtc1    $zero, $f28                ## $f28 = 0.00
/* 00B44 80B9BCC4 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 00B48 80B9BCC8 AFB00068 */  sw      $s0, 0x0068($sp)           
/* 00B4C 80B9BCCC 00058400 */  sll     $s0, $a1, 16               
/* 00B50 80B9BCD0 460CE03E */  c.le.s  $f28, $f12                 
/* 00B54 80B9BCD4 AFB30074 */  sw      $s3, 0x0074($sp)           
/* 00B58 80B9BCD8 AFB20070 */  sw      $s2, 0x0070($sp)           
/* 00B5C 80B9BCDC 00E09025 */  or      $s2, $a3, $zero            ## $s2 = 00000000
/* 00B60 80B9BCE0 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 00B64 80B9BCE4 00108403 */  sra     $s0, $s0, 16               
/* 00B68 80B9BCE8 AFBF008C */  sw      $ra, 0x008C($sp)           
/* 00B6C 80B9BCEC AFBE0088 */  sw      $s8, 0x0088($sp)           
/* 00B70 80B9BCF0 AFB70084 */  sw      $s7, 0x0084($sp)           
/* 00B74 80B9BCF4 AFB60080 */  sw      $s6, 0x0080($sp)           
/* 00B78 80B9BCF8 AFB5007C */  sw      $s5, 0x007C($sp)           
/* 00B7C 80B9BCFC AFB40078 */  sw      $s4, 0x0078($sp)           
/* 00B80 80B9BD00 AFB1006C */  sw      $s1, 0x006C($sp)           
/* 00B84 80B9BD04 F7BE0060 */  sdc1    $f30, 0x0060($sp)          
/* 00B88 80B9BD08 F7BA0050 */  sdc1    $f26, 0x0050($sp)          
/* 00B8C 80B9BD0C F7B80048 */  sdc1    $f24, 0x0048($sp)          
/* 00B90 80B9BD10 F7B60040 */  sdc1    $f22, 0x0040($sp)          
/* 00B94 80B9BD14 F7B40038 */  sdc1    $f20, 0x0038($sp)          
/* 00B98 80B9BD18 45000005 */  bc1f    .L80B9BD30                 
/* 00B9C 80B9BD1C AFA500F4 */  sw      $a1, 0x00F4($sp)           
/* 00BA0 80B9BD20 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00BA4 80B9BD24 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00BA8 80B9BD28 10000005 */  beq     $zero, $zero, .L80B9BD40   
/* 00BAC 80B9BD2C 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
.L80B9BD30:
/* 00BB0 80B9BD30 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00BB4 80B9BD34 44810000 */  mtc1    $at, $f0                   ## $f0 = -1.00
/* 00BB8 80B9BD38 00000000 */  nop
/* 00BBC 80B9BD3C 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
.L80B9BD40:
/* 00BC0 80B9BD40 44812000 */  mtc1    $at, $f4                   ## $f4 = 300.00
/* 00BC4 80B9BD44 C6460050 */  lwc1    $f6, 0x0050($s2)           ## 00000050
/* 00BC8 80B9BD48 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00BCC 80B9BD4C 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 00BD0 80B9BD50 46062202 */  mul.s   $f8, $f4, $f6              
/* 00BD4 80B9BD54 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00BD8 80B9BD58 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 00BDC 80B9BD5C 00102400 */  sll     $a0, $s0, 16               
/* 00BE0 80B9BD60 00042403 */  sra     $a0, $a0, 16               
/* 00BE4 80B9BD64 460A4400 */  add.s   $f16, $f8, $f10            
/* 00BE8 80B9BD68 46128101 */  sub.s   $f4, $f16, $f18            
/* 00BEC 80B9BD6C 46040502 */  mul.s   $f20, $f0, $f4             
/* 00BF0 80B9BD70 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00BF4 80B9BD74 00000000 */  nop
/* 00BF8 80B9BD78 00102400 */  sll     $a0, $s0, 16               
/* 00BFC 80B9BD7C 46000786 */  mov.s   $f30, $f0                  
/* 00C00 80B9BD80 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00C04 80B9BD84 00042403 */  sra     $a0, $a0, 16               
/* 00C08 80B9BD88 461EA602 */  mul.s   $f24, $f20, $f30           
/* 00C0C 80B9BD8C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00C10 80B9BD90 3C1180BA */  lui     $s1, %hi(D_80B9CAC8)       ## $s1 = 80BA0000
/* 00C14 80B9BD94 4600A682 */  mul.s   $f26, $f20, $f0            
/* 00C18 80B9BD98 3C1080BA */  lui     $s0, %hi(D_80B9CAA8)       ## $s0 = 80BA0000
/* 00C1C 80B9BD9C 267407C0 */  addiu   $s4, $s3, 0x07C0           ## $s4 = 000007C0
/* 00C20 80B9BDA0 4481A000 */  mtc1    $at, $f20                  ## $f20 = 10.00
/* 00C24 80B9BDA4 46000586 */  mov.s   $f22, $f0                  
/* 00C28 80B9BDA8 27B300D4 */  addiu   $s3, $sp, 0x00D4           ## $s3 = FFFFFFE4
/* 00C2C 80B9BDAC 2610CAA8 */  addiu   $s0, $s0, %lo(D_80B9CAA8)  ## $s0 = 80B9CAA8
/* 00C30 80B9BDB0 2631CAC8 */  addiu   $s1, $s1, %lo(D_80B9CAC8)  ## $s1 = 80B9CAC8
/* 00C34 80B9BDB4 27BE00A8 */  addiu   $s8, $sp, 0x00A8           ## $s8 = FFFFFFB8
/* 00C38 80B9BDB8 27B700BC */  addiu   $s7, $sp, 0x00BC           ## $s7 = FFFFFFCC
/* 00C3C 80B9BDBC 27B600C8 */  addiu   $s6, $sp, 0x00C8           ## $s6 = FFFFFFD8
/* 00C40 80B9BDC0 27B500B0 */  addiu   $s5, $sp, 0x00B0           ## $s5 = FFFFFFC0
.L80B9BDC4:
/* 00C44 80B9BDC4 C6060000 */  lwc1    $f6, 0x0000($s0)           ## 80B9CAA8
/* 00C48 80B9BDC8 C6480050 */  lwc1    $f8, 0x0050($s2)           ## 00000050
/* 00C4C 80B9BDCC C6320000 */  lwc1    $f18, 0x0000($s1)          ## 80B9CAC8
/* 00C50 80B9BDD0 4406F000 */  mfc1    $a2, $f30                  
/* 00C54 80B9BDD4 46083282 */  mul.s   $f10, $f6, $f8             
/* 00C58 80B9BDD8 C6060004 */  lwc1    $f6, 0x0004($s0)           ## 80B9CAAC
/* 00C5C 80B9BDDC 4407B000 */  mfc1    $a3, $f22                  
/* 00C60 80B9BDE0 02602025 */  or      $a0, $s3, $zero            ## $a0 = FFFFFFE4
/* 00C64 80B9BDE4 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFC0
/* 00C68 80B9BDE8 46145402 */  mul.s   $f16, $f10, $f20           
/* 00C6C 80B9BDEC 46109100 */  add.s   $f4, $f18, $f16            
/* 00C70 80B9BDF0 C6300004 */  lwc1    $f16, 0x0004($s1)          ## 80B9CACC
/* 00C74 80B9BDF4 E7A400B0 */  swc1    $f4, 0x00B0($sp)           
/* 00C78 80B9BDF8 C6480054 */  lwc1    $f8, 0x0054($s2)           ## 00000054
/* 00C7C 80B9BDFC E7BC00B8 */  swc1    $f28, 0x00B8($sp)          
/* 00C80 80B9BE00 46083282 */  mul.s   $f10, $f6, $f8             
/* 00C84 80B9BE04 00000000 */  nop
/* 00C88 80B9BE08 46145482 */  mul.s   $f18, $f10, $f20           
/* 00C8C 80B9BE0C 46128100 */  add.s   $f4, $f16, $f18            
/* 00C90 80B9BE10 0C2E6C82 */  jal     func_80B9B208              
/* 00C94 80B9BE14 E7A400B4 */  swc1    $f4, 0x00B4($sp)           
/* 00C98 80B9BE18 C7A600D4 */  lwc1    $f6, 0x00D4($sp)           
/* 00C9C 80B9BE1C C6480024 */  lwc1    $f8, 0x0024($s2)           ## 00000024
/* 00CA0 80B9BE20 C7B000D8 */  lwc1    $f16, 0x00D8($sp)          
/* 00CA4 80B9BE24 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00CA8 80B9BE28 46083280 */  add.s   $f10, $f6, $f8             
/* 00CAC 80B9BE2C C7A600DC */  lwc1    $f6, 0x00DC($sp)           
/* 00CB0 80B9BE30 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00CB4 80B9BE34 27B800AC */  addiu   $t8, $sp, 0x00AC           ## $t8 = FFFFFFBC
/* 00CB8 80B9BE38 E7AA00D4 */  swc1    $f10, 0x00D4($sp)          
/* 00CBC 80B9BE3C C6520028 */  lwc1    $f18, 0x0028($s2)          ## 00000028
/* 00CC0 80B9BE40 02802025 */  or      $a0, $s4, $zero            ## $a0 = 000007C0
/* 00CC4 80B9BE44 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFE4
/* 00CC8 80B9BE48 46128100 */  add.s   $f4, $f16, $f18            
/* 00CCC 80B9BE4C 02C03025 */  or      $a2, $s6, $zero            ## $a2 = FFFFFFD8
/* 00CD0 80B9BE50 02E03825 */  or      $a3, $s7, $zero            ## $a3 = FFFFFFCC
/* 00CD4 80B9BE54 460AC480 */  add.s   $f18, $f24, $f10           
/* 00CD8 80B9BE58 E7A400D8 */  swc1    $f4, 0x00D8($sp)           
/* 00CDC 80B9BE5C C648002C */  lwc1    $f8, 0x002C($s2)           ## 0000002C
/* 00CE0 80B9BE60 E7A400CC */  swc1    $f4, 0x00CC($sp)           
/* 00CE4 80B9BE64 E7B200C8 */  swc1    $f18, 0x00C8($sp)          
/* 00CE8 80B9BE68 46083400 */  add.s   $f16, $f6, $f8             
/* 00CEC 80B9BE6C E7BC002C */  swc1    $f28, 0x002C($sp)          
/* 00CF0 80B9BE70 AFB20028 */  sw      $s2, 0x0028($sp)           
/* 00CF4 80B9BE74 AFB80024 */  sw      $t8, 0x0024($sp)           
/* 00CF8 80B9BE78 4610D180 */  add.s   $f6, $f26, $f16            
/* 00CFC 80B9BE7C E7B000DC */  swc1    $f16, 0x00DC($sp)          
/* 00D00 80B9BE80 AFAF0020 */  sw      $t7, 0x0020($sp)           
/* 00D04 80B9BE84 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00D08 80B9BE88 E7A600D0 */  swc1    $f6, 0x00D0($sp)           
/* 00D0C 80B9BE8C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00D10 80B9BE90 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00D14 80B9BE94 0C00F7E8 */  jal     func_8003DFA0              
/* 00D18 80B9BE98 AFBE0010 */  sw      $s8, 0x0010($sp)           
/* 00D1C 80B9BE9C 10400003 */  beq     $v0, $zero, .L80B9BEAC     
/* 00D20 80B9BEA0 26100008 */  addiu   $s0, $s0, 0x0008           ## $s0 = 80B9CAB0
/* 00D24 80B9BEA4 10000006 */  beq     $zero, $zero, .L80B9BEC0   
/* 00D28 80B9BEA8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B9BEAC:
/* 00D2C 80B9BEAC 3C1980BA */  lui     $t9, %hi(D_80B9CAC8)       ## $t9 = 80BA0000
/* 00D30 80B9BEB0 2739CAC8 */  addiu   $t9, $t9, %lo(D_80B9CAC8)  ## $t9 = 80B9CAC8
/* 00D34 80B9BEB4 1619FFC3 */  bne     $s0, $t9, .L80B9BDC4       
/* 00D38 80B9BEB8 26310008 */  addiu   $s1, $s1, 0x0008           ## $s1 = 80B9CAD0
/* 00D3C 80B9BEBC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B9BEC0:
/* 00D40 80B9BEC0 8FBF008C */  lw      $ra, 0x008C($sp)           
/* 00D44 80B9BEC4 D7B40038 */  ldc1    $f20, 0x0038($sp)          
/* 00D48 80B9BEC8 D7B60040 */  ldc1    $f22, 0x0040($sp)          
/* 00D4C 80B9BECC D7B80048 */  ldc1    $f24, 0x0048($sp)          
/* 00D50 80B9BED0 D7BA0050 */  ldc1    $f26, 0x0050($sp)          
/* 00D54 80B9BED4 D7BC0058 */  ldc1    $f28, 0x0058($sp)          
/* 00D58 80B9BED8 D7BE0060 */  ldc1    $f30, 0x0060($sp)          
/* 00D5C 80B9BEDC 8FB00068 */  lw      $s0, 0x0068($sp)           
/* 00D60 80B9BEE0 8FB1006C */  lw      $s1, 0x006C($sp)           
/* 00D64 80B9BEE4 8FB20070 */  lw      $s2, 0x0070($sp)           
/* 00D68 80B9BEE8 8FB30074 */  lw      $s3, 0x0074($sp)           
/* 00D6C 80B9BEEC 8FB40078 */  lw      $s4, 0x0078($sp)           
/* 00D70 80B9BEF0 8FB5007C */  lw      $s5, 0x007C($sp)           
/* 00D74 80B9BEF4 8FB60080 */  lw      $s6, 0x0080($sp)           
/* 00D78 80B9BEF8 8FB70084 */  lw      $s7, 0x0084($sp)           
/* 00D7C 80B9BEFC 8FBE0088 */  lw      $s8, 0x0088($sp)           
/* 00D80 80B9BF00 03E00008 */  jr      $ra                        
/* 00D84 80B9BF04 27BD00F0 */  addiu   $sp, $sp, 0x00F0           ## $sp = 00000000


