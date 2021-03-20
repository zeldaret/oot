.rdata
glabel D_8090D78C
    .asciz "../z_boss_ganon2.c"
    .balign 4

glabel D_8090D7A0
    .asciz "../z_boss_ganon2.c"
    .balign 4

glabel D_8090D7B4
    .asciz "../z_boss_ganon2.c"
    .balign 4

.late_rodata
glabel D_8090DD1C
    .float 3.14159274101

glabel D_8090DD20
    .float 5000.0

glabel D_8090DD24
 .word 0x3FA0D97C
glabel D_8090DD28
 .word 0x45959000
glabel D_8090DD2C
    .float 0.01

glabel D_8090DD30
    .float 3.14159274101

.text
glabel func_80904340
/* 07400 80904340 27BDFF48 */  addiu   $sp, $sp, 0xFF48           ## $sp = FFFFFF48
/* 07404 80904344 AFB60060 */  sw      $s6, 0x0060($sp)           
/* 07408 80904348 00A0B025 */  or      $s6, $a1, $zero            ## $s6 = 00000000
/* 0740C 8090434C AFBF0064 */  sw      $ra, 0x0064($sp)           
/* 07410 80904350 AFB5005C */  sw      $s5, 0x005C($sp)           
/* 07414 80904354 AFB40058 */  sw      $s4, 0x0058($sp)           
/* 07418 80904358 AFB30054 */  sw      $s3, 0x0054($sp)           
/* 0741C 8090435C AFB20050 */  sw      $s2, 0x0050($sp)           
/* 07420 80904360 AFB1004C */  sw      $s1, 0x004C($sp)           
/* 07424 80904364 AFB00048 */  sw      $s0, 0x0048($sp)           
/* 07428 80904368 F7BE0040 */  sdc1    $f30, 0x0040($sp)          
/* 0742C 8090436C F7BC0038 */  sdc1    $f28, 0x0038($sp)          
/* 07430 80904370 F7BA0030 */  sdc1    $f26, 0x0030($sp)          
/* 07434 80904374 F7B80028 */  sdc1    $f24, 0x0028($sp)          
/* 07438 80904378 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 0743C 8090437C F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 07440 80904380 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 07444 80904384 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 07448 80904388 3C068091 */  lui     $a2, %hi(D_8090D78C)       ## $a2 = 80910000
/* 0744C 8090438C 24C6D78C */  addiu   $a2, $a2, %lo(D_8090D78C)  ## $a2 = 8090D78C
/* 07450 80904390 27A40090 */  addiu   $a0, $sp, 0x0090           ## $a0 = FFFFFFD8
/* 07454 80904394 2407144C */  addiu   $a3, $zero, 0x144C         ## $a3 = 0000144C
/* 07458 80904398 0C031AB1 */  jal     Graph_OpenDisps              
/* 0745C 8090439C 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 07460 809043A0 0C034213 */  jal     Matrix_Push              
/* 07464 809043A4 00000000 */  nop
/* 07468 809043A8 86620330 */  lh      $v0, 0x0330($s3)           ## 00000330
/* 0746C 809043AC 3C053E05 */  lui     $a1, 0x3E05                ## $a1 = 3E050000
/* 07470 809043B0 34A51EB8 */  ori     $a1, $a1, 0x1EB8           ## $a1 = 3E051EB8
/* 07474 809043B4 14400004 */  bne     $v0, $zero, .L809043C8     
/* 07478 809043B8 2664032C */  addiu   $a0, $s3, 0x032C           ## $a0 = 0000032C
/* 0747C 809043BC 866E0328 */  lh      $t6, 0x0328($s3)           ## 00000328
/* 07480 809043C0 11C0008A */  beq     $t6, $zero, .L809045EC     
/* 07484 809043C4 00000000 */  nop
.L809043C8:
/* 07488 809043C8 10400004 */  beq     $v0, $zero, .L809043DC     
/* 0748C 809043CC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 07490 809043D0 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 07494 809043D4 10000008 */  beq     $zero, $zero, .L809043F8   
/* 07498 809043D8 A66F0330 */  sh      $t7, 0x0330($s3)           ## 00000330
.L809043DC:
/* 0749C 809043DC 86780328 */  lh      $t8, 0x0328($s3)           ## 00000328
/* 074A0 809043E0 2719FFBA */  addiu   $t9, $t8, 0xFFBA           ## $t9 = FFFFFFBA
/* 074A4 809043E4 A6790328 */  sh      $t9, 0x0328($s3)           ## 00000328
/* 074A8 809043E8 86680328 */  lh      $t0, 0x0328($s3)           ## 00000328
/* 074AC 809043EC 05030003 */  bgezl   $t0, .L809043FC            
/* 074B0 809043F0 3C073D85 */  lui     $a3, 0x3D85                ## $a3 = 3D850000
/* 074B4 809043F4 A6600328 */  sh      $zero, 0x0328($s3)         ## 00000328
.L809043F8:
/* 074B8 809043F8 3C073D85 */  lui     $a3, 0x3D85                ## $a3 = 3D850000
.L809043FC:
/* 074BC 809043FC 0C01E107 */  jal     Math_ApproachF
              
