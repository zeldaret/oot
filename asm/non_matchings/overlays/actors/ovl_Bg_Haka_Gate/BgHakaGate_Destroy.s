glabel BgHakaGate_Destroy
/* 002CC 8087C0BC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002D0 8087C0C0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 002D4 8087C0C4 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 002D8 8087C0C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002DC 8087C0CC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002E0 8087C0D0 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 002E4 8087C0D4 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 002E8 8087C0D8 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 002EC 8087C0DC 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 002F0 8087C0E0 24190100 */  addiu   $t9, $zero, 0x0100         ## $t9 = 00000100
/* 002F4 8087C0E4 3C018088 */  lui     $at, %hi(D_8087CCD0)       ## $at = 80880000
/* 002F8 8087C0E8 85F8001C */  lh      $t8, 0x001C($t7)           ## 0000001C
/* 002FC 8087C0EC 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00300 8087C0F0 57000005 */  bnel    $t8, $zero, .L8087C108     
/* 00304 8087C0F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00308 8087C0F8 A439CCD0 */  sh      $t9, %lo(D_8087CCD0)($at)  
/* 0030C 8087C0FC 3C018088 */  lui     $at, %hi(D_8087CCD4)       ## $at = 80880000
/* 00310 8087C100 A028CCD4 */  sb      $t0, %lo(D_8087CCD4)($at)  
/* 00314 8087C104 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8087C108:
/* 00318 8087C108 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0031C 8087C10C 03E00008 */  jr      $ra                        
/* 00320 8087C110 00000000 */  nop


