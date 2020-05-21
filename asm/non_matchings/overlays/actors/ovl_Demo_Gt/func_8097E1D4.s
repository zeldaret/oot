.late_rodata
glabel D_80982A94
    .float 0.1

glabel D_80982A98
    .float 0.7

.text
glabel func_8097E1D4
/* 00B64 8097E1D4 27BDFF30 */  addiu   $sp, $sp, 0xFF30           ## $sp = FFFFFF30
/* 00B68 8097E1D8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00B6C 8097E1DC F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 00B70 8097E1E0 3C0141E0 */  lui     $at, 0x41E0                ## $at = 41E00000
/* 00B74 8097E1E4 4481F000 */  mtc1    $at, $f30                  ## $f30 = 28.00
/* 00B78 8097E1E8 F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 00B7C 8097E1EC 3C014296 */  lui     $at, 0x4296                ## $at = 42960000
/* 00B80 8097E1F0 4600218D */  trunc.w.s $f6, $f4                   
/* 00B84 8097E1F4 4481E000 */  mtc1    $at, $f28                  ## $f28 = 75.00
/* 00B88 8097E1F8 F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 00B8C 8097E1FC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00B90 8097E200 4481D000 */  mtc1    $at, $f26                  ## $f26 = 10.00
/* 00B94 8097E204 AFB5008C */  sw      $s5, 0x008C($sp)           
/* 00B98 8097E208 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 00B9C 8097E20C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00BA0 8097E210 44153000 */  mfc1    $s5, $f6                   
/* 00BA4 8097E214 4481C000 */  mtc1    $at, $f24                  ## $f24 = 3.00
/* 00BA8 8097E218 AFB40088 */  sw      $s4, 0x0088($sp)           
/* 00BAC 8097E21C F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 00BB0 8097E220 3C014238 */  lui     $at, 0x4238                ## $at = 42380000
/* 00BB4 8097E224 0006A400 */  sll     $s4, $a2, 16               
/* 00BB8 8097E228 AFBE0098 */  sw      $s8, 0x0098($sp)           
/* 00BBC 8097E22C AFB70094 */  sw      $s7, 0x0094($sp)           
/* 00BC0 8097E230 AFB60090 */  sw      $s6, 0x0090($sp)           
/* 00BC4 8097E234 AFB30084 */  sw      $s3, 0x0084($sp)           
/* 00BC8 8097E238 AFB20080 */  sw      $s2, 0x0080($sp)           
/* 00BCC 8097E23C AFB1007C */  sw      $s1, 0x007C($sp)           
/* 00BD0 8097E240 4481B000 */  mtc1    $at, $f22                  ## $f22 = 46.00
/* 00BD4 8097E244 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 00BD8 8097E248 0080B025 */  or      $s6, $a0, $zero            ## $s6 = 00000000
/* 00BDC 8097E24C 0014A403 */  sra     $s4, $s4, 16               
/* 00BE0 8097E250 AFBF009C */  sw      $ra, 0x009C($sp)           
/* 00BE4 8097E254 AFB00078 */  sw      $s0, 0x0078($sp)           
/* 00BE8 8097E258 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 00BEC 8097E25C AFA600D8 */  sw      $a2, 0x00D8($sp)           
/* 00BF0 8097E260 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00BF4 8097E264 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 00BF8 8097E268 27B700C4 */  addiu   $s7, $sp, 0x00C4           ## $s7 = FFFFFFF4
/* 00BFC 8097E26C 27BE00B8 */  addiu   $s8, $sp, 0x00B8           ## $s8 = FFFFFFE8
/* 00C00 8097E270 26B5001E */  addiu   $s5, $s5, 0x001E           ## $s5 = 0000001E
.L8097E274:
/* 00C04 8097E274 00112400 */  sll     $a0, $s1, 16               
/* 00C08 8097E278 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00C0C 8097E27C 00042403 */  sra     $a0, $a0, 16               
/* 00C10 8097E280 46160202 */  mul.s   $f8, $f0, $f22             
/* 00C14 8097E284 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00C18 8097E288 E7A800C4 */  swc1    $f8, 0x00C4($sp)           
/* 00C1C 8097E28C 461C0282 */  mul.s   $f10, $f0, $f28            
/* 00C20 8097E290 00112400 */  sll     $a0, $s1, 16               
/* 00C24 8097E294 00042403 */  sra     $a0, $a0, 16               
/* 00C28 8097E298 461E5401 */  sub.s   $f16, $f10, $f30           
/* 00C2C 8097E29C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00C30 8097E2A0 E7B000C8 */  swc1    $f16, 0x00C8($sp)          
/* 00C34 8097E2A4 46160482 */  mul.s   $f18, $f0, $f22            
/* 00C38 8097E2A8 00142400 */  sll     $a0, $s4, 16               
/* 00C3C 8097E2AC 00042403 */  sra     $a0, $a0, 16               
/* 00C40 8097E2B0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00C44 8097E2B4 E7B200CC */  swc1    $f18, 0x00CC($sp)          
/* 00C48 8097E2B8 46180102 */  mul.s   $f4, $f0, $f24             
/* 00C4C 8097E2BC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00C50 8097E2C0 E7A400B8 */  swc1    $f4, 0x00B8($sp)           
/* 00C54 8097E2C4 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00C58 8097E2C8 44813000 */  mtc1    $at, $f6                   ## $f6 = -4.00
/* 00C5C 8097E2CC 00142400 */  sll     $a0, $s4, 16               
/* 00C60 8097E2D0 00042403 */  sra     $a0, $a0, 16               
/* 00C64 8097E2D4 46060202 */  mul.s   $f8, $f0, $f6              
/* 00C68 8097E2D8 461A4280 */  add.s   $f10, $f8, $f26            
/* 00C6C 8097E2DC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00C70 8097E2E0 E7AA00BC */  swc1    $f10, 0x00BC($sp)          
/* 00C74 8097E2E4 46180402 */  mul.s   $f16, $f0, $f24            
/* 00C78 8097E2E8 C7B200C4 */  lwc1    $f18, 0x00C4($sp)          
/* 00C7C 8097E2EC C7A800C8 */  lwc1    $f8, 0x00C8($sp)           
/* 00C80 8097E2F0 E7B000C0 */  swc1    $f16, 0x00C0($sp)          
/* 00C84 8097E2F4 C6440000 */  lwc1    $f4, 0x0000($s2)           ## 00000000
/* 00C88 8097E2F8 46049180 */  add.s   $f6, $f18, $f4             
/* 00C8C 8097E2FC C7B200CC */  lwc1    $f18, 0x00CC($sp)          
/* 00C90 8097E300 E7A600C4 */  swc1    $f6, 0x00C4($sp)           
/* 00C94 8097E304 C64A0004 */  lwc1    $f10, 0x0004($s2)          ## 00000004
/* 00C98 8097E308 460A4400 */  add.s   $f16, $f8, $f10            
/* 00C9C 8097E30C E7B000C8 */  swc1    $f16, 0x00C8($sp)          
/* 00CA0 8097E310 C6440008 */  lwc1    $f4, 0x0008($s2)           ## 00000008
/* 00CA4 8097E314 46049180 */  add.s   $f6, $f18, $f4             
/* 00CA8 8097E318 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00CAC 8097E31C E7A600CC */  swc1    $f6, 0x00CC($sp)           
/* 00CB0 8097E320 3C018098 */  lui     $at, %hi(D_80982A94)       ## $at = 80980000
/* 00CB4 8097E324 C4282A94 */  lwc1    $f8, %lo(D_80982A94)($at)  
/* 00CB8 8097E328 3C018098 */  lui     $at, %hi(D_80982A98)       ## $at = 80980000
/* 00CBC 8097E32C 4608003C */  c.lt.s  $f0, $f8                   
/* 00CC0 8097E330 00000000 */  nop
/* 00CC4 8097E334 45000003 */  bc1f    .L8097E344                 
/* 00CC8 8097E338 00000000 */  nop
/* 00CCC 8097E33C 10000009 */  beq     $zero, $zero, .L8097E364   
/* 00CD0 8097E340 24100061 */  addiu   $s0, $zero, 0x0061         ## $s0 = 00000061
.L8097E344:
/* 00CD4 8097E344 C42A2A98 */  lwc1    $f10, %lo(D_80982A98)($at) 
/* 00CD8 8097E348 24100021 */  addiu   $s0, $zero, 0x0021         ## $s0 = 00000021
/* 00CDC 8097E34C 460A003C */  c.lt.s  $f0, $f10                  
/* 00CE0 8097E350 00000000 */  nop
/* 00CE4 8097E354 45000003 */  bc1f    .L8097E364                 
/* 00CE8 8097E358 00000000 */  nop
/* 00CEC 8097E35C 10000001 */  beq     $zero, $zero, .L8097E364   
/* 00CF0 8097E360 24100041 */  addiu   $s0, $zero, 0x0041         ## $s0 = 00000041
.L8097E364:
/* 00CF4 8097E364 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00CF8 8097E368 00000000 */  nop
/* 00CFC 8097E36C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00D00 8097E370 46000506 */  mov.s   $f20, $f0                  
/* 00D04 8097E374 461AA402 */  mul.s   $f16, $f20, $f26           
/* 00D08 8097E378 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00D0C 8097E37C 44819000 */  mtc1    $at, $f18                  ## $f18 = 30.00
/* 00D10 8097E380 3C0D0600 */  lui     $t5, 0x0600                ## $t5 = 06000000
/* 00D14 8097E384 25AD0EA0 */  addiu   $t5, $t5, 0x0EA0           ## $t5 = 06000EA0
/* 00D18 8097E388 240FFF09 */  addiu   $t7, $zero, 0xFF09         ## $t7 = FFFFFF09
/* 00D1C 8097E38C 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 00D20 8097E390 46128100 */  add.s   $f4, $f16, $f18            
/* 00D24 8097E394 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 00D28 8097E398 240A012C */  addiu   $t2, $zero, 0x012C         ## $t2 = 0000012C
/* 00D2C 8097E39C 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 00D30 8097E3A0 4600218D */  trunc.w.s $f6, $f4                   
/* 00D34 8097E3A4 240C0186 */  addiu   $t4, $zero, 0x0186         ## $t4 = 00000186
/* 00D38 8097E3A8 AFAC0038 */  sw      $t4, 0x0038($sp)           
/* 00D3C 8097E3AC AFAB0034 */  sw      $t3, 0x0034($sp)           
/* 00D40 8097E3B0 44083000 */  mfc1    $t0, $f6                   
/* 00D44 8097E3B4 AFAA002C */  sw      $t2, 0x002C($sp)           
/* 00D48 8097E3B8 AFA90028 */  sw      $t1, 0x0028($sp)           
/* 00D4C 8097E3BC AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00D50 8097E3C0 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00D54 8097E3C4 AFAD003C */  sw      $t5, 0x003C($sp)           
/* 00D58 8097E3C8 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 00D5C 8097E3CC 02E02825 */  or      $a1, $s7, $zero            ## $a1 = FFFFFFF4
/* 00D60 8097E3D0 03C03025 */  or      $a2, $s8, $zero            ## $a2 = FFFFFFE8
/* 00D64 8097E3D4 02403825 */  or      $a3, $s2, $zero            ## $a3 = 00000000
/* 00D68 8097E3D8 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00D6C 8097E3DC AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00D70 8097E3E0 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00D74 8097E3E4 AFB50030 */  sw      $s5, 0x0030($sp)           
/* 00D78 8097E3E8 0C00A7A3 */  jal     func_80029E8C
              
