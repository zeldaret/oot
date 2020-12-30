.late_rodata
glabel D_809CBACC
    .float 1250.0

.text
glabel func_809CB2B8
/* 007A8 809CB2B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007AC 809CB2BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007B0 809CB2C0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 007B4 809CB2C4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 007B8 809CB2C8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 007BC 809CB2CC 0C02927F */  jal     SkelAnime_Update
              
/* 007C0 809CB2D0 24840164 */  addiu   $a0, $a0, 0x0164           ## $a0 = 00000164
/* 007C4 809CB2D4 10400007 */  beq     $v0, $zero, .L809CB2F4     
/* 007C8 809CB2D8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 007CC 809CB2DC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 007D0 809CB2E0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 007D4 809CB2E4 0C272B77 */  jal     func_809CADDC              
/* 007D8 809CB2E8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 007DC 809CB2EC 10000013 */  beq     $zero, $zero, .L809CB33C   
/* 007E0 809CB2F0 8FA60018 */  lw      $a2, 0x0018($sp)           
.L809CB2F4:
/* 007E4 809CB2F4 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 007E8 809CB2F8 44813000 */  mtc1    $at, $f6                   ## $f6 = 8.00
/* 007EC 809CB2FC C4C4017C */  lwc1    $f4, 0x017C($a2)           ## 0000017C
/* 007F0 809CB300 4606203C */  c.lt.s  $f4, $f6                   
/* 007F4 809CB304 00000000 */  nop
/* 007F8 809CB308 4502000D */  bc1fl   .L809CB340                 
/* 007FC 809CB30C 24190050 */  addiu   $t9, $zero, 0x0050         ## $t9 = 00000050
/* 00800 809CB310 84CE01AE */  lh      $t6, 0x01AE($a2)           ## 000001AE
/* 00804 809CB314 3C01809D */  lui     $at, %hi(D_809CBACC)       ## $at = 809D0000
/* 00808 809CB318 C430BACC */  lwc1    $f16, %lo(D_809CBACC)($at) 
/* 0080C 809CB31C 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 00810 809CB320 00000000 */  nop
/* 00814 809CB324 468042A0 */  cvt.s.w $f10, $f8                  
/* 00818 809CB328 46105481 */  sub.s   $f18, $f10, $f16           
/* 0081C 809CB32C 4600910D */  trunc.w.s $f4, $f18                  
/* 00820 809CB330 44182000 */  mfc1    $t8, $f4                   
/* 00824 809CB334 00000000 */  nop
/* 00828 809CB338 A4D801AE */  sh      $t8, 0x01AE($a2)           ## 000001AE
.L809CB33C:
/* 0082C 809CB33C 24190050 */  addiu   $t9, $zero, 0x0050         ## $t9 = 00000050
.L809CB340:
/* 00830 809CB340 A0D90114 */  sb      $t9, 0x0114($a2)           ## 00000114
/* 00834 809CB344 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00838 809CB348 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0083C 809CB34C 03E00008 */  jr      $ra                        
/* 00840 809CB350 00000000 */  nop
