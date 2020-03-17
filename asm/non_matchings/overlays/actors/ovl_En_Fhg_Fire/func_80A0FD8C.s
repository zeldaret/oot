glabel func_80A0FD8C
/* 00B2C 80A0FD8C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00B30 80A0FD90 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00B34 80A0FD94 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00B38 80A0FD98 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00B3C 80A0FD9C 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 00B40 80A0FDA0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00B44 80A0FDA4 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00B48 80A0FDA8 00250821 */  addu    $at, $at, $a1              
/* 00B4C 80A0FDAC AFAE002C */  sw      $t6, 0x002C($sp)           
/* 00B50 80A0FDB0 A0280B05 */  sb      $t0, 0x0B05($at)           ## 00010B05
/* 00B54 80A0FDB4 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 00B58 80A0FDB8 84820152 */  lh      $v0, 0x0152($a0)           ## 00000152
/* 00B5C 80A0FDBC 24010031 */  addiu   $at, $zero, 0x0031         ## $at = 00000031
/* 00B60 80A0FDC0 25F81000 */  addiu   $t8, $t7, 0x1000           ## $t8 = 00001000
/* 00B64 80A0FDC4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B68 80A0FDC8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00B6C 80A0FDCC 14410009 */  bne     $v0, $at, .L80A0FDF4       
/* 00B70 80A0FDD0 A49800B6 */  sh      $t8, 0x00B6($a0)           ## 000000B6
/* 00B74 80A0FDD4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00B78 80A0FDD8 00250821 */  addu    $at, $at, $a1              
/* 00B7C 80A0FDDC A0280AE3 */  sb      $t0, 0x0AE3($at)           ## 00010AE3
/* 00B80 80A0FDE0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00B84 80A0FDE4 00250821 */  addu    $at, $at, $a1              
/* 00B88 80A0FDE8 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 00B8C 80A0FDEC A4390AFA */  sh      $t9, 0x0AFA($at)           ## 00010AFA
/* 00B90 80A0FDF0 84820152 */  lh      $v0, 0x0152($a0)           ## 00000152
.L80A0FDF4:
/* 00B94 80A0FDF4 2401001F */  addiu   $at, $zero, 0x001F         ## $at = 0000001F
/* 00B98 80A0FDF8 14410008 */  bne     $v0, $at, .L80A0FE1C       
/* 00B9C 80A0FDFC 24090014 */  addiu   $t1, $zero, 0x0014         ## $t1 = 00000014
/* 00BA0 80A0FE00 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00BA4 80A0FE04 00310821 */  addu    $at, $at, $s1              
/* 00BA8 80A0FE08 A0200AE3 */  sb      $zero, 0x0AE3($at)         ## 00010AE3
/* 00BAC 80A0FE0C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00BB0 80A0FE10 00310821 */  addu    $at, $at, $s1              
/* 00BB4 80A0FE14 A4290AFA */  sh      $t1, 0x0AFA($at)           ## 00010AFA
/* 00BB8 80A0FE18 86020152 */  lh      $v0, 0x0152($s0)           ## 00000152
.L80A0FE1C:
/* 00BBC 80A0FE1C 28410030 */  slti    $at, $v0, 0x0030           
/* 00BC0 80A0FE20 1420000F */  bne     $at, $zero, .L80A0FE60     
/* 00BC4 80A0FE24 240300FF */  addiu   $v1, $zero, 0x00FF         ## $v1 = 000000FF
/* 00BC8 80A0FE28 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00BCC 80A0FE2C 02211021 */  addu    $v0, $s1, $at              
/* 00BD0 80A0FE30 A0430B08 */  sb      $v1, 0x0B08($v0)           ## 00000B08
/* 00BD4 80A0FE34 A0430B07 */  sb      $v1, 0x0B07($v0)           ## 00000B07
/* 00BD8 80A0FE38 A0430B06 */  sb      $v1, 0x0B06($v0)           ## 00000B06
/* 00BDC 80A0FE3C 860B0150 */  lh      $t3, 0x0150($s0)           ## 00000150
/* 00BE0 80A0FE40 240D0046 */  addiu   $t5, $zero, 0x0046         ## $t5 = 00000046
/* 00BE4 80A0FE44 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 00BE8 80A0FE48 11800003 */  beq     $t4, $zero, .L80A0FE58     
/* 00BEC 80A0FE4C 00000000 */  nop
/* 00BF0 80A0FE50 10000006 */  beq     $zero, $zero, .L80A0FE6C   
/* 00BF4 80A0FE54 A04D0B09 */  sb      $t5, 0x0B09($v0)           ## 00000B09
.L80A0FE58:
/* 00BF8 80A0FE58 10000004 */  beq     $zero, $zero, .L80A0FE6C   
/* 00BFC 80A0FE5C A0400B09 */  sb      $zero, 0x0B09($v0)         ## 00000B09
.L80A0FE60:
/* 00C00 80A0FE60 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00C04 80A0FE64 00310821 */  addu    $at, $at, $s1              
/* 00C08 80A0FE68 A0200B09 */  sb      $zero, 0x0B09($at)         ## 00010B09
.L80A0FE6C:
/* 00C0C 80A0FE6C 860E0150 */  lh      $t6, 0x0150($s0)           ## 00000150
/* 00C10 80A0FE70 2604016C */  addiu   $a0, $s0, 0x016C           ## $a0 = 0000016C
/* 00C14 80A0FE74 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00C18 80A0FE78 29C10015 */  slti    $at, $t6, 0x0015           
/* 00C1C 80A0FE7C 1020000B */  beq     $at, $zero, .L80A0FEAC     
/* 00C20 80A0FE80 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 00C24 80A0FE84 26040160 */  addiu   $a0, $s0, 0x0160           ## $a0 = 00000160
/* 00C28 80A0FE88 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 00C2C 80A0FE8C 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 00C30 80A0FE90 3C064234 */  lui     $a2, 0x4234                ## $a2 = 42340000
/* 00C34 80A0FE94 2604016C */  addiu   $a0, $s0, 0x016C           ## $a0 = 0000016C
/* 00C38 80A0FE98 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 00C3C 80A0FE9C 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 00C40 80A0FEA0 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00C44 80A0FEA4 10000004 */  beq     $zero, $zero, .L80A0FEB8   
/* 00C48 80A0FEA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A0FEAC:
/* 00C4C 80A0FEAC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00C50 80A0FEB0 8E05018C */  lw      $a1, 0x018C($s0)           ## 0000018C
/* 00C54 80A0FEB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A0FEB8:
/* 00C58 80A0FEB8 0C00B58B */  jal     Actor_SetScale
              
