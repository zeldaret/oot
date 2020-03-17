glabel EnSw_Draw
/* 03160 80B0EF10 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 03164 80B0EF14 3C0E80B1 */  lui     $t6, %hi(D_80B0F198)       ## $t6 = 80B10000
/* 03168 80B0EF18 8DCEF198 */  lw      $t6, %lo(D_80B0F198)($t6)  
/* 0316C 80B0EF1C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 03170 80B0EF20 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 03174 80B0EF24 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 03178 80B0EF28 AFAE0030 */  sw      $t6, 0x0030($sp)           
/* 0317C 80B0EF2C 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 03180 80B0EF30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03184 80B0EF34 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 03188 80B0EF38 31F8E000 */  andi    $t8, $t7, 0xE000           ## $t8 = 00000000
/* 0318C 80B0EF3C 0018CB43 */  sra     $t9, $t8, 13               
/* 03190 80B0EF40 13200013 */  beq     $t9, $zero, .L80B0EF90     
/* 03194 80B0EF44 3C0180B1 */  lui     $at, %hi(D_80B0F2BC)       ## $at = 80B10000
/* 03198 80B0EF48 C42CF2BC */  lwc1    $f12, %lo(D_80B0F2BC)($at) 
/* 0319C 80B0EF4C 0C0342DC */  jal     Matrix_RotateX              
/* 031A0 80B0EF50 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 031A4 80B0EF54 920800AF */  lbu     $t0, 0x00AF($s0)           ## 000000AF
/* 031A8 80B0EF58 3C064348 */  lui     $a2, 0x4348                ## $a2 = 43480000
/* 031AC 80B0EF5C 51000006 */  beql    $t0, $zero, .L80B0EF78     
/* 031B0 80B0EF60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 031B4 80B0EF64 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 031B8 80B0EF68 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 031BC 80B0EF6C 0C034261 */  jal     Matrix_Translate              
/* 031C0 80B0EF70 46006386 */  mov.s   $f14, $f12                 
/* 031C4 80B0EF74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B0EF78:
/* 031C8 80B0EF78 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 031CC 80B0EF7C 0C00BAF3 */  jal     func_8002EBCC              
/* 031D0 80B0EF80 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 031D4 80B0EF84 3C0280B1 */  lui     $v0, %hi(func_80B0E728)    ## $v0 = 80B10000
/* 031D8 80B0EF88 1000000C */  beq     $zero, $zero, .L80B0EFBC   
/* 031DC 80B0EF8C 2442E728 */  addiu   $v0, $v0, %lo(func_80B0E728) ## $v0 = 80B0E728
.L80B0EF90:
/* 031E0 80B0EF90 8E090190 */  lw      $t1, 0x0190($s0)           ## 00000190
/* 031E4 80B0EF94 3C0280B1 */  lui     $v0, %hi(func_80B0E728)    ## $v0 = 80B10000
/* 031E8 80B0EF98 2442E728 */  addiu   $v0, $v0, %lo(func_80B0E728) ## $v0 = 80B0E728
/* 031EC 80B0EF9C 14490007 */  bne     $v0, $t1, .L80B0EFBC       
/* 031F0 80B0EFA0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 031F4 80B0EFA4 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF8
/* 031F8 80B0EFA8 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 031FC 80B0EFAC 2407001E */  addiu   $a3, $zero, 0x001E         ## $a3 = 0000001E
/* 03200 80B0EFB0 0C2C3B6E */  jal     func_80B0EDB8              
/* 03204 80B0EFB4 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 03208 80B0EFB8 8FA2002C */  lw      $v0, 0x002C($sp)           
.L80B0EFBC:
/* 0320C 80B0EFBC 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 03210 80B0EFC0 0C024F46 */  jal     func_80093D18              
/* 03214 80B0EFC4 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 03218 80B0EFC8 3C0A80B1 */  lui     $t2, %hi(func_80B0EDA4)    ## $t2 = 80B10000
/* 0321C 80B0EFCC 254AEDA4 */  addiu   $t2, $t2, %lo(func_80B0EDA4) ## $t2 = 80B0EDA4
/* 03220 80B0EFD0 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 03224 80B0EFD4 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 03228 80B0EFD8 3C0780B1 */  lui     $a3, %hi(func_80B0EAC4)    ## $a3 = 80B10000
/* 0322C 80B0EFDC 24E7EAC4 */  addiu   $a3, $a3, %lo(func_80B0EAC4) ## $a3 = 80B0EAC4
/* 03230 80B0EFE0 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 03234 80B0EFE4 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 03238 80B0EFE8 0C028572 */  jal     SkelAnime_Draw
              
/* 0323C 80B0EFEC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 03240 80B0EFF0 8FA2002C */  lw      $v0, 0x002C($sp)           
/* 03244 80B0EFF4 8E0B0190 */  lw      $t3, 0x0190($s0)           ## 00000190
/* 03248 80B0EFF8 544B0004 */  bnel    $v0, $t3, .L80B0F00C       
/* 0324C 80B0EFFC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03250 80B0F000 0C2C3BA9 */  jal     func_80B0EEA4              
/* 03254 80B0F004 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 03258 80B0F008 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B0F00C:
/* 0325C 80B0F00C 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 03260 80B0F010 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 03264 80B0F014 03E00008 */  jr      $ra                        
/* 03268 80B0F018 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0326C 80B0F01C 00000000 */  nop

