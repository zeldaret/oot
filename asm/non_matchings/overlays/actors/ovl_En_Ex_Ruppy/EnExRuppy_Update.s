glabel EnExRuppy_Update
/* 00D40 80A0B150 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00D44 80A0B154 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00D48 80A0B158 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00D4C 80A0B15C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00D50 80A0B160 848E00B6 */  lh      $t6, 0x00B6($a0)           ## 000000B6
/* 00D54 80A0B164 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D58 80A0B168 25CF07A8 */  addiu   $t7, $t6, 0x07A8           ## $t7 = 000007A8
/* 00D5C 80A0B16C A48F00B6 */  sh      $t7, 0x00B6($a0)           ## 000000B6
/* 00D60 80A0B170 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
/* 00D64 80A0B174 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00D68 80A0B178 0320F809 */  jalr    $ra, $t9                   
/* 00D6C 80A0B17C 00000000 */  nop
/* 00D70 80A0B180 86020156 */  lh      $v0, 0x0156($s0)           ## 00000156
/* 00D74 80A0B184 10400002 */  beq     $v0, $zero, .L80A0B190     
/* 00D78 80A0B188 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 00D7C 80A0B18C A6180156 */  sh      $t8, 0x0156($s0)           ## 00000156
.L80A0B190:
/* 00D80 80A0B190 0C00B638 */  jal     Actor_MoveForward
              
/* 00D84 80A0B194 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D88 80A0B198 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00D8C 80A0B19C 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 00D90 80A0B1A0 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00D94 80A0B1A4 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 00D98 80A0B1A8 2408001C */  addiu   $t0, $zero, 0x001C         ## $t0 = 0000001C
/* 00D9C 80A0B1AC 44060000 */  mfc1    $a2, $f0                   
/* 00DA0 80A0B1B0 44070000 */  mfc1    $a3, $f0                   
/* 00DA4 80A0B1B4 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00DA8 80A0B1B8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00DAC 80A0B1BC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00DB0 80A0B1C0 0C00B92D */  jal     func_8002E4B4              
/* 00DB4 80A0B1C4 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00DB8 80A0B1C8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00DBC 80A0B1CC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00DC0 80A0B1D0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00DC4 80A0B1D4 03E00008 */  jr      $ra                        
/* 00DC8 80A0B1D8 00000000 */  nop
