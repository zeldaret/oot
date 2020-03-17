glabel func_808AF1D8
/* 00A58 808AF1D8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00A5C 808AF1DC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00A60 808AF1E0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00A64 808AF1E4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00A68 808AF1E8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00A6C 808AF1EC C4820060 */  lwc1    $f2, 0x0060($a0)           ## 00000060
/* 00A70 808AF1F0 C4840028 */  lwc1    $f4, 0x0028($a0)           ## 00000028
/* 00A74 808AF1F4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A78 808AF1F8 4600103E */  c.le.s  $f2, $f0                   
/* 00A7C 808AF1FC 3C01808B */  lui     $at, %hi(D_808AFA28)       ## $at = 808B0000
/* 00A80 808AF200 46022180 */  add.s   $f6, $f4, $f2              
/* 00A84 808AF204 45000045 */  bc1f    .L808AF31C                 
/* 00A88 808AF208 E4860028 */  swc1    $f6, 0x0028($a0)           ## 00000028
/* 00A8C 808AF20C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00A90 808AF210 848400B4 */  lh      $a0, 0x00B4($a0)           ## 000000B4
/* 00A94 808AF214 3C01808B */  lui     $at, %hi(D_808AFA1C)       ## $at = 808B0000
/* 00A98 808AF218 C428FA1C */  lwc1    $f8, %lo(D_808AFA1C)($at)  
/* 00A9C 808AF21C 46080282 */  mul.s   $f10, $f0, $f8             
/* 00AA0 808AF220 E7AA002C */  swc1    $f10, 0x002C($sp)          
/* 00AA4 808AF224 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00AA8 808AF228 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00AAC 808AF22C C7B2002C */  lwc1    $f18, 0x002C($sp)          
/* 00AB0 808AF230 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 00AB4 808AF234 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00AB8 808AF238 46009102 */  mul.s   $f4, $f18, $f0             
/* 00ABC 808AF23C 46048180 */  add.s   $f6, $f16, $f4             
/* 00AC0 808AF240 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00AC4 808AF244 E6060024 */  swc1    $f6, 0x0024($s0)           ## 00000024
/* 00AC8 808AF248 C7AA002C */  lwc1    $f10, 0x002C($sp)          
/* 00ACC 808AF24C C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 00AD0 808AF250 3C01808B */  lui     $at, %hi(D_808AFA20)       ## $at = 808B0000
/* 00AD4 808AF254 46005482 */  mul.s   $f18, $f10, $f0            
/* 00AD8 808AF258 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00ADC 808AF25C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AE0 808AF260 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00AE4 808AF264 46124400 */  add.s   $f16, $f8, $f18            
/* 00AE8 808AF268 E610002C */  swc1    $f16, 0x002C($s0)          ## 0000002C
/* 00AEC 808AF26C C426FA20 */  lwc1    $f6, %lo(D_808AFA20)($at)  
/* 00AF0 808AF270 46062281 */  sub.s   $f10, $f4, $f6             
/* 00AF4 808AF274 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 00AF8 808AF278 0C22BB83 */  jal     func_808AEE0C              
/* 00AFC 808AF27C 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00B00 808AF280 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00B04 808AF284 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00B08 808AF288 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00B0C 808AF28C 24060260 */  addiu   $a2, $zero, 0x0260         ## $a2 = 00000260
/* 00B10 808AF290 5040006B */  beql    $v0, $zero, .L808AF440     
/* 00B14 808AF294 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00B18 808AF298 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00B1C 808AF29C 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00B20 808AF2A0 3C014180 */  lui     $at, 0x4180                ## $at = 41800000
/* 00B24 808AF2A4 44819000 */  mtc1    $at, $f18                  ## $f18 = 16.00
/* 00B28 808AF2A8 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 00B2C 808AF2AC 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00B30 808AF2B0 46120402 */  mul.s   $f16, $f0, $f18            
/* 00B34 808AF2B4 46104101 */  sub.s   $f4, $f8, $f16             
/* 00B38 808AF2B8 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00B3C 808AF2BC E6040008 */  swc1    $f4, 0x0008($s0)           ## 00000008
/* 00B40 808AF2C0 3C014180 */  lui     $at, 0x4180                ## $at = 41800000
/* 00B44 808AF2C4 44815000 */  mtc1    $at, $f10                  ## $f10 = 16.00
/* 00B48 808AF2C8 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 00B4C 808AF2CC 3C01808B */  lui     $at, %hi(D_808AFA24)       ## $at = 808B0000
/* 00B50 808AF2D0 460A0482 */  mul.s   $f18, $f0, $f10            
/* 00B54 808AF2D4 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
/* 00B58 808AF2D8 8E02018C */  lw      $v0, 0x018C($s0)           ## 0000018C
/* 00B5C 808AF2DC 240E0020 */  addiu   $t6, $zero, 0x0020         ## $t6 = 00000020
/* 00B60 808AF2E0 3C09808B */  lui     $t1, %hi(func_808AF450)    ## $t1 = 808B0000
/* 00B64 808AF2E4 2529F450 */  addiu   $t1, $t1, %lo(func_808AF450) ## $t1 = 808AF450
/* 00B68 808AF2E8 46123201 */  sub.s   $f8, $f6, $f18             
/* 00B6C 808AF2EC E6080010 */  swc1    $f8, 0x0010($s0)           ## 00000010
/* 00B70 808AF2F0 C430FA24 */  lwc1    $f16, %lo(D_808AFA24)($at) 
/* 00B74 808AF2F4 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 00B78 808AF2F8 01E1C024 */  and     $t8, $t7, $at              
/* 00B7C 808AF2FC A60E016A */  sh      $t6, 0x016A($s0)           ## 0000016A
/* 00B80 808AF300 AE180004 */  sw      $t8, 0x0004($s0)           ## 00000004
/* 00B84 808AF304 E6100028 */  swc1    $f16, 0x0028($s0)          ## 00000028
/* 00B88 808AF308 8459002E */  lh      $t9, 0x002E($v0)           ## 0000002E
/* 00B8C 808AF30C 00194040 */  sll     $t0, $t9,  1               
/* 00B90 808AF310 A4480036 */  sh      $t0, 0x0036($v0)           ## 00000036
/* 00B94 808AF314 10000049 */  beq     $zero, $zero, .L808AF43C   
/* 00B98 808AF318 AE090164 */  sw      $t1, 0x0164($s0)           ## 00000164
.L808AF31C:
/* 00B9C 808AF31C C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00BA0 808AF320 C42AFA28 */  lwc1    $f10, %lo(D_808AFA28)($at) 
/* 00BA4 808AF324 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BA8 808AF328 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00BAC 808AF32C 4604503E */  c.le.s  $f10, $f4                  
/* 00BB0 808AF330 00000000 */  nop
/* 00BB4 808AF334 45020010 */  bc1fl   .L808AF378                 
/* 00BB8 808AF338 860C00B4 */  lh      $t4, 0x00B4($s0)           ## 000000B4
/* 00BBC 808AF33C E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 00BC0 808AF340 0C22BB83 */  jal     func_808AEE0C              
/* 00BC4 808AF344 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00BC8 808AF348 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00BCC 808AF34C 240B02BC */  addiu   $t3, $zero, 0x02BC         ## $t3 = 000002BC
/* 00BD0 808AF350 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00BD4 808AF354 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00BD8 808AF358 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00BDC 808AF35C 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 00BE0 808AF360 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00BE4 808AF364 0C00A527 */  jal     func_8002949C              
/* 00BE8 808AF368 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00BEC 808AF36C 10000034 */  beq     $zero, $zero, .L808AF440   
/* 00BF0 808AF370 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00BF4 808AF374 860C00B4 */  lh      $t4, 0x00B4($s0)           ## 000000B4
.L808AF378:
/* 00BF8 808AF378 2401C000 */  addiu   $at, $zero, 0xC000         ## $at = FFFFC000
/* 00BFC 808AF37C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C00 808AF380 1581001F */  bne     $t4, $at, .L808AF400       
/* 00C04 808AF384 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00C08 808AF388 3C01808B */  lui     $at, %hi(D_808AFA2C)       ## $at = 808B0000
/* 00C0C 808AF38C C426FA2C */  lwc1    $f6, %lo(D_808AFA2C)($at)  
/* 00C10 808AF390 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00C14 808AF394 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 00C18 808AF398 46061480 */  add.s   $f18, $f2, $f6             
/* 00C1C 808AF39C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00C20 808AF3A0 E6120060 */  swc1    $f18, 0x0060($s0)          ## 00000060
/* 00C24 808AF3A4 C6080008 */  lwc1    $f8, 0x0008($s0)           ## 00000008
/* 00C28 808AF3A8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00C2C 808AF3AC 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 00C30 808AF3B0 46080400 */  add.s   $f16, $f0, $f8             
/* 00C34 808AF3B4 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00C38 808AF3B8 E6100024 */  swc1    $f16, 0x0024($s0)          ## 00000024
/* 00C3C 808AF3BC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00C40 808AF3C0 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 00C44 808AF3C4 C6020060 */  lwc1    $f2, 0x0060($s0)           ## 00000060
/* 00C48 808AF3C8 C6040010 */  lwc1    $f4, 0x0010($s0)           ## 00000010
/* 00C4C 808AF3CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C50 808AF3D0 4602603C */  c.lt.s  $f12, $f2                  
/* 00C54 808AF3D4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00C58 808AF3D8 46040280 */  add.s   $f10, $f0, $f4             
/* 00C5C 808AF3DC 45000003 */  bc1f    .L808AF3EC                 
/* 00C60 808AF3E0 E60A002C */  swc1    $f10, 0x002C($s0)          ## 0000002C
/* 00C64 808AF3E4 10000002 */  beq     $zero, $zero, .L808AF3F0   
/* 00C68 808AF3E8 E60C0060 */  swc1    $f12, 0x0060($s0)          ## 00000060
.L808AF3EC:
/* 00C6C 808AF3EC E6020060 */  swc1    $f2, 0x0060($s0)           ## 00000060
.L808AF3F0:
/* 00C70 808AF3F0 0C22BB9B */  jal     func_808AEE6C              
/* 00C74 808AF3F4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00C78 808AF3F8 10000011 */  beq     $zero, $zero, .L808AF440   
/* 00C7C 808AF3FC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808AF400:
/* 00C80 808AF400 0C22BB9B */  jal     func_808AEE6C              
/* 00C84 808AF404 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00C88 808AF408 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00C8C 808AF40C 2405C000 */  addiu   $a1, $zero, 0xC000         ## $a1 = FFFFC000
/* 00C90 808AF410 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00C94 808AF414 24060030 */  addiu   $a2, $zero, 0x0030         ## $a2 = 00000030
/* 00C98 808AF418 50400009 */  beql    $v0, $zero, .L808AF440     
/* 00C9C 808AF41C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00CA0 808AF420 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00CA4 808AF424 3C01808B */  lui     $at, %hi(D_808AFA30)       ## $at = 808B0000
/* 00CA8 808AF428 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 00CAC 808AF42C E6060008 */  swc1    $f6, 0x0008($s0)           ## 00000008
/* 00CB0 808AF430 C432FA30 */  lwc1    $f18, %lo(D_808AFA30)($at) 
/* 00CB4 808AF434 E6080010 */  swc1    $f8, 0x0010($s0)           ## 00000010
/* 00CB8 808AF438 E612000C */  swc1    $f18, 0x000C($s0)          ## 0000000C
.L808AF43C:
/* 00CBC 808AF43C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808AF440:
/* 00CC0 808AF440 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00CC4 808AF444 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00CC8 808AF448 03E00008 */  jr      $ra                        
/* 00CCC 808AF44C 00000000 */  nop


