.rdata
glabel D_809FCF10
    .asciz "../z_en_door.c"
    .balign 4

glabel D_809FCF20
    .asciz "../z_en_door.c"
    .balign 4

.text
glabel EnDoor_Draw
/* 00B9C 809FCD6C 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00BA0 809FCD70 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00BA4 809FCD74 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00BA8 809FCD78 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 00BAC 809FCD7C 808F001E */  lb      $t7, 0x001E($a0)           ## 0000001E
/* 00BB0 809FCD80 808E0193 */  lb      $t6, 0x0193($a0)           ## 00000193
/* 00BB4 809FCD84 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BB8 809FCD88 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 00BBC 809FCD8C 15CF0034 */  bne     $t6, $t7, .L809FCE60       
/* 00BC0 809FCD90 3C0680A0 */  lui     $a2, %hi(D_809FCF10)       ## $a2 = 80A00000
/* 00BC4 809FCD94 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00BC8 809FCD98 24C6CF10 */  addiu   $a2, $a2, %lo(D_809FCF10)  ## $a2 = 809FCF10
/* 00BCC 809FCD9C 2407038E */  addiu   $a3, $zero, 0x038E         ## $a3 = 0000038E
/* 00BD0 809FCDA0 0C031AB1 */  jal     Graph_OpenDisps              
/* 00BD4 809FCDA4 AFA50048 */  sw      $a1, 0x0048($sp)           
/* 00BD8 809FCDA8 8FB90054 */  lw      $t9, 0x0054($sp)           
/* 00BDC 809FCDAC 0C024F46 */  jal     func_80093D18              
/* 00BE0 809FCDB0 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 00BE4 809FCDB4 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 00BE8 809FCDB8 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 00BEC 809FCDBC 3C0780A0 */  lui     $a3, %hi(func_809FCC3C)    ## $a3 = 80A00000
/* 00BF0 809FCDC0 24E7CC3C */  addiu   $a3, $a3, %lo(func_809FCC3C) ## $a3 = 809FCC3C
/* 00BF4 809FCDC4 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00BF8 809FCDC8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00BFC 809FCDCC 0C028572 */  jal     SkelAnime_Draw
              
/* 00C00 809FCDD0 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00C04 809FCDD4 86020032 */  lh      $v0, 0x0032($s0)           ## 00000032
/* 00C08 809FCDD8 8FA80048 */  lw      $t0, 0x0048($sp)           
/* 00C0C 809FCDDC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00C10 809FCDE0 50400014 */  beql    $v0, $zero, .L809FCE34     
/* 00C14 809FCDE4 86050196 */  lh      $a1, 0x0196($s0)           ## 00000196
/* 00C18 809FCDE8 1840000A */  blez    $v0, .L809FCE14            
/* 00C1C 809FCDEC 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 00C20 809FCDF0 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 00C24 809FCDF4 3C0B0401 */  lui     $t3, 0x0401                ## $t3 = 04010000
/* 00C28 809FCDF8 256BEE00 */  addiu   $t3, $t3, 0xEE00           ## $t3 = 0400EE00
/* 00C2C 809FCDFC 24690008 */  addiu   $t1, $v1, 0x0008           ## $t1 = 00000008
/* 00C30 809FCE00 AD0902C0 */  sw      $t1, 0x02C0($t0)           ## 000002C0
/* 00C34 809FCE04 3C0ADE00 */  lui     $t2, 0xDE00                ## $t2 = DE000000
/* 00C38 809FCE08 AC6A0000 */  sw      $t2, 0x0000($v1)           ## 00000000
/* 00C3C 809FCE0C 10000008 */  beq     $zero, $zero, .L809FCE30   
/* 00C40 809FCE10 AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
.L809FCE14:
/* 00C44 809FCE14 8D0302C0 */  lw      $v1, 0x02C0($t0)           ## 000002C0
/* 00C48 809FCE18 3C0E0401 */  lui     $t6, 0x0401                ## $t6 = 04010000
/* 00C4C 809FCE1C 25CEECB8 */  addiu   $t6, $t6, 0xECB8           ## $t6 = 0400ECB8
/* 00C50 809FCE20 246C0008 */  addiu   $t4, $v1, 0x0008           ## $t4 = 00000008
/* 00C54 809FCE24 AD0C02C0 */  sw      $t4, 0x02C0($t0)           ## 000002C0
/* 00C58 809FCE28 AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
/* 00C5C 809FCE2C AC6D0000 */  sw      $t5, 0x0000($v1)           ## 00000000
.L809FCE30:
/* 00C60 809FCE30 86050196 */  lh      $a1, 0x0196($s0)           ## 00000196
.L809FCE34:
/* 00C64 809FCE34 50A00004 */  beql    $a1, $zero, .L809FCE48     
/* 00C68 809FCE38 8FAF0054 */  lw      $t7, 0x0054($sp)           
/* 00C6C 809FCE3C 0C00CFD5 */  jal     func_80033F54              
/* 00C70 809FCE40 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 00C74 809FCE44 8FAF0054 */  lw      $t7, 0x0054($sp)           
.L809FCE48:
/* 00C78 809FCE48 3C0680A0 */  lui     $a2, %hi(D_809FCF20)       ## $a2 = 80A00000
/* 00C7C 809FCE4C 24C6CF20 */  addiu   $a2, $a2, %lo(D_809FCF20)  ## $a2 = 809FCF20
/* 00C80 809FCE50 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 00C84 809FCE54 240703AD */  addiu   $a3, $zero, 0x03AD         ## $a3 = 000003AD
/* 00C88 809FCE58 0C031AD5 */  jal     Graph_CloseDisps              
/* 00C8C 809FCE5C 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
.L809FCE60:
/* 00C90 809FCE60 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00C94 809FCE64 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00C98 809FCE68 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00C9C 809FCE6C 03E00008 */  jr      $ra                        
/* 00CA0 809FCE70 00000000 */  nop
/* 00CA4 809FCE74 00000000 */  nop
/* 00CA8 809FCE78 00000000 */  nop
/* 00CAC 809FCE7C 00000000 */  nop
