glabel func_80B57754
/* 043A4 80B57754 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x13f0)
/* 043A8 80B57758 85CEFA50 */  lh      $t6, %lo(gSaveContext+0x13f0)($t6)
/* 043AC 80B5775C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 043B0 80B57760 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 043B4 80B57764 15C00011 */  bne     $t6, $zero, .L80B577AC     
/* 043B8 80B57768 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 043BC 80B5776C 8FAF0030 */  lw      $t7, 0x0030($sp)           
/* 043C0 80B57770 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 043C4 80B57774 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 043C8 80B57778 C5E40028 */  lwc1    $f4, 0x0028($t7)           ## 00000028
/* 043CC 80B5777C 8DE70024 */  lw      $a3, 0x0024($t7)           ## 00000024
/* 043D0 80B57780 240601CB */  addiu   $a2, $zero, 0x01CB         ## $a2 = 000001CB
/* 043D4 80B57784 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 043D8 80B57788 C5E6002C */  lwc1    $f6, 0x002C($t7)           ## 0000002C
/* 043DC 80B5778C AFB80024 */  sw      $t8, 0x0024($sp)           
/* 043E0 80B57790 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 043E4 80B57794 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 043E8 80B57798 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 043EC 80B5779C 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 043F0 80B577A0 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 043F4 80B577A4 0C2D5B69 */  jal     func_80B56DA4              
/* 043F8 80B577A8 8FA40030 */  lw      $a0, 0x0030($sp)           
.L80B577AC:
/* 043FC 80B577AC 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 04400 80B577B0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 04404 80B577B4 03E00008 */  jr      $ra                        
/* 04408 80B577B8 00000000 */  nop
