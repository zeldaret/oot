.rdata
glabel D_80ABB45C
    .asciz "[32m☆ 鶏柵内ＧＥＴ！☆ %x\n[m"
    .balign 4

glabel D_80ABB47C
    .asciz "\n\n"
    .balign 4

glabel D_80ABB480
    .asciz "[33m☆☆☆☆☆ ねぇちゃん選択	 ☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80ABB4B0
    .asciz "[33m☆☆☆☆☆ ねぇちゃんハート     ☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80ABB4E8
    .asciz "[33m☆☆☆☆☆ ねぇちゃん保存       ☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80ABB520
    .asciz "[33m☆☆☆☆☆ ねぇちゃん今	 ☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80ABB550
    .asciz "[32m☆☆☆☆☆ this->actor.talk_message ☆☆ %x\n[m"
    .balign 4

glabel D_80ABB588
    .asciz "[32m☆☆☆☆☆ this->message_end_code   ☆☆ %d\n[m"
    .balign 4

glabel D_80ABB5C0
    .asciz "\n\n"
    .balign 4

glabel D_80ABB5C4
    .asciz "[36m☆☆☆☆☆ 柵内BIT変更前 ☆☆ %x\n[m"
    .balign 4

glabel D_80ABB5F0
    .asciz "[36m☆☆☆☆☆ 柵内BIT変更後 ☆☆ %x\n[m"
    .balign 4

glabel D_80ABB61C
    .asciz "\n\n"
    .balign 4

.late_rodata
glabel D_80ABB7BC
 .word 0x44C94000

