.late_rodata
glabel D_80A7BAE0
    .float 1500.0
    .balign 4

glabel D_80A7BAE4
    .float 3.14159274101
    .balign 4

glabel D_80A7BAE8
    .float 3.14159274101
    .balign 4

glabel D_80A7BAEC
 .word 0xC4BB8000
glabel D_80A7BAF0
    .float 3.14159274101
    .balign 4

glabel D_80A7BAF4
 .word 0x40490FDB, 0x00000000, 0x00000000


.text
glabel func_80A7B320
/* 02370 80A7B320 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 02374 80A7B324 8FAE004C */  lw      $t6, 0x004C($sp)           
/* 02378 80A7B328 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0237C 80A7B32C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02380 80A7B330 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 02384 80A7B334 AFA70044 */  sw      $a3, 0x0044($sp)           
/* 02388 80A7B338 85CF001C */  lh      $t7, 0x001C($t6)           ## 0000001C
/* 0238C 80A7B33C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 02390 80A7B340 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 02394 80A7B344 59E0000A */  blezl   $t7, .L80A7B370            
/* 02398 80A7B348 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 0239C 80A7B34C 10A10007 */  beq     $a1, $at, .L80A7B36C       
/* 023A0 80A7B350 0005C080 */  sll     $t8, $a1,  2               
/* 023A4 80A7B354 3C0280A8 */  lui     $v0, %hi(D_80A7B938)       ## $v0 = 80A80000
/* 023A8 80A7B358 00581021 */  addu    $v0, $v0, $t8              
/* 023AC 80A7B35C 8C42B938 */  lw      $v0, %lo(D_80A7B938)($v0)  
/* 023B0 80A7B360 50400003 */  beql    $v0, $zero, .L80A7B370     
/* 023B4 80A7B364 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 023B8 80A7B368 ACC20000 */  sw      $v0, 0x0000($a2)           ## 00000000
.L80A7B36C:
/* 023BC 80A7B36C 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
.L80A7B370:
/* 023C0 80A7B370 5601002E */  bnel    $s0, $at, .L80A7B42C       
/* 023C4 80A7B374 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 023C8 80A7B378 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 023CC 80A7B37C 3C0180A8 */  lui     $at, %hi(D_80A7BAE0)       ## $at = 80A80000
/* 023D0 80A7B380 C42CBAE0 */  lwc1    $f12, %lo(D_80A7BAE0)($at) 
/* 023D4 80A7B384 44067000 */  mfc1    $a2, $f14                  
/* 023D8 80A7B388 0C034261 */  jal     Matrix_Translate              
/* 023DC 80A7B38C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 023E0 80A7B390 8FA8004C */  lw      $t0, 0x004C($sp)           
/* 023E4 80A7B394 27B9002C */  addiu   $t9, $sp, 0x002C           ## $t9 = FFFFFFF4
/* 023E8 80A7B398 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 023EC 80A7B39C 890A0310 */  lwl     $t2, 0x0310($t0)           ## 00000310
/* 023F0 80A7B3A0 990A0313 */  lwr     $t2, 0x0313($t0)           ## 00000313
/* 023F4 80A7B3A4 44814000 */  mtc1    $at, $f8                   ## $f8 = 32768.00
/* 023F8 80A7B3A8 3C0180A8 */  lui     $at, %hi(D_80A7BAE4)       ## $at = 80A80000
/* 023FC 80A7B3AC AF2A0000 */  sw      $t2, 0x0000($t9)           ## FFFFFFF4
/* 02400 80A7B3B0 950A0314 */  lhu     $t2, 0x0314($t0)           ## 00000314
/* 02404 80A7B3B4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02408 80A7B3B8 A72A0004 */  sh      $t2, 0x0004($t9)           ## FFFFFFF8
/* 0240C 80A7B3BC 87AB002C */  lh      $t3, 0x002C($sp)           
/* 02410 80A7B3C0 C430BAE4 */  lwc1    $f16, %lo(D_80A7BAE4)($at) 
/* 02414 80A7B3C4 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 02418 80A7B3C8 00000000 */  nop
/* 0241C 80A7B3CC 468021A0 */  cvt.s.w $f6, $f4                   
/* 02420 80A7B3D0 46083283 */  div.s   $f10, $f6, $f8             
/* 02424 80A7B3D4 46105302 */  mul.s   $f12, $f10, $f16           
/* 02428 80A7B3D8 0C0343B5 */  jal     Matrix_RotateZ              
/* 0242C 80A7B3DC 00000000 */  nop
/* 02430 80A7B3E0 87AC002E */  lh      $t4, 0x002E($sp)           
/* 02434 80A7B3E4 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 02438 80A7B3E8 44813000 */  mtc1    $at, $f6                   ## $f6 = 32768.00
/* 0243C 80A7B3EC 448C9000 */  mtc1    $t4, $f18                  ## $f18 = 0.00
/* 02440 80A7B3F0 3C0180A8 */  lui     $at, %hi(D_80A7BAE8)       ## $at = 80A80000
/* 02444 80A7B3F4 C42ABAE8 */  lwc1    $f10, %lo(D_80A7BAE8)($at) 
/* 02448 80A7B3F8 46809120 */  cvt.s.w $f4, $f18                  
/* 0244C 80A7B3FC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02450 80A7B400 46062203 */  div.s   $f8, $f4, $f6              
/* 02454 80A7B404 460A4302 */  mul.s   $f12, $f8, $f10            
/* 02458 80A7B408 0C0342DC */  jal     Matrix_RotateX              
/* 0245C 80A7B40C 00000000 */  nop
/* 02460 80A7B410 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 02464 80A7B414 3C0180A8 */  lui     $at, %hi(D_80A7BAEC)       ## $at = 80A80000
/* 02468 80A7B418 C42CBAEC */  lwc1    $f12, %lo(D_80A7BAEC)($at) 
/* 0246C 80A7B41C 44067000 */  mfc1    $a2, $f14                  
/* 02470 80A7B420 0C034261 */  jal     Matrix_Translate              
/* 02474 80A7B424 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02478 80A7B428 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
.L80A7B42C:
/* 0247C 80A7B42C 16010020 */  bne     $s0, $at, .L80A7B4B0       
/* 02480 80A7B430 8FAE004C */  lw      $t6, 0x004C($sp)           
/* 02484 80A7B434 89D80316 */  lwl     $t8, 0x0316($t6)           ## 00000316
/* 02488 80A7B438 99D80319 */  lwr     $t8, 0x0319($t6)           ## 00000319
/* 0248C 80A7B43C 27AD002C */  addiu   $t5, $sp, 0x002C           ## $t5 = FFFFFFF4
/* 02490 80A7B440 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 02494 80A7B444 ADB80000 */  sw      $t8, 0x0000($t5)           ## FFFFFFF4
/* 02498 80A7B448 95D8031A */  lhu     $t8, 0x031A($t6)           ## 0000031A
/* 0249C 80A7B44C 44812000 */  mtc1    $at, $f4                   ## $f4 = 32768.00
/* 024A0 80A7B450 3C0180A8 */  lui     $at, %hi(D_80A7BAF0)       ## $at = 80A80000
/* 024A4 80A7B454 A5B80004 */  sh      $t8, 0x0004($t5)           ## FFFFFFF8
/* 024A8 80A7B458 87B9002C */  lh      $t9, 0x002C($sp)           
/* 024AC 80A7B45C C428BAF0 */  lwc1    $f8, %lo(D_80A7BAF0)($at)  
/* 024B0 80A7B460 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 024B4 80A7B464 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 024B8 80A7B468 00000000 */  nop
/* 024BC 80A7B46C 468084A0 */  cvt.s.w $f18, $f16                 
/* 024C0 80A7B470 46049183 */  div.s   $f6, $f18, $f4             
/* 024C4 80A7B474 46083302 */  mul.s   $f12, $f6, $f8             
/* 024C8 80A7B478 0C0342DC */  jal     Matrix_RotateX              
/* 024CC 80A7B47C 00000000 */  nop
/* 024D0 80A7B480 87A8002E */  lh      $t0, 0x002E($sp)           
/* 024D4 80A7B484 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 024D8 80A7B488 44819000 */  mtc1    $at, $f18                  ## $f18 = 32768.00
/* 024DC 80A7B48C 44885000 */  mtc1    $t0, $f10                  ## $f10 = 0.00
/* 024E0 80A7B490 3C0180A8 */  lui     $at, %hi(D_80A7BAF4)       ## $at = 80A80000
/* 024E4 80A7B494 C426BAF4 */  lwc1    $f6, %lo(D_80A7BAF4)($at)  
/* 024E8 80A7B498 46805420 */  cvt.s.w $f16, $f10                 
/* 024EC 80A7B49C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 024F0 80A7B4A0 46128103 */  div.s   $f4, $f16, $f18            
/* 024F4 80A7B4A4 46062302 */  mul.s   $f12, $f4, $f6             
/* 024F8 80A7B4A8 0C034348 */  jal     Matrix_RotateY              
/* 024FC 80A7B4AC 00000000 */  nop
.L80A7B4B0:
/* 02500 80A7B4B0 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 02504 80A7B4B4 12010005 */  beq     $s0, $at, .L80A7B4CC       
/* 02508 80A7B4B8 8FA9004C */  lw      $t1, 0x004C($sp)           
/* 0250C 80A7B4BC 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 02510 80A7B4C0 12010002 */  beq     $s0, $at, .L80A7B4CC       
/* 02514 80A7B4C4 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 02518 80A7B4C8 16010024 */  bne     $s0, $at, .L80A7B55C       
.L80A7B4CC:
/* 0251C 80A7B4CC 00105080 */  sll     $t2, $s0,  2               
/* 02520 80A7B4D0 01505023 */  subu    $t2, $t2, $s0              
/* 02524 80A7B4D4 000A5040 */  sll     $t2, $t2,  1               
/* 02528 80A7B4D8 012A1821 */  addu    $v1, $t1, $t2              
/* 0252C 80A7B4DC 84640332 */  lh      $a0, 0x0332($v1)           ## 00000332
/* 02530 80A7B4E0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02534 80A7B4E4 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 02538 80A7B4E8 8FA20048 */  lw      $v0, 0x0048($sp)           
/* 0253C 80A7B4EC 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 02540 80A7B4F0 44818000 */  mtc1    $at, $f16                  ## $f16 = 200.00
/* 02544 80A7B4F4 844B0002 */  lh      $t3, 0x0002($v0)           ## 00000002
/* 02548 80A7B4F8 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 0254C 80A7B4FC 46100482 */  mul.s   $f18, $f0, $f16            
/* 02550 80A7B500 448B4000 */  mtc1    $t3, $f8                   ## $f8 = 0.00
/* 02554 80A7B504 00000000 */  nop
/* 02558 80A7B508 468042A0 */  cvt.s.w $f10, $f8                  
/* 0255C 80A7B50C 46125100 */  add.s   $f4, $f10, $f18            
/* 02560 80A7B510 4600218D */  trunc.w.s $f6, $f4                   
/* 02564 80A7B514 440D3000 */  mfc1    $t5, $f6                   
/* 02568 80A7B518 00000000 */  nop
/* 0256C 80A7B51C A44D0002 */  sh      $t5, 0x0002($v0)           ## 00000002
/* 02570 80A7B520 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 02574 80A7B524 84640334 */  lh      $a0, 0x0334($v1)           ## 00000334
/* 02578 80A7B528 8FA20048 */  lw      $v0, 0x0048($sp)           
/* 0257C 80A7B52C 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 02580 80A7B530 44815000 */  mtc1    $at, $f10                  ## $f10 = 200.00
/* 02584 80A7B534 844E0004 */  lh      $t6, 0x0004($v0)           ## 00000004
/* 02588 80A7B538 460A0482 */  mul.s   $f18, $f0, $f10            
/* 0258C 80A7B53C 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 02590 80A7B540 00000000 */  nop
/* 02594 80A7B544 46804420 */  cvt.s.w $f16, $f8                  
/* 02598 80A7B548 46128100 */  add.s   $f4, $f16, $f18            
/* 0259C 80A7B54C 4600218D */  trunc.w.s $f6, $f4                   
/* 025A0 80A7B550 44183000 */  mfc1    $t8, $f6                   
/* 025A4 80A7B554 00000000 */  nop
/* 025A8 80A7B558 A4580004 */  sh      $t8, 0x0004($v0)           ## 00000004
.L80A7B55C:
/* 025AC 80A7B55C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 025B0 80A7B560 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 025B4 80A7B564 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 025B8 80A7B568 03E00008 */  jr      $ra                        
/* 025BC 80A7B56C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000


