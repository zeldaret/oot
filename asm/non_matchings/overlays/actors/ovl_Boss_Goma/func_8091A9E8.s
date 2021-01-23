.late_rodata
glabel D_8091B608
    .float 10000.0

.text
glabel func_8091A9E8
/* 04FD8 8091A9E8 27BDFF58 */  addiu   $sp, $sp, 0xFF58           ## $sp = FFFFFF58
/* 04FDC 8091A9EC AFB00038 */  sw      $s0, 0x0038($sp)           
/* 04FE0 8091A9F0 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 04FE4 8091A9F4 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 04FE8 8091A9F8 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 04FEC 8091A9FC AFA400A8 */  sw      $a0, 0x00A8($sp)           
/* 04FF0 8091AA00 AFA600B0 */  sw      $a2, 0x00B0($sp)           
/* 04FF4 8091AA04 14A10008 */  bne     $a1, $at, .L8091AA28       
/* 04FF8 8091AA08 AFA700B4 */  sw      $a3, 0x00B4($sp)           
/* 04FFC 8091AA0C 8FA500B8 */  lw      $a1, 0x00B8($sp)           
/* 05000 8091AA10 3C048092 */  lui     $a0, %hi(D_8091B3F4)       ## $a0 = 80920000
/* 05004 8091AA14 2484B3F4 */  addiu   $a0, $a0, %lo(D_8091B3F4)  ## $a0 = 8091B3F4
/* 05008 8091AA18 0C0346BD */  jal     Matrix_MultVec3f              
/* 0500C 8091AA1C 24A50260 */  addiu   $a1, $a1, 0x0260           ## $a1 = 00000260
/* 05010 8091AA20 10000024 */  beq     $zero, $zero, .L8091AAB4   
/* 05014 8091AA24 8FA300B8 */  lw      $v1, 0x00B8($sp)           
.L8091AA28:
/* 05018 8091AA28 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 0501C 8091AA2C 16010007 */  bne     $s0, $at, .L8091AA4C       
/* 05020 8091AA30 3C048092 */  lui     $a0, %hi(D_8091B3F4)       ## $a0 = 80920000
/* 05024 8091AA34 8FA500B8 */  lw      $a1, 0x00B8($sp)           
/* 05028 8091AA38 2484B3F4 */  addiu   $a0, $a0, %lo(D_8091B3F4)  ## $a0 = 8091B3F4
/* 0502C 8091AA3C 0C0346BD */  jal     Matrix_MultVec3f              
/* 05030 8091AA40 24A5026C */  addiu   $a1, $a1, 0x026C           ## $a1 = 0000026C
/* 05034 8091AA44 1000001B */  beq     $zero, $zero, .L8091AAB4   
/* 05038 8091AA48 8FA300B8 */  lw      $v1, 0x00B8($sp)           
.L8091AA4C:
/* 0503C 8091AA4C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 05040 8091AA50 16010007 */  bne     $s0, $at, .L8091AA70       
/* 05044 8091AA54 3C048092 */  lui     $a0, %hi(D_8091B40C)       ## $a0 = 80920000
/* 05048 8091AA58 8FA500B8 */  lw      $a1, 0x00B8($sp)           
/* 0504C 8091AA5C 2484B40C */  addiu   $a0, $a0, %lo(D_8091B40C)  ## $a0 = 8091B40C
/* 05050 8091AA60 0C0346BD */  jal     Matrix_MultVec3f              
/* 05054 8091AA64 24A50038 */  addiu   $a1, $a1, 0x0038           ## $a1 = 00000038
/* 05058 8091AA68 10000012 */  beq     $zero, $zero, .L8091AAB4   
/* 0505C 8091AA6C 8FA300B8 */  lw      $v1, 0x00B8($sp)           
.L8091AA70:
/* 05060 8091AA70 24010015 */  addiu   $at, $zero, 0x0015         ## $at = 00000015
/* 05064 8091AA74 16010007 */  bne     $s0, $at, .L8091AA94       
/* 05068 8091AA78 3C048092 */  lui     $a0, %hi(D_8091B400)       ## $a0 = 80920000
/* 0506C 8091AA7C 8FA500B8 */  lw      $a1, 0x00B8($sp)           
/* 05070 8091AA80 2484B400 */  addiu   $a0, $a0, %lo(D_8091B400)  ## $a0 = 8091B400
/* 05074 8091AA84 0C0346BD */  jal     Matrix_MultVec3f              
/* 05078 8091AA88 24A50278 */  addiu   $a1, $a1, 0x0278           ## $a1 = 00000278
/* 0507C 8091AA8C 10000009 */  beq     $zero, $zero, .L8091AAB4   
/* 05080 8091AA90 8FA300B8 */  lw      $v1, 0x00B8($sp)           
.L8091AA94:
/* 05084 8091AA94 24010049 */  addiu   $at, $zero, 0x0049         ## $at = 00000049
/* 05088 8091AA98 16010005 */  bne     $s0, $at, .L8091AAB0       
/* 0508C 8091AA9C 3C048092 */  lui     $a0, %hi(D_8091B400)       ## $a0 = 80920000
/* 05090 8091AAA0 8FA500B8 */  lw      $a1, 0x00B8($sp)           
/* 05094 8091AAA4 2484B400 */  addiu   $a0, $a0, %lo(D_8091B400)  ## $a0 = 8091B400
/* 05098 8091AAA8 0C0346BD */  jal     Matrix_MultVec3f              
/* 0509C 8091AAAC 24A50284 */  addiu   $a1, $a1, 0x0284           ## $a1 = 00000284
.L8091AAB0:
/* 050A0 8091AAB0 8FA300B8 */  lw      $v1, 0x00B8($sp)           
.L8091AAB4:
/* 050A4 8091AAB4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 050A8 8091AAB8 8FAF00B0 */  lw      $t7, 0x00B0($sp)           
/* 050AC 8091AABC 846E01B8 */  lh      $t6, 0x01B8($v1)           ## 000001B8
/* 050B0 8091AAC0 55C10015 */  bnel    $t6, $at, .L8091AB18       
/* 050B4 8091AAC4 00701021 */  addu    $v0, $v1, $s0              
/* 050B8 8091AAC8 8DF80000 */  lw      $t8, 0x0000($t7)           ## 00000000
/* 050BC 8091AACC 00104080 */  sll     $t0, $s0,  2               
/* 050C0 8091AAD0 01104023 */  subu    $t0, $t0, $s0              
/* 050C4 8091AAD4 1300000B */  beq     $t8, $zero, .L8091AB04     
/* 050C8 8091AAD8 3C018092 */  lui     $at, %hi(D_8091B608)       ## $at = 80920000
/* 050CC 8091AADC 0010C880 */  sll     $t9, $s0,  2               
/* 050D0 8091AAE0 0330C823 */  subu    $t9, $t9, $s0              
/* 050D4 8091AAE4 0019C880 */  sll     $t9, $t9,  2               
/* 050D8 8091AAE8 00792821 */  addu    $a1, $v1, $t9              
/* 050DC 8091AAEC 3C048092 */  lui     $a0, %hi(D_8091B400)       ## $a0 = 80920000
/* 050E0 8091AAF0 2484B400 */  addiu   $a0, $a0, %lo(D_8091B400)  ## $a0 = 8091B400
/* 050E4 8091AAF4 0C0346BD */  jal     Matrix_MultVec3f              
/* 050E8 8091AAF8 24A502A8 */  addiu   $a1, $a1, 0x02A8           ## $a1 = 000002A8
/* 050EC 8091AAFC 10000005 */  beq     $zero, $zero, .L8091AB14   
/* 050F0 8091AB00 8FA300B8 */  lw      $v1, 0x00B8($sp)           
.L8091AB04:
/* 050F4 8091AB04 C424B608 */  lwc1    $f4, %lo(D_8091B608)($at)  
/* 050F8 8091AB08 00084080 */  sll     $t0, $t0,  2               
/* 050FC 8091AB0C 00684821 */  addu    $t1, $v1, $t0              
/* 05100 8091AB10 E52402AC */  swc1    $f4, 0x02AC($t1)           ## 000002AC
.L8091AB14:
/* 05104 8091AB14 00701021 */  addu    $v0, $v1, $s0              
.L8091AB18:
/* 05108 8091AB18 904A0758 */  lbu     $t2, 0x0758($v0)           ## 00000758
/* 0510C 8091AB1C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 05110 8091AB20 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 05114 8091AB24 15410028 */  bne     $t2, $at, .L8091ABC8       
/* 05118 8091AB28 3C048092 */  lui     $a0, %hi(D_8091B418)       ## $a0 = 80920000
/* 0511C 8091AB2C A04B0758 */  sb      $t3, 0x0758($v0)           ## 00000758
/* 05120 8091AB30 2484B418 */  addiu   $a0, $a0, %lo(D_8091B418)  ## $a0 = 8091B418
/* 05124 8091AB34 0C0346BD */  jal     Matrix_MultVec3f              
/* 05128 8091AB38 27A5009C */  addiu   $a1, $sp, 0x009C           ## $a1 = FFFFFFF4
/* 0512C 8091AB3C 0C034236 */  jal     Matrix_Get              
/* 05130 8091AB40 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFA0
/* 05134 8091AB44 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFA0
/* 05138 8091AB48 27A50094 */  addiu   $a1, $sp, 0x0094           ## $a1 = FFFFFFEC
/* 0513C 8091AB4C 0C034833 */  jal     func_800D20CC              
/* 05140 8091AB50 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 05144 8091AB54 3C188092 */  lui     $t8, %hi(D_8091B244)       ## $t8 = 80920000
/* 05148 8091AB58 0310C021 */  addu    $t8, $t8, $s0              
/* 0514C 8091AB5C 9318B244 */  lbu     $t8, %lo(D_8091B244)($t8)  
/* 05150 8091AB60 8FA600A8 */  lw      $a2, 0x00A8($sp)           
/* 05154 8091AB64 C7A6009C */  lwc1    $f6, 0x009C($sp)           
/* 05158 8091AB68 C7A800A0 */  lwc1    $f8, 0x00A0($sp)           
/* 0515C 8091AB6C C7AA00A4 */  lwc1    $f10, 0x00A4($sp)          
/* 05160 8091AB70 87AD0094 */  lh      $t5, 0x0094($sp)           
/* 05164 8091AB74 87AE0096 */  lh      $t6, 0x0096($sp)           
/* 05168 8091AB78 87AF0098 */  lh      $t7, 0x0098($sp)           
/* 0516C 8091AB7C 27190064 */  addiu   $t9, $t8, 0x0064           ## $t9 = 80920064
/* 05170 8091AB80 AFB90028 */  sw      $t9, 0x0028($sp)           
/* 05174 8091AB84 8FA500B8 */  lw      $a1, 0x00B8($sp)           
/* 05178 8091AB88 2407002B */  addiu   $a3, $zero, 0x002B         ## $a3 = 0000002B
/* 0517C 8091AB8C 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 05180 8091AB90 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 05184 8091AB94 E7A80014 */  swc1    $f8, 0x0014($sp)           
/* 05188 8091AB98 E7AA0018 */  swc1    $f10, 0x0018($sp)          
/* 0518C 8091AB9C AFAD001C */  sw      $t5, 0x001C($sp)           
/* 05190 8091ABA0 AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 05194 8091ABA4 0C00C916 */  jal     Actor_SpawnAsChild
              
