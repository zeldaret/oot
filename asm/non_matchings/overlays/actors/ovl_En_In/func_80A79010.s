.late_rodata
glabel jtbl_80A7BA2C
.word L80A790B0
.word L80A7913C
.word L80A79100
.word L80A79124
.word L80A7912C
.word L80A7912C
.word L80A79134

.text
glabel func_80A79010
/* 00060 80A79010 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00064 80A79014 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00068 80A79018 8C8E1C44 */  lw      $t6, 0x1C44($a0)           ## 00001C44
/* 0006C 80A7901C 24050019 */  addiu   $a1, $zero, 0x0019         ## $a1 = 00000019
/* 00070 80A79020 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 00074 80A79024 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 00078 80A79028 10400003 */  beq     $v0, $zero, .L80A79038     
/* 0007C 80A7902C 3043FFFF */  andi    $v1, $v0, 0xFFFF           ## $v1 = 00000000
/* 00080 80A79030 10000049 */  beq     $zero, $zero, .L80A79158   
/* 00084 80A79034 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80A79038:
/* 00088 80A79038 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 0008C 80A7903C 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 00090 80A79040 94640ED6 */  lhu     $a0, 0x0ED6($v1)           ## 8015F536
/* 00094 80A79044 308F0100 */  andi    $t7, $a0, 0x0100           ## $t7 = 00000000
/* 00098 80A79048 51E00009 */  beql    $t7, $zero, .L80A79070     
/* 0009C 80A7904C 8C790010 */  lw      $t9, 0x0010($v1)           ## 8015E670
/* 000A0 80A79050 8C780010 */  lw      $t8, 0x0010($v1)           ## 8015E670
/* 000A4 80A79054 17000003 */  bne     $t8, $zero, .L80A79064     
/* 000A8 80A79058 00000000 */  nop
/* 000AC 80A7905C 1000003E */  beq     $zero, $zero, .L80A79158   
/* 000B0 80A79060 2402205F */  addiu   $v0, $zero, 0x205F         ## $v0 = 0000205F
.L80A79064:
/* 000B4 80A79064 1000003C */  beq     $zero, $zero, .L80A79158   
/* 000B8 80A79068 24022057 */  addiu   $v0, $zero, 0x2057         ## $v0 = 00002057
/* 000BC 80A7906C 8C790010 */  lw      $t9, 0x0010($v1)           ## 8015E670
.L80A79070:
/* 000C0 80A79070 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 000C4 80A79074 57210004 */  bnel    $t9, $at, .L80A79088       
/* 000C8 80A79078 946213FA */  lhu     $v0, 0x13FA($v1)           ## 8015FA5A
/* 000CC 80A7907C 10000036 */  beq     $zero, $zero, .L80A79158   
/* 000D0 80A79080 2402204E */  addiu   $v0, $zero, 0x204E         ## $v0 = 0000204E
/* 000D4 80A79084 946213FA */  lhu     $v0, 0x13FA($v1)           ## 8015FA5A
.L80A79088:
/* 000D8 80A79088 3048000F */  andi    $t0, $v0, 0x000F           ## $t0 = 0000000E
/* 000DC 80A7908C 2509FFFF */  addiu   $t1, $t0, 0xFFFF           ## $t1 = 0000000D
/* 000E0 80A79090 2D210007 */  sltiu   $at, $t1, 0x0007           
/* 000E4 80A79094 10200029 */  beq     $at, $zero, .L80A7913C     
/* 000E8 80A79098 00094880 */  sll     $t1, $t1,  2               
/* 000EC 80A7909C 3C0180A8 */  lui     $at, %hi(jtbl_80A7BA2C)       ## $at = 80A80000
/* 000F0 80A790A0 00290821 */  addu    $at, $at, $t1              
/* 000F4 80A790A4 8C29BA2C */  lw      $t1, %lo(jtbl_80A7BA2C)($at)  
/* 000F8 80A790A8 01200008 */  jr      $t1                        
/* 000FC 80A790AC 00000000 */  nop
glabel L80A790B0
/* 00100 80A790B0 8FAA001C */  lw      $t2, 0x001C($sp)           
/* 00104 80A790B4 308D0800 */  andi    $t5, $a0, 0x0800           ## $t5 = 00000000
/* 00108 80A790B8 8D4B067C */  lw      $t3, 0x067C($t2)           ## 0000067C
/* 0010C 80A790BC 000B6200 */  sll     $t4, $t3,  8               
/* 00110 80A790C0 05800003 */  bltz    $t4, .L80A790D0            
/* 00114 80A790C4 00000000 */  nop
/* 00118 80A790C8 10000023 */  beq     $zero, $zero, .L80A79158   
/* 0011C 80A790CC 24022036 */  addiu   $v0, $zero, 0x2036         ## $v0 = 00002036
.L80A790D0:
/* 00120 80A790D0 11A00009 */  beq     $t5, $zero, .L80A790F8     
/* 00124 80A790D4 00000000 */  nop
/* 00128 80A790D8 946E0F0C */  lhu     $t6, 0x0F0C($v1)           ## 8015F56C
/* 0012C 80A790DC 31CF0004 */  andi    $t7, $t6, 0x0004           ## $t7 = 00000000
/* 00130 80A790E0 11E00003 */  beq     $t7, $zero, .L80A790F0     
/* 00134 80A790E4 00000000 */  nop
/* 00138 80A790E8 1000001B */  beq     $zero, $zero, .L80A79158   
/* 0013C 80A790EC 24022036 */  addiu   $v0, $zero, 0x2036         ## $v0 = 00002036
.L80A790F0:
/* 00140 80A790F0 10000019 */  beq     $zero, $zero, .L80A79158   
/* 00144 80A790F4 24022038 */  addiu   $v0, $zero, 0x2038         ## $v0 = 00002038
.L80A790F8:
/* 00148 80A790F8 10000017 */  beq     $zero, $zero, .L80A79158   
/* 0014C 80A790FC 24022037 */  addiu   $v0, $zero, 0x2037         ## $v0 = 00002037
glabel L80A79100
/* 00150 80A79100 30580040 */  andi    $t8, $v0, 0x0040           ## $t8 = 00000000
/* 00154 80A79104 17000003 */  bne     $t8, $zero, .L80A79114     
/* 00158 80A79108 30590020 */  andi    $t9, $v0, 0x0020           ## $t9 = 00000020
/* 0015C 80A7910C 13200003 */  beq     $t9, $zero, .L80A7911C     
/* 00160 80A79110 00000000 */  nop
.L80A79114:
/* 00164 80A79114 10000010 */  beq     $zero, $zero, .L80A79158   
/* 00168 80A79118 2402203E */  addiu   $v0, $zero, 0x203E         ## $v0 = 0000203E
.L80A7911C:
/* 0016C 80A7911C 1000000E */  beq     $zero, $zero, .L80A79158   
/* 00170 80A79120 2402203D */  addiu   $v0, $zero, 0x203D         ## $v0 = 0000203D
glabel L80A79124
/* 00174 80A79124 1000000C */  beq     $zero, $zero, .L80A79158   
/* 00178 80A79128 2402203A */  addiu   $v0, $zero, 0x203A         ## $v0 = 0000203A
glabel L80A7912C
/* 0017C 80A7912C 1000000A */  beq     $zero, $zero, .L80A79158   
/* 00180 80A79130 2402203C */  addiu   $v0, $zero, 0x203C         ## $v0 = 0000203C
glabel L80A79134
/* 00184 80A79134 10000008 */  beq     $zero, $zero, .L80A79158   
/* 00188 80A79138 2402205B */  addiu   $v0, $zero, 0x205B         ## $v0 = 0000205B
glabel L80A7913C
.L80A7913C:
/* 0018C 80A7913C 94680F0A */  lhu     $t0, 0x0F0A($v1)           ## 8015F56A
/* 00190 80A79140 24022030 */  addiu   $v0, $zero, 0x2030         ## $v0 = 00002030
/* 00194 80A79144 31090400 */  andi    $t1, $t0, 0x0400           ## $t1 = 00000000
/* 00198 80A79148 11200003 */  beq     $t1, $zero, .L80A79158     
/* 0019C 80A7914C 00000000 */  nop
/* 001A0 80A79150 10000001 */  beq     $zero, $zero, .L80A79158   
/* 001A4 80A79154 24022031 */  addiu   $v0, $zero, 0x2031         ## $v0 = 00002031
.L80A79158:
/* 001A8 80A79158 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001AC 80A7915C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 001B0 80A79160 03E00008 */  jr      $ra                        
/* 001B4 80A79164 00000000 */  nop
