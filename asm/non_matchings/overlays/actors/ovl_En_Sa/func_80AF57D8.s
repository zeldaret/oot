glabel func_80AF57D8
/* 00278 80AF57D8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0027C 80AF57DC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00280 80AF57E0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00284 80AF57E4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00288 80AF57E8 84AF00A4 */  lh      $t7, 0x00A4($a1)           ## 000000A4
/* 0028C 80AF57EC 24010056 */  addiu   $at, $zero, 0x0056         ## $at = 00000056
/* 00290 80AF57F0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00294 80AF57F4 55E10011 */  bnel    $t7, $at, .L80AF583C       
/* 00298 80AF57F8 860901D4 */  lh      $t1, 0x01D4($s0)           ## 000001D4
/* 0029C 80AF57FC 8498008A */  lh      $t8, 0x008A($a0)           ## 0000008A
/* 002A0 80AF5800 849900B6 */  lh      $t9, 0x00B6($a0)           ## 000000B6
/* 002A4 80AF5804 03191023 */  subu    $v0, $t8, $t9              
/* 002A8 80AF5808 00021400 */  sll     $v0, $v0, 16               
/* 002AC 80AF580C 00021403 */  sra     $v0, $v0, 16               
/* 002B0 80AF5810 04400003 */  bltz    $v0, .L80AF5820            
/* 002B4 80AF5814 00021823 */  subu    $v1, $zero, $v0            
/* 002B8 80AF5818 10000001 */  beq     $zero, $zero, .L80AF5820   
/* 002BC 80AF581C 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80AF5820:
/* 002C0 80AF5820 28611555 */  slti    $at, $v1, 0x1555           
/* 002C4 80AF5824 54200005 */  bnel    $at, $zero, .L80AF583C     
/* 002C8 80AF5828 860901D4 */  lh      $t1, 0x01D4($s0)           ## 000001D4
/* 002CC 80AF582C 860801E0 */  lh      $t0, 0x01E0($s0)           ## 000001E0
/* 002D0 80AF5830 51000014 */  beql    $t0, $zero, .L80AF5884     
/* 002D4 80AF5834 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 002D8 80AF5838 860901D4 */  lh      $t1, 0x01D4($s0)           ## 000001D4
.L80AF583C:
/* 002DC 80AF583C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 002E0 80AF5840 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 002E4 80AF5844 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 002E8 80AF5848 3C0A80AF */  lui     $t2, %hi(func_80AF55E0)    ## $t2 = 80AF0000
/* 002EC 80AF584C 3C0B80AF */  lui     $t3, %hi(func_80AF56F4)    ## $t3 = 80AF0000
/* 002F0 80AF5850 468021A0 */  cvt.s.w $f6, $f4                   
/* 002F4 80AF5854 256B56F4 */  addiu   $t3, $t3, %lo(func_80AF56F4) ## $t3 = 80AF56F4
/* 002F8 80AF5858 254A55E0 */  addiu   $t2, $t2, %lo(func_80AF55E0) ## $t2 = 80AF55E0
/* 002FC 80AF585C AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00300 80AF5860 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00304 80AF5864 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00308 80AF5868 46083280 */  add.s   $f10, $f6, $f8             
/* 0030C 80AF586C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00310 80AF5870 260601E0 */  addiu   $a2, $s0, 0x01E0           ## $a2 = 000001E0
/* 00314 80AF5874 44075000 */  mfc1    $a3, $f10                  
/* 00318 80AF5878 0C00D0F3 */  jal     func_800343CC              
/* 0031C 80AF587C 00000000 */  nop
/* 00320 80AF5880 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AF5884:
/* 00324 80AF5884 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00328 80AF5888 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0032C 80AF588C 03E00008 */  jr      $ra                        
/* 00330 80AF5890 00000000 */  nop
