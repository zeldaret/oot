glabel func_80B4FEFC
/* 0156C 80B4FEFC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01570 80B4FF00 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01574 80B4FF04 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 01578 80B4FF08 8C8F0244 */  lw      $t7, 0x0244($a0)           ## 00000244
/* 0157C 80B4FF0C 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 01580 80B4FF10 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 01584 80B4FF14 15E00017 */  bne     $t7, $zero, .L80B4FF74     
/* 01588 80B4FF18 2406008B */  addiu   $a2, $zero, 0x008B         ## $a2 = 0000008B
/* 0158C 80B4FF1C 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 01590 80B4FF20 44813000 */  mtc1    $at, $f6                   ## $f6 = 80.00
/* 01594 80B4FF24 24180017 */  addiu   $t8, $zero, 0x0017         ## $t8 = 00000017
/* 01598 80B4FF28 C4400024 */  lwc1    $f0, 0x0024($v0)           ## 00000024
/* 0159C 80B4FF2C C4440028 */  lwc1    $f4, 0x0028($v0)           ## 00000028
/* 015A0 80B4FF30 C44C002C */  lwc1    $f12, 0x002C($v0)          ## 0000002C
/* 015A4 80B4FF34 44070000 */  mfc1    $a3, $f0                   
/* 015A8 80B4FF38 46062080 */  add.s   $f2, $f4, $f6              
/* 015AC 80B4FF3C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 015B0 80B4FF40 AFB80024 */  sw      $t8, 0x0024($sp)           
/* 015B4 80B4FF44 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 015B8 80B4FF48 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 015BC 80B4FF4C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 015C0 80B4FF50 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 015C4 80B4FF54 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 015C8 80B4FF58 E7AC0014 */  swc1    $f12, 0x0014($sp)          
/* 015CC 80B4FF5C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 015D0 80B4FF60 0C021344 */  jal     Item_Give              
/* 015D4 80B4FF64 24050012 */  addiu   $a1, $zero, 0x0012         ## $a1 = 00000012
/* 015D8 80B4FF68 8FA80030 */  lw      $t0, 0x0030($sp)           
/* 015DC 80B4FF6C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 015E0 80B4FF70 AD190244 */  sw      $t9, 0x0244($t0)           ## 00000244
.L80B4FF74:
/* 015E4 80B4FF74 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 015E8 80B4FF78 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 015EC 80B4FF7C 03E00008 */  jr      $ra                        
/* 015F0 80B4FF80 00000000 */  nop


