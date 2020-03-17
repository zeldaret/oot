glabel func_80AE3F9C
/* 01B9C 80AE3F9C AFA50004 */  sw      $a1, 0x0004($sp)           
/* 01BA0 80AE3FA0 84860310 */  lh      $a2, 0x0310($a0)           ## 00000310
/* 01BA4 80AE3FA4 848500B6 */  lh      $a1, 0x00B6($a0)           ## 000000B6
/* 01BA8 80AE3FA8 8483008A */  lh      $v1, 0x008A($a0)           ## 0000008A
/* 01BAC 80AE3FAC 00A6C021 */  addu    $t8, $a1, $a2              
/* 01BB0 80AE3FB0 00781023 */  subu    $v0, $v1, $t8              
/* 01BB4 80AE3FB4 00021400 */  sll     $v0, $v0, 16               
/* 01BB8 80AE3FB8 00021403 */  sra     $v0, $v0, 16               
/* 01BBC 80AE3FBC 2841FE0C */  slti    $at, $v0, 0xFE0C           
/* 01BC0 80AE3FC0 10200003 */  beq     $at, $zero, .L80AE3FD0     
/* 01BC4 80AE3FC4 00654823 */  subu    $t1, $v1, $a1              
/* 01BC8 80AE3FC8 10000008 */  beq     $zero, $zero, .L80AE3FEC   
/* 01BCC 80AE3FCC 2407FE0C */  addiu   $a3, $zero, 0xFE0C         ## $a3 = FFFFFE0C
.L80AE3FD0:
/* 01BD0 80AE3FD0 284101F5 */  slti    $at, $v0, 0x01F5           
/* 01BD4 80AE3FD4 14200003 */  bne     $at, $zero, .L80AE3FE4     
/* 01BD8 80AE3FD8 00404025 */  or      $t0, $v0, $zero            ## $t0 = 00000000
/* 01BDC 80AE3FDC 10000001 */  beq     $zero, $zero, .L80AE3FE4   
/* 01BE0 80AE3FE0 240801F4 */  addiu   $t0, $zero, 0x01F4         ## $t0 = 000001F4
.L80AE3FE4:
/* 01BE4 80AE3FE4 00083C00 */  sll     $a3, $t0, 16               
/* 01BE8 80AE3FE8 00073C03 */  sra     $a3, $a3, 16               
.L80AE3FEC:
/* 01BEC 80AE3FEC 8499030E */  lh      $t9, 0x030E($a0)           ## 0000030E
/* 01BF0 80AE3FF0 00095400 */  sll     $t2, $t1, 16               
/* 01BF4 80AE3FF4 000A5C03 */  sra     $t3, $t2, 16               
/* 01BF8 80AE3FF8 00591023 */  subu    $v0, $v0, $t9              
/* 01BFC 80AE3FFC 00021400 */  sll     $v0, $v0, 16               
/* 01C00 80AE4000 00021403 */  sra     $v0, $v0, 16               
/* 01C04 80AE4004 2841FE0C */  slti    $at, $v0, 0xFE0C           
/* 01C08 80AE4008 50200004 */  beql    $at, $zero, .L80AE401C     
/* 01C0C 80AE400C 284101F5 */  slti    $at, $v0, 0x01F5           
/* 01C10 80AE4010 10000008 */  beq     $zero, $zero, .L80AE4034   
/* 01C14 80AE4014 2402FE0C */  addiu   $v0, $zero, 0xFE0C         ## $v0 = FFFFFE0C
/* 01C18 80AE4018 284101F5 */  slti    $at, $v0, 0x01F5           
.L80AE401C:
/* 01C1C 80AE401C 14200003 */  bne     $at, $zero, .L80AE402C     
/* 01C20 80AE4020 00404025 */  or      $t0, $v0, $zero            ## $t0 = FFFFFE0C
/* 01C24 80AE4024 10000001 */  beq     $zero, $zero, .L80AE402C   
/* 01C28 80AE4028 240801F4 */  addiu   $t0, $zero, 0x01F4         ## $t0 = 000001F4
.L80AE402C:
/* 01C2C 80AE402C 00081400 */  sll     $v0, $t0, 16               
/* 01C30 80AE4030 00021403 */  sra     $v0, $v0, 16               
.L80AE4034:
/* 01C34 80AE4034 0560000F */  bltz    $t3, .L80AE4074            
/* 01C38 80AE4038 2409B6A1 */  addiu   $t1, $zero, 0xB6A1         ## $t1 = FFFFB6A1
/* 01C3C 80AE403C 04E00003 */  bltz    $a3, .L80AE404C            
/* 01C40 80AE4040 00074023 */  subu    $t0, $zero, $a3            
/* 01C44 80AE4044 10000001 */  beq     $zero, $zero, .L80AE404C   
/* 01C48 80AE4048 00E04025 */  or      $t0, $a3, $zero            ## $t0 = FFFFFE0C
.L80AE404C:
/* 01C4C 80AE404C 00C86021 */  addu    $t4, $a2, $t0              
/* 01C50 80AE4050 04400003 */  bltz    $v0, .L80AE4060            
/* 01C54 80AE4054 A48C0310 */  sh      $t4, 0x0310($a0)           ## 00000310
/* 01C58 80AE4058 10000002 */  beq     $zero, $zero, .L80AE4064   
/* 01C5C 80AE405C 00404025 */  or      $t0, $v0, $zero            ## $t0 = FFFFFE0C
.L80AE4060:
/* 01C60 80AE4060 00024023 */  subu    $t0, $zero, $v0            
.L80AE4064:
/* 01C64 80AE4064 848D030E */  lh      $t5, 0x030E($a0)           ## 0000030E
/* 01C68 80AE4068 01A87021 */  addu    $t6, $t5, $t0              
/* 01C6C 80AE406C 1000000E */  beq     $zero, $zero, .L80AE40A8   
/* 01C70 80AE4070 A48E030E */  sh      $t6, 0x030E($a0)           ## 0000030E
.L80AE4074:
/* 01C74 80AE4074 04E00003 */  bltz    $a3, .L80AE4084            
/* 01C78 80AE4078 00074023 */  subu    $t0, $zero, $a3            
/* 01C7C 80AE407C 10000001 */  beq     $zero, $zero, .L80AE4084   
/* 01C80 80AE4080 00E04025 */  or      $t0, $a3, $zero            ## $t0 = FFFFFE0C
.L80AE4084:
/* 01C84 80AE4084 00C87823 */  subu    $t7, $a2, $t0              
/* 01C88 80AE4088 04400003 */  bltz    $v0, .L80AE4098            
/* 01C8C 80AE408C A48F0310 */  sh      $t7, 0x0310($a0)           ## 00000310
/* 01C90 80AE4090 10000002 */  beq     $zero, $zero, .L80AE409C   
/* 01C94 80AE4094 00404025 */  or      $t0, $v0, $zero            ## $t0 = FFFFFE0C
.L80AE4098:
/* 01C98 80AE4098 00024023 */  subu    $t0, $zero, $v0            
.L80AE409C:
/* 01C9C 80AE409C 8498030E */  lh      $t8, 0x030E($a0)           ## 0000030E
/* 01CA0 80AE40A0 0308C823 */  subu    $t9, $t8, $t0              
/* 01CA4 80AE40A4 A499030E */  sh      $t9, 0x030E($a0)           ## 0000030E
.L80AE40A8:
/* 01CA8 80AE40A8 84860310 */  lh      $a2, 0x0310($a0)           ## 00000310
/* 01CAC 80AE40AC 240ADA91 */  addiu   $t2, $zero, 0xDA91         ## $t2 = FFFFDA91
/* 01CB0 80AE40B0 28C1B6A1 */  slti    $at, $a2, 0xB6A1           
/* 01CB4 80AE40B4 50200004 */  beql    $at, $zero, .L80AE40C8     
/* 01CB8 80AE40B8 28C14960 */  slti    $at, $a2, 0x4960           
/* 01CBC 80AE40BC 10000007 */  beq     $zero, $zero, .L80AE40DC   
/* 01CC0 80AE40C0 A4890310 */  sh      $t1, 0x0310($a0)           ## 00000310
/* 01CC4 80AE40C4 28C14960 */  slti    $at, $a2, 0x4960           
.L80AE40C8:
/* 01CC8 80AE40C8 14200003 */  bne     $at, $zero, .L80AE40D8     
/* 01CCC 80AE40CC 00C04025 */  or      $t0, $a2, $zero            ## $t0 = 00000000
/* 01CD0 80AE40D0 10000001 */  beq     $zero, $zero, .L80AE40D8   
/* 01CD4 80AE40D4 2408495F */  addiu   $t0, $zero, 0x495F         ## $t0 = 0000495F
.L80AE40D8:
/* 01CD8 80AE40D8 A4880310 */  sh      $t0, 0x0310($a0)           ## 00000310
.L80AE40DC:
/* 01CDC 80AE40DC 8482030E */  lh      $v0, 0x030E($a0)           ## 0000030E
/* 01CE0 80AE40E0 2841DA91 */  slti    $at, $v0, 0xDA91           
/* 01CE4 80AE40E4 50200004 */  beql    $at, $zero, .L80AE40F8     
/* 01CE8 80AE40E8 28412570 */  slti    $at, $v0, 0x2570           
/* 01CEC 80AE40EC 03E00008 */  jr      $ra                        
/* 01CF0 80AE40F0 A48A030E */  sh      $t2, 0x030E($a0)           ## 0000030E
.L80AE40F4:
/* 01CF4 80AE40F4 28412570 */  slti    $at, $v0, 0x2570           
.L80AE40F8:
/* 01CF8 80AE40F8 14200003 */  bne     $at, $zero, .L80AE4108     
/* 01CFC 80AE40FC 00404025 */  or      $t0, $v0, $zero            ## $t0 = FFFFFE0C
/* 01D00 80AE4100 10000001 */  beq     $zero, $zero, .L80AE4108   
/* 01D04 80AE4104 2408256F */  addiu   $t0, $zero, 0x256F         ## $t0 = 0000256F
.L80AE4108:
/* 01D08 80AE4108 A488030E */  sh      $t0, 0x030E($a0)           ## 0000030E
/* 01D0C 80AE410C 03E00008 */  jr      $ra                        
/* 01D10 80AE4110 00000000 */  nop