.text
glabel func_80ABA244
/* 00604 80ABA244 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00608 80ABA248 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0060C 80ABA24C AFB30020 */  sw      $s3, 0x0020($sp)           
/* 00610 80ABA250 AFB2001C */  sw      $s2, 0x001C($sp)           
/* 00614 80ABA254 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00618 80ABA258 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 0061C 80ABA25C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00620 80ABA260 A4800268 */  sh      $zero, 0x0268($a0)         ## 00000268
/* 00624 80ABA264 8FAE002C */  lw      $t6, 0x002C($sp)           
/* 00628 80ABA268 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 0062C 80ABA26C 8DD01C64 */  lw      $s0, 0x1C64($t6)           ## 00001C64
/* 00630 80ABA270 12000044 */  beq     $s0, $zero, .L80ABA384     
/* 00634 80ABA274 3C138016 */  lui     $s3, %hi(gSaveContext)
/* 00638 80ABA278 3C1180AC */  lui     $s1, %hi(D_80ABB3B4)       ## $s1 = 80AC0000
/* 0063C 80ABA27C 2631B3B4 */  addiu   $s1, $s1, %lo(D_80ABB3B4)  ## $s1 = 80ABB3B4
/* 00640 80ABA280 2673E660 */  addiu   $s3, %lo(gSaveContext)
/* 00644 80ABA284 860F0000 */  lh      $t7, 0x0000($s0)           ## 00000000
.L80ABA288:
/* 00648 80ABA288 24010019 */  addiu   $at, $zero, 0x0019         ## $at = 00000019
/* 0064C 80ABA28C 15E1003A */  bne     $t7, $at, .L80ABA378       
/* 00650 80ABA290 3C0143A5 */  lui     $at, 0x43A5                ## $at = 43A50000
/* 00654 80ABA294 44813000 */  mtc1    $at, $f6                   ## $f6 = 330.00
/* 00658 80ABA298 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 0065C 80ABA29C 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 00660 80ABA2A0 44814000 */  mtc1    $at, $f8                   ## $f8 = 90.00
/* 00664 80ABA2A4 46062001 */  sub.s   $f0, $f4, $f6              
/* 00668 80ABA2A8 3C0180AC */  lui     $at, %hi(D_80ABB7BC)       ## $at = 80AC0000
/* 0066C 80ABA2AC 8642026C */  lh      $v0, 0x026C($s2)           ## 0000026C
/* 00670 80ABA2B0 46000005 */  abs.s   $f0, $f0                   
/* 00674 80ABA2B4 4608003C */  c.lt.s  $f0, $f8                   
/* 00678 80ABA2B8 00000000 */  nop
/* 0067C 80ABA2BC 45000024 */  bc1f    .L80ABA350                 
/* 00680 80ABA2C0 00000000 */  nop
/* 00684 80ABA2C4 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 00688 80ABA2C8 C430B7BC */  lwc1    $f16, %lo(D_80ABB7BC)($at) 
/* 0068C 80ABA2CC 3C01433E */  lui     $at, 0x433E                ## $at = 433E0000
/* 00690 80ABA2D0 44819000 */  mtc1    $at, $f18                  ## $f18 = 190.00
/* 00694 80ABA2D4 46105001 */  sub.s   $f0, $f10, $f16            
/* 00698 80ABA2D8 46000005 */  abs.s   $f0, $f0                   
/* 0069C 80ABA2DC 4612003C */  c.lt.s  $f0, $f18                  
/* 006A0 80ABA2E0 00000000 */  nop
/* 006A4 80ABA2E4 4500001A */  bc1f    .L80ABA350                 
/* 006A8 80ABA2E8 00000000 */  nop
/* 006AC 80ABA2EC 54400015 */  bnel    $v0, $zero, .L80ABA344     
/* 006B0 80ABA2F0 86480268 */  lh      $t0, 0x0268($s2)           ## 00000268
/* 006B4 80ABA2F4 861902AA */  lh      $t9, 0x02AA($s0)           ## 000002AA
/* 006B8 80ABA2F8 96780F2A */  lhu     $t8, 0x0F2A($s3)           ## 8015F58A
/* 006BC 80ABA2FC 3C0C8016 */  lui     $t4, %hi(gGameInfo)
/* 006C0 80ABA300 00194040 */  sll     $t0, $t9,  1               
/* 006C4 80ABA304 02284821 */  addu    $t1, $s1, $t0              
/* 006C8 80ABA308 852A0000 */  lh      $t2, 0x0000($t1)           ## 00000000
/* 006CC 80ABA30C 030A5825 */  or      $t3, $t8, $t2              ## $t3 = 00000000
/* 006D0 80ABA310 A66B0F2A */  sh      $t3, 0x0F2A($s3)           ## 8015F58A
/* 006D4 80ABA314 8D8CFA90 */  lw      $t4, %lo(gGameInfo)($t4)
/* 006D8 80ABA318 858D12D6 */  lh      $t5, 0x12D6($t4)           ## 801612D6
/* 006DC 80ABA31C 51A00009 */  beql    $t5, $zero, .L80ABA344     
/* 006E0 80ABA320 86480268 */  lh      $t0, 0x0268($s2)           ## 00000268
/* 006E4 80ABA324 860E02AA */  lh      $t6, 0x02AA($s0)           ## 000002AA
/* 006E8 80ABA328 3C0480AC */  lui     $a0, %hi(D_80ABB45C)       ## $a0 = 80AC0000
/* 006EC 80ABA32C 2484B45C */  addiu   $a0, $a0, %lo(D_80ABB45C)  ## $a0 = 80ABB45C
/* 006F0 80ABA330 000E7840 */  sll     $t7, $t6,  1               
/* 006F4 80ABA334 022FC821 */  addu    $t9, $s1, $t7              
/* 006F8 80ABA338 0C00084C */  jal     osSyncPrintf
              
