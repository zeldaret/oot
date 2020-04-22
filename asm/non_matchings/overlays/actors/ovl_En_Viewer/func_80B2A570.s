.rdata
glabel D_80B2CFF0
    .asciz "bank_ID >= 0"
    .balign 4

glabel D_80B2D000
    .asciz "../z_en_viewer.c"
    .balign 4

glabel D_80B2D014
    .asciz "this->anime_bank_ID >= 0"
    .balign 4

glabel D_80B2D030
    .asciz "../z_en_viewer.c"
    .balign 4

.text
glabel func_80B2A570
/* 00370 80B2A570 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00374 80B2A574 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00378 80B2A578 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 0037C 80B2A57C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00380 80B2A580 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00384 80B2A584 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00388 80B2A588 3C1980B3 */  lui     $t9, %hi(D_80B2CEE8)       ## $t9 = 80B30000
/* 0038C 80B2A58C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00390 80B2A590 000E7A03 */  sra     $t7, $t6,  8               
/* 00394 80B2A594 000FC080 */  sll     $t8, $t7,  2               
/* 00398 80B2A598 030FC021 */  addu    $t8, $t8, $t7              
/* 0039C 80B2A59C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 003A0 80B2A5A0 0018C080 */  sll     $t8, $t8,  2               
/* 003A4 80B2A5A4 2739CEE8 */  addiu   $t9, $t9, %lo(D_80B2CEE8)  ## $t9 = 80B2CEE8
/* 003A8 80B2A5A8 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 003AC 80B2A5AC 03198821 */  addu    $s1, $t8, $t9              
/* 003B0 80B2A5B0 00A12021 */  addu    $a0, $a1, $at              
/* 003B4 80B2A5B4 86250000 */  lh      $a1, 0x0000($s1)           ## 00000000
/* 003B8 80B2A5B8 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 003BC 80B2A5BC AFA40024 */  sw      $a0, 0x0024($sp)           
/* 003C0 80B2A5C0 04410007 */  bgez    $v0, .L80B2A5E0            
/* 003C4 80B2A5C4 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 003C8 80B2A5C8 3C0480B3 */  lui     $a0, %hi(D_80B2CFF0)       ## $a0 = 80B30000
/* 003CC 80B2A5CC 3C0580B3 */  lui     $a1, %hi(D_80B2D000)       ## $a1 = 80B30000
/* 003D0 80B2A5D0 24A5D000 */  addiu   $a1, $a1, %lo(D_80B2D000)  ## $a1 = 80B2D000
/* 003D4 80B2A5D4 2484CFF0 */  addiu   $a0, $a0, %lo(D_80B2CFF0)  ## $a0 = 80B2CFF0
/* 003D8 80B2A5D8 0C0007FC */  jal     __assert
              
/* 003DC 80B2A5DC 24060240 */  addiu   $a2, $zero, 0x0240         ## $a2 = 00000240
.L80B2A5E0:
/* 003E0 80B2A5E0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 003E4 80B2A5E4 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 003E8 80B2A5E8 86250002 */  lh      $a1, 0x0002($s1)           ## 00000002
/* 003EC 80B2A5EC A20201DC */  sb      $v0, 0x01DC($s0)           ## 000001DC
/* 003F0 80B2A5F0 820801DC */  lb      $t0, 0x01DC($s0)           ## 000001DC
/* 003F4 80B2A5F4 3C0480B3 */  lui     $a0, %hi(D_80B2D014)       ## $a0 = 80B30000
/* 003F8 80B2A5F8 2484D014 */  addiu   $a0, $a0, %lo(D_80B2D014)  ## $a0 = 80B2D014
/* 003FC 80B2A5FC 05010004 */  bgez    $t0, .L80B2A610            
/* 00400 80B2A600 3C0580B3 */  lui     $a1, %hi(D_80B2D030)       ## $a1 = 80B30000
/* 00404 80B2A604 24A5D030 */  addiu   $a1, $a1, %lo(D_80B2D030)  ## $a1 = 80B2D030
/* 00408 80B2A608 0C0007FC */  jal     __assert
              
/* 0040C 80B2A60C 24060243 */  addiu   $a2, $zero, 0x0243         ## $a2 = 00000243
.L80B2A610:
/* 00410 80B2A610 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00414 80B2A614 0C026062 */  jal     Object_IsLoaded
              
/* 00418 80B2A618 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 0041C 80B2A61C 10400005 */  beq     $v0, $zero, .L80B2A634     
/* 00420 80B2A620 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00424 80B2A624 0C026062 */  jal     Object_IsLoaded
              
/* 00428 80B2A628 820501DC */  lb      $a1, 0x01DC($s0)           ## 000001DC
/* 0042C 80B2A62C 14400006 */  bne     $v0, $zero, .L80B2A648     
/* 00430 80B2A630 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
.L80B2A634:
/* 00434 80B2A634 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
/* 00438 80B2A638 2401FFBF */  addiu   $at, $zero, 0xFFBF         ## $at = FFFFFFBF
/* 0043C 80B2A63C 01215024 */  and     $t2, $t1, $at              
/* 00440 80B2A640 10000041 */  beq     $zero, $zero, .L80B2A748   
/* 00444 80B2A644 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
.L80B2A648:
/* 00448 80B2A648 A20B01E6 */  sb      $t3, 0x01E6($s0)           ## 000001E6
/* 0044C 80B2A64C 8FAC0028 */  lw      $t4, 0x0028($sp)           
/* 00450 80B2A650 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00454 80B2A654 A20C001E */  sb      $t4, 0x001E($s0)           ## 0000001E
/* 00458 80B2A658 0C00B591 */  jal     Actor_SetObjectDependency
              
