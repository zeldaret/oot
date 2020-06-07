glabel func_80BADDCC
/* 0010C 80BADDCC 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00110 80BADDD0 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00114 80BADDD4 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00118 80BADDD8 848301A2 */  lh      $v1, 0x01A2($a0)           ## 000001A2
/* 0011C 80BADDDC 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00120 80BADDE0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00124 80BADDE4 18600004 */  blez    $v1, .L80BADDF8            
/* 00128 80BADDE8 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 00000000
/* 0012C 80BADDEC 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 00130 80BADDF0 1000001B */  beq     $zero, $zero, .L80BADE60   
/* 00134 80BADDF4 A48E01A2 */  sh      $t6, 0x01A2($a0)           ## 000001A2
.L80BADDF8:
/* 00138 80BADDF8 24010040 */  addiu   $at, $zero, 0x0040         ## $at = 00000040
/* 0013C 80BADDFC 10410006 */  beq     $v0, $at, .L80BADE18       
/* 00140 80BADE00 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 00144 80BADE04 24010041 */  addiu   $at, $zero, 0x0041         ## $at = 00000041
/* 00148 80BADE08 10410006 */  beq     $v0, $at, .L80BADE24       
/* 0014C 80BADE0C 24180007 */  addiu   $t8, $zero, 0x0007         ## $t8 = 00000007
/* 00150 80BADE10 10000006 */  beq     $zero, $zero, .L80BADE2C   
/* 00154 80BADE14 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
.L80BADE18:
/* 00158 80BADE18 240F0007 */  addiu   $t7, $zero, 0x0007         ## $t7 = 00000007
/* 0015C 80BADE1C 10000002 */  beq     $zero, $zero, .L80BADE28   
/* 00160 80BADE20 AFAF0038 */  sw      $t7, 0x0038($sp)           
.L80BADE24:
/* 00164 80BADE24 AFB80038 */  sw      $t8, 0x0038($sp)           
.L80BADE28:
/* 00168 80BADE28 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
.L80BADE2C:
/* 0016C 80BADE2C 8E070008 */  lw      $a3, 0x0008($s0)           ## 00000008
/* 00170 80BADE30 8FB90038 */  lw      $t9, 0x0038($sp)           
/* 00174 80BADE34 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00178 80BADE38 C6060010 */  lwc1    $f6, 0x0010($s0)           ## 00000010
/* 0017C 80BADE3C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00180 80BADE40 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00184 80BADE44 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00188 80BADE48 24060018 */  addiu   $a2, $zero, 0x0018         ## $a2 = 00000018
/* 0018C 80BADE4C AFB90024 */  sw      $t9, 0x0024($sp)           
/* 00190 80BADE50 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00194 80BADE54 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00198 80BADE58 0C00B55C */  jal     Actor_Kill
              
/* 0019C 80BADE5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80BADE60:
/* 001A0 80BADE60 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 001A4 80BADE64 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 001A8 80BADE68 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 001AC 80BADE6C 03E00008 */  jr      $ra                        
/* 001B0 80BADE70 00000000 */  nop
