glabel func_8096FC28
/* 02778 8096FC28 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 0277C 8096FC2C AFA40000 */  sw      $a0, 0x0000($sp)           
/* 02780 8096FC30 AFA60008 */  sw      $a2, 0x0008($sp)           
/* 02784 8096FC34 14A1001A */  bne     $a1, $at, .L8096FCA0       
/* 02788 8096FC38 AFA7000C */  sw      $a3, 0x000C($sp)           
/* 0278C 8096FC3C 3C0E8016 */  lui     $t6, %hi(gSaveContext+0xec0)
/* 02790 8096FC40 8DCEF520 */  lw      $t6, %lo(gSaveContext+0xec0)($t6)
/* 02794 8096FC44 8FA30014 */  lw      $v1, 0x0014($sp)           
/* 02798 8096FC48 3C19DE00 */  lui     $t9, 0xDE00                ## $t9 = DE000000
/* 0279C 8096FC4C 31CF1000 */  andi    $t7, $t6, 0x1000           ## $t7 = 00000000
/* 027A0 8096FC50 15E00013 */  bne     $t7, $zero, .L8096FCA0     
/* 027A4 8096FC54 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 027A8 8096FC58 8C640000 */  lw      $a0, 0x0000($v1)           ## 00000000
/* 027AC 8096FC5C 24A574C8 */  addiu   $a1, $a1, 0x74C8           ## $a1 = 060074C8
/* 027B0 8096FC60 00054100 */  sll     $t0, $a1,  4               
/* 027B4 8096FC64 00084F02 */  srl     $t1, $t0, 28               
/* 027B8 8096FC68 24980008 */  addiu   $t8, $a0, 0x0008           ## $t8 = 00000008
/* 027BC 8096FC6C AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 027C0 8096FC70 00095080 */  sll     $t2, $t1,  2               
/* 027C4 8096FC74 3C0B8016 */  lui     $t3, %hi(gSegments)
/* 027C8 8096FC78 016A5821 */  addu    $t3, $t3, $t2              
/* 027CC 8096FC7C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 027D0 8096FC80 AC990000 */  sw      $t9, 0x0000($a0)           ## 00000000
/* 027D4 8096FC84 8D6B6FA8 */  lw      $t3, %lo(gSegments)($t3)
/* 027D8 8096FC88 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 027DC 8096FC8C 00A16024 */  and     $t4, $a1, $at              
/* 027E0 8096FC90 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 027E4 8096FC94 016C6821 */  addu    $t5, $t3, $t4              
/* 027E8 8096FC98 01A17021 */  addu    $t6, $t5, $at              
/* 027EC 8096FC9C AC8E0004 */  sw      $t6, 0x0004($a0)           ## 00000004
.L8096FCA0:
/* 027F0 8096FCA0 03E00008 */  jr      $ra                        
/* 027F4 8096FCA4 00000000 */  nop
