glabel BgSpot01Idohashira_Init
/* 0090C 808AB5EC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00910 808AB5F0 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00914 808AB5F4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00918 808AB5F8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0091C 808AB5FC 3C05808B */  lui     $a1, %hi(D_808AB840)       ## $a1 = 808B0000
/* 00920 808AB600 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00924 808AB604 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00928 808AB608 24A5B840 */  addiu   $a1, $a1, %lo(D_808AB840)  ## $a1 = 808AB840
/* 0092C 808AB60C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00930 808AB610 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00934 808AB614 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00938 808AB618 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0093C 808AB61C AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00940 808AB620 2484075C */  addiu   $a0, $a0, 0x075C           ## $a0 = 0600075C
/* 00944 808AB624 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00948 808AB628 27A50028 */  addiu   $a1, $sp, 0x0028           ## $a1 = FFFFFFF0
/* 0094C 808AB62C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00950 808AB630 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00954 808AB634 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 00958 808AB638 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 0095C 808AB63C 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00960 808AB640 3C048016 */  lui     $a0, 0x8016                ## $a0 = 80160000
/* 00964 808AB644 2484E660 */  addiu   $a0, $a0, 0xE660           ## $a0 = 8015E660
/* 00968 808AB648 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 0096C 808AB64C 8C831360 */  lw      $v1, 0x1360($a0)           ## 8015F9C0
/* 00970 808AB650 28610004 */  slti    $at, $v1, 0x0004           
/* 00974 808AB654 5020000F */  beql    $at, $zero, .L808AB694     
/* 00978 808AB658 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0097C 808AB65C 948E0EDE */  lhu     $t6, 0x0EDE($a0)           ## 8015F53E
/* 00980 808AB660 31CF0010 */  andi    $t7, $t6, 0x0010           ## $t7 = 00000000
/* 00984 808AB664 11E00008 */  beq     $t7, $zero, .L808AB688     
/* 00988 808AB668 00000000 */  nop
/* 0098C 808AB66C 8C980004 */  lw      $t8, 0x0004($a0)           ## 8015E664
/* 00990 808AB670 17000005 */  bne     $t8, $zero, .L808AB688     
/* 00994 808AB674 00000000 */  nop
/* 00998 808AB678 0C00B55C */  jal     Actor_Kill
              
/* 0099C 808AB67C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009A0 808AB680 1000001B */  beq     $zero, $zero, .L808AB6F0   
/* 009A4 808AB684 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808AB688:
/* 009A8 808AB688 10000018 */  beq     $zero, $zero, .L808AB6EC   
/* 009AC 808AB68C AE000164 */  sw      $zero, 0x0164($s0)         ## 00000164
/* 009B0 808AB690 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
.L808AB694:
/* 009B4 808AB694 1461000E */  bne     $v1, $at, .L808AB6D0       
/* 009B8 808AB698 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 009BC 808AB69C AE190164 */  sw      $t9, 0x0164($s0)           ## 00000164
/* 009C0 808AB6A0 3C088016 */  lui     $t0, 0x8016                ## $t0 = 80160000
/* 009C4 808AB6A4 8D08FA90 */  lw      $t0, -0x0570($t0)          ## 8015FA90
/* 009C8 808AB6A8 3C01808B */  lui     $at, %hi(D_808AB9D0)       ## $at = 808B0000
/* 009CC 808AB6AC C428B9D0 */  lwc1    $f8, %lo(D_808AB9D0)($at)  
/* 009D0 808AB6B0 85091468 */  lh      $t1, 0x1468($t0)           ## 80161468
/* 009D4 808AB6B4 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 009D8 808AB6B8 00000000 */  nop
/* 009DC 808AB6BC 468021A0 */  cvt.s.w $f6, $f4                   
/* 009E0 808AB6C0 46083280 */  add.s   $f10, $f6, $f8             
/* 009E4 808AB6C4 46005407 */  neg.s   $f16, $f10                 
/* 009E8 808AB6C8 10000008 */  beq     $zero, $zero, .L808AB6EC   
/* 009EC 808AB6CC E61000BC */  swc1    $f16, 0x00BC($s0)          ## 000000BC
.L808AB6D0:
/* 009F0 808AB6D0 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 009F4 808AB6D4 14610003 */  bne     $v1, $at, .L808AB6E4       
/* 009F8 808AB6D8 00000000 */  nop
/* 009FC 808AB6DC 10000003 */  beq     $zero, $zero, .L808AB6EC   
/* 00A00 808AB6E0 AE000164 */  sw      $zero, 0x0164($s0)         ## 00000164
.L808AB6E4:
/* 00A04 808AB6E4 0C00B55C */  jal     Actor_Kill
              
/* 00A08 808AB6E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L808AB6EC:
/* 00A0C 808AB6EC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808AB6F0:
/* 00A10 808AB6F0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00A14 808AB6F4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00A18 808AB6F8 03E00008 */  jr      $ra                        
/* 00A1C 808AB6FC 00000000 */  nop


