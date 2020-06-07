glabel func_80A4B3AC
/* 024EC 80A4B3AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 024F0 80A4B3B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 024F4 80A4B3B4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 024F8 80A4B3B8 848E00B6 */  lh      $t6, 0x00B6($a0)           ## 000000B6
/* 024FC 80A4B3BC 849800B4 */  lh      $t8, 0x00B4($a0)           ## 000000B4
/* 02500 80A4B3C0 848802CC */  lh      $t0, 0x02CC($a0)           ## 000002CC
/* 02504 80A4B3C4 25CF09C4 */  addiu   $t7, $t6, 0x09C4           ## $t7 = 000009C4
/* 02508 80A4B3C8 27190DAC */  addiu   $t9, $t8, 0x0DAC           ## $t9 = 00000DAC
/* 0250C 80A4B3CC A48F00B6 */  sh      $t7, 0x00B6($a0)           ## 000000B6
/* 02510 80A4B3D0 15000003 */  bne     $t0, $zero, .L80A4B3E0     
/* 02514 80A4B3D4 A49900B4 */  sh      $t9, 0x00B4($a0)           ## 000000B4
/* 02518 80A4B3D8 0C00B55C */  jal     Actor_Kill
              
/* 0251C 80A4B3DC 00000000 */  nop
.L80A4B3E0:
/* 02520 80A4B3E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02524 80A4B3E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02528 80A4B3E8 03E00008 */  jr      $ra                        
/* 0252C 80A4B3EC 00000000 */  nop
