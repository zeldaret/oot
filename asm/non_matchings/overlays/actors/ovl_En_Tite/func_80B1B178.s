glabel func_80B1B178
/* 026F8 80B1B178 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 026FC 80B1B17C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 02700 80B1B180 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 02704 80B1B184 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 02708 80B1B188 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0270C 80B1B18C AFA40030 */  sw      $a0, 0x0030($sp)           
/* 02710 80B1B190 AFA60038 */  sw      $a2, 0x0038($sp)           
/* 02714 80B1B194 10A1000C */  beq     $a1, $at, .L80B1B1C8       
/* 02718 80B1B198 AFA7003C */  sw      $a3, 0x003C($sp)           
/* 0271C 80B1B19C 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 02720 80B1B1A0 10A10010 */  beq     $a1, $at, .L80B1B1E4       
/* 02724 80B1B1A4 3C0480B2 */  lui     $a0, %hi(D_80B1B64C)       ## $a0 = 80B20000
/* 02728 80B1B1A8 24010012 */  addiu   $at, $zero, 0x0012         ## $at = 00000012
/* 0272C 80B1B1AC 10A10013 */  beq     $a1, $at, .L80B1B1FC       
/* 02730 80B1B1B0 3C0480B2 */  lui     $a0, %hi(D_80B1B64C)       ## $a0 = 80B20000
/* 02734 80B1B1B4 24010017 */  addiu   $at, $zero, 0x0017         ## $at = 00000017
/* 02738 80B1B1B8 10A10016 */  beq     $a1, $at, .L80B1B214       
/* 0273C 80B1B1BC 3C0480B2 */  lui     $a0, %hi(D_80B1B64C)       ## $a0 = 80B20000
/* 02740 80B1B1C0 10000019 */  beq     $zero, $zero, .L80B1B228   
/* 02744 80B1B1C4 8FA40040 */  lw      $a0, 0x0040($sp)           
.L80B1B1C8:
/* 02748 80B1B1C8 8FA50040 */  lw      $a1, 0x0040($sp)           
/* 0274C 80B1B1CC 3C0480B2 */  lui     $a0, %hi(D_80B1B64C)       ## $a0 = 80B20000
/* 02750 80B1B1D0 2484B64C */  addiu   $a0, $a0, %lo(D_80B1B64C)  ## $a0 = 80B1B64C
/* 02754 80B1B1D4 0C0346BD */  jal     Matrix_MultVec3f              
/* 02758 80B1B1D8 24A50360 */  addiu   $a1, $a1, 0x0360           ## $a1 = 00000360
/* 0275C 80B1B1DC 10000012 */  beq     $zero, $zero, .L80B1B228   
/* 02760 80B1B1E0 8FA40040 */  lw      $a0, 0x0040($sp)           
.L80B1B1E4:
/* 02764 80B1B1E4 8FA50040 */  lw      $a1, 0x0040($sp)           
/* 02768 80B1B1E8 2484B64C */  addiu   $a0, $a0, %lo(D_80B1B64C)  ## $a0 = FFFFB64C
/* 0276C 80B1B1EC 0C0346BD */  jal     Matrix_MultVec3f              
/* 02770 80B1B1F0 24A50354 */  addiu   $a1, $a1, 0x0354           ## $a1 = 00000354
/* 02774 80B1B1F4 1000000C */  beq     $zero, $zero, .L80B1B228   
/* 02778 80B1B1F8 8FA40040 */  lw      $a0, 0x0040($sp)           
.L80B1B1FC:
/* 0277C 80B1B1FC 8FA50040 */  lw      $a1, 0x0040($sp)           
/* 02780 80B1B200 2484B64C */  addiu   $a0, $a0, %lo(D_80B1B64C)  ## $a0 = FFFFB64C
/* 02784 80B1B204 0C0346BD */  jal     Matrix_MultVec3f              
/* 02788 80B1B208 24A5036C */  addiu   $a1, $a1, 0x036C           ## $a1 = 0000036C
/* 0278C 80B1B20C 10000006 */  beq     $zero, $zero, .L80B1B228   
/* 02790 80B1B210 8FA40040 */  lw      $a0, 0x0040($sp)           
.L80B1B214:
/* 02794 80B1B214 8FA50040 */  lw      $a1, 0x0040($sp)           
/* 02798 80B1B218 2484B64C */  addiu   $a0, $a0, %lo(D_80B1B64C)  ## $a0 = FFFFB64C
/* 0279C 80B1B21C 0C0346BD */  jal     Matrix_MultVec3f              
/* 027A0 80B1B220 24A50348 */  addiu   $a1, $a1, 0x0348           ## $a1 = 00000348
/* 027A4 80B1B224 8FA40040 */  lw      $a0, 0x0040($sp)           
.L80B1B228:
/* 027A8 80B1B228 8FAF0038 */  lw      $t7, 0x0038($sp)           
/* 027AC 80B1B22C 240E0018 */  addiu   $t6, $zero, 0x0018         ## $t6 = 00000018
/* 027B0 80B1B230 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 027B4 80B1B234 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 027B8 80B1B238 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 027BC 80B1B23C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 027C0 80B1B240 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 027C4 80B1B244 24070018 */  addiu   $a3, $zero, 0x0018         ## $a3 = 00000018
/* 027C8 80B1B248 248402C4 */  addiu   $a0, $a0, 0x02C4           ## $a0 = 000002C4
/* 027CC 80B1B24C 0C00CBD5 */  jal     func_80032F54              
/* 027D0 80B1B250 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 027D4 80B1B254 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 027D8 80B1B258 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 027DC 80B1B25C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 027E0 80B1B260 03E00008 */  jr      $ra                        
/* 027E4 80B1B264 00000000 */  nop


