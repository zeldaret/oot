.rdata
glabel D_808B6108
    .asciz "Error : arg_data おかしいな(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808B6140
    .asciz "../z_bg_spot16_bombstone.c"
    .balign 4

glabel D_808B615C
    .asciz "Spot16 obj 爆弾石 (scaleX %f)(arg_data 0x%04x)\n"
    .balign 4

.late_rodata
glabel jtbl_808B623C
.word L808B50DC
.word L808B50DC
.word L808B50DC
.word L808B50DC
.word L808B50DC
.word L808B50DC

.text
glabel BgSpot16Bombstone_Init
/* 00438 808B5068 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0043C 808B506C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00440 808B5070 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00444 808B5074 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00448 808B5078 0C22D30C */  jal     func_808B4C30              
/* 0044C 808B507C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00450 808B5080 8607001C */  lh      $a3, 0x001C($s0)           ## 0000001C
/* 00454 808B5084 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00458 808B5088 28E10006 */  slti    $at, $a3, 0x0006           
/* 0045C 808B508C 14200006 */  bne     $at, $zero, .L808B50A8     
/* 00460 808B5090 00E01025 */  or      $v0, $a3, $zero            ## $v0 = 00000000
/* 00464 808B5094 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00468 808B5098 1041000B */  beq     $v0, $at, .L808B50C8       
/* 0046C 808B509C 00000000 */  nop
/* 00470 808B50A0 10000013 */  beq     $zero, $zero, .L808B50F0   
/* 00474 808B50A4 00000000 */  nop
.L808B50A8:
/* 00478 808B50A8 2C410006 */  sltiu   $at, $v0, 0x0006           
/* 0047C 808B50AC 10200010 */  beq     $at, $zero, .L808B50F0     
/* 00480 808B50B0 00027080 */  sll     $t6, $v0,  2               
/* 00484 808B50B4 3C01808B */  lui     $at, %hi(jtbl_808B623C)       ## $at = 808B0000
/* 00488 808B50B8 002E0821 */  addu    $at, $at, $t6              
/* 0048C 808B50BC 8C2E623C */  lw      $t6, %lo(jtbl_808B623C)($at)  
/* 00490 808B50C0 01C00008 */  jr      $t6                        
/* 00494 808B50C4 00000000 */  nop
.L808B50C8:
/* 00498 808B50C8 0C22D367 */  jal     func_808B4D9C              
/* 0049C 808B50CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004A0 808B50D0 00021C00 */  sll     $v1, $v0, 16               
/* 004A4 808B50D4 1000000D */  beq     $zero, $zero, .L808B510C   
/* 004A8 808B50D8 00031C03 */  sra     $v1, $v1, 16               
glabel L808B50DC
/* 004AC 808B50DC 0C22D396 */  jal     func_808B4E58              
/* 004B0 808B50E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004B4 808B50E4 00021C00 */  sll     $v1, $v0, 16               
/* 004B8 808B50E8 10000008 */  beq     $zero, $zero, .L808B510C   
/* 004BC 808B50EC 00031C03 */  sra     $v1, $v1, 16               
.L808B50F0:
/* 004C0 808B50F0 3C04808B */  lui     $a0, %hi(D_808B6108)       ## $a0 = 808B0000
/* 004C4 808B50F4 3C05808B */  lui     $a1, %hi(D_808B6140)       ## $a1 = 808B0000
/* 004C8 808B50F8 24A56140 */  addiu   $a1, $a1, %lo(D_808B6140)  ## $a1 = 808B6140
/* 004CC 808B50FC 24846108 */  addiu   $a0, $a0, %lo(D_808B6108)  ## $a0 = 808B6108
/* 004D0 808B5100 0C00084C */  jal     osSyncPrintf
              
/* 004D4 808B5104 2406029C */  addiu   $a2, $zero, 0x029C         ## $a2 = 0000029C
/* 004D8 808B5108 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L808B510C:
/* 004DC 808B510C 54600006 */  bnel    $v1, $zero, .L808B5128     
/* 004E0 808B5110 C6040050 */  lwc1    $f4, 0x0050($s0)           ## 00000050
/* 004E4 808B5114 0C00B55C */  jal     Actor_Kill
              
/* 004E8 808B5118 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004EC 808B511C 1000000B */  beq     $zero, $zero, .L808B514C   
/* 004F0 808B5120 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 004F4 808B5124 C6040050 */  lwc1    $f4, 0x0050($s0)           ## 00000050
.L808B5128:
/* 004F8 808B5128 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 004FC 808B512C 3C04808B */  lui     $a0, %hi(D_808B615C)       ## $a0 = 808B0000
/* 00500 808B5130 460021A1 */  cvt.d.s $f6, $f4                   
/* 00504 808B5134 2484615C */  addiu   $a0, $a0, %lo(D_808B615C)  ## $a0 = 808B615C
/* 00508 808B5138 44073000 */  mfc1    $a3, $f6                   
/* 0050C 808B513C 44063800 */  mfc1    $a2, $f7                   
/* 00510 808B5140 0C00084C */  jal     osSyncPrintf
              
/* 00514 808B5144 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00518 808B5148 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808B514C:
/* 0051C 808B514C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00520 808B5150 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00524 808B5154 03E00008 */  jr      $ra                        
/* 00528 808B5158 00000000 */  nop