/* 006FC 80ABA33C 87250000 */  lh      $a1, 0x0000($t9)           ## 00000000
/* 00700 80ABA340 86480268 */  lh      $t0, 0x0268($s2)           ## 00000268
.L80ABA344:
/* 00704 80ABA344 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 00708 80ABA348 1000000B */  beq     $zero, $zero, .L80ABA378   
/* 0070C 80ABA34C A6490268 */  sh      $t1, 0x0268($s2)           ## 00000268
.L80ABA350:
/* 00710 80ABA350 5440000A */  bnel    $v0, $zero, .L80ABA37C     
/* 00714 80ABA354 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
/* 00718 80ABA358 860A02AA */  lh      $t2, 0x02AA($s0)           ## 000002AA
/* 0071C 80ABA35C 96780F2A */  lhu     $t8, 0x0F2A($s3)           ## 8015F58A
/* 00720 80ABA360 000A5840 */  sll     $t3, $t2,  1               
/* 00724 80ABA364 022B6021 */  addu    $t4, $s1, $t3              
/* 00728 80ABA368 858D0000 */  lh      $t5, 0x0000($t4)           ## 00000000
/* 0072C 80ABA36C 01A07027 */  nor     $t6, $t5, $zero            
/* 00730 80ABA370 030E7824 */  and     $t7, $t8, $t6              
/* 00734 80ABA374 A66F0F2A */  sh      $t7, 0x0F2A($s3)           ## 8015F58A
.L80ABA378:
/* 00738 80ABA378 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
.L80ABA37C:
/* 0073C 80ABA37C 5600FFC2 */  bnel    $s0, $zero, .L80ABA288     
/* 00740 80ABA380 860F0000 */  lh      $t7, 0x0000($s0)           ## 00000000
.L80ABA384:
/* 00744 80ABA384 3C198016 */  lui     $t9, %hi(gGameInfo)
/* 00748 80ABA388 8F39FA90 */  lw      $t9, %lo(gGameInfo)($t9)
/* 0074C 80ABA38C 3C138016 */  lui     $s3, %hi(gSaveContext)
/* 00750 80ABA390 2673E660 */  addiu   $s3, %lo(gSaveContext)
/* 00754 80ABA394 872212E2 */  lh      $v0, 0x12E2($t9)           ## 801612E2
/* 00758 80ABA398 10400002 */  beq     $v0, $zero, .L80ABA3A4     
/* 0075C 80ABA39C 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 00760 80ABA3A0 A6480268 */  sh      $t0, 0x0268($s2)           ## 00000268
.L80ABA3A4:
/* 00764 80ABA3A4 8FB0002C */  lw      $s0, 0x002C($sp)           
/* 00768 80ABA3A8 86510268 */  lh      $s1, 0x0268($s2)           ## 00000268
/* 0076C 80ABA3AC 261020D8 */  addiu   $s0, $s0, 0x20D8           ## $s0 = 000020D8
/* 00770 80ABA3B0 0C042F6F */  jal     func_8010BDBC              
/* 00774 80ABA3B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000020D8
/* 00778 80ABA3B8 50400006 */  beql    $v0, $zero, .L80ABA3D4     
/* 0077C 80ABA3BC 24090065 */  addiu   $t1, $zero, 0x0065         ## $t1 = 00000065
/* 00780 80ABA3C0 0C042F6F */  jal     func_8010BDBC              
/* 00784 80ABA3C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000020D8
/* 00788 80ABA3C8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 0078C 80ABA3CC 14410002 */  bne     $v0, $at, .L80ABA3D8       
/* 00790 80ABA3D0 24090065 */  addiu   $t1, $zero, 0x0065         ## $t1 = 00000065
.L80ABA3D4:
/* 00794 80ABA3D4 A649026E */  sh      $t1, 0x026E($s2)           ## 0000026E
.L80ABA3D8:
/* 00798 80ABA3D8 864A0268 */  lh      $t2, 0x0268($s2)           ## 00000268
/* 0079C 80ABA3DC 3C0D80AC */  lui     $t5, %hi(D_80ABB3A0)       ## $t5 = 80AC0000
/* 007A0 80ABA3E0 29410007 */  slti    $at, $t2, 0x0007           
/* 007A4 80ABA3E4 5420000A */  bnel    $at, $zero, .L80ABA410     
/* 007A8 80ABA3E8 864B026C */  lh      $t3, 0x026C($s2)           ## 0000026C
/* 007AC 80ABA3EC 8642026C */  lh      $v0, 0x026C($s2)           ## 0000026C
/* 007B0 80ABA3F0 24110008 */  addiu   $s1, $zero, 0x0008         ## $s1 = 00000008
/* 007B4 80ABA3F4 28410002 */  slti    $at, $v0, 0x0002           
/* 007B8 80ABA3F8 50200005 */  beql    $at, $zero, .L80ABA410     
/* 007BC 80ABA3FC 864B026C */  lh      $t3, 0x026C($s2)           ## 0000026C
/* 007C0 80ABA400 54400003 */  bnel    $v0, $zero, .L80ABA410     
/* 007C4 80ABA404 864B026C */  lh      $t3, 0x026C($s2)           ## 0000026C
/* 007C8 80ABA408 24110007 */  addiu   $s1, $zero, 0x0007         ## $s1 = 00000007
/* 007CC 80ABA40C 864B026C */  lh      $t3, 0x026C($s2)           ## 0000026C
.L80ABA410:
/* 007D0 80ABA410 2A210007 */  slti    $at, $s1, 0x0007           
/* 007D4 80ABA414 51600005 */  beql    $t3, $zero, .L80ABA42C     
/* 007D8 80ABA418 00116040 */  sll     $t4, $s1,  1               
/* 007DC 80ABA41C 50200003 */  beql    $at, $zero, .L80ABA42C     
/* 007E0 80ABA420 00116040 */  sll     $t4, $s1,  1               
/* 007E4 80ABA424 24110009 */  addiu   $s1, $zero, 0x0009         ## $s1 = 00000009
/* 007E8 80ABA428 00116040 */  sll     $t4, $s1,  1               
.L80ABA42C:
/* 007EC 80ABA42C 01AC6821 */  addu    $t5, $t5, $t4              
/* 007F0 80ABA430 85ADB3A0 */  lh      $t5, %lo(D_80ABB3A0)($t5)  
/* 007F4 80ABA434 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 007F8 80ABA438 A64D010E */  sh      $t5, 0x010E($s2)           ## 0000010E
/* 007FC 80ABA43C 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 00800 80ABA440 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00804 80ABA444 10400006 */  beq     $v0, $zero, .L80ABA460     
/* 00808 80ABA448 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0080C 80ABA44C 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 00810 80ABA450 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 00814 80ABA454 24180006 */  addiu   $t8, $zero, 0x0006         ## $t8 = 00000006
/* 00818 80ABA458 A642010E */  sh      $v0, 0x010E($s2)           ## 0000010E
/* 0081C 80ABA45C A6580262 */  sh      $t8, 0x0262($s2)           ## 00000262
.L80ABA460:
/* 00820 80ABA460 864E026C */  lh      $t6, 0x026C($s2)           ## 0000026C
/* 00824 80ABA464 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 00828 80ABA468 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 0082C 80ABA46C 11C00005 */  beq     $t6, $zero, .L80ABA484     
/* 00830 80ABA470 00000000 */  nop
/* 00834 80ABA474 12210003 */  beq     $s1, $at, .L80ABA484       
/* 00838 80ABA478 240F000B */  addiu   $t7, $zero, 0x000B         ## $t7 = 0000000B
/* 0083C 80ABA47C 2411000A */  addiu   $s1, $zero, 0x000A         ## $s1 = 0000000A
/* 00840 80ABA480 A64F026E */  sh      $t7, 0x026E($s2)           ## 0000026E
.L80ABA484:
/* 00844 80ABA484 0C00BC65 */  jal     func_8002F194              
/* 00848 80ABA488 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0084C 80ABA48C 10400067 */  beq     $v0, $zero, .L80ABA62C     
/* 00850 80ABA490 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00854 80ABA494 3C0480AC */  lui     $a0, %hi(D_80ABB47C)       ## $a0 = 80AC0000
/* 00858 80ABA498 0C00084C */  jal     osSyncPrintf
              
