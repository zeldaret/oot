glabel func_8096BC28
/* 02158 8096BC28 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0215C 8096BC2C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02160 8096BC30 10A0000A */  beq     $a1, $zero, .L8096BC5C     
/* 02164 8096BC34 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02168 8096BC38 3C050600 */  lui     $a1, %hi(D_060067CC)                ## $a1 = 06000000
/* 0216C 8096BC3C 24A567CC */  addiu   $a1, $a1, %lo(D_060067CC)           ## $a1 = 060067CC
/* 02170 8096BC40 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02174 8096BC44 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02178 8096BC48 0C25A777 */  jal     func_80969DDC              
/* 0217C 8096BC4C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02180 8096BC50 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 02184 8096BC54 240E001A */  addiu   $t6, $zero, 0x001A         ## $t6 = 0000001A
/* 02188 8096BC58 ADEE0198 */  sw      $t6, 0x0198($t7)           ## 00000198
.L8096BC5C:
/* 0218C 8096BC5C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02190 8096BC60 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02194 8096BC64 03E00008 */  jr      $ra                        
/* 02198 8096BC68 00000000 */  nop