/* 0045C 80B2A65C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00460 80B2A660 922D0004 */  lbu     $t5, 0x0004($s1)           ## 00000004
/* 00464 80B2A664 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00468 80B2A668 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 0046C 80B2A66C 448D2000 */  mtc1    $t5, $f4                   ## $f4 = 0.00
/* 00470 80B2A670 05A10004 */  bgez    $t5, .L80B2A684            
/* 00474 80B2A674 468021A0 */  cvt.s.w $f6, $f4                   
/* 00478 80B2A678 44814000 */  mtc1    $at, $f8                   ## $f8 = 4294967296.00
/* 0047C 80B2A67C 00000000 */  nop
/* 00480 80B2A680 46083180 */  add.s   $f6, $f6, $f8              
.L80B2A684:
/* 00484 80B2A684 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00488 80B2A688 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 0048C 80B2A68C 00000000 */  nop
/* 00490 80B2A690 460A3403 */  div.s   $f16, $f6, $f10            
/* 00494 80B2A694 44058000 */  mfc1    $a1, $f16                  
/* 00498 80B2A698 0C00B58B */  jal     Actor_SetScale
              
/* 0049C 80B2A69C 00000000 */  nop
/* 004A0 80B2A6A0 822E0005 */  lb      $t6, 0x0005($s1)           ## 00000005
/* 004A4 80B2A6A4 92380006 */  lbu     $t8, 0x0006($s1)           ## 00000006
/* 004A8 80B2A6A8 92280007 */  lbu     $t0, 0x0007($s1)           ## 00000007
/* 004AC 80B2A6AC 000E7880 */  sll     $t7, $t6,  2               
/* 004B0 80B2A6B0 01EE7823 */  subu    $t7, $t7, $t6              
/* 004B4 80B2A6B4 000F78C0 */  sll     $t7, $t7,  3               
/* 004B8 80B2A6B8 01EE7821 */  addu    $t7, $t7, $t6              
/* 004BC 80B2A6BC 000F7880 */  sll     $t7, $t7,  2               
/* 004C0 80B2A6C0 448F9000 */  mtc1    $t7, $f18                  ## $f18 = 0.00
/* 004C4 80B2A6C4 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 004C8 80B2A6C8 3C0680B3 */  lui     $a2, %hi(D_80B2CFC0)       ## $a2 = 80B30000
/* 004CC 80B2A6CC 468094A0 */  cvt.s.w $f18, $f18                 
/* 004D0 80B2A6D0 0018C880 */  sll     $t9, $t8,  2               
/* 004D4 80B2A6D4 00D93021 */  addu    $a2, $a2, $t9              
/* 004D8 80B2A6D8 8CC6CFC0 */  lw      $a2, %lo(D_80B2CFC0)($a2)  
/* 004DC 80B2A6DC 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 004E0 80B2A6E0 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 004E4 80B2A6E4 44059000 */  mfc1    $a1, $f18                  
/* 004E8 80B2A6E8 05010004 */  bgez    $t0, .L80B2A6FC            
/* 004EC 80B2A6EC 46802120 */  cvt.s.w $f4, $f4                   
/* 004F0 80B2A6F0 44814000 */  mtc1    $at, $f8                   ## $f8 = 4294967296.00
/* 004F4 80B2A6F4 00000000 */  nop
/* 004F8 80B2A6F8 46082100 */  add.s   $f4, $f4, $f8              
.L80B2A6FC:
/* 004FC 80B2A6FC 44072000 */  mfc1    $a3, $f4                   
/* 00500 80B2A700 0C00AC78 */  jal     ActorShape_Init
              
/* 00504 80B2A704 00000000 */  nop
/* 00508 80B2A708 92290008 */  lbu     $t1, 0x0008($s1)           ## 00000008
/* 0050C 80B2A70C 3C1980B3 */  lui     $t9, %hi(D_80B2CFB0)       ## $t9 = 80B30000
/* 00510 80B2A710 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00514 80B2A714 312A00FF */  andi    $t2, $t1, 0x00FF           ## $t2 = 00000000
/* 00518 80B2A718 000A5880 */  sll     $t3, $t2,  2               
/* 0051C 80B2A71C 032BC821 */  addu    $t9, $t9, $t3              
/* 00520 80B2A720 A20901DD */  sb      $t1, 0x01DD($s0)           ## 000001DD
/* 00524 80B2A724 8F39CFB0 */  lw      $t9, %lo(D_80B2CFB0)($t9)  
/* 00528 80B2A728 8E270010 */  lw      $a3, 0x0010($s1)           ## 00000010
/* 0052C 80B2A72C 8E26000C */  lw      $a2, 0x000C($s1)           ## 0000000C
/* 00530 80B2A730 0320F809 */  jalr    $ra, $t9                   
/* 00534 80B2A734 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00538 80B2A738 3C0580B3 */  lui     $a1, %hi(func_80B2A75C)    ## $a1 = 80B30000
/* 0053C 80B2A73C 24A5A75C */  addiu   $a1, $a1, %lo(func_80B2A75C) ## $a1 = 80B2A75C
/* 00540 80B2A740 0C2CA880 */  jal     func_80B2A200              
/* 00544 80B2A744 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B2A748:
/* 00548 80B2A748 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0054C 80B2A74C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00550 80B2A750 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00554 80B2A754 03E00008 */  jr      $ra                        
/* 00558 80B2A758 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