/* 00C5C 80A0FEBC 8E05016C */  lw      $a1, 0x016C($s0)           ## 0000016C
/* 00C60 80A0FEC0 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00C64 80A0FEC4 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 00C68 80A0FEC8 C606018C */  lwc1    $f6, 0x018C($s0)           ## 0000018C
/* 00C6C 80A0FECC 260601B0 */  addiu   $a2, $s0, 0x01B0           ## $a2 = 000001B0
/* 00C70 80A0FED0 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000001B0
/* 00C74 80A0FED4 4606203C */  c.lt.s  $f4, $f6                   
/* 00C78 80A0FED8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C7C 80A0FEDC 4502000E */  bc1fl   .L80A0FF18                 
/* 00C80 80A0FEE0 86190150 */  lh      $t9, 0x0150($s0)           ## 00000150
/* 00C84 80A0FEE4 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00C88 80A0FEE8 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 00C8C 80A0FEEC 8FAF002C */  lw      $t7, 0x002C($sp)           
/* 00C90 80A0FEF0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00C94 80A0FEF4 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00C98 80A0FEF8 81F80A78 */  lb      $t8, 0x0A78($t7)           ## 00000A78
/* 00C9C 80A0FEFC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00CA0 80A0FF00 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00CA4 80A0FF04 57000004 */  bnel    $t8, $zero, .L80A0FF18     
/* 00CA8 80A0FF08 86190150 */  lh      $t9, 0x0150($s0)           ## 00000150
/* 00CAC 80A0FF0C 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00CB0 80A0FF10 02212821 */  addu    $a1, $s1, $at              
/* 00CB4 80A0FF14 86190150 */  lh      $t9, 0x0150($s0)           ## 00000150
.L80A0FF18:
/* 00CB8 80A0FF18 57200007 */  bnel    $t9, $zero, .L80A0FF38     
/* 00CBC 80A0FF1C 860201FE */  lh      $v0, 0x01FE($s0)           ## 000001FE
/* 00CC0 80A0FF20 0C00B55C */  jal     Actor_Kill
              