/* 074C0 80904400 34E71EB8 */  ori     $a3, $a3, 0x1EB8           ## $a3 = 3D851EB8
/* 074C4 80904404 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 074C8 80904408 3C0AE700 */  lui     $t2, 0xE700                ## $t2 = E7000000
/* 074CC 8090440C 3C0CFA00 */  lui     $t4, 0xFA00                ## $t4 = FA000000
/* 074D0 80904410 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 074D4 80904414 AE4902D0 */  sw      $t1, 0x02D0($s2)           ## 000002D0
/* 074D8 80904418 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 074DC 8090441C AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 074E0 80904420 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 074E4 80904424 2401FF00 */  addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
/* 074E8 80904428 241871AC */  addiu   $t8, $zero, 0x71AC         ## $t8 = 000071AC
/* 074EC 8090442C 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 074F0 80904430 AE4B02D0 */  sw      $t3, 0x02D0($s2)           ## 000002D0
/* 074F4 80904434 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 074F8 80904438 866D0328 */  lh      $t5, 0x0328($s3)           ## 00000328
/* 074FC 8090443C 2406263A */  addiu   $a2, $zero, 0x263A         ## $a2 = 0000263A
/* 07500 80904440 31AE00FF */  andi    $t6, $t5, 0x00FF           ## $t6 = 00000000
/* 07504 80904444 01C17825 */  or      $t7, $t6, $at              ## $t7 = FFFFFF00
/* 07508 80904448 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 0750C 8090444C 86620340 */  lh      $v0, 0x0340($s3)           ## 00000340
/* 07510 80904450 24440001 */  addiu   $a0, $v0, 0x0001           ## $a0 = 00000001
/* 07514 80904454 0C23F3D0 */  jal     func_808FCF40              
/* 07518 80904458 03022823 */  subu    $a1, $t8, $v0              
/* 0751C 8090445C 0C23F3D7 */  jal     func_808FCF5C              
/* 07520 80904460 00000000 */  nop
/* 07524 80904464 3C018091 */  lui     $at, %hi(D_8090DD1C)       ## $at = 80910000
/* 07528 80904468 C424DD1C */  lwc1    $f4, %lo(D_8090DD1C)($at)  
/* 0752C 8090446C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 07530 80904470 3C028091 */  lui     $v0, %hi(D_8090A6D8)       ## $v0 = 80910000
/* 07534 80904474 2442A6D8 */  addiu   $v0, $v0, %lo(D_8090A6D8)  ## $v0 = 8090A6D8
/* 07538 80904478 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0753C 8090447C 0041A824 */  and     $s5, $v0, $at              
/* 07540 80904480 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 07544 80904484 4481E000 */  mtc1    $at, $f28                  ## $f28 = 0.50
/* 07548 80904488 3C01C348 */  lui     $at, 0xC348                ## $at = C3480000
/* 0754C 8090448C 0002C900 */  sll     $t9, $v0,  4               
/* 07550 80904490 00194702 */  srl     $t0, $t9, 28               
/* 07554 80904494 4481D000 */  mtc1    $at, $f26                  ## $f26 = -200.00
/* 07558 80904498 3C0A8016 */  lui     $t2, %hi(gSegments)
/* 0755C 8090449C 254A6FA8 */  addiu   $t2, %lo(gSegments)
/* 07560 809044A0 3C018091 */  lui     $at, %hi(D_8090DD20)       ## $at = 80910000
/* 07564 809044A4 00084880 */  sll     $t1, $t0,  2               
/* 07568 809044A8 46040782 */  mul.s   $f30, $f0, $f4             
/* 0756C 809044AC 012AA021 */  addu    $s4, $t1, $t2              
/* 07570 809044B0 C438DD20 */  lwc1    $f24, %lo(D_8090DD20)($at) 
/* 07574 809044B4 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
.L809044B8:
/* 07578 809044B8 44913000 */  mtc1    $s1, $f6                   ## $f6 = 0.00
/* 0757C 809044BC 3C018091 */  lui     $at, %hi(D_8090DD24)       ## $at = 80910000
/* 07580 809044C0 C42ADD24 */  lwc1    $f10, %lo(D_8090DD24)($at) 
/* 07584 809044C4 46803220 */  cvt.s.w $f8, $f6                   
/* 07588 809044C8 460A4402 */  mul.s   $f16, $f8, $f10            
/* 0758C 809044CC 461E8500 */  add.s   $f20, $f16, $f30           
/* 07590 809044D0 0C0400A4 */  jal     sinf
              
