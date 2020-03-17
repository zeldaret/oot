glabel func_80B239A8
/* 00CB8 80B239A8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00CBC 80B239AC AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00CC0 80B239B0 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00CC4 80B239B4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00CC8 80B239B8 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00CCC 80B239BC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00CD0 80B239C0 3C0480B2 */  lui     $a0, %hi(D_80B24368)       ## $a0 = 80B20000
/* 00CD4 80B239C4 000E7880 */  sll     $t7, $t6,  2               
/* 00CD8 80B239C8 008F2021 */  addu    $a0, $a0, $t7              
/* 00CDC 80B239CC 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00CE0 80B239D0 8C844368 */  lw      $a0, %lo(D_80B24368)($a0)  
/* 00CE4 80B239D4 8FA30034 */  lw      $v1, 0x0034($sp)           
/* 00CE8 80B239D8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00CEC 80B239DC 90781D6C */  lbu     $t8, 0x1D6C($v1)           ## 00001D6C
/* 00CF0 80B239E0 46802020 */  cvt.s.w $f0, $f4                   
/* 00CF4 80B239E4 53000024 */  beql    $t8, $zero, .L80B23A78     
/* 00CF8 80B239E8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00CFC 80B239EC 861902D8 */  lh      $t9, 0x02D8($s0)           ## 000002D8
/* 00D00 80B239F0 00194080 */  sll     $t0, $t9,  2               
/* 00D04 80B239F4 00684821 */  addu    $t1, $v1, $t0              
/* 00D08 80B239F8 8D221D8C */  lw      $v0, 0x1D8C($t1)           ## 00001D8C
/* 00D0C 80B239FC 5040001E */  beql    $v0, $zero, .L80B23A78     
/* 00D10 80B23A00 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00D14 80B23A04 944A0000 */  lhu     $t2, 0x0000($v0)           ## 00000000
/* 00D18 80B23A08 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00D1C 80B23A0C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00D20 80B23A10 15410018 */  bne     $t2, $at, .L80B23A74       
/* 00D24 80B23A14 3C0580B2 */  lui     $a1, %hi(D_80B24368)       ## $a1 = 80B20000
/* 00D28 80B23A18 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 00D2C 80B23A1C 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 00D30 80B23A20 44813000 */  mtc1    $at, $f6                   ## $f6 = -4.00
/* 00D34 80B23A24 000B6080 */  sll     $t4, $t3,  2               
/* 00D38 80B23A28 00AC2821 */  addu    $a1, $a1, $t4              
/* 00D3C 80B23A2C 240D0002 */  addiu   $t5, $zero, 0x0002         ## $t5 = 00000002
/* 00D40 80B23A30 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 00D44 80B23A34 8CA54368 */  lw      $a1, %lo(D_80B24368)($a1)  
/* 00D48 80B23A38 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00D4C 80B23A3C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00D50 80B23A40 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00D54 80B23A44 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00D58 80B23A48 E7A60018 */  swc1    $f6, 0x0018($sp)           
/* 00D5C 80B23A4C 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00D60 80B23A50 3C1880B2 */  lui     $t8, %hi(D_80B24370)       ## $t8 = 80B20000
/* 00D64 80B23A54 3C0580B2 */  lui     $a1, %hi(func_80B238E0)    ## $a1 = 80B20000
/* 00D68 80B23A58 000E7880 */  sll     $t7, $t6,  2               
/* 00D6C 80B23A5C 030FC021 */  addu    $t8, $t8, $t7              
/* 00D70 80B23A60 8F184370 */  lw      $t8, %lo(D_80B24370)($t8)  
/* 00D74 80B23A64 24A538E0 */  addiu   $a1, $a1, %lo(func_80B238E0) ## $a1 = 80B238E0
/* 00D78 80B23A68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D7C 80B23A6C 0C2C8B3C */  jal     func_80B22CF0              
/* 00D80 80B23A70 AE1802E4 */  sw      $t8, 0x02E4($s0)           ## 000002E4
.L80B23A74:
/* 00D84 80B23A74 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80B23A78:
/* 00D88 80B23A78 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00D8C 80B23A7C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00D90 80B23A80 03E00008 */  jr      $ra                        
/* 00D94 80B23A84 00000000 */  nop