/* 00CC4 80A0FF24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CC8 80A0FF28 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00CCC 80A0FF2C 00310821 */  addu    $at, $at, $s1              
/* 00CD0 80A0FF30 A0200B05 */  sb      $zero, 0x0B05($at)         ## 00010B05
/* 00CD4 80A0FF34 860201FE */  lh      $v0, 0x01FE($s0)           ## 000001FE
.L80A0FF38:
/* 00CD8 80A0FF38 26040200 */  addiu   $a0, $s0, 0x0200           ## $a0 = 00000200
/* 00CDC 80A0FF3C 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 00CE0 80A0FF40 1040000C */  beq     $v0, $zero, .L80A0FF74     
/* 00CE4 80A0FF44 2449FFFF */  addiu   $t1, $v0, 0xFFFF           ## $t1 = FFFFFFFF
/* 00CE8 80A0FF48 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00CEC 80A0FF4C 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 00CF0 80A0FF50 A60901FE */  sh      $t1, 0x01FE($s0)           ## 000001FE
/* 00CF4 80A0FF54 A20A01FC */  sb      $t2, 0x01FC($s0)           ## 000001FC
/* 00CF8 80A0FF58 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 00CFC 80A0FF5C 26040200 */  addiu   $a0, $s0, 0x0200           ## $a0 = 00000200
/* 00D00 80A0FF60 3C054220 */  lui     $a1, 0x4220                ## $a1 = 42200000
/* 00D04 80A0FF64 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00D08 80A0FF68 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 00D0C 80A0FF6C 1000000B */  beq     $zero, $zero, .L80A0FF9C   
/* 00D10 80A0FF70 920B01FC */  lbu     $t3, 0x01FC($s0)           ## 000001FC
.L80A0FF74:
/* 00D14 80A0FF74 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 00D18 80A0FF78 3C0640A0 */  lui     $a2, 0x40A0                ## $a2 = 40A00000
/* 00D1C 80A0FF7C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00D20 80A0FF80 C60A0200 */  lwc1    $f10, 0x0200($s0)          ## 00000200
/* 00D24 80A0FF84 460A4032 */  c.eq.s  $f8, $f10                  
/* 00D28 80A0FF88 00000000 */  nop
/* 00D2C 80A0FF8C 45020003 */  bc1fl   .L80A0FF9C                 
/* 00D30 80A0FF90 920B01FC */  lbu     $t3, 0x01FC($s0)           ## 000001FC
/* 00D34 80A0FF94 A20001FC */  sb      $zero, 0x01FC($s0)         ## 000001FC
/* 00D38 80A0FF98 920B01FC */  lbu     $t3, 0x01FC($s0)           ## 000001FC
.L80A0FF9C:
/* 00D3C 80A0FF9C 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 00D40 80A0FFA0 3C0C8016 */  lui     $t4, 0x8016                ## $t4 = 80160000
/* 00D44 80A0FFA4 A02BFCF0 */  sb      $t3, -0x0310($at)          ## 8015FCF0
/* 00D48 80A0FFA8 8E0E0024 */  lw      $t6, 0x0024($s0)           ## 00000024
/* 00D4C 80A0FFAC 258CFCF8 */  addiu   $t4, $t4, 0xFCF8           ## $t4 = 8015FCF8
/* 00D50 80A0FFB0 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 00D54 80A0FFB4 AD8E0000 */  sw      $t6, 0x0000($t4)           ## 8015FCF8
/* 00D58 80A0FFB8 8E0D0028 */  lw      $t5, 0x0028($s0)           ## 00000028
/* 00D5C 80A0FFBC AD8D0004 */  sw      $t5, 0x0004($t4)           ## 8015FCFC
/* 00D60 80A0FFC0 8E0E002C */  lw      $t6, 0x002C($s0)           ## 0000002C
/* 00D64 80A0FFC4 AD8E0008 */  sw      $t6, 0x0008($t4)           ## 8015FD00
/* 00D68 80A0FFC8 C6100200 */  lwc1    $f16, 0x0200($s0)          ## 00000200
/* 00D6C 80A0FFCC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00D70 80A0FFD0 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00D74 80A0FFD4 4600848D */  trunc.w.s $f18, $f16                 
/* 00D78 80A0FFD8 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00D7C 80A0FFDC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00D80 80A0FFE0 44189000 */  mfc1    $t8, $f18                  
/* 00D84 80A0FFE4 00000000 */  nop
/* 00D88 80A0FFE8 A438FD06 */  sh      $t8, -0x02FA($at)          ## 8015FD06
/* 00D8C 80A0FFEC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00D90 80A0FFF0 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 00D94 80A0FFF4 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 00D98 80A0FFF8 E424FD08 */  swc1    $f4, -0x02F8($at)          ## 8015FD08
/* 00D9C 80A0FFFC 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 00DA0 80A10000 03E00008 */  jr      $ra                        
/* 00DA4 80A10004 A420FD0C */  sh      $zero, -0x02F4($at)        ## 8015FD0C


