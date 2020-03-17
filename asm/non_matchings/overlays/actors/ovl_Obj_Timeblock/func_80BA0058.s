glabel func_80BA0058
/* 000B8 80BA0058 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 000BC 80BA005C AFA40030 */  sw      $a0, 0x0030($sp)           
/* 000C0 80BA0060 8FAE0030 */  lw      $t6, 0x0030($sp)           
/* 000C4 80BA0064 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 000C8 80BA0068 3C0980BA */  lui     $t1, %hi(D_80BA0AF8)       ## $t1 = 80BA0000
/* 000CC 80BA006C C5C40028 */  lwc1    $f4, 0x0028($t6)           ## 00000028
/* 000D0 80BA0070 8DC70024 */  lw      $a3, 0x0024($t6)           ## 00000024
/* 000D4 80BA0074 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 000D8 80BA0078 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 000DC 80BA007C C5C6002C */  lwc1    $f6, 0x002C($t6)           ## 0000002C
/* 000E0 80BA0080 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 000E4 80BA0084 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 000E8 80BA0088 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 000EC 80BA008C E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 000F0 80BA0090 85CF001C */  lh      $t7, 0x001C($t6)           ## 0000001C
/* 000F4 80BA0094 2406008B */  addiu   $a2, $zero, 0x008B         ## $a2 = 0000008B
/* 000F8 80BA0098 000FC203 */  sra     $t8, $t7,  8               
/* 000FC 80BA009C 33190001 */  andi    $t9, $t8, 0x0001           ## $t9 = 00000000
/* 00100 80BA00A0 00194080 */  sll     $t0, $t9,  2               
/* 00104 80BA00A4 01194023 */  subu    $t0, $t0, $t9              
/* 00108 80BA00A8 00084080 */  sll     $t0, $t0,  2               
/* 0010C 80BA00AC 01284821 */  addu    $t1, $t1, $t0              
/* 00110 80BA00B0 85290AF8 */  lh      $t1, %lo(D_80BA0AF8)($t1)  
/* 00114 80BA00B4 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00118 80BA00B8 AFA90024 */  sw      $t1, 0x0024($sp)           
/* 0011C 80BA00BC 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00120 80BA00C0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00124 80BA00C4 03E00008 */  jr      $ra                        
/* 00128 80BA00C8 00000000 */  nop