/* 0085C 80ABA49C 2484B47C */  addiu   $a0, $a0, %lo(D_80ABB47C)  ## $a0 = 80ABB47C
/* 00860 80ABA4A0 3C0480AC */  lui     $a0, %hi(D_80ABB480)       ## $a0 = 80AC0000
/* 00864 80ABA4A4 2484B480 */  addiu   $a0, $a0, %lo(D_80ABB480)  ## $a0 = 80ABB480
/* 00868 80ABA4A8 0C00084C */  jal     osSyncPrintf
              
/* 0086C 80ABA4AC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 0000000A
/* 00870 80ABA4B0 3C0480AC */  lui     $a0, %hi(D_80ABB4B0)       ## $a0 = 80AC0000
/* 00874 80ABA4B4 2484B4B0 */  addiu   $a0, $a0, %lo(D_80ABB4B0)  ## $a0 = 80ABB4B0
/* 00878 80ABA4B8 0C00084C */  jal     osSyncPrintf
              
/* 0087C 80ABA4BC 8645026C */  lh      $a1, 0x026C($s2)           ## 0000026C
/* 00880 80ABA4C0 3C0480AC */  lui     $a0, %hi(D_80ABB4E8)       ## $a0 = 80AC0000
/* 00884 80ABA4C4 2484B4E8 */  addiu   $a0, $a0, %lo(D_80ABB4E8)  ## $a0 = 80ABB4E8
/* 00888 80ABA4C8 0C00084C */  jal     osSyncPrintf
              
