glabel EnRiverSound_Init
/* 00000 80AE6930 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 80AE6934 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00008 80AE6938 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0000C 80AE693C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00010 80AE6940 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00014 80AE6944 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00018 80AE6948 A080014C */  sb      $zero, 0x014C($a0)         ## 0000014C
/* 0001C 80AE694C 305800FF */  andi    $t8, $v0, 0x00FF           ## $t8 = 00000000
/* 00020 80AE6950 A498001C */  sh      $t8, 0x001C($a0)           ## 0000001C
/* 00024 80AE6954 00027203 */  sra     $t6, $v0,  8               
/* 00028 80AE6958 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 0002C 80AE695C 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 00030 80AE6960 A48F014E */  sh      $t7, 0x014E($a0)           ## 0000014E
/* 00034 80AE6964 284100F8 */  slti    $at, $v0, 0x00F8           
/* 00038 80AE6968 14200008 */  bne     $at, $zero, .L80AE698C     
/* 0003C 80AE696C 2444FF08 */  addiu   $a0, $v0, 0xFF08           ## $a0 = FFFFFF08
/* 00040 80AE6970 308400FF */  andi    $a0, $a0, 0x00FF           ## $a0 = 00000008
/* 00044 80AE6974 0C03D21C */  jal     func_800F4870              
/* 00048 80AE6978 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0004C 80AE697C 0C00B55C */  jal     Actor_Kill
              
/* 00050 80AE6980 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00054 80AE6984 1000001B */  beq     $zero, $zero, .L80AE69F4   
/* 00058 80AE6988 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE698C:
/* 0005C 80AE698C 240100F7 */  addiu   $at, $zero, 0x00F7         ## $at = 000000F7
/* 00060 80AE6990 14410007 */  bne     $v0, $at, .L80AE69B0       
/* 00064 80AE6994 24040004 */  addiu   $a0, $zero, 0x0004         ## $a0 = 00000004
/* 00068 80AE6998 0C03DBED */  jal     func_800F6FB4              
/* 0006C 80AE699C AFA50018 */  sw      $a1, 0x0018($sp)           
/* 00070 80AE69A0 0C00B55C */  jal     Actor_Kill
              
/* 00074 80AE69A4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00078 80AE69A8 10000012 */  beq     $zero, $zero, .L80AE69F4   
/* 0007C 80AE69AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE69B0:
/* 00080 80AE69B0 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 00084 80AE69B4 1441000E */  bne     $v0, $at, .L80AE69F0       
/* 00088 80AE69B8 3C038012 */  lui     $v1, 0x8012                ## $v1 = 80120000
/* 0008C 80AE69BC 24637120 */  addiu   $v1, $v1, 0x7120           ## $v1 = 80127120
/* 00090 80AE69C0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00094 80AE69C4 8C42E704 */  lw      $v0, -0x18FC($v0)          ## 8015E704
/* 00098 80AE69C8 8C790030 */  lw      $t9, 0x0030($v1)           ## 80127150
/* 0009C 80AE69CC 03224024 */  and     $t0, $t9, $v0              
/* 000A0 80AE69D0 11000005 */  beq     $t0, $zero, .L80AE69E8     
/* 000A4 80AE69D4 00000000 */  nop
/* 000A8 80AE69D8 8C690038 */  lw      $t1, 0x0038($v1)           ## 80127158
/* 000AC 80AE69DC 01225024 */  and     $t2, $t1, $v0              
/* 000B0 80AE69E0 51400004 */  beql    $t2, $zero, .L80AE69F4     
/* 000B4 80AE69E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE69E8:
/* 000B8 80AE69E8 0C00B55C */  jal     Actor_Kill
              
/* 000BC 80AE69EC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
.L80AE69F0:
/* 000C0 80AE69F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE69F4:
/* 000C4 80AE69F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000C8 80AE69F8 03E00008 */  jr      $ra                        
/* 000CC 80AE69FC 00000000 */  nop


