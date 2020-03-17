glabel func_80AE03C4
/* 02674 80AE03C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02678 80AE03C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0267C 80AE03CC 8C820190 */  lw      $v0, 0x0190($a0)           ## 00000190
/* 02680 80AE03D0 3C0E80AE */  lui     $t6, %hi(func_80ADF77C)    ## $t6 = 80AE0000
/* 02684 80AE03D4 25CEF77C */  addiu   $t6, $t6, %lo(func_80ADF77C) ## $t6 = 80ADF77C
/* 02688 80AE03D8 11C20052 */  beq     $t6, $v0, .L80AE0524       
/* 0268C 80AE03DC 3C0F80AE */  lui     $t7, %hi(func_80ADF660)    ## $t7 = 80AE0000
/* 02690 80AE03E0 25EFF660 */  addiu   $t7, $t7, %lo(func_80ADF660) ## $t7 = 80ADF660
/* 02694 80AE03E4 11E2004F */  beq     $t7, $v0, .L80AE0524       
/* 02698 80AE03E8 3C1880AE */  lui     $t8, %hi(func_80ADEF38)    ## $t8 = 80AE0000
/* 0269C 80AE03EC 2718EF38 */  addiu   $t8, $t8, %lo(func_80ADEF38) ## $t8 = 80ADEF38
/* 026A0 80AE03F0 1302004C */  beq     $t8, $v0, .L80AE0524       
/* 026A4 80AE03F4 3C1980AE */  lui     $t9, %hi(func_80ADF0B8)    ## $t9 = 80AE0000
/* 026A8 80AE03F8 2739F0B8 */  addiu   $t9, $t9, %lo(func_80ADF0B8) ## $t9 = 80ADF0B8
/* 026AC 80AE03FC 5322004A */  beql    $t9, $v0, .L80AE0528       
/* 026B0 80AE0400 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 026B4 80AE0404 8482019A */  lh      $v0, 0x019A($a0)           ## 0000019A
/* 026B8 80AE0408 10400002 */  beq     $v0, $zero, .L80AE0414     
/* 026BC 80AE040C 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 026C0 80AE0410 A488019A */  sh      $t0, 0x019A($a0)           ## 0000019A
.L80AE0414:
/* 026C4 80AE0414 9082029D */  lbu     $v0, 0x029D($a0)           ## 0000029D
/* 026C8 80AE0418 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 026CC 80AE041C 1441002C */  bne     $v0, $at, .L80AE04D0       
/* 026D0 80AE0420 00000000 */  nop
/* 026D4 80AE0424 9089010C */  lbu     $t1, 0x010C($a0)           ## 0000010C
/* 026D8 80AE0428 5120000D */  beql    $t1, $zero, .L80AE0460     
/* 026DC 80AE042C A0800194 */  sb      $zero, 0x0194($a0)         ## 00000194
/* 026E0 80AE0430 908A0194 */  lbu     $t2, 0x0194($a0)           ## 00000194
/* 026E4 80AE0434 240C0014 */  addiu   $t4, $zero, 0x0014         ## $t4 = 00000014
/* 026E8 80AE0438 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 026EC 80AE043C 316200FF */  andi    $v0, $t3, 0x00FF           ## $v0 = 00000001
/* 026F0 80AE0440 28410015 */  slti    $at, $v0, 0x0015           
/* 026F4 80AE0444 14200003 */  bne     $at, $zero, .L80AE0454     
/* 026F8 80AE0448 A08B0194 */  sb      $t3, 0x0194($a0)           ## 00000194
/* 026FC 80AE044C 10000004 */  beq     $zero, $zero, .L80AE0460   
/* 02700 80AE0450 A08C0194 */  sb      $t4, 0x0194($a0)           ## 00000194
.L80AE0454:
/* 02704 80AE0454 10000002 */  beq     $zero, $zero, .L80AE0460   
/* 02708 80AE0458 A0820194 */  sb      $v0, 0x0194($a0)           ## 00000194
/* 0270C 80AE045C A0800194 */  sb      $zero, 0x0194($a0)         ## 00000194
.L80AE0460:
/* 02710 80AE0460 908D0194 */  lbu     $t5, 0x0194($a0)           ## 00000194
/* 02714 80AE0464 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 02718 80AE0468 51A10005 */  beql    $t5, $at, .L80AE0480       
/* 0271C 80AE046C 8C820190 */  lw      $v0, 0x0190($a0)           ## 00000190
/* 02720 80AE0470 848E019A */  lh      $t6, 0x019A($a0)           ## 0000019A
/* 02724 80AE0474 55C0002C */  bnel    $t6, $zero, .L80AE0528     
/* 02728 80AE0478 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0272C 80AE047C 8C820190 */  lw      $v0, 0x0190($a0)           ## 00000190
.L80AE0480:
/* 02730 80AE0480 3C0F80AE */  lui     $t7, %hi(func_80ADEAC4)    ## $t7 = 80AE0000
/* 02734 80AE0484 25EFEAC4 */  addiu   $t7, $t7, %lo(func_80ADEAC4) ## $t7 = 80ADEAC4
/* 02738 80AE0488 11E2000D */  beq     $t7, $v0, .L80AE04C0       
/* 0273C 80AE048C 3C1880AE */  lui     $t8, %hi(func_80ADEB80)    ## $t8 = 80AE0000
/* 02740 80AE0490 2718EB80 */  addiu   $t8, $t8, %lo(func_80ADEB80) ## $t8 = 80ADEB80
/* 02744 80AE0494 1302000A */  beq     $t8, $v0, .L80AE04C0       
/* 02748 80AE0498 3C1980AE */  lui     $t9, %hi(func_80ADEC9C)    ## $t9 = 80AE0000
/* 0274C 80AE049C 2739EC9C */  addiu   $t9, $t9, %lo(func_80ADEC9C) ## $t9 = 80ADEC9C
/* 02750 80AE04A0 13220007 */  beq     $t9, $v0, .L80AE04C0       
/* 02754 80AE04A4 3C0880AE */  lui     $t0, %hi(func_80ADF894)    ## $t0 = 80AE0000
/* 02758 80AE04A8 2508F894 */  addiu   $t0, $t0, %lo(func_80ADF894) ## $t0 = 80ADF894
/* 0275C 80AE04AC 11020004 */  beq     $t0, $v0, .L80AE04C0       
/* 02760 80AE04B0 3C0980AE */  lui     $t1, %hi(func_80ADF5E0)    ## $t1 = 80AE0000
/* 02764 80AE04B4 2529F5E0 */  addiu   $t1, $t1, %lo(func_80ADF5E0) ## $t1 = 80ADF5E0
/* 02768 80AE04B8 5522001B */  bnel    $t1, $v0, .L80AE0528       
/* 0276C 80AE04BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE04C0:
/* 02770 80AE04C0 0C2B795B */  jal     func_80ADE56C              
/* 02774 80AE04C4 00000000 */  nop
/* 02778 80AE04C8 10000017 */  beq     $zero, $zero, .L80AE0528   
/* 0277C 80AE04CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE04D0:
/* 02780 80AE04D0 54400015 */  bnel    $v0, $zero, .L80AE0528     
/* 02784 80AE04D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02788 80AE04D8 848A019A */  lh      $t2, 0x019A($a0)           ## 0000019A
/* 0278C 80AE04DC 55400012 */  bnel    $t2, $zero, .L80AE0528     
/* 02790 80AE04E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02794 80AE04E4 8C820190 */  lw      $v0, 0x0190($a0)           ## 00000190
/* 02798 80AE04E8 3C0B80AE */  lui     $t3, %hi(func_80ADEAC4)    ## $t3 = 80AE0000
/* 0279C 80AE04EC 256BEAC4 */  addiu   $t3, $t3, %lo(func_80ADEAC4) ## $t3 = 80ADEAC4
/* 027A0 80AE04F0 1162000A */  beq     $t3, $v0, .L80AE051C       
/* 027A4 80AE04F4 3C0C80AE */  lui     $t4, %hi(func_80ADEB80)    ## $t4 = 80AE0000
/* 027A8 80AE04F8 258CEB80 */  addiu   $t4, $t4, %lo(func_80ADEB80) ## $t4 = 80ADEB80
/* 027AC 80AE04FC 11820007 */  beq     $t4, $v0, .L80AE051C       
/* 027B0 80AE0500 3C0D80AE */  lui     $t5, %hi(func_80ADEC9C)    ## $t5 = 80AE0000
/* 027B4 80AE0504 25ADEC9C */  addiu   $t5, $t5, %lo(func_80ADEC9C) ## $t5 = 80ADEC9C
/* 027B8 80AE0508 11A20004 */  beq     $t5, $v0, .L80AE051C       
/* 027BC 80AE050C 3C0E80AE */  lui     $t6, %hi(func_80ADF5E0)    ## $t6 = 80AE0000
/* 027C0 80AE0510 25CEF5E0 */  addiu   $t6, $t6, %lo(func_80ADF5E0) ## $t6 = 80ADF5E0
/* 027C4 80AE0514 55C20004 */  bnel    $t6, $v0, .L80AE0528       
/* 027C8 80AE0518 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE051C:
/* 027CC 80AE051C 0C2B7971 */  jal     func_80ADE5C4              
/* 027D0 80AE0520 00000000 */  nop
.L80AE0524:
/* 027D4 80AE0524 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE0528:
/* 027D8 80AE0528 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 027DC 80AE052C 03E00008 */  jr      $ra                        
/* 027E0 80AE0530 00000000 */  nop


