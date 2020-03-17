glabel func_80AEEF68
/* 04358 80AEEF68 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0435C 80AEEF6C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04360 80AEEF70 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 04364 80AEEF74 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 04368 80AEEF78 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 0436C 80AEEF7C 2463FA90 */  addiu   $v1, $v1, 0xFA90           ## $v1 = 8015FA90
/* 04370 80AEEF80 8C580024 */  lw      $t8, 0x0024($v0)           ## 00000024
/* 04374 80AEEF84 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 04378 80AEEF88 44814000 */  mtc1    $at, $f8                   ## $f8 = 3.00
/* 0437C 80AEEF8C AC98038C */  sw      $t8, 0x038C($a0)           ## 0000038C
/* 04380 80AEEF90 8C4F0028 */  lw      $t7, 0x0028($v0)           ## 00000028
/* 04384 80AEEF94 24850374 */  addiu   $a1, $a0, 0x0374           ## $a1 = 00000374
/* 04388 80AEEF98 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 0438C 80AEEF9C AC8F0390 */  sw      $t7, 0x0390($a0)           ## 00000390
/* 04390 80AEEFA0 8C58002C */  lw      $t8, 0x002C($v0)           ## 0000002C
/* 04394 80AEEFA4 AC980394 */  sw      $t8, 0x0394($a0)           ## 00000394
/* 04398 80AEEFA8 8C790000 */  lw      $t9, 0x0000($v1)           ## 8015FA90
/* 0439C 80AEEFAC 87281474 */  lh      $t0, 0x1474($t9)           ## 00001474
/* 043A0 80AEEFB0 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 043A4 80AEEFB4 00000000 */  nop
/* 043A8 80AEEFB8 468021A0 */  cvt.s.w $f6, $f4                   
/* 043AC 80AEEFBC 46083281 */  sub.s   $f10, $f6, $f8             
/* 043B0 80AEEFC0 E48A0388 */  swc1    $f10, 0x0388($a0)          ## 00000388
/* 043B4 80AEEFC4 8C690000 */  lw      $t1, 0x0000($v1)           ## 8015FA90
/* 043B8 80AEEFC8 85261476 */  lh      $a2, 0x1476($t1)           ## 00001476
/* 043BC 80AEEFCC 24C6000C */  addiu   $a2, $a2, 0x000C           ## $a2 = 0000000C
/* 043C0 80AEEFD0 00063400 */  sll     $a2, $a2, 16               
/* 043C4 80AEEFD4 0C00D285 */  jal     func_80034A14              
/* 043C8 80AEEFD8 00063403 */  sra     $a2, $a2, 16               
/* 043CC 80AEEFDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 043D0 80AEEFE0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 043D4 80AEEFE4 03E00008 */  jr      $ra                        
/* 043D8 80AEEFE8 00000000 */  nop


