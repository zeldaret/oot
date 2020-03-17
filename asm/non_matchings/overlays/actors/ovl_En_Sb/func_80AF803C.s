glabel func_80AF803C
/* 0084C 80AF803C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00850 80AF8040 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00854 80AF8044 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00858 80AF8048 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0085C 80AF804C 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 00860 80AF8050 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 00864 80AF8054 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00868 80AF8058 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 0086C 80AF805C 0C01DE80 */  jal     Math_ApproxF
              
/* 00870 80AF8060 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00874 80AF8064 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00878 80AF8068 3C0180B0 */  lui     $at, %hi(D_80AF8A9C)       ## $at = 80B00000
/* 0087C 80AF806C C4248A9C */  lwc1    $f4, %lo(D_80AF8A9C)($at)  
/* 00880 80AF8070 C4E60060 */  lwc1    $f6, 0x0060($a3)           ## 00000060
/* 00884 80AF8074 4604303E */  c.le.s  $f6, $f4                   
/* 00888 80AF8078 00000000 */  nop
/* 0088C 80AF807C 45030006 */  bc1tl   .L80AF8098                 
/* 00890 80AF8080 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00894 80AF8084 94EE0088 */  lhu     $t6, 0x0088($a3)           ## 00000088
/* 00898 80AF8088 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 0089C 80AF808C 51E00012 */  beql    $t7, $zero, .L80AF80D8     
/* 008A0 80AF8090 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008A4 80AF8094 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
.L80AF8098:
/* 008A8 80AF8098 C4EA0084 */  lwc1    $f10, 0x0084($a3)          ## 00000084
/* 008AC 80AF809C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 008B0 80AF80A0 2405387B */  addiu   $a1, $zero, 0x387B         ## $a1 = 0000387B
/* 008B4 80AF80A4 460A403C */  c.lt.s  $f8, $f10                  
/* 008B8 80AF80A8 00000000 */  nop
/* 008BC 80AF80AC 45030005 */  bc1tl   .L80AF80C4                 
/* 008C0 80AF80B0 94F80088 */  lhu     $t8, 0x0088($a3)           ## 00000088
/* 008C4 80AF80B4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 008C8 80AF80B8 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 008CC 80AF80BC 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 008D0 80AF80C0 94F80088 */  lhu     $t8, 0x0088($a3)           ## 00000088
.L80AF80C4:
/* 008D4 80AF80C4 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 008D8 80AF80C8 3319FFFD */  andi    $t9, $t8, 0xFFFD           ## $t9 = 00000000
/* 008DC 80AF80CC 0C2BDEF3 */  jal     func_80AF7BCC              
/* 008E0 80AF80D0 A4F90088 */  sh      $t9, 0x0088($a3)           ## 00000088
/* 008E4 80AF80D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AF80D8:
/* 008E8 80AF80D8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008EC 80AF80DC 03E00008 */  jr      $ra                        
/* 008F0 80AF80E0 00000000 */  nop


