.late_rodata
glabel D_809695D8
    .float 0.012

.text
glabel func_80966F84
/* 00634 80966F84 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00638 80966F88 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 0063C 80966F8C AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00640 80966F90 9482028E */  lhu     $v0, 0x028E($a0)           ## 0000028E
/* 00644 80966F94 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00648 80966F98 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 0064C 80966F9C 28410005 */  slti    $at, $v0, 0x0005           
/* 00650 80966FA0 10200008 */  beq     $at, $zero, .L80966FC4     
/* 00654 80966FA4 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 00658 80966FA8 304E0003 */  andi    $t6, $v0, 0x0003           ## $t6 = 00000000
/* 0065C 80966FAC 000E7880 */  sll     $t7, $t6,  2               
/* 00660 80966FB0 3C018097 */  lui     $at, %hi(D_8096930C)       ## $at = 80970000
/* 00664 80966FB4 002F0821 */  addu    $at, $at, $t7              
/* 00668 80966FB8 C424930C */  lwc1    $f4, %lo(D_8096930C)($at)  
/* 0066C 80966FBC 10000034 */  beq     $zero, $zero, .L80967090   
/* 00670 80966FC0 E4840168 */  swc1    $f4, 0x0168($a0)           ## 00000168
.L80966FC4:
/* 00674 80966FC4 2861000F */  slti    $at, $v1, 0x000F           
/* 00678 80966FC8 10200013 */  beq     $at, $zero, .L80967018     
/* 0067C 80966FCC 3C018097 */  lui     $at, %hi(D_809695D8)       ## $at = 80970000
/* 00680 80966FD0 C42895D8 */  lwc1    $f8, %lo(D_809695D8)($at)  
/* 00684 80966FD4 C6060050 */  lwc1    $f6, 0x0050($s0)           ## 00000050
/* 00688 80966FD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0068C 80966FDC 46083280 */  add.s   $f10, $f6, $f8             
/* 00690 80966FE0 E60A0050 */  swc1    $f10, 0x0050($s0)          ## 00000050
/* 00694 80966FE4 0C00B58B */  jal     Actor_SetScale
              
/* 00698 80966FE8 8E050050 */  lw      $a1, 0x0050($s0)           ## 00000050
/* 0069C 80966FEC 3C053F19 */  lui     $a1, 0x3F19                ## $a1 = 3F190000
/* 006A0 80966FF0 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 006A4 80966FF4 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 006A8 80966FF8 34A5999A */  ori     $a1, $a1, 0x999A           ## $a1 = 3F19999A
/* 006AC 80966FFC 0C01DE80 */  jal     Math_ApproxF
              
/* 006B0 80967000 26040170 */  addiu   $a0, $s0, 0x0170           ## $a0 = 00000170
/* 006B4 80967004 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 006B8 80967008 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 006BC 8096700C 9602028E */  lhu     $v0, 0x028E($s0)           ## 0000028E
/* 006C0 80967010 1000001F */  beq     $zero, $zero, .L80967090   
/* 006C4 80967014 E6100168 */  swc1    $f16, 0x0168($s0)          ## 00000168
.L80967018:
/* 006C8 80967018 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 006CC 8096701C 54610011 */  bnel    $v1, $at, .L80967064       
/* 006D0 80967020 3C063CA3 */  lui     $a2, 0x3CA3                ## $a2 = 3CA30000
/* 006D4 80967024 C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000024
/* 006D8 80967028 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 006DC 8096702C 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 3CA31C24
/* 006E0 80967030 E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 006E4 80967034 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 006E8 80967038 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 006EC 8096703C 24070101 */  addiu   $a3, $zero, 0x0101         ## $a3 = 00000101
/* 006F0 80967040 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 006F4 80967044 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 006F8 80967048 AFB80028 */  sw      $t8, 0x0028($sp)           
/* 006FC 8096704C AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00700 80967050 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00704 80967054 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00708 80967058 0C00C916 */  jal     Actor_SpawnAsChild
              
/* 0070C 8096705C E7A60018 */  swc1    $f6, 0x0018($sp)           
/* 00710 80967060 3C063CA3 */  lui     $a2, 0x3CA3                ## $a2 = 3CA30000
.L80967064:
/* 00714 80967064 34C6D70A */  ori     $a2, $a2, 0xD70A           ## $a2 = 3CA3D70A
/* 00718 80967068 2604016C */  addiu   $a0, $s0, 0x016C           ## $a0 = 0000016C
/* 0071C 8096706C 0C01DE80 */  jal     Math_ApproxF
              
/* 00720 80967070 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 00724 80967074 9602028E */  lhu     $v0, 0x028E($s0)           ## 0000028E
/* 00728 80967078 3C018097 */  lui     $at, %hi(D_8096930C)       ## $at = 80970000
/* 0072C 8096707C 30590001 */  andi    $t9, $v0, 0x0001           ## $t9 = 00000000
/* 00730 80967080 00194080 */  sll     $t0, $t9,  2               
/* 00734 80967084 00280821 */  addu    $at, $at, $t0              
/* 00738 80967088 C428930C */  lwc1    $f8, %lo(D_8096930C)($at)  
/* 0073C 8096708C E6080168 */  swc1    $f8, 0x0168($s0)           ## 00000168
.L80967090:
/* 00740 80967090 24490001 */  addiu   $t1, $v0, 0x0001           ## $t1 = 00000001
/* 00744 80967094 A609028E */  sh      $t1, 0x028E($s0)           ## 0000028E
/* 00748 80967098 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 0074C 8096709C 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 00750 809670A0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00754 809670A4 03E00008 */  jr      $ra                        
/* 00758 809670A8 00000000 */  nop
