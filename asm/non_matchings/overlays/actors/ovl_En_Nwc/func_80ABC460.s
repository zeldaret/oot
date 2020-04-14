.rdata
glabel D_80ABCAC0
    .asciz "../z_en_nwc.c"
    .balign 4

glabel D_80ABCAD0
    .asciz "../z_en_nwc.c"
    .balign 4

glabel D_80ABCAE0
    .asciz "../z_en_nwc.c"
    .balign 4

glabel D_80ABCAF0
    .asciz "../z_en_nwc.c"
    .balign 4

.late_rodata
glabel D_80ABCB08
    .float 0.01

glabel D_80ABCB0C
    .float 9.58738019108e-05

.text
glabel func_80ABC460
/* 00380 80ABC460 27BDFF00 */  addiu   $sp, $sp, 0xFF00           ## $sp = FFFFFF00
/* 00384 80ABC464 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 00388 80ABC468 AFBE0048 */  sw      $s8, 0x0048($sp)           
/* 0038C 80ABC46C AFB70044 */  sw      $s7, 0x0044($sp)           
/* 00390 80ABC470 AFB60040 */  sw      $s6, 0x0040($sp)           
/* 00394 80ABC474 AFB5003C */  sw      $s5, 0x003C($sp)           
/* 00398 80ABC478 AFB40038 */  sw      $s4, 0x0038($sp)           
/* 0039C 80ABC47C AFB30034 */  sw      $s3, 0x0034($sp)           
/* 003A0 80ABC480 AFB20030 */  sw      $s2, 0x0030($sp)           
/* 003A4 80ABC484 AFB1002C */  sw      $s1, 0x002C($sp)           
/* 003A8 80ABC488 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 003AC 80ABC48C F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 003B0 80ABC490 AFA40100 */  sw      $a0, 0x0100($sp)           
/* 003B4 80ABC494 AFA50104 */  sw      $a1, 0x0104($sp)           
/* 003B8 80ABC498 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 003BC 80ABC49C 3C0680AC */  lui     $a2, %hi(D_80ABCAC0)       ## $a2 = 80AC0000
/* 003C0 80ABC4A0 24C6CAC0 */  addiu   $a2, $a2, %lo(D_80ABCAC0)  ## $a2 = 80ABCAC0
/* 003C4 80ABC4A4 27A40098 */  addiu   $a0, $sp, 0x0098           ## $a0 = FFFFFF98
/* 003C8 80ABC4A8 2407013C */  addiu   $a3, $zero, 0x013C         ## $a3 = 0000013C
/* 003CC 80ABC4AC 0C031AB1 */  jal     Graph_OpenDisps              
/* 003D0 80ABC4B0 AFA500A8 */  sw      $a1, 0x00A8($sp)           
/* 003D4 80ABC4B4 0C024F20 */  jal     func_80093C80              
/* 003D8 80ABC4B8 8FA40104 */  lw      $a0, 0x0104($sp)           
/* 003DC 80ABC4BC 8FB80100 */  lw      $t8, 0x0100($sp)           
/* 003E0 80ABC4C0 8FAF00A8 */  lw      $t7, 0x00A8($sp)           
/* 003E4 80ABC4C4 3C0A0600 */  lui     $t2, 0x0600                ## $t2 = 06000000
/* 003E8 80ABC4C8 9305016C */  lbu     $a1, 0x016C($t8)           ## 0000016C
/* 003EC 80ABC4CC 8DF002D0 */  lw      $s0, 0x02D0($t7)           ## 000002D0
/* 003F0 80ABC4D0 254A0840 */  addiu   $t2, $t2, 0x0840           ## $t2 = 06000840
/* 003F4 80ABC4D4 0005C880 */  sll     $t9, $a1,  2               
/* 003F8 80ABC4D8 0325C823 */  subu    $t9, $t9, $a1              
/* 003FC 80ABC4DC 0019C8C0 */  sll     $t9, $t9,  3               
/* 00400 80ABC4E0 02001025 */  or      $v0, $s0, $zero            ## $v0 = 00000000
/* 00404 80ABC4E4 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 00408 80ABC4E8 03309021 */  addu    $s2, $t9, $s0              
/* 0040C 80ABC4EC 26520008 */  addiu   $s2, $s2, 0x0008           ## $s2 = 00000008
/* 00410 80ABC4F0 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 00414 80ABC4F4 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 00418 80ABC4F8 02401025 */  or      $v0, $s2, $zero            ## $v0 = 00000008
/* 0041C 80ABC4FC 3C0C0600 */  lui     $t4, 0x0600                ## $t4 = 06000000
/* 00420 80ABC500 00054100 */  sll     $t0, $a1,  4               
/* 00424 80ABC504 01129821 */  addu    $s3, $t0, $s2              
/* 00428 80ABC508 258C0BF0 */  addiu   $t4, $t4, 0x0BF0           ## $t4 = 06000BF0
/* 0042C 80ABC50C 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 00430 80ABC510 26730008 */  addiu   $s3, $s3, 0x0008           ## $s3 = 00000008
/* 00434 80ABC514 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000008
/* 00438 80ABC518 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 0000000C
/* 0043C 80ABC51C 02601025 */  or      $v0, $s3, $zero            ## $v0 = 00000008
/* 00440 80ABC520 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 00444 80ABC524 25CE0C88 */  addiu   $t6, $t6, 0x0C88           ## $t6 = 06000C88
/* 00448 80ABC528 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 0044C 80ABC52C AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000008
/* 00450 80ABC530 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 0000000C
/* 00454 80ABC534 8FAF0100 */  lw      $t7, 0x0100($sp)           
/* 00458 80ABC538 26520008 */  addiu   $s2, $s2, 0x0008           ## $s2 = 00000010
/* 0045C 80ABC53C 26730008 */  addiu   $s3, $s3, 0x0008           ## $s3 = 00000010
/* 00460 80ABC540 25F10170 */  addiu   $s1, $t7, 0x0170           ## $s1 = 00000170
/* 00464 80ABC544 AFB10058 */  sw      $s1, 0x0058($sp)           
/* 00468 80ABC548 91E5016C */  lbu     $a1, 0x016C($t7)           ## 0000016C
/* 0046C 80ABC54C 0000A825 */  or      $s5, $zero, $zero          ## $s5 = 00000000
/* 00470 80ABC550 3C0180AC */  lui     $at, %hi(D_80ABCB08)       ## $at = 80AC0000
/* 00474 80ABC554 18A0004E */  blez    $a1, .L80ABC690            
/* 00478 80ABC558 26100008 */  addiu   $s0, $s0, 0x0008           ## $s0 = 00000008
/* 0047C 80ABC55C 3C1EDA38 */  lui     $s8, 0xDA38                ## $s8 = DA380000
/* 00480 80ABC560 37DE0003 */  ori     $s8, $s8, 0x0003           ## $s8 = DA380003
/* 00484 80ABC564 C434CB08 */  lwc1    $f20, %lo(D_80ABCB08)($at) 
.L80ABC568:
/* 00488 80ABC568 82390000 */  lb      $t9, 0x0000($s1)           ## 00000170
/* 0048C 80ABC56C 3C140600 */  lui     $s4, 0x0600                ## $s4 = 06000000
/* 00490 80ABC570 269408B0 */  addiu   $s4, $s4, 0x08B0           ## $s4 = 060008B0
/* 00494 80ABC574 13200040 */  beq     $t9, $zero, .L80ABC678     
/* 00498 80ABC578 26270030 */  addiu   $a3, $s1, 0x0030           ## $a3 = 000001A0
/* 0049C 80ABC57C 96280036 */  lhu     $t0, 0x0036($s1)           ## 000001A6
/* 004A0 80ABC580 C62C0008 */  lwc1    $f12, 0x0008($s1)          ## 00000178
/* 004A4 80ABC584 C624000C */  lwc1    $f4, 0x000C($s1)           ## 0000017C
/* 004A8 80ABC588 44883000 */  mtc1    $t0, $f6                   ## $f6 = 0.00
/* 004AC 80ABC58C 3C160600 */  lui     $s6, 0x0600                ## $s6 = 06000000
/* 004B0 80ABC590 05010005 */  bgez    $t0, .L80ABC5A8            
/* 004B4 80ABC594 46803220 */  cvt.s.w $f8, $f6                   
/* 004B8 80ABC598 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 004BC 80ABC59C 44815000 */  mtc1    $at, $f10                  ## $f10 = 4294967296.00
/* 004C0 80ABC5A0 00000000 */  nop
/* 004C4 80ABC5A4 460A4200 */  add.s   $f8, $f8, $f10             
.L80ABC5A8:
/* 004C8 80ABC5A8 3C170600 */  lui     $s7, 0x0600                ## $s7 = 06000000
/* 004CC 80ABC5AC 26F70CE0 */  addiu   $s7, $s7, 0x0CE0           ## $s7 = 06000CE0
/* 004D0 80ABC5B0 46082380 */  add.s   $f14, $f4, $f8             
/* 004D4 80ABC5B4 8E260010 */  lw      $a2, 0x0010($s1)           ## 00000180
/* 004D8 80ABC5B8 0C0345A5 */  jal     func_800D1694              
/* 004DC 80ABC5BC 26D60C68 */  addiu   $s6, $s6, 0x0C68           ## $s6 = 06000C68
/* 004E0 80ABC5C0 4406A000 */  mfc1    $a2, $f20                  
/* 004E4 80ABC5C4 4600A306 */  mov.s   $f12, $f20                 
/* 004E8 80ABC5C8 4600A386 */  mov.s   $f14, $f20                 
/* 004EC 80ABC5CC 0C0342A3 */  jal     Matrix_Scale              
/* 004F0 80ABC5D0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 004F4 80ABC5D4 8FA90104 */  lw      $t1, 0x0104($sp)           
/* 004F8 80ABC5D8 3C0580AC */  lui     $a1, %hi(D_80ABCAD0)       ## $a1 = 80AC0000
/* 004FC 80ABC5DC 24A5CAD0 */  addiu   $a1, $a1, %lo(D_80ABCAD0)  ## $a1 = 80ABCAD0
/* 00500 80ABC5E0 2406015A */  addiu   $a2, $zero, 0x015A         ## $a2 = 0000015A
/* 00504 80ABC5E4 0C0346A2 */  jal     Matrix_NewMtx              
/* 00508 80ABC5E8 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 0050C 80ABC5EC 02001825 */  or      $v1, $s0, $zero            ## $v1 = 00000008
/* 00510 80ABC5F0 3C0B0064 */  lui     $t3, 0x0064                ## $t3 = 00640000
/* 00514 80ABC5F4 356BFFFF */  ori     $t3, $t3, 0xFFFF           ## $t3 = 0064FFFF
/* 00518 80ABC5F8 3C0AFB00 */  lui     $t2, 0xFB00                ## $t2 = FB000000
/* 0051C 80ABC5FC AC6A0000 */  sw      $t2, 0x0000($v1)           ## 00000008
/* 00520 80ABC600 AC6B0004 */  sw      $t3, 0x0004($v1)           ## 0000000C
/* 00524 80ABC604 26100008 */  addiu   $s0, $s0, 0x0008           ## $s0 = 00000010
/* 00528 80ABC608 02001825 */  or      $v1, $s0, $zero            ## $v1 = 00000010
/* 0052C 80ABC60C AC7E0000 */  sw      $s8, 0x0000($v1)           ## 00000010
/* 00530 80ABC610 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000014
/* 00534 80ABC614 26100008 */  addiu   $s0, $s0, 0x0008           ## $s0 = 00000018
/* 00538 80ABC618 02001825 */  or      $v1, $s0, $zero            ## $v1 = 00000018
/* 0053C 80ABC61C 3C04DE00 */  lui     $a0, 0xDE00                ## $a0 = DE000000
/* 00540 80ABC620 AC640000 */  sw      $a0, 0x0000($v1)           ## 00000018
/* 00544 80ABC624 AC740004 */  sw      $s4, 0x0004($v1)           ## 0000001C
/* 00548 80ABC628 02401825 */  or      $v1, $s2, $zero            ## $v1 = 00000010
/* 0054C 80ABC62C AC7E0000 */  sw      $s8, 0x0000($v1)           ## 00000010
/* 00550 80ABC630 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000014
/* 00554 80ABC634 26520008 */  addiu   $s2, $s2, 0x0008           ## $s2 = 00000018
/* 00558 80ABC638 02401825 */  or      $v1, $s2, $zero            ## $v1 = 00000018
/* 0055C 80ABC63C AC640000 */  sw      $a0, 0x0000($v1)           ## 00000018
/* 00560 80ABC640 AC760004 */  sw      $s6, 0x0004($v1)           ## 0000001C
/* 00564 80ABC644 02601825 */  or      $v1, $s3, $zero            ## $v1 = 00000010
/* 00568 80ABC648 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000014
/* 0056C 80ABC64C 26730008 */  addiu   $s3, $s3, 0x0008           ## $s3 = 00000018
/* 00570 80ABC650 AC7E0000 */  sw      $s8, 0x0000($v1)           ## 00000010
/* 00574 80ABC654 02601025 */  or      $v0, $s3, $zero            ## $v0 = 00000018
/* 00578 80ABC658 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 0057C 80ABC65C AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000018
/* 00580 80ABC660 AC570004 */  sw      $s7, 0x0004($v0)           ## 0000001C
/* 00584 80ABC664 8FAD0100 */  lw      $t5, 0x0100($sp)           
/* 00588 80ABC668 26100008 */  addiu   $s0, $s0, 0x0008           ## $s0 = 00000020
/* 0058C 80ABC66C 26520008 */  addiu   $s2, $s2, 0x0008           ## $s2 = 00000020
/* 00590 80ABC670 26730008 */  addiu   $s3, $s3, 0x0008           ## $s3 = 00000020
/* 00594 80ABC674 91A5016C */  lbu     $a1, 0x016C($t5)           ## 0000016C
.L80ABC678:
/* 00598 80ABC678 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000001
/* 0059C 80ABC67C 02A5082A */  slt     $at, $s5, $a1              
/* 005A0 80ABC680 1420FFB9 */  bne     $at, $zero, .L80ABC568     
/* 005A4 80ABC684 2631005C */  addiu   $s1, $s1, 0x005C           ## $s1 = 000001CC
/* 005A8 80ABC688 8FB10058 */  lw      $s1, 0x0058($sp)           
/* 005AC 80ABC68C 0000A825 */  or      $s5, $zero, $zero          ## $s5 = 00000000
.L80ABC690:
/* 005B0 80ABC690 8FAE00A8 */  lw      $t6, 0x00A8($sp)           
/* 005B4 80ABC694 3C1EDA38 */  lui     $s8, 0xDA38                ## $s8 = DA380000
/* 005B8 80ABC698 37DE0003 */  ori     $s8, $s8, 0x0003           ## $s8 = DA380003
/* 005BC 80ABC69C ADD302D0 */  sw      $s3, 0x02D0($t6)           ## 000002D0
/* 005C0 80ABC6A0 8FB80104 */  lw      $t8, 0x0104($sp)           
/* 005C4 80ABC6A4 0C025011 */  jal     func_80094044              
/* 005C8 80ABC6A8 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 005CC 80ABC6AC 8FAF00A8 */  lw      $t7, 0x00A8($sp)           
/* 005D0 80ABC6B0 3C090600 */  lui     $t1, 0x0600                ## $t1 = 06000000
/* 005D4 80ABC6B4 25290D10 */  addiu   $t1, $t1, 0x0D10           ## $t1 = 06000D10
/* 005D8 80ABC6B8 8DE202D0 */  lw      $v0, 0x02D0($t7)           ## 000002D0
/* 005DC 80ABC6BC 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 005E0 80ABC6C0 3C1480AC */  lui     $s4, %hi(D_80ABCAE0)       ## $s4 = 80AC0000
/* 005E4 80ABC6C4 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 005E8 80ABC6C8 ADF902D0 */  sw      $t9, 0x02D0($t7)           ## 000002D0
/* 005EC 80ABC6CC AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 005F0 80ABC6D0 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 005F4 80ABC6D4 8FAA0100 */  lw      $t2, 0x0100($sp)           
/* 005F8 80ABC6D8 2694CAE0 */  addiu   $s4, $s4, %lo(D_80ABCAE0)  ## $s4 = 80ABCAE0
/* 005FC 80ABC6DC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00600 80ABC6E0 9145016C */  lbu     $a1, 0x016C($t2)           ## 0000016C
/* 00604 80ABC6E4 58A0003A */  blezl   $a1, .L80ABC7D0            
/* 00608 80ABC6E8 8FA90104 */  lw      $t1, 0x0104($sp)           
/* 0060C 80ABC6EC 4481A000 */  mtc1    $at, $f20                  ## $f20 = 1.00
/* 00610 80ABC6F0 27B300B0 */  addiu   $s3, $sp, 0x00B0           ## $s3 = FFFFFFB0
.L80ABC6F4:
/* 00614 80ABC6F4 822B0000 */  lb      $t3, 0x0000($s1)           ## 000001CC
/* 00618 80ABC6F8 51600031 */  beql    $t3, $zero, .L80ABC7C0     
/* 0061C 80ABC6FC 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000001
/* 00620 80ABC700 8E240038 */  lw      $a0, 0x0038($s1)           ## 00000204
/* 00624 80ABC704 3C120600 */  lui     $s2, 0x0600                ## $s2 = 06000000
/* 00628 80ABC708 26520D50 */  addiu   $s2, $s2, 0x0D50           ## $s2 = 06000D50
/* 0062C 80ABC70C 5080002C */  beql    $a0, $zero, .L80ABC7C0     
/* 00630 80ABC710 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000002
/* 00634 80ABC714 8E250008 */  lw      $a1, 0x0008($s1)           ## 000001D4
/* 00638 80ABC718 8E260004 */  lw      $a2, 0x0004($s1)           ## 000001D0
/* 0063C 80ABC71C 8E270010 */  lw      $a3, 0x0010($s1)           ## 000001DC
/* 00640 80ABC720 0C00E28A */  jal     func_80038A28              
/* 00644 80ABC724 AFB30010 */  sw      $s3, 0x0010($sp)           
/* 00648 80ABC728 0C03423F */  jal     Matrix_Put              
/* 0064C 80ABC72C 02602025 */  or      $a0, $s3, $zero            ## $a0 = FFFFFFB0
/* 00650 80ABC730 862C0032 */  lh      $t4, 0x0032($s1)           ## 000001FE
/* 00654 80ABC734 3C0180AC */  lui     $at, %hi(D_80ABCB0C)       ## $at = 80AC0000
/* 00658 80ABC738 C426CB0C */  lwc1    $f6, %lo(D_80ABCB0C)($at)  
/* 0065C 80ABC73C 448C8000 */  mtc1    $t4, $f16                  ## $f16 = 0.00
/* 00660 80ABC740 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00664 80ABC744 468084A0 */  cvt.s.w $f18, $f16                 
/* 00668 80ABC748 46069302 */  mul.s   $f12, $f18, $f6            
/* 0066C 80ABC74C 0C034348 */  jal     Matrix_RotateY              
/* 00670 80ABC750 00000000 */  nop
/* 00674 80ABC754 4406A000 */  mfc1    $a2, $f20                  
/* 00678 80ABC758 4600A306 */  mov.s   $f12, $f20                 
/* 0067C 80ABC75C 4600A386 */  mov.s   $f14, $f20                 
/* 00680 80ABC760 0C0342A3 */  jal     Matrix_Scale              
/* 00684 80ABC764 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00688 80ABC768 8FA300A8 */  lw      $v1, 0x00A8($sp)           
/* 0068C 80ABC76C 02802825 */  or      $a1, $s4, $zero            ## $a1 = 80ABCAE0
/* 00690 80ABC770 24060184 */  addiu   $a2, $zero, 0x0184         ## $a2 = 00000184
/* 00694 80ABC774 8C6202D0 */  lw      $v0, 0x02D0($v1)           ## 000002D0
/* 00698 80ABC778 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 0069C 80ABC77C AC6D02D0 */  sw      $t5, 0x02D0($v1)           ## 000002D0
/* 006A0 80ABC780 AC5E0000 */  sw      $s8, 0x0000($v0)           ## 00000000
/* 006A4 80ABC784 8FAE0104 */  lw      $t6, 0x0104($sp)           
/* 006A8 80ABC788 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 006AC 80ABC78C 0C0346A2 */  jal     Matrix_NewMtx              
/* 006B0 80ABC790 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 006B4 80ABC794 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 006B8 80ABC798 8FB800A8 */  lw      $t8, 0x00A8($sp)           
/* 006BC 80ABC79C 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 006C0 80ABC7A0 8F0202D0 */  lw      $v0, 0x02D0($t8)           ## 000002D0
/* 006C4 80ABC7A4 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 006C8 80ABC7A8 AF1902D0 */  sw      $t9, 0x02D0($t8)           ## 000002D0
/* 006CC 80ABC7AC AC520004 */  sw      $s2, 0x0004($v0)           ## 00000004
/* 006D0 80ABC7B0 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 006D4 80ABC7B4 8FA80100 */  lw      $t0, 0x0100($sp)           
/* 006D8 80ABC7B8 9105016C */  lbu     $a1, 0x016C($t0)           ## 0000016C
/* 006DC 80ABC7BC 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000003
.L80ABC7C0:
/* 006E0 80ABC7C0 02A5082A */  slt     $at, $s5, $a1              
/* 006E4 80ABC7C4 1420FFCB */  bne     $at, $zero, .L80ABC6F4     
/* 006E8 80ABC7C8 2631005C */  addiu   $s1, $s1, 0x005C           ## $s1 = 00000228
/* 006EC 80ABC7CC 8FA90104 */  lw      $t1, 0x0104($sp)           
.L80ABC7D0:
/* 006F0 80ABC7D0 3C0680AC */  lui     $a2, %hi(D_80ABCAF0)       ## $a2 = 80AC0000
/* 006F4 80ABC7D4 24C6CAF0 */  addiu   $a2, $a2, %lo(D_80ABCAF0)  ## $a2 = 80ABCAF0
/* 006F8 80ABC7D8 27A40098 */  addiu   $a0, $sp, 0x0098           ## $a0 = FFFFFF98
/* 006FC 80ABC7DC 2407018B */  addiu   $a3, $zero, 0x018B         ## $a3 = 0000018B
/* 00700 80ABC7E0 0C031AD5 */  jal     Graph_CloseDisps              
/* 00704 80ABC7E4 8D250000 */  lw      $a1, 0x0000($t1)           ## 00000000
/* 00708 80ABC7E8 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 0070C 80ABC7EC D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 00710 80ABC7F0 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00714 80ABC7F4 8FB1002C */  lw      $s1, 0x002C($sp)           
/* 00718 80ABC7F8 8FB20030 */  lw      $s2, 0x0030($sp)           
/* 0071C 80ABC7FC 8FB30034 */  lw      $s3, 0x0034($sp)           
/* 00720 80ABC800 8FB40038 */  lw      $s4, 0x0038($sp)           
/* 00724 80ABC804 8FB5003C */  lw      $s5, 0x003C($sp)           
/* 00728 80ABC808 8FB60040 */  lw      $s6, 0x0040($sp)           
/* 0072C 80ABC80C 8FB70044 */  lw      $s7, 0x0044($sp)           
/* 00730 80ABC810 8FBE0048 */  lw      $s8, 0x0048($sp)           
/* 00734 80ABC814 03E00008 */  jr      $ra                        
/* 00738 80ABC818 27BD0100 */  addiu   $sp, $sp, 0x0100           ## $sp = 00000000