/* 07594 809044D4 4600A306 */  mov.s   $f12, $f20                 
/* 07598 809044D8 46180582 */  mul.s   $f22, $f0, $f24            
/* 0759C 809044DC 0C041184 */  jal     cosf
              
/* 075A0 809044E0 4600A306 */  mov.s   $f12, $f20                 
/* 075A4 809044E4 46180482 */  mul.s   $f18, $f0, $f24            
/* 075A8 809044E8 3C018091 */  lui     $at, %hi(D_8090DD28)       ## $at = 80910000
/* 075AC 809044EC C42EDD28 */  lwc1    $f14, %lo(D_8090DD28)($at) 
/* 075B0 809044F0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 075B4 809044F4 4616D300 */  add.s   $f12, $f26, $f22           
/* 075B8 809044F8 4612D100 */  add.s   $f4, $f26, $f18            
/* 075BC 809044FC 44062000 */  mfc1    $a2, $f4                   
/* 075C0 80904500 0C034261 */  jal     Matrix_Translate              
/* 075C4 80904504 00000000 */  nop
/* 075C8 80904508 C66C032C */  lwc1    $f12, 0x032C($s3)          ## 0000032C
/* 075CC 8090450C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 075D0 80904510 44066000 */  mfc1    $a2, $f12                  
/* 075D4 80904514 0C0342A3 */  jal     Matrix_Scale              
/* 075D8 80904518 46006386 */  mov.s   $f14, $f12                 
/* 075DC 8090451C 4600A306 */  mov.s   $f12, $f20                 
/* 075E0 80904520 0C034348 */  jal     Matrix_RotateY              
/* 075E4 80904524 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 075E8 80904528 0C23F3D7 */  jal     func_808FCF5C              
/* 075EC 8090452C 00000000 */  nop
/* 075F0 80904530 461C0181 */  sub.s   $f6, $f0, $f28             
/* 075F4 80904534 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 075F8 80904538 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 075FC 8090453C 3C018091 */  lui     $at, %hi(D_8090DD2C)       ## $at = 80910000
/* 07600 80904540 C430DD2C */  lwc1    $f16, %lo(D_8090DD2C)($at) 
/* 07604 80904544 46083282 */  mul.s   $f10, $f6, $f8             
/* 07608 80904548 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0760C 8090454C 46105302 */  mul.s   $f12, $f10, $f16           
/* 07610 80904550 0C0343B5 */  jal     Matrix_RotateZ              
/* 07614 80904554 00000000 */  nop
/* 07618 80904558 0C23F3D7 */  jal     func_808FCF5C              
/* 0761C 8090455C 00000000 */  nop
/* 07620 80904560 461C003C */  c.lt.s  $f0, $f28                  
/* 07624 80904564 3C018091 */  lui     $at, %hi(D_8090DD30)       ## $at = 80910000
/* 07628 80904568 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0762C 8090456C 45020004 */  bc1fl   .L80904580                 
/* 07630 80904570 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 07634 80904574 0C034348 */  jal     Matrix_RotateY              
/* 07638 80904578 C42CDD30 */  lwc1    $f12, %lo(D_8090DD30)($at) 
/* 0763C 8090457C 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
.L80904580:
/* 07640 80904580 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 07644 80904584 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = DA380003
/* 07648 80904588 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 0764C 8090458C AE4B02D0 */  sw      $t3, 0x02D0($s2)           ## 000002D0
/* 07650 80904590 3C058091 */  lui     $a1, %hi(D_8090D7A0)       ## $a1 = 80910000
/* 07654 80904594 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 07658 80904598 8EC40000 */  lw      $a0, 0x0000($s6)           ## 00000000
/* 0765C 8090459C 24A5D7A0 */  addiu   $a1, $a1, %lo(D_8090D7A0)  ## $a1 = 8090D7A0
/* 07660 809045A0 24061482 */  addiu   $a2, $zero, 0x1482         ## $a2 = 00001482
/* 07664 809045A4 0C0346A2 */  jal     Matrix_NewMtx              
/* 07668 809045A8 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 0766C 809045AC AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 07670 809045B0 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 07674 809045B4 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 07678 809045B8 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 0767C 809045BC 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 07680 809045C0 AE4D02D0 */  sw      $t5, 0x02D0($s2)           ## 000002D0
/* 07684 809045C4 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 07688 809045C8 8E8F0000 */  lw      $t7, 0x0000($s4)           ## 00000000
/* 0768C 809045CC 00118C00 */  sll     $s1, $s1, 16               
/* 07690 809045D0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 07694 809045D4 01F5C021 */  addu    $t8, $t7, $s5              
/* 07698 809045D8 00118C03 */  sra     $s1, $s1, 16               
/* 0769C 809045DC 0301C821 */  addu    $t9, $t8, $at              
/* 076A0 809045E0 2A210005 */  slti    $at, $s1, 0x0005           
/* 076A4 809045E4 1420FFB4 */  bne     $at, $zero, .L809044B8     
/* 076A8 809045E8 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
.L809045EC:
/* 076AC 809045EC 0C034221 */  jal     Matrix_Pop              
/* 076B0 809045F0 00000000 */  nop
/* 076B4 809045F4 3C068091 */  lui     $a2, %hi(D_8090D7B4)       ## $a2 = 80910000
/* 076B8 809045F8 24C6D7B4 */  addiu   $a2, $a2, %lo(D_8090D7B4)  ## $a2 = 8090D7B4
/* 076BC 809045FC 27A40090 */  addiu   $a0, $sp, 0x0090           ## $a0 = FFFFFFD8
/* 076C0 80904600 8EC50000 */  lw      $a1, 0x0000($s6)           ## 00000000
/* 076C4 80904604 0C031AD5 */  jal     Graph_CloseDisps              
/* 076C8 80904608 24071487 */  addiu   $a3, $zero, 0x1487         ## $a3 = 00001487
/* 076CC 8090460C 8FBF0064 */  lw      $ra, 0x0064($sp)           
/* 076D0 80904610 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 076D4 80904614 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 076D8 80904618 D7B80028 */  ldc1    $f24, 0x0028($sp)          
/* 076DC 8090461C D7BA0030 */  ldc1    $f26, 0x0030($sp)          
/* 076E0 80904620 D7BC0038 */  ldc1    $f28, 0x0038($sp)          
/* 076E4 80904624 D7BE0040 */  ldc1    $f30, 0x0040($sp)          
/* 076E8 80904628 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 076EC 8090462C 8FB1004C */  lw      $s1, 0x004C($sp)           
/* 076F0 80904630 8FB20050 */  lw      $s2, 0x0050($sp)           
/* 076F4 80904634 8FB30054 */  lw      $s3, 0x0054($sp)           
/* 076F8 80904638 8FB40058 */  lw      $s4, 0x0058($sp)           
/* 076FC 8090463C 8FB5005C */  lw      $s5, 0x005C($sp)           
/* 07700 80904640 8FB60060 */  lw      $s6, 0x0060($sp)           
/* 07704 80904644 03E00008 */  jr      $ra                        
/* 07708 80904648 27BD00B8 */  addiu   $sp, $sp, 0x00B8           ## $sp = 00000000
