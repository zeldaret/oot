glabel func_80AFB950
/* 002C0 80AFB950 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 002C4 80AFB954 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002C8 80AFB958 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 002CC 80AFB95C 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 002D0 80AFB960 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 002D4 80AFB964 0C042F6F */  jal     func_8010BDBC              
/* 002D8 80AFB968 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 002DC 80AFB96C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 002E0 80AFB970 10410005 */  beq     $v0, $at, .L80AFB988       
/* 002E4 80AFB974 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 002E8 80AFB978 8FB8001C */  lw      $t8, 0x001C($sp)           
/* 002EC 80AFB97C 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 002F0 80AFB980 10000014 */  beq     $zero, $zero, .L80AFB9D4   
/* 002F4 80AFB984 A70F0110 */  sh      $t7, 0x0110($t8)           ## 00000110
.L80AFB988:
/* 002F8 80AFB988 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 002FC 80AFB98C 3C098016 */  lui     $t1, 0x8016                ## $t1 = 80160000
/* 00300 80AFB990 3C0D8012 */  lui     $t5, 0x8012                ## $t5 = 80120000
/* 00304 80AFB994 30431F00 */  andi    $v1, $v0, 0x1F00           ## $v1 = 00000000
/* 00308 80AFB998 00031A03 */  sra     $v1, $v1,  8               
/* 0030C 80AFB99C 306B0003 */  andi    $t3, $v1, 0x0003           ## $t3 = 00000000
/* 00310 80AFB9A0 000B6080 */  sll     $t4, $t3,  2               
/* 00314 80AFB9A4 0003C883 */  sra     $t9, $v1,  2               
/* 00318 80AFB9A8 00194080 */  sll     $t0, $t9,  2               
/* 0031C 80AFB9AC 01AC6821 */  addu    $t5, $t5, $t4              
/* 00320 80AFB9B0 2529E660 */  addiu   $t1, $t1, 0xE660           ## $t1 = 8015E660
/* 00324 80AFB9B4 8DAD724C */  lw      $t5, 0x724C($t5)           ## 8012724C
/* 00328 80AFB9B8 01092821 */  addu    $a1, $t0, $t1              
/* 0032C 80AFB9BC 8CAF0E9C */  lw      $t7, 0x0E9C($a1)           ## 00000E9C
/* 00330 80AFB9C0 304A00FF */  andi    $t2, $v0, 0x00FF           ## $t2 = 00000000
/* 00334 80AFB9C4 01AA7004 */  sllv    $t6, $t2, $t5              
/* 00338 80AFB9C8 01EEC025 */  or      $t8, $t7, $t6              ## $t8 = 0000000A
/* 0033C 80AFB9CC 0C00B55C */  jal     Actor_Kill
              
/* 00340 80AFB9D0 ACB80E9C */  sw      $t8, 0x0E9C($a1)           ## 00000E9C
.L80AFB9D4:
/* 00344 80AFB9D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00348 80AFB9D8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0034C 80AFB9DC 03E00008 */  jr      $ra                        
/* 00350 80AFB9E0 00000000 */  nop