/* 0088C 80ABA4CC 8645026A */  lh      $a1, 0x026A($s2)           ## 0000026A
/* 00890 80ABA4D0 3C0480AC */  lui     $a0, %hi(D_80ABB520)       ## $a0 = 80AC0000
/* 00894 80ABA4D4 2484B520 */  addiu   $a0, $a0, %lo(D_80ABB520)  ## $a0 = 80ABB520
/* 00898 80ABA4D8 0C00084C */  jal     osSyncPrintf
              
/* 0089C 80ABA4DC 86450268 */  lh      $a1, 0x0268($s2)           ## 00000268
/* 008A0 80ABA4E0 3C0480AC */  lui     $a0, %hi(D_80ABB550)       ## $a0 = 80AC0000
/* 008A4 80ABA4E4 2484B550 */  addiu   $a0, $a0, %lo(D_80ABB550)  ## $a0 = 80ABB550
/* 008A8 80ABA4E8 0C00084C */  jal     osSyncPrintf
              
/* 008AC 80ABA4EC 9645010E */  lhu     $a1, 0x010E($s2)           ## 0000010E
/* 008B0 80ABA4F0 3C0480AC */  lui     $a0, %hi(D_80ABB588)       ## $a0 = 80AC0000
/* 008B4 80ABA4F4 2484B588 */  addiu   $a0, $a0, %lo(D_80ABB588)  ## $a0 = 80ABB588
/* 008B8 80ABA4F8 0C00084C */  jal     osSyncPrintf
              
/* 008BC 80ABA4FC 86450262 */  lh      $a1, 0x0262($s2)           ## 00000262
/* 008C0 80ABA500 3C0480AC */  lui     $a0, %hi(D_80ABB5C0)       ## $a0 = 80AC0000
/* 008C4 80ABA504 0C00084C */  jal     osSyncPrintf
              