/* 05198 8091ABA8 AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 0519C 8091ABAC 10400006 */  beq     $v0, $zero, .L8091ABC8     
/* 051A0 8091ABB0 8FA800B0 */  lw      $t0, 0x00B0($sp)           
/* 051A4 8091ABB4 8D090000 */  lw      $t1, 0x0000($t0)           ## 00000000
/* 051A8 8091ABB8 AC490308 */  sw      $t1, 0x0308($v0)           ## 00000308
/* 051AC 8091ABBC 8FAA00B8 */  lw      $t2, 0x00B8($sp)           
/* 051B0 8091ABC0 814B001E */  lb      $t3, 0x001E($t2)           ## 0000001E
/* 051B4 8091ABC4 A04B001E */  sb      $t3, 0x001E($v0)           ## 0000001E
.L8091ABC8:
/* 051B8 8091ABC8 8FA300B8 */  lw      $v1, 0x00B8($sp)           
/* 051BC 8091ABCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 051C0 8091ABD0 0C018A29 */  jal     Collider_UpdateSpheres              
/* 051C4 8091ABD4 246507BC */  addiu   $a1, $v1, 0x07BC           ## $a1 = 000007BC
/* 051C8 8091ABD8 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 051CC 8091ABDC 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 051D0 8091ABE0 27BD00A8 */  addiu   $sp, $sp, 0x00A8           ## $sp = 00000000
/* 051D4 8091ABE4 03E00008 */  jr      $ra                        
/* 051D8 8091ABE8 00000000 */  nop