/* 00D7C 8097E3EC AFA80024 */  sw      $t0, 0x0024($sp)           
/* 00D80 8097E3F0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00D84 8097E3F4 02218821 */  addu    $s1, $s1, $at              
/* 00D88 8097E3F8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00D8C 8097E3FC 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 00D90 8097E400 00118C00 */  sll     $s1, $s1, 16               
/* 00D94 8097E404 1661FF9B */  bne     $s3, $at, .L8097E274       
/* 00D98 8097E408 00118C03 */  sra     $s1, $s1, 16               
/* 00D9C 8097E40C 8FBF009C */  lw      $ra, 0x009C($sp)           
/* 00DA0 8097E410 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 00DA4 8097E414 D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 00DA8 8097E418 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 00DAC 8097E41C D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 00DB0 8097E420 D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 00DB4 8097E424 D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 00DB8 8097E428 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 00DBC 8097E42C 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 00DC0 8097E430 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 00DC4 8097E434 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 00DC8 8097E438 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 00DCC 8097E43C 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 00DD0 8097E440 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 00DD4 8097E444 8FB70094 */  lw      $s7, 0x0094($sp)           
/* 00DD8 8097E448 8FBE0098 */  lw      $s8, 0x0098($sp)           
/* 00DDC 8097E44C 03E00008 */  jr      $ra                        
/* 00DE0 8097E450 27BD00D0 */  addiu   $sp, $sp, 0x00D0           ## $sp = 00000000