/* 008C8 80ABA508 2484B5C0 */  addiu   $a0, $a0, %lo(D_80ABB5C0)  ## $a0 = 80ABB5C0
/* 008CC 80ABA50C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 008D0 80ABA510 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 008D4 80ABA514 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 008D8 80ABA518 54400048 */  bnel    $v0, $zero, .L80ABA63C     
/* 008DC 80ABA51C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 008E0 80ABA520 9659010E */  lhu     $t9, 0x010E($s2)           ## 0000010E
/* 008E4 80ABA524 2401503C */  addiu   $at, $zero, 0x503C         ## $at = 0000503C
/* 008E8 80ABA528 26240001 */  addiu   $a0, $s1, 0x0001           ## $a0 = 0000000B
/* 008EC 80ABA52C 5721000C */  bnel    $t9, $at, .L80ABA560       
/* 008F0 80ABA530 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 008F4 80ABA534 0C01E221 */  jal     func_80078884              
/* 008F8 80ABA538 24044806 */  addiu   $a0, $zero, 0x4806         ## $a0 = 00004806
/* 008FC 80ABA53C 3C0A80AC */  lui     $t2, %hi(func_80ABA654)    ## $t2 = 80AC0000
/* 00900 80ABA540 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 00904 80ABA544 24090005 */  addiu   $t1, $zero, 0x0005         ## $t1 = 00000005
/* 00908 80ABA548 254AA654 */  addiu   $t2, $t2, %lo(func_80ABA654) ## $t2 = 80ABA654
/* 0090C 80ABA54C A648026C */  sh      $t0, 0x026C($s2)           ## 0000026C
/* 00910 80ABA550 A6490262 */  sh      $t1, 0x0262($s2)           ## 00000262
/* 00914 80ABA554 10000038 */  beq     $zero, $zero, .L80ABA638   
/* 00918 80ABA558 AE4A0250 */  sw      $t2, 0x0250($s2)           ## 00000250
/* 0091C 80ABA55C 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
.L80ABA560:
/* 00920 80ABA560 1621001B */  bne     $s1, $at, .L80ABA5D0       
/* 00924 80ABA564 A644026E */  sh      $a0, 0x026E($s2)           ## 0000026E
/* 00928 80ABA568 0C01E221 */  jal     func_80078884              
/* 0092C 80ABA56C 24044807 */  addiu   $a0, $zero, 0x4807         ## $a0 = 00004807
/* 00930 80ABA570 864D0268 */  lh      $t5, 0x0268($s2)           ## 00000268
/* 00934 80ABA574 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00938 80ABA578 240C0005 */  addiu   $t4, $zero, 0x0005         ## $t4 = 00000005
/* 0093C 80ABA57C A64B026C */  sh      $t3, 0x026C($s2)           ## 0000026C
/* 00940 80ABA580 A64C0262 */  sh      $t4, 0x0262($s2)           ## 00000262
/* 00944 80ABA584 3C0480AC */  lui     $a0, %hi(D_80ABB5C4)       ## $a0 = 80AC0000
/* 00948 80ABA588 A64D026A */  sh      $t5, 0x026A($s2)           ## 0000026A
/* 0094C 80ABA58C 96650F2A */  lhu     $a1, 0x0F2A($s3)           ## 8015F58A
/* 00950 80ABA590 0C00084C */  jal     osSyncPrintf
              
/* 00954 80ABA594 2484B5C4 */  addiu   $a0, $a0, %lo(D_80ABB5C4)  ## $a0 = 80ABB5C4
/* 00958 80ABA598 96780F2A */  lhu     $t8, 0x0F2A($s3)           ## 8015F58A
/* 0095C 80ABA59C 3C0480AC */  lui     $a0, %hi(D_80ABB5F0)       ## $a0 = 80AC0000
/* 00960 80ABA5A0 2484B5F0 */  addiu   $a0, $a0, %lo(D_80ABB5F0)  ## $a0 = 80ABB5F0
/* 00964 80ABA5A4 330E01FF */  andi    $t6, $t8, 0x01FF           ## $t6 = 00000000
/* 00968 80ABA5A8 A66E0F2A */  sh      $t6, 0x0F2A($s3)           ## 8015F58A
/* 0096C 80ABA5AC 0C00084C */  jal     osSyncPrintf
              
/* 00970 80ABA5B0 31C5FFFF */  andi    $a1, $t6, 0xFFFF           ## $a1 = 00000000
/* 00974 80ABA5B4 3C0480AC */  lui     $a0, %hi(D_80ABB61C)       ## $a0 = 80AC0000
/* 00978 80ABA5B8 0C00084C */  jal     osSyncPrintf
              
