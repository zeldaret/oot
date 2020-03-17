glabel func_80B0DE34
/* 02084 80B0DE34 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02088 80B0DE38 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 0208C 80B0DE3C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02090 80B0DE40 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 02094 80B0DE44 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02098 80B0DE48 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 0209C 80B0DE4C AFA4001C */  sw      $a0, 0x001C($sp)           
/* 020A0 80B0DE50 8FAE0028 */  lw      $t6, 0x0028($sp)           
/* 020A4 80B0DE54 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 020A8 80B0DE58 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 020AC 80B0DE5C 85CF007E */  lh      $t7, 0x007E($t6)           ## 0000007E
/* 020B0 80B0DE60 004FC023 */  subu    $t8, $v0, $t7              
/* 020B4 80B0DE64 0C01E027 */  jal     Math_Vec3f_Pitch
              
/* 020B8 80B0DE68 A7B80024 */  sh      $t8, 0x0024($sp)           
/* 020BC 80B0DE6C 87B90024 */  lh      $t9, 0x0024($sp)           
/* 020C0 80B0DE70 2444C000 */  addiu   $a0, $v0, 0xC000           ## $a0 = FFFFC000
/* 020C4 80B0DE74 00042400 */  sll     $a0, $a0, 16               
/* 020C8 80B0DE78 07200003 */  bltz    $t9, .L80B0DE88            
/* 020CC 80B0DE7C 00042403 */  sra     $a0, $a0, 16               
/* 020D0 80B0DE80 10000002 */  beq     $zero, $zero, .L80B0DE8C   
/* 020D4 80B0DE84 2403FFFF */  addiu   $v1, $zero, 0xFFFF         ## $v1 = FFFFFFFF
.L80B0DE88:
/* 020D8 80B0DE88 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L80B0DE8C:
/* 020DC 80B0DE8C 00640019 */  multu   $v1, $a0                   
/* 020E0 80B0DE90 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 020E4 80B0DE94 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 020E8 80B0DE98 00001012 */  mflo    $v0                        
/* 020EC 80B0DE9C 00021400 */  sll     $v0, $v0, 16               
/* 020F0 80B0DEA0 03E00008 */  jr      $ra                        
/* 020F4 80B0DEA4 00021403 */  sra     $v0, $v0, 16               


