glabel ObjHana_Update
/* 00140 80B939A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00144 80B939A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00148 80B939A8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0014C 80B939AC 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00150 80B939B0 3C1980B9 */  lui     $t9, %hi(D_80B93AB0)       ## $t9 = 80B90000
/* 00154 80B939B4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00158 80B939B8 31CF0003 */  andi    $t7, $t6, 0x0003           ## $t7 = 00000000
/* 0015C 80B939BC 000FC100 */  sll     $t8, $t7,  4               
/* 00160 80B939C0 0338C821 */  addu    $t9, $t9, $t8              
/* 00164 80B939C4 87393AB0 */  lh      $t9, %lo(D_80B93AB0)($t9)  
/* 00168 80B939C8 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 0016C 80B939CC 0722000D */  bltzl   $t9, .L80B93A04            
/* 00170 80B939D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00174 80B939D4 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00178 80B939D8 44813000 */  mtc1    $at, $f6                   ## $f6 = 400.00
/* 0017C 80B939DC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00180 80B939E0 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00184 80B939E4 4606203C */  c.lt.s  $f4, $f6                   
/* 00188 80B939E8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0018C 80B939EC 00A12821 */  addu    $a1, $a1, $at              
/* 00190 80B939F0 45020004 */  bc1fl   .L80B93A04                 
/* 00194 80B939F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00198 80B939F8 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 0019C 80B939FC 24E6014C */  addiu   $a2, $a3, 0x014C           ## $a2 = 0000014C
/* 001A0 80B93A00 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B93A04:
/* 001A4 80B93A04 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001A8 80B93A08 03E00008 */  jr      $ra                        
/* 001AC 80B93A0C 00000000 */  nop
