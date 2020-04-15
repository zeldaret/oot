.late_rodata
glabel jtbl_80B20CB4
.word L80B20620
.word L80B20620
.word L80B20620
.word L80B20620
.word L80B20620
.word L80B20620
.word L80B2060C

.text
glabel func_80B205CC
/* 0045C 80B205CC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00460 80B205D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00464 80B205D4 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00468 80B205D8 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 0046C 80B205DC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00470 80B205E0 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 00474 80B205E4 0C042F6F */  jal     func_8010BDBC              
/* 00478 80B205E8 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 0047C 80B205EC 2C410007 */  sltiu   $at, $v0, 0x0007           
/* 00480 80B205F0 1020000B */  beq     $at, $zero, .L80B20620     
/* 00484 80B205F4 00027880 */  sll     $t7, $v0,  2               
/* 00488 80B205F8 3C0180B2 */  lui     $at, %hi(jtbl_80B20CB4)       ## $at = 80B20000
/* 0048C 80B205FC 002F0821 */  addu    $at, $at, $t7              
/* 00490 80B20600 8C2F0CB4 */  lw      $t7, %lo(jtbl_80B20CB4)($at)  
/* 00494 80B20604 01E00008 */  jr      $t7                        
/* 00498 80B20608 00000000 */  nop
glabel L80B2060C
/* 0049C 80B2060C 0C041AF2 */  jal     func_80106BC8              
/* 004A0 80B20610 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 004A4 80B20614 50400003 */  beql    $v0, $zero, .L80B20624     
/* 004A8 80B20618 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004AC 80B2061C AFA0001C */  sw      $zero, 0x001C($sp)         
glabel L80B20620
.L80B20620:
/* 004B0 80B20620 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B20624:
/* 004B4 80B20624 8FA2001C */  lw      $v0, 0x001C($sp)           
/* 004B8 80B20628 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 004BC 80B2062C 03E00008 */  jr      $ra                        
/* 004C0 80B20630 00000000 */  nop
