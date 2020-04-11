.rdata
glabel D_80B8AFC0
    .asciz "../z_magic_fire.c"
    .balign 4

glabel D_80B8AFD4
    .asciz "../z_magic_fire.c"
    .balign 4

glabel D_80B8AFE8
    .asciz "../z_magic_fire.c"
    .balign 4

.late_rodata
glabel D_80B8B010
    .float 0.15



.text
glabel MagicFire_Draw
/* 00504 80B89274 27BDFF40 */  addiu   $sp, $sp, 0xFF40           ## $sp = FFFFFF40
/* 00508 80B89278 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 0050C 80B8927C AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00510 80B89280 AFA400C0 */  sw      $a0, 0x00C0($sp)           
/* 00514 80B89284 AFA500C4 */  sw      $a1, 0x00C4($sp)           
/* 00518 80B89288 01E57821 */  addu    $t7, $t7, $a1              
/* 0051C 80B8928C 8DEF1DE4 */  lw      $t7, 0x1DE4($t7)           ## 00011DE4
/* 00520 80B89290 3C0680B9 */  lui     $a2, %hi(D_80B8AFC0)       ## $a2 = 80B90000
/* 00524 80B89294 24C6AFC0 */  addiu   $a2, $a2, %lo(D_80B8AFC0)  ## $a2 = 80B8AFC0
/* 00528 80B89298 AFAF00B4 */  sw      $t7, 0x00B4($sp)           
/* 0052C 80B8929C 849901A4 */  lh      $t9, 0x01A4($a0)           ## 000001A4
/* 00530 80B892A0 27A40094 */  addiu   $a0, $sp, 0x0094           ## $a0 = FFFFFFD4
/* 00534 80B892A4 5B20018A */  blezl   $t9, .L80B898D0            
/* 00538 80B892A8 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 0053C 80B892AC 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00540 80B892B0 240702AA */  addiu   $a3, $zero, 0x02AA         ## $a3 = 000002AA
/* 00544 80B892B4 0C031AB1 */  jal     Graph_OpenDisps              
/* 00548 80B892B8 AFA500A4 */  sw      $a1, 0x00A4($sp)           
/* 0054C 80B892BC 8FA300A4 */  lw      $v1, 0x00A4($sp)           
/* 00550 80B892C0 0C024DF0 */  jal     func_800937C0              
/* 00554 80B892C4 8C6402D0 */  lw      $a0, 0x02D0($v1)           ## 000002D0
/* 00558 80B892C8 8FA300A4 */  lw      $v1, 0x00A4($sp)           
/* 0055C 80B892CC 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 00560 80B892D0 3C0DFA00 */  lui     $t5, 0xFA00                ## $t5 = FA000000
/* 00564 80B892D4 AC6202D0 */  sw      $v0, 0x02D0($v1)           ## 000002D0
/* 00568 80B892D8 AC6C02D0 */  sw      $t4, 0x02D0($v1)           ## 000002D0
/* 0056C 80B892DC AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 00570 80B892E0 8FAF00C0 */  lw      $t7, 0x00C0($sp)           
/* 00574 80B892E4 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00578 80B892E8 44812000 */  mtc1    $at, $f4                   ## $f4 = 60.00
/* 0057C 80B892EC C5E0019C */  lwc1    $f0, 0x019C($t7)           ## 0000019C
/* 00580 80B892F0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00584 80B892F4 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 00588 80B892F8 46040182 */  mul.s   $f6, $f0, $f4              
/* 0058C 80B892FC 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00590 80B89300 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00594 80B89304 46005402 */  mul.s   $f16, $f10, $f0            
/* 00598 80B89308 4600320D */  trunc.w.s $f8, $f6                   
/* 0059C 80B8930C 4600848D */  trunc.w.s $f18, $f16                 
/* 005A0 80B89310 440C4000 */  mfc1    $t4, $f8                   
/* 005A4 80B89314 44814000 */  mtc1    $at, $f8                   ## $f8 = 120.00
/* 005A8 80B89318 4600218D */  trunc.w.s $f6, $f4                   
/* 005AC 80B8931C 44199000 */  mfc1    $t9, $f18                  
/* 005B0 80B89320 46004282 */  mul.s   $f10, $f8, $f0             
/* 005B4 80B89324 000C6E00 */  sll     $t5, $t4, 24               
/* 005B8 80B89328 332E00FF */  andi    $t6, $t9, 0x00FF           ## $t6 = 00000000
/* 005BC 80B8932C 000E6400 */  sll     $t4, $t6, 16               
/* 005C0 80B89330 440E3000 */  mfc1    $t6, $f6                   
/* 005C4 80B89334 01AC7825 */  or      $t7, $t5, $t4              ## $t7 = FA000008
/* 005C8 80B89338 4600540D */  trunc.w.s $f16, $f10                 
/* 005CC 80B8933C 31CD00FF */  andi    $t5, $t6, 0x00FF           ## $t5 = 00000000
/* 005D0 80B89340 000D6200 */  sll     $t4, $t5,  8               
/* 005D4 80B89344 01ECC025 */  or      $t8, $t7, $t4              ## $t8 = FA000008
/* 005D8 80B89348 440D8000 */  mfc1    $t5, $f16                  
/* 005DC 80B8934C 3C0EE300 */  lui     $t6, 0xE300                ## $t6 = E3000000
/* 005E0 80B89350 35CE1A01 */  ori     $t6, $t6, 0x1A01           ## $t6 = E3001A01
/* 005E4 80B89354 31AF00FF */  andi    $t7, $t5, 0x00FF           ## $t7 = 00000000
/* 005E8 80B89358 030F6025 */  or      $t4, $t8, $t7              ## $t4 = FA000008
/* 005EC 80B8935C AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 005F0 80B89360 8C6202D0 */  lw      $v0, 0x02D0($v1)           ## 000002D0
/* 005F4 80B89364 240D0030 */  addiu   $t5, $zero, 0x0030         ## $t5 = 00000030
/* 005F8 80B89368 3C0FE300 */  lui     $t7, 0xE300                ## $t7 = E3000000
/* 005FC 80B8936C 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 00600 80B89370 AC7902D0 */  sw      $t9, 0x02D0($v1)           ## 000002D0
/* 00604 80B89374 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 00608 80B89378 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 0060C 80B8937C 8C6202D0 */  lw      $v0, 0x02D0($v1)           ## 000002D0
/* 00610 80B89380 35EF1801 */  ori     $t7, $t7, 0x1801           ## $t7 = E3001801
/* 00614 80B89384 240C00C0 */  addiu   $t4, $zero, 0x00C0         ## $t4 = 000000C0
/* 00618 80B89388 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 0061C 80B8938C AC7802D0 */  sw      $t8, 0x02D0($v1)           ## 000002D0
/* 00620 80B89390 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 00624 80B89394 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 00628 80B89398 8C6202D0 */  lw      $v0, 0x02D0($v1)           ## 000002D0
/* 0062C 80B8939C 3C0EF64F */  lui     $t6, 0xF64F                ## $t6 = F64F0000
/* 00630 80B893A0 35CEC3BC */  ori     $t6, $t6, 0xC3BC           ## $t6 = F64FC3BC
/* 00634 80B893A4 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 00638 80B893A8 AC7902D0 */  sw      $t9, 0x02D0($v1)           ## 000002D0
/* 0063C 80B893AC AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 00640 80B893B0 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 00644 80B893B4 8FAD00C4 */  lw      $t5, 0x00C4($sp)           
/* 00648 80B893B8 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000030
/* 0064C 80B893BC 0C024F61 */  jal     func_80093D84              
/* 00650 80B893C0 AFA300A4 */  sw      $v1, 0x00A4($sp)           
/* 00654 80B893C4 8FA300A4 */  lw      $v1, 0x00A4($sp)           
/* 00658 80B893C8 8FA500C0 */  lw      $a1, 0x00C0($sp)           
/* 0065C 80B893CC 3C0FFA00 */  lui     $t7, 0xFA00                ## $t7 = FA000000
/* 00660 80B893D0 8C6402D0 */  lw      $a0, 0x02D0($v1)           ## 000002D0
/* 00664 80B893D4 35EF0080 */  ori     $t7, $t7, 0x0080           ## $t7 = FA000080
/* 00668 80B893D8 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 0066C 80B893DC 24980008 */  addiu   $t8, $a0, 0x0008           ## $t8 = 00000008
/* 00670 80B893E0 AC7802D0 */  sw      $t8, 0x02D0($v1)           ## 000002D0
/* 00674 80B893E4 AC8F0000 */  sw      $t7, 0x0000($a0)           ## 00000000
/* 00678 80B893E8 44810000 */  mtc1    $at, $f0                   ## $f0 = 255.00
/* 0067C 80B893EC C4B20198 */  lwc1    $f18, 0x0198($a1)          ## 00000198
/* 00680 80B893F0 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00684 80B893F4 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 00688 80B893F8 46009102 */  mul.s   $f4, $f18, $f0             
/* 0068C 80B893FC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00690 80B89400 444CF800 */  cfc1    $t4, $31
/* 00694 80B89404 44D9F800 */  ctc1    $t9, $31
/* 00698 80B89408 00000000 */  nop
/* 0069C 80B8940C 460021A4 */  cvt.w.s $f6, $f4                   
/* 006A0 80B89410 4459F800 */  cfc1    $t9, $31
/* 006A4 80B89414 00000000 */  nop
/* 006A8 80B89418 33390078 */  andi    $t9, $t9, 0x0078           ## $t9 = 00000000
/* 006AC 80B8941C 53200013 */  beql    $t9, $zero, .L80B8946C     
/* 006B0 80B89420 44193000 */  mfc1    $t9, $f6                   
/* 006B4 80B89424 44813000 */  mtc1    $at, $f6                   ## $f6 = 2147483648.00
/* 006B8 80B89428 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 006BC 80B8942C 46062181 */  sub.s   $f6, $f4, $f6              
/* 006C0 80B89430 44D9F800 */  ctc1    $t9, $31
/* 006C4 80B89434 00000000 */  nop
/* 006C8 80B89438 460031A4 */  cvt.w.s $f6, $f6                   
/* 006CC 80B8943C 4459F800 */  cfc1    $t9, $31
/* 006D0 80B89440 00000000 */  nop
/* 006D4 80B89444 33390078 */  andi    $t9, $t9, 0x0078           ## $t9 = 00000000
/* 006D8 80B89448 17200005 */  bne     $t9, $zero, .L80B89460     
/* 006DC 80B8944C 00000000 */  nop
/* 006E0 80B89450 44193000 */  mfc1    $t9, $f6                   
/* 006E4 80B89454 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 006E8 80B89458 10000007 */  beq     $zero, $zero, .L80B89478   
/* 006EC 80B8945C 0321C825 */  or      $t9, $t9, $at              ## $t9 = 80000000
.L80B89460:
/* 006F0 80B89460 10000005 */  beq     $zero, $zero, .L80B89478   
/* 006F4 80B89464 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 006F8 80B89468 44193000 */  mfc1    $t9, $f6                   
.L80B8946C:
/* 006FC 80B8946C 00000000 */  nop
/* 00700 80B89470 0720FFFB */  bltz    $t9, .L80B89460            
/* 00704 80B89474 00000000 */  nop
.L80B89478:
/* 00708 80B89478 03207025 */  or      $t6, $t9, $zero            ## $t6 = FFFFFFFF
/* 0070C 80B8947C 31CD00FF */  andi    $t5, $t6, 0x00FF           ## $t5 = 000000FF
/* 00710 80B89480 3C01FFC8 */  lui     $at, 0xFFC8                ## $at = FFC80000
/* 00714 80B89484 01A1C025 */  or      $t8, $t5, $at              ## $t8 = FFC800FF
/* 00718 80B89488 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 0071C 80B8948C 8C6402D0 */  lw      $a0, 0x02D0($v1)           ## 000002D0
/* 00720 80B89490 44CCF800 */  ctc1    $t4, $31
/* 00724 80B89494 3C0CFB00 */  lui     $t4, 0xFB00                ## $t4 = FB000000
/* 00728 80B89498 248F0008 */  addiu   $t7, $a0, 0x0008           ## $t7 = 00000008
/* 0072C 80B8949C AC6F02D0 */  sw      $t7, 0x02D0($v1)           ## 000002D0
/* 00730 80B894A0 AC8C0000 */  sw      $t4, 0x0000($a0)           ## 00000000
/* 00734 80B894A4 C4A80198 */  lwc1    $f8, 0x0198($a1)           ## 00000198
/* 00738 80B894A8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0073C 80B894AC 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 00740 80B894B0 46004282 */  mul.s   $f10, $f8, $f0             
/* 00744 80B894B4 4459F800 */  cfc1    $t9, $31
/* 00748 80B894B8 44CEF800 */  ctc1    $t6, $31
/* 0074C 80B894BC 00000000 */  nop
/* 00750 80B894C0 46005424 */  cvt.w.s $f16, $f10                 
/* 00754 80B894C4 444EF800 */  cfc1    $t6, $31
/* 00758 80B894C8 00000000 */  nop
/* 0075C 80B894CC 31CE0078 */  andi    $t6, $t6, 0x0078           ## $t6 = 00000000
/* 00760 80B894D0 51C00013 */  beql    $t6, $zero, .L80B89520     
/* 00764 80B894D4 440E8000 */  mfc1    $t6, $f16                  
/* 00768 80B894D8 44818000 */  mtc1    $at, $f16                  ## $f16 = 2147483648.00
/* 0076C 80B894DC 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00770 80B894E0 46105401 */  sub.s   $f16, $f10, $f16           
/* 00774 80B894E4 44CEF800 */  ctc1    $t6, $31
/* 00778 80B894E8 00000000 */  nop
/* 0077C 80B894EC 46008424 */  cvt.w.s $f16, $f16                 
/* 00780 80B894F0 444EF800 */  cfc1    $t6, $31
/* 00784 80B894F4 00000000 */  nop
/* 00788 80B894F8 31CE0078 */  andi    $t6, $t6, 0x0078           ## $t6 = 00000000
/* 0078C 80B894FC 15C00005 */  bne     $t6, $zero, .L80B89514     
/* 00790 80B89500 00000000 */  nop
/* 00794 80B89504 440E8000 */  mfc1    $t6, $f16                  
/* 00798 80B89508 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0079C 80B8950C 10000007 */  beq     $zero, $zero, .L80B8952C   
/* 007A0 80B89510 01C17025 */  or      $t6, $t6, $at              ## $t6 = 80000000
.L80B89514:
/* 007A4 80B89514 10000005 */  beq     $zero, $zero, .L80B8952C   
/* 007A8 80B89518 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 007AC 80B8951C 440E8000 */  mfc1    $t6, $f16                  
.L80B89520:
/* 007B0 80B89520 00000000 */  nop
/* 007B4 80B89524 05C0FFFB */  bltz    $t6, .L80B89514            
/* 007B8 80B89528 00000000 */  nop
.L80B8952C:
/* 007BC 80B8952C 31D800FF */  andi    $t8, $t6, 0x00FF           ## $t8 = 000000FF
/* 007C0 80B89530 3C01FF00 */  lui     $at, 0xFF00                ## $at = FF000000
/* 007C4 80B89534 03017825 */  or      $t7, $t8, $at              ## $t7 = FF0000FF
/* 007C8 80B89538 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 007CC 80B8953C 3C0180B9 */  lui     $at, %hi(D_80B8B010)       ## $at = 80B90000
/* 007D0 80B89540 C42CB010 */  lwc1    $f12, %lo(D_80B8B010)($at) 
/* 007D4 80B89544 44D9F800 */  ctc1    $t9, $31
/* 007D8 80B89548 AFA300A4 */  sw      $v1, 0x00A4($sp)           
/* 007DC 80B8954C 44066000 */  mfc1    $a2, $f12                  
/* 007E0 80B89550 0C0342A3 */  jal     Matrix_Scale              
/* 007E4 80B89554 46006386 */  mov.s   $f14, $f12                 
/* 007E8 80B89558 8FA300A4 */  lw      $v1, 0x00A4($sp)           
/* 007EC 80B8955C 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 007F0 80B89560 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 007F4 80B89564 8C6202D0 */  lw      $v0, 0x02D0($v1)           ## 000002D0
/* 007F8 80B89568 3C0580B9 */  lui     $a1, %hi(D_80B8AFD4)       ## $a1 = 80B90000
/* 007FC 80B8956C 24A5AFD4 */  addiu   $a1, $a1, %lo(D_80B8AFD4)  ## $a1 = 80B8AFD4
/* 00800 80B89570 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 00804 80B89574 AC6C02D0 */  sw      $t4, 0x02D0($v1)           ## 000002D0
/* 00808 80B89578 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 0080C 80B8957C 8FAE00C4 */  lw      $t6, 0x00C4($sp)           
/* 00810 80B89580 240602CB */  addiu   $a2, $zero, 0x02CB         ## $a2 = 000002CB
/* 00814 80B89584 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 00818 80B89588 AFA300A4 */  sw      $v1, 0x00A4($sp)           
/* 0081C 80B8958C 0C0346A2 */  jal     Matrix_NewMtx              
/* 00820 80B89590 AFA20078 */  sw      $v0, 0x0078($sp)           
/* 00824 80B89594 8FA70078 */  lw      $a3, 0x0078($sp)           
/* 00828 80B89598 8FA300A4 */  lw      $v1, 0x00A4($sp)           
/* 0082C 80B8959C 3C05E700 */  lui     $a1, 0xE700                ## $a1 = E7000000
/* 00830 80B895A0 ACE20004 */  sw      $v0, 0x0004($a3)           ## 00000004
/* 00834 80B895A4 8C6202D0 */  lw      $v0, 0x02D0($v1)           ## 000002D0
/* 00838 80B895A8 3C0FD700 */  lui     $t7, 0xD700                ## $t7 = D7000000
/* 0083C 80B895AC 35EF0002 */  ori     $t7, $t7, 0x0002           ## $t7 = D7000002
/* 00840 80B895B0 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 00844 80B895B4 AC6D02D0 */  sw      $t5, 0x02D0($v1)           ## 000002D0
/* 00848 80B895B8 AC450000 */  sw      $a1, 0x0000($v0)           ## 00000000
/* 0084C 80B895BC AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 00850 80B895C0 8C6202D0 */  lw      $v0, 0x02D0($v1)           ## 000002D0
/* 00854 80B895C4 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 00858 80B895C8 3C0EE300 */  lui     $t6, 0xE300                ## $t6 = E3000000
/* 0085C 80B895CC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00860 80B895D0 AC7802D0 */  sw      $t8, 0x02D0($v1)           ## 000002D0
/* 00864 80B895D4 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 00868 80B895D8 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 0086C 80B895DC 8C6202D0 */  lw      $v0, 0x02D0($v1)           ## 000002D0
/* 00870 80B895E0 35CE1001 */  ori     $t6, $t6, 0x1001           ## $t6 = E3001001
/* 00874 80B895E4 3C0F80B9 */  lui     $t7, %hi(D_80B89900)       ## $t7 = 80B90000
/* 00878 80B895E8 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 0087C 80B895EC AC7902D0 */  sw      $t9, 0x02D0($v1)           ## 000002D0
/* 00880 80B895F0 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 00884 80B895F4 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 00888 80B895F8 8C6202D0 */  lw      $v0, 0x02D0($v1)           ## 000002D0
/* 0088C 80B895FC 25EF9900 */  addiu   $t7, $t7, %lo(D_80B89900)  ## $t7 = 80B89900
/* 00890 80B89600 3C18FD90 */  lui     $t8, 0xFD90                ## $t8 = FD900000
/* 00894 80B89604 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 00898 80B89608 AC6D02D0 */  sw      $t5, 0x02D0($v1)           ## 000002D0
/* 0089C 80B8960C AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 008A0 80B89610 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 008A4 80B89614 8C6202D0 */  lw      $v0, 0x02D0($v1)           ## 000002D0
/* 008A8 80B89618 3C0E0701 */  lui     $t6, 0x0701                ## $t6 = 07010000
/* 008AC 80B8961C 35CE806F */  ori     $t6, $t6, 0x806F           ## $t6 = 0701806F
/* 008B0 80B89620 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 008B4 80B89624 AC6C02D0 */  sw      $t4, 0x02D0($v1)           ## 000002D0
/* 008B8 80B89628 3C19F590 */  lui     $t9, 0xF590                ## $t9 = F5900000
/* 008BC 80B8962C AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 008C0 80B89630 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 008C4 80B89634 8C6202D0 */  lw      $v0, 0x02D0($v1)           ## 000002D0
/* 008C8 80B89638 3C18E600 */  lui     $t8, 0xE600                ## $t8 = E6000000
/* 008CC 80B8963C 3C19077F */  lui     $t9, 0x077F                ## $t9 = 077F0000
/* 008D0 80B89640 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 008D4 80B89644 AC6D02D0 */  sw      $t5, 0x02D0($v1)           ## 000002D0
/* 008D8 80B89648 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 008DC 80B8964C AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 008E0 80B89650 8C6202D0 */  lw      $v0, 0x02D0($v1)           ## 000002D0
/* 008E4 80B89654 3739F100 */  ori     $t9, $t9, 0xF100           ## $t9 = 077FF100
/* 008E8 80B89658 3C0CF300 */  lui     $t4, 0xF300                ## $t4 = F3000000
/* 008EC 80B8965C 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 008F0 80B89660 AC6F02D0 */  sw      $t7, 0x02D0($v1)           ## 000002D0
/* 008F4 80B89664 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 008F8 80B89668 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 008FC 80B8966C 8C6202D0 */  lw      $v0, 0x02D0($v1)           ## 000002D0
/* 00900 80B89670 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 00904 80B89674 3718806F */  ori     $t8, $t8, 0x806F           ## $t8 = 0001806F
/* 00908 80B89678 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 0090C 80B8967C AC6E02D0 */  sw      $t6, 0x02D0($v1)           ## 000002D0
/* 00910 80B89680 AC450000 */  sw      $a1, 0x0000($v0)           ## 00000000
/* 00914 80B89684 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 00918 80B89688 8C6202D0 */  lw      $v0, 0x02D0($v1)           ## 000002D0
/* 0091C 80B8968C 3C05F588 */  lui     $a1, 0xF588                ## $a1 = F5880000
/* 00920 80B89690 34A51000 */  ori     $a1, $a1, 0x1000           ## $a1 = F5881000
/* 00924 80B89694 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 00928 80B89698 AC6D02D0 */  sw      $t5, 0x02D0($v1)           ## 000002D0
/* 0092C 80B8969C AC450000 */  sw      $a1, 0x0000($v0)           ## 00000000
/* 00930 80B896A0 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 00934 80B896A4 8C6202D0 */  lw      $v0, 0x02D0($v1)           ## 000002D0
/* 00938 80B896A8 3C0C000F */  lui     $t4, 0x000F                ## $t4 = 000F0000
/* 0093C 80B896AC 358CC0FC */  ori     $t4, $t4, 0xC0FC           ## $t4 = 000FC0FC
/* 00940 80B896B0 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00944 80B896B4 AC6F02D0 */  sw      $t7, 0x02D0($v1)           ## 000002D0
/* 00948 80B896B8 3C06F200 */  lui     $a2, 0xF200                ## $a2 = F2000000
/* 0094C 80B896BC AC460000 */  sw      $a2, 0x0000($v0)           ## 00000000
/* 00950 80B896C0 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 00954 80B896C4 8C6202D0 */  lw      $v0, 0x02D0($v1)           ## 000002D0
/* 00958 80B896C8 3C0E0101 */  lui     $t6, 0x0101                ## $t6 = 01010000
/* 0095C 80B896CC 35CEB86E */  ori     $t6, $t6, 0xB86E           ## $t6 = 0101B86E
/* 00960 80B896D0 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 00964 80B896D4 AC7902D0 */  sw      $t9, 0x02D0($v1)           ## 000002D0
/* 00968 80B896D8 AC450000 */  sw      $a1, 0x0000($v0)           ## 00000000
/* 0096C 80B896DC AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 00970 80B896E0 8C6202D0 */  lw      $v0, 0x02D0($v1)           ## 000002D0
/* 00974 80B896E4 3C18010F */  lui     $t8, 0x010F                ## $t8 = 010F0000
/* 00978 80B896E8 3718C0FC */  ori     $t8, $t8, 0xC0FC           ## $t8 = 010FC0FC
/* 0097C 80B896EC 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 00980 80B896F0 AC6D02D0 */  sw      $t5, 0x02D0($v1)           ## 000002D0
/* 00984 80B896F4 AC460000 */  sw      $a2, 0x0000($v0)           ## 00000000
/* 00988 80B896F8 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 0098C 80B896FC 8C6202D0 */  lw      $v0, 0x02D0($v1)           ## 000002D0
/* 00990 80B89700 3C0C80B9 */  lui     $t4, %hi(D_80B8ADC0)       ## $t4 = 80B90000
/* 00994 80B89704 258CADC0 */  addiu   $t4, $t4, %lo(D_80B8ADC0)  ## $t4 = 80B8ADC0
/* 00998 80B89708 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 0099C 80B8970C AC6F02D0 */  sw      $t7, 0x02D0($v1)           ## 000002D0
/* 009A0 80B89710 3C0ADE00 */  lui     $t2, 0xDE00                ## $t2 = DE000000
/* 009A4 80B89714 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 009A8 80B89718 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 009AC 80B8971C 8C6202D0 */  lw      $v0, 0x02D0($v1)           ## 000002D0
/* 009B0 80B89720 8FAB00B4 */  lw      $t3, 0x00B4($sp)           
/* 009B4 80B89724 240F01FF */  addiu   $t7, $zero, 0x01FF         ## $t7 = 000001FF
/* 009B8 80B89728 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 009BC 80B8972C AC7902D0 */  sw      $t9, 0x02D0($v1)           ## 000002D0
/* 009C0 80B89730 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 009C4 80B89734 8FAE00C4 */  lw      $t6, 0x00C4($sp)           
/* 009C8 80B89738 000B6880 */  sll     $t5, $t3,  2               
/* 009CC 80B8973C 01AB6821 */  addu    $t5, $t5, $t3              
/* 009D0 80B89740 8DC40000 */  lw      $a0, 0x0000($t6)           ## 0101B86E
/* 009D4 80B89744 31B801FF */  andi    $t8, $t5, 0x01FF           ## $t8 = 00000008
/* 009D8 80B89748 01F83823 */  subu    $a3, $t7, $t8              
/* 009DC 80B8974C 000B7880 */  sll     $t7, $t3,  2               
/* 009E0 80B89750 240C0040 */  addiu   $t4, $zero, 0x0040         ## $t4 = 00000040
/* 009E4 80B89754 01EB7821 */  addu    $t7, $t7, $t3              
/* 009E8 80B89758 000B4040 */  sll     $t0, $t3,  1               
/* 009EC 80B8975C 310D00FF */  andi    $t5, $t0, 0x00FF           ## $t5 = 00000000
/* 009F0 80B89760 000F7880 */  sll     $t7, $t7,  2               
/* 009F4 80B89764 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 009F8 80B89768 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 009FC 80B8976C 24190040 */  addiu   $t9, $zero, 0x0040         ## $t9 = 00000040
/* 00A00 80B89770 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00A04 80B89774 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 00A08 80B89778 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 00A0C 80B8977C 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 000000FF
/* 00A10 80B89780 AFAD001C */  sw      $t5, 0x001C($sp)           
/* 00A14 80B89784 240D0020 */  addiu   $t5, $zero, 0x0020         ## $t5 = 00000020
/* 00A18 80B89788 0198C823 */  subu    $t9, $t4, $t8              
/* 00A1C 80B8978C 240E0020 */  addiu   $t6, $zero, 0x0020         ## $t6 = 00000020
/* 00A20 80B89790 AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 00A24 80B89794 AFB90020 */  sw      $t9, 0x0020($sp)           
/* 00A28 80B89798 AFAD0028 */  sw      $t5, 0x0028($sp)           
/* 00A2C 80B8979C 310601FF */  andi    $a2, $t0, 0x01FF           ## $a2 = 00000000
/* 00A30 80B897A0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00A34 80B897A4 AFA300A4 */  sw      $v1, 0x00A4($sp)           
/* 00A38 80B897A8 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 00A3C 80B897AC AFA20040 */  sw      $v0, 0x0040($sp)           
/* 00A40 80B897B0 8FA90040 */  lw      $t1, 0x0040($sp)           
/* 00A44 80B897B4 8FA300A4 */  lw      $v1, 0x00A4($sp)           
/* 00A48 80B897B8 3C1880B9 */  lui     $t8, %hi(D_80B8ADE8)       ## $t8 = 80B90000
/* 00A4C 80B897BC AD220004 */  sw      $v0, 0x0004($t1)           ## 00000004
/* 00A50 80B897C0 8C6202D0 */  lw      $v0, 0x02D0($v1)           ## 000002D0
/* 00A54 80B897C4 2718ADE8 */  addiu   $t8, $t8, %lo(D_80B8ADE8)  ## $t8 = 80B8ADE8
/* 00A58 80B897C8 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 00A5C 80B897CC 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00A60 80B897D0 AC6F02D0 */  sw      $t7, 0x02D0($v1)           ## 000002D0
/* 00A64 80B897D4 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 00A68 80B897D8 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00A6C 80B897DC 8FB900C4 */  lw      $t9, 0x00C4($sp)           
/* 00A70 80B897E0 3C0680B9 */  lui     $a2, %hi(D_80B8AFE8)       ## $a2 = 80B90000
/* 00A74 80B897E4 24C6AFE8 */  addiu   $a2, $a2, %lo(D_80B8AFE8)  ## $a2 = 80B8AFE8
/* 00A78 80B897E8 27A40094 */  addiu   $a0, $sp, 0x0094           ## $a0 = FFFFFFD4
/* 00A7C 80B897EC 240702EE */  addiu   $a3, $zero, 0x02EE         ## $a3 = 000002EE
/* 00A80 80B897F0 0C031AD5 */  jal     Graph_CloseDisps              
/* 00A84 80B897F4 8F250000 */  lw      $a1, 0x0000($t9)           ## 00000000
/* 00A88 80B897F8 8FAE00C0 */  lw      $t6, 0x00C0($sp)           
/* 00A8C 80B897FC 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 00A90 80B89800 44812000 */  mtc1    $at, $f4                   ## $f4 = 255.00
/* 00A94 80B89804 C5D20198 */  lwc1    $f18, 0x0198($t6)          ## 00000198
/* 00A98 80B89808 3C0280B9 */  lui     $v0, %hi(D_80B8AF80)       ## $v0 = 80B90000
/* 00A9C 80B8980C 3C0580B9 */  lui     $a1, %hi(D_80B8AFA4)       ## $a1 = 80B90000
/* 00AA0 80B89810 46049182 */  mul.s   $f6, $f18, $f4             
/* 00AA4 80B89814 3C0480B9 */  lui     $a0, %hi(D_80B8A900)       ## $a0 = 80B90000
/* 00AA8 80B89818 2484A900 */  addiu   $a0, $a0, %lo(D_80B8A900)  ## $a0 = 80B8A900
/* 00AAC 80B8981C 24A5AFA4 */  addiu   $a1, $a1, %lo(D_80B8AFA4)  ## $a1 = 80B8AFA4
/* 00AB0 80B89820 2442AF80 */  addiu   $v0, $v0, %lo(D_80B8AF80)  ## $v0 = 80B8AF80
/* 00AB4 80B89824 4600320D */  trunc.w.s $f8, $f6                   
/* 00AB8 80B89828 44034000 */  mfc1    $v1, $f8                   
/* 00ABC 80B8982C 00000000 */  nop
/* 00AC0 80B89830 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 00000000
.L80B89834:
/* 00AC4 80B89834 904F0000 */  lbu     $t7, 0x0000($v0)           ## 80B8AF80
/* 00AC8 80B89838 24420001 */  addiu   $v0, $v0, 0x0001           ## $v0 = 80B8AF81
/* 00ACC 80B8983C 0045082B */  sltu    $at, $v0, $a1              
/* 00AD0 80B89840 000F6100 */  sll     $t4, $t7,  4               
/* 00AD4 80B89844 008CC021 */  addu    $t8, $a0, $t4              
/* 00AD8 80B89848 1420FFFA */  bne     $at, $zero, .L80B89834     
/* 00ADC 80B8984C A303000F */  sb      $v1, 0x000F($t8)           ## 0000000F
/* 00AE0 80B89850 8FB900C0 */  lw      $t9, 0x00C0($sp)           
/* 00AE4 80B89854 3C014298 */  lui     $at, 0x4298                ## $at = 42980000
/* 00AE8 80B89858 44818000 */  mtc1    $at, $f16                  ## $f16 = 76.00
/* 00AEC 80B8985C C72A0198 */  lwc1    $f10, 0x0198($t9)          ## 00000198
/* 00AF0 80B89860 3C0280B9 */  lui     $v0, %hi(D_80B8AFA4)       ## $v0 = 80B90000
/* 00AF4 80B89864 3C0580B9 */  lui     $a1, %hi(D_80B8AFBC)       ## $a1 = 80B90000
/* 00AF8 80B89868 46105482 */  mul.s   $f18, $f10, $f16           
/* 00AFC 80B8986C 24A5AFBC */  addiu   $a1, $a1, %lo(D_80B8AFBC)  ## $a1 = 80B8AFBC
/* 00B00 80B89870 2442AFA4 */  addiu   $v0, $v0, %lo(D_80B8AFA4)  ## $v0 = 80B8AFA4
/* 00B04 80B89874 4600910D */  trunc.w.s $f4, $f18                  
/* 00B08 80B89878 44032000 */  mfc1    $v1, $f4                   
/* 00B0C 80B8987C 00000000 */  nop
/* 00B10 80B89880 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 00000000
.L80B89884:
/* 00B14 80B89884 904D0000 */  lbu     $t5, 0x0000($v0)           ## 80B8AFA4
/* 00B18 80B89888 24420004 */  addiu   $v0, $v0, 0x0004           ## $v0 = 80B8AFA8
/* 00B1C 80B8988C 000D7900 */  sll     $t7, $t5,  4               
/* 00B20 80B89890 008F6021 */  addu    $t4, $a0, $t7              
/* 00B24 80B89894 A183000F */  sb      $v1, 0x000F($t4)           ## 0000000F
/* 00B28 80B89898 9058FFFD */  lbu     $t8, -0x0003($v0)          ## 80B8AFA5
/* 00B2C 80B8989C 0018C900 */  sll     $t9, $t8,  4               
/* 00B30 80B898A0 00997021 */  addu    $t6, $a0, $t9              
/* 00B34 80B898A4 A1C3000F */  sb      $v1, 0x000F($t6)           ## 0000000F
/* 00B38 80B898A8 904DFFFE */  lbu     $t5, -0x0002($v0)          ## 80B8AFA6
/* 00B3C 80B898AC 000D7900 */  sll     $t7, $t5,  4               
/* 00B40 80B898B0 008F6021 */  addu    $t4, $a0, $t7              
/* 00B44 80B898B4 A183000F */  sb      $v1, 0x000F($t4)           ## 0000000F
/* 00B48 80B898B8 9058FFFF */  lbu     $t8, -0x0001($v0)          ## 80B8AFA7
/* 00B4C 80B898BC 0018C900 */  sll     $t9, $t8,  4               
/* 00B50 80B898C0 00997021 */  addu    $t6, $a0, $t9              
/* 00B54 80B898C4 1445FFEF */  bne     $v0, $a1, .L80B89884       
/* 00B58 80B898C8 A1C3000F */  sb      $v1, 0x000F($t6)           ## 0000000F
/* 00B5C 80B898CC 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80B898D0:
/* 00B60 80B898D0 27BD00C0 */  addiu   $sp, $sp, 0x00C0           ## $sp = 00000000
/* 00B64 80B898D4 03E00008 */  jr      $ra                        
/* 00B68 80B898D8 00000000 */  nop
/* 00B6C 80B898DC 00000000 */  nop

