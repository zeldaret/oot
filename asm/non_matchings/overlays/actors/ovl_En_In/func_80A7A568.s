glabel func_80A7A568
/* 015B8 80A7A568 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 015BC 80A7A56C 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 015C0 80A7A570 944E0ED6 */  lhu     $t6, 0x0ED6($v0)           ## 8015F536
/* 015C4 80A7A574 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 015C8 80A7A578 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 015CC 80A7A57C AFB10020 */  sw      $s1, 0x0020($sp)           
/* 015D0 80A7A580 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 015D4 80A7A584 31CF0800 */  andi    $t7, $t6, 0x0800           ## $t7 = 00000000
/* 015D8 80A7A588 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 015DC 80A7A58C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 015E0 80A7A590 15E00008 */  bne     $t7, $zero, .L80A7A5B4     
/* 015E4 80A7A594 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 015E8 80A7A598 8C78067C */  lw      $t8, 0x067C($v1)           ## 0000067C
/* 015EC 80A7A59C 0018CA00 */  sll     $t9, $t8,  8               
/* 015F0 80A7A5A0 07230005 */  bgezl   $t9, .L80A7A5B8            
/* 015F4 80A7A5A4 844A13CE */  lh      $t2, 0x13CE($v0)           ## 8015FA2E
/* 015F8 80A7A5A8 94480F0C */  lhu     $t0, 0x0F0C($v0)           ## 8015F56C
/* 015FC 80A7A5AC 35090800 */  ori     $t1, $t0, 0x0800           ## $t1 = 00000800
/* 01600 80A7A5B0 A4490F0C */  sh      $t1, 0x0F0C($v0)           ## 8015F56C
.L80A7A5B4:
/* 01604 80A7A5B4 844A13CE */  lh      $t2, 0x13CE($v0)           ## 8015FA2E
.L80A7A5B8:
/* 01608 80A7A5B8 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 0160C 80A7A5BC 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 01610 80A7A5C0 15410014 */  bne     $t2, $at, .L80A7A614       
/* 01614 80A7A5C4 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 01618 80A7A5C8 3C0B8013 */  lui     $t3, %hi(D_801333E8)
/* 0161C 80A7A5CC 256B33E8 */  addiu   $t3, %lo(D_801333E8)
/* 01620 80A7A5D0 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 01624 80A7A5D4 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 01628 80A7A5D8 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 0162C 80A7A5DC 2404482C */  addiu   $a0, $zero, 0x482C         ## $a0 = 0000482C
/* 01630 80A7A5E0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01634 80A7A5E4 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 01638 80A7A5E8 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0163C 80A7A5EC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01640 80A7A5F0 0C29E71E */  jal     func_80A79C78              
/* 01644 80A7A5F4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01648 80A7A5F8 3C0C80A8 */  lui     $t4, %hi(func_80A7B024)    ## $t4 = 80A80000
/* 0164C 80A7A5FC 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01650 80A7A600 258CB024 */  addiu   $t4, $t4, %lo(func_80A7B024) ## $t4 = 80A7B024
/* 01654 80A7A604 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01658 80A7A608 AE2C0190 */  sw      $t4, 0x0190($s1)           ## 00000190
/* 0165C 80A7A60C 10000053 */  beq     $zero, $zero, .L80A7A75C   
/* 01660 80A7A610 A44013CE */  sh      $zero, 0x13CE($v0)         ## 8015FA2E
.L80A7A614:
/* 01664 80A7A614 862D0308 */  lh      $t5, 0x0308($s1)           ## 00000308
/* 01668 80A7A618 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0166C 80A7A61C 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 01670 80A7A620 15A1004E */  bne     $t5, $at, .L80A7A75C       
/* 01674 80A7A624 01D07021 */  addu    $t6, $t6, $s0              
/* 01678 80A7A628 91CE04BD */  lbu     $t6, 0x04BD($t6)           ## 000104BD
/* 0167C 80A7A62C 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 01680 80A7A630 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 01684 80A7A634 15C0001C */  bne     $t6, $zero, .L80A7A6A8     
/* 01688 80A7A638 2404482C */  addiu   $a0, $zero, 0x482C         ## $a0 = 0000482C
/* 0168C 80A7A63C 844F0034 */  lh      $t7, 0x0034($v0)           ## 8015E694
/* 01690 80A7A640 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 01694 80A7A644 24190036 */  addiu   $t9, $zero, 0x0036         ## $t9 = 00000036
/* 01698 80A7A648 29E10032 */  slti    $at, $t7, 0x0032           
/* 0169C 80A7A64C 10200008 */  beq     $at, $zero, .L80A7A670     
/* 016A0 80A7A650 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 016A4 80A7A654 00300821 */  addu    $at, $at, $s0              
/* 016A8 80A7A658 A03804BF */  sb      $t8, 0x04BF($at)           ## 000104BF
/* 016AC 80A7A65C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 016B0 80A7A660 00300821 */  addu    $at, $at, $s0              
/* 016B4 80A7A664 A03903DC */  sb      $t9, 0x03DC($at)           ## 000103DC
/* 016B8 80A7A668 1000003C */  beq     $zero, $zero, .L80A7A75C   
/* 016BC 80A7A66C A6200308 */  sh      $zero, 0x0308($s1)         ## 00000308
.L80A7A670:
/* 016C0 80A7A670 8E081C44 */  lw      $t0, 0x1C44($s0)           ## 00001C44
/* 016C4 80A7A674 944C13FA */  lhu     $t4, 0x13FA($v0)           ## 8015FA5A
/* 016C8 80A7A678 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 016CC 80A7A67C 8D090440 */  lw      $t1, 0x0440($t0)           ## 00000440
/* 016D0 80A7A680 318DFFEF */  andi    $t5, $t4, 0xFFEF           ## $t5 = 0000B024
/* 016D4 80A7A684 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 016D8 80A7A688 8D2A0158 */  lw      $t2, 0x0158($t1)           ## 00000158
/* 016DC 80A7A68C 000A5900 */  sll     $t3, $t2,  4               
/* 016E0 80A7A690 016D7825 */  or      $t7, $t3, $t5              ## $t7 = 0000B024
/* 016E4 80A7A694 31F8FFF0 */  andi    $t8, $t7, 0xFFF0           ## $t8 = 0000B020
/* 016E8 80A7A698 A44F13FA */  sh      $t7, 0x13FA($v0)           ## 8015FA5A
/* 016EC 80A7A69C 37190002 */  ori     $t9, $t8, 0x0002           ## $t9 = 0000B022
/* 016F0 80A7A6A0 1000001B */  beq     $zero, $zero, .L80A7A710   
/* 016F4 80A7A6A4 A45913FA */  sh      $t9, 0x13FA($v0)           ## 8015FA5A
.L80A7A6A8:
/* 016F8 80A7A6A8 3C088013 */  lui     $t0, %hi(D_801333E8)
/* 016FC 80A7A6AC 250833E8 */  addiu   $t0, %lo(D_801333E8)
/* 01700 80A7A6B0 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 01704 80A7A6B4 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 01708 80A7A6B8 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 0170C 80A7A6BC 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01710 80A7A6C0 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 01714 80A7A6C4 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 01718 80A7A6C8 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 0171C 80A7A6CC 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01720 80A7A6D0 94430ED6 */  lhu     $v1, 0x0ED6($v0)           ## 8015F536
/* 01724 80A7A6D4 30690800 */  andi    $t1, $v1, 0x0800           ## $t1 = 00000000
/* 01728 80A7A6D8 55200009 */  bnel    $t1, $zero, .L80A7A700     
/* 0172C 80A7A6DC 944D13FA */  lhu     $t5, 0x13FA($v0)           ## 8015FA5A
/* 01730 80A7A6E0 94440F0C */  lhu     $a0, 0x0F0C($v0)           ## 8015F56C
/* 01734 80A7A6E4 346C0800 */  ori     $t4, $v1, 0x0800           ## $t4 = 00000800
/* 01738 80A7A6E8 308A0800 */  andi    $t2, $a0, 0x0800           ## $t2 = 00000000
/* 0173C 80A7A6EC 11400003 */  beq     $t2, $zero, .L80A7A6FC     
/* 01740 80A7A6F0 348B0800 */  ori     $t3, $a0, 0x0800           ## $t3 = 00000800
/* 01744 80A7A6F4 A44C0ED6 */  sh      $t4, 0x0ED6($v0)           ## 8015F536
/* 01748 80A7A6F8 A44B0F0C */  sh      $t3, 0x0F0C($v0)           ## 8015F56C
.L80A7A6FC:
/* 0174C 80A7A6FC 944D13FA */  lhu     $t5, 0x13FA($v0)           ## 8015FA5A
.L80A7A700:
/* 01750 80A7A700 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01754 80A7A704 24070020 */  addiu   $a3, $zero, 0x0020         ## $a3 = 00000020
/* 01758 80A7A708 31AEFFF0 */  andi    $t6, $t5, 0xFFF0           ## $t6 = 00000000
/* 0175C 80A7A70C A44E13FA */  sh      $t6, 0x13FA($v0)           ## 8015FA5A
.L80A7A710:
/* 01760 80A7A710 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01764 80A7A714 0C29E6EB */  jal     func_80A79BAC              
/* 01768 80A7A718 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0176C 80A7A71C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01770 80A7A720 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01774 80A7A724 00300821 */  addu    $at, $at, $s0              
/* 01778 80A7A728 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 0177C 80A7A72C A02004BF */  sb      $zero, 0x04BF($at)         ## 000104BF
/* 01780 80A7A730 944F13FA */  lhu     $t7, 0x13FA($v0)           ## 8015FA5A
/* 01784 80A7A734 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 01788 80A7A738 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 0178C 80A7A73C 01E1C024 */  and     $t8, $t7, $at              
/* 01790 80A7A740 37198000 */  ori     $t9, $t8, 0x8000           ## $t9 = 00008000
/* 01794 80A7A744 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01798 80A7A748 A45913FA */  sh      $t9, 0x13FA($v0)           ## 8015FA5A
/* 0179C 80A7A74C 00300821 */  addu    $at, $at, $s0              
/* 017A0 80A7A750 24080036 */  addiu   $t0, $zero, 0x0036         ## $t0 = 00000036
/* 017A4 80A7A754 A02803DC */  sb      $t0, 0x03DC($at)           ## 000103DC
/* 017A8 80A7A758 A6200308 */  sh      $zero, 0x0308($s1)         ## 00000308
.L80A7A75C:
/* 017AC 80A7A75C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 017B0 80A7A760 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 017B4 80A7A764 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 017B8 80A7A768 03E00008 */  jr      $ra                        
/* 017BC 80A7A76C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