/* 0097C 80ABA5BC 2484B61C */  addiu   $a0, $a0, %lo(D_80ABB61C)  ## $a0 = 80ABB61C
/* 00980 80ABA5C0 3C0F80AC */  lui     $t7, %hi(func_80ABA654)    ## $t7 = 80AC0000
/* 00984 80ABA5C4 25EFA654 */  addiu   $t7, $t7, %lo(func_80ABA654) ## $t7 = 80ABA654
/* 00988 80ABA5C8 1000001B */  beq     $zero, $zero, .L80ABA638   
/* 0098C 80ABA5CC AE4F0250 */  sw      $t7, 0x0250($s2)           ## 00000250
.L80ABA5D0:
/* 00990 80ABA5D0 86420268 */  lh      $v0, 0x0268($s2)           ## 00000268
/* 00994 80ABA5D4 8643026A */  lh      $v1, 0x026A($s2)           ## 0000026A
/* 00998 80ABA5D8 1043000F */  beq     $v0, $v1, .L80ABA618       
/* 0099C 80ABA5DC 0043082A */  slt     $at, $v0, $v1              
/* 009A0 80ABA5E0 50200007 */  beql    $at, $zero, .L80ABA600     
/* 009A4 80ABA5E4 28810009 */  slti    $at, $a0, 0x0009           
/* 009A8 80ABA5E8 0C01E221 */  jal     func_80078884              
/* 009AC 80ABA5EC 24044806 */  addiu   $a0, $zero, 0x4806         ## $a0 = 00004806
/* 009B0 80ABA5F0 86420268 */  lh      $v0, 0x0268($s2)           ## 00000268
/* 009B4 80ABA5F4 10000008 */  beq     $zero, $zero, .L80ABA618   
/* 009B8 80ABA5F8 8643026A */  lh      $v1, 0x026A($s2)           ## 0000026A
/* 009BC 80ABA5FC 28810009 */  slti    $at, $a0, 0x0009           
.L80ABA600:
/* 009C0 80ABA600 50200006 */  beql    $at, $zero, .L80ABA61C     
/* 009C4 80ABA604 0062082A */  slt     $at, $v1, $v0              
/* 009C8 80ABA608 0C01E221 */  jal     func_80078884              
/* 009CC 80ABA60C 24044807 */  addiu   $a0, $zero, 0x4807         ## $a0 = 00004807
/* 009D0 80ABA610 86420268 */  lh      $v0, 0x0268($s2)           ## 00000268
/* 009D4 80ABA614 8643026A */  lh      $v1, 0x026A($s2)           ## 0000026A
.L80ABA618:
/* 009D8 80ABA618 0062082A */  slt     $at, $v1, $v0              
.L80ABA61C:
/* 009DC 80ABA61C 50200007 */  beql    $at, $zero, .L80ABA63C     
/* 009E0 80ABA620 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 009E4 80ABA624 10000004 */  beq     $zero, $zero, .L80ABA638   
/* 009E8 80ABA628 A642026A */  sh      $v0, 0x026A($s2)           ## 0000026A
.L80ABA62C:
/* 009EC 80ABA62C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 009F0 80ABA630 0C00BCB3 */  jal     func_8002F2CC              
/* 009F4 80ABA634 3C0642C8 */  lui     $a2, 0x42C8                ## $a2 = 42C80000
.L80ABA638:
/* 009F8 80ABA638 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80ABA63C:
/* 009FC 80ABA63C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00A00 80ABA640 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00A04 80ABA644 8FB2001C */  lw      $s2, 0x001C($sp)           
/* 00A08 80ABA648 8FB30020 */  lw      $s3, 0x0020($sp)           
/* 00A0C 80ABA64C 03E00008 */  jr      $ra                        
/* 00A10 80ABA650 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
