glabel func_80AE56E0
/* 00A10 80AE56E0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00A14 80AE56E4 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00A18 80AE56E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A1C 80AE56EC AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00A20 80AE56F0 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00A24 80AE56F4 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 00A28 80AE56F8 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 00A2C 80AE56FC 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 00A30 80AE5700 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 00A34 80AE5704 248400C4 */  addiu   $a0, $a0, 0x00C4           ## $a0 = 000000C4
/* 00A38 80AE5708 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 00A3C 80AE570C 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 00A40 80AE5710 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 00A44 80AE5714 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 00A48 80AE5718 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 00A4C 80AE571C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00A50 80AE5720 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00A54 80AE5724 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00A58 80AE5728 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00A5C 80AE572C 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 00A60 80AE5730 C6000284 */  lwc1    $f0, 0x0284($s0)           ## 00000284
/* 00A64 80AE5734 C60400BC */  lwc1    $f4, 0x00BC($s0)           ## 000000BC
/* 00A68 80AE5738 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00A6C 80AE573C 46060200 */  add.s   $f8, $f0, $f6              
/* 00A70 80AE5740 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 00A74 80AE5744 01C47021 */  addu    $t6, $t6, $a0              
/* 00A78 80AE5748 4604403E */  c.le.s  $f8, $f4                   
/* 00A7C 80AE574C 00000000 */  nop
/* 00A80 80AE5750 45000020 */  bc1f    .L80AE57D4                 
/* 00A84 80AE5754 00000000 */  nop
/* 00A88 80AE5758 8DCE1DE4 */  lw      $t6, 0x1DE4($t6)           ## 00011DE4
/* 00A8C 80AE575C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00A90 80AE5760 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 00A94 80AE5764 31CF0003 */  andi    $t7, $t6, 0x0003           ## $t7 = 00000000
/* 00A98 80AE5768 15E0000E */  bne     $t7, $zero, .L80AE57A4     
/* 00A9C 80AE576C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00AA0 80AE5770 8E0700C4 */  lw      $a3, 0x00C4($s0)           ## 000000C4
/* 00AA4 80AE5774 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00AA8 80AE5778 44815000 */  mtc1    $at, $f10                  ## $f10 = 8.00
/* 00AAC 80AE577C 241901F4 */  addiu   $t9, $zero, 0x01F4         ## $t9 = 000001F4
/* 00AB0 80AE5780 2408000A */  addiu   $t0, $zero, 0x000A         ## $t0 = 0000000A
/* 00AB4 80AE5784 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00AB8 80AE5788 AFA90020 */  sw      $t1, 0x0020($sp)           
/* 00ABC 80AE578C AFA8001C */  sw      $t0, 0x001C($sp)           
/* 00AC0 80AE5790 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 00AC4 80AE5794 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00AC8 80AE5798 0C00CC98 */  jal     func_80033260              
/* 00ACC 80AE579C E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 00AD0 80AE57A0 C6000284 */  lwc1    $f0, 0x0284($s0)           ## 00000284
.L80AE57A4:
/* 00AD4 80AE57A4 44050000 */  mfc1    $a1, $f0                   
/* 00AD8 80AE57A8 260400BC */  addiu   $a0, $s0, 0x00BC           ## $a0 = 000000BC
/* 00ADC 80AE57AC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00AE0 80AE57B0 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00AE4 80AE57B4 8E070288 */  lw      $a3, 0x0288($s0)           ## 00000288
/* 00AE8 80AE57B8 26040288 */  addiu   $a0, $s0, 0x0288           ## $a0 = 00000288
/* 00AEC 80AE57BC 3C054396 */  lui     $a1, 0x4396                ## $a1 = 43960000
/* 00AF0 80AE57C0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00AF4 80AE57C4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00AF8 80AE57C8 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 00AFC 80AE57CC 10000004 */  beq     $zero, $zero, .L80AE57E0   
/* 00B00 80AE57D0 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80AE57D4:
/* 00B04 80AE57D4 0C00B55C */  jal     Actor_Kill
              
/* 00B08 80AE57D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B0C 80AE57DC 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80AE57E0:
/* 00B10 80AE57E0 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00B14 80AE57E4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00B18 80AE57E8 03E00008 */  jr      $ra                        
/* 00B1C 80AE57EC 00000000 */  nop
