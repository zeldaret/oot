glabel EnHintnuts_Draw
/* 01770 80A58970 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01774 80A58974 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01778 80A58978 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0177C 80A5897C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01780 80A58980 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 01784 80A58984 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 01788 80A58988 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0178C 80A5898C 15E10007 */  bne     $t7, $at, .L80A589AC       
/* 01790 80A58990 8FB80020 */  lw      $t8, 0x0020($sp)           
/* 01794 80A58994 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01798 80A58998 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0179C 80A5899C 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 017A0 80A589A0 24A514E0 */  addiu   $a1, $a1, 0x14E0           ## $a1 = 060014E0
/* 017A4 80A589A4 10000009 */  beq     $zero, $zero, .L80A589CC   
/* 017A8 80A589A8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A589AC:
/* 017AC 80A589AC 8F050150 */  lw      $a1, 0x0150($t8)           ## 00000150
/* 017B0 80A589B0 8F06016C */  lw      $a2, 0x016C($t8)           ## 0000016C
/* 017B4 80A589B4 3C0780A6 */  lui     $a3, %hi(func_80A58838)    ## $a3 = 80A60000
/* 017B8 80A589B8 24E78838 */  addiu   $a3, $a3, %lo(func_80A58838) ## $a3 = 80A58838
/* 017BC 80A589BC AFB80014 */  sw      $t8, 0x0014($sp)           
/* 017C0 80A589C0 0C028572 */  jal     SkelAnime_Draw
              
/* 017C4 80A589C4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 017C8 80A589C8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A589CC:
/* 017CC 80A589CC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 017D0 80A589D0 03E00008 */  jr      $ra                        
/* 017D4 80A589D4 00000000 */  nop
/* 017D8 80A589D8 00000000 */  nop
/* 017DC 80A589DC 00000000 */  nop
