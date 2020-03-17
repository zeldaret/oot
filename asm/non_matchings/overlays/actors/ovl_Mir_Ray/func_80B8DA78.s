glabel func_80B8DA78
/* 00A28 80B8DA78 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00A2C 80B8DA7C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00A30 80B8DA80 240C0006 */  addiu   $t4, $zero, 0x0006         ## $t4 = 00000006
/* 00A34 80B8DA84 240B0054 */  addiu   $t3, $zero, 0x0054         ## $t3 = 00000054
.L80B8DA88:
/* 00A38 80B8DA88 24440001 */  addiu   $a0, $v0, 0x0001           ## $a0 = 00000001
/* 00A3C 80B8DA8C 28810006 */  slti    $at, $a0, 0x0006           
/* 00A40 80B8DA90 10200036 */  beq     $at, $zero, .L80B8DB6C     
/* 00A44 80B8DA94 00801825 */  or      $v1, $a0, $zero            ## $v1 = 00000001
/* 00A48 80B8DA98 00027080 */  sll     $t6, $v0,  2               
/* 00A4C 80B8DA9C 01C27021 */  addu    $t6, $t6, $v0              
/* 00A50 80B8DAA0 000E7080 */  sll     $t6, $t6,  2               
/* 00A54 80B8DAA4 01C27021 */  addu    $t6, $t6, $v0              
/* 00A58 80B8DAA8 000E7080 */  sll     $t6, $t6,  2               
/* 00A5C 80B8DAAC 00AE3021 */  addu    $a2, $a1, $t6              
/* 00A60 80B8DAB0 8CC2004C */  lw      $v0, 0x004C($a2)           ## 0000004C
.L80B8DAB4:
/* 00A64 80B8DAB4 5040002B */  beql    $v0, $zero, .L80B8DB64     
/* 00A68 80B8DAB8 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000002
/* 00A6C 80B8DABC 006B0019 */  multu   $v1, $t3                   
/* 00A70 80B8DAC0 00007812 */  mflo    $t7                        
/* 00A74 80B8DAC4 00AF3821 */  addu    $a3, $a1, $t7              
/* 00A78 80B8DAC8 8CE8004C */  lw      $t0, 0x004C($a3)           ## 0000004C
/* 00A7C 80B8DACC 51000025 */  beql    $t0, $zero, .L80B8DB64     
/* 00A80 80B8DAD0 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000003
/* 00A84 80B8DAD4 84580008 */  lh      $t8, 0x0008($v0)           ## 00000008
/* 00A88 80B8DAD8 85190008 */  lh      $t9, 0x0008($t0)           ## 00000008
/* 00A8C 80B8DADC 03194823 */  subu    $t1, $t8, $t9              
/* 00A90 80B8DAE0 05200003 */  bltz    $t1, .L80B8DAF0            
/* 00A94 80B8DAE4 00095023 */  subu    $t2, $zero, $t1            
/* 00A98 80B8DAE8 10000001 */  beq     $zero, $zero, .L80B8DAF0   
/* 00A9C 80B8DAEC 01205025 */  or      $t2, $t1, $zero            ## $t2 = 00000000
.L80B8DAF0:
/* 00AA0 80B8DAF0 29410064 */  slti    $at, $t2, 0x0064           
/* 00AA4 80B8DAF4 5020001B */  beql    $at, $zero, .L80B8DB64     
/* 00AA8 80B8DAF8 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000004
/* 00AAC 80B8DAFC 844D000A */  lh      $t5, 0x000A($v0)           ## 0000000A
/* 00AB0 80B8DB00 850E000A */  lh      $t6, 0x000A($t0)           ## 0000000A
/* 00AB4 80B8DB04 01AE4823 */  subu    $t1, $t5, $t6              
/* 00AB8 80B8DB08 05200003 */  bltz    $t1, .L80B8DB18            
/* 00ABC 80B8DB0C 00095023 */  subu    $t2, $zero, $t1            
/* 00AC0 80B8DB10 10000001 */  beq     $zero, $zero, .L80B8DB18   
/* 00AC4 80B8DB14 01205025 */  or      $t2, $t1, $zero            ## $t2 = 00000000
.L80B8DB18:
/* 00AC8 80B8DB18 29410064 */  slti    $at, $t2, 0x0064           
/* 00ACC 80B8DB1C 50200011 */  beql    $at, $zero, .L80B8DB64     
/* 00AD0 80B8DB20 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000005
/* 00AD4 80B8DB24 844F000C */  lh      $t7, 0x000C($v0)           ## 0000000C
/* 00AD8 80B8DB28 8518000C */  lh      $t8, 0x000C($t0)           ## 0000000C
/* 00ADC 80B8DB2C 01F84823 */  subu    $t1, $t7, $t8              
/* 00AE0 80B8DB30 05200003 */  bltz    $t1, .L80B8DB40            
/* 00AE4 80B8DB34 00095023 */  subu    $t2, $zero, $t1            
/* 00AE8 80B8DB38 10000001 */  beq     $zero, $zero, .L80B8DB40   
/* 00AEC 80B8DB3C 01205025 */  or      $t2, $t1, $zero            ## $t2 = 00000000
.L80B8DB40:
/* 00AF0 80B8DB40 29410064 */  slti    $at, $t2, 0x0064           
/* 00AF4 80B8DB44 50200007 */  beql    $at, $zero, .L80B8DB64     
/* 00AF8 80B8DB48 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000006
/* 00AFC 80B8DB4C 8459000E */  lh      $t9, 0x000E($v0)           ## 0000000E
/* 00B00 80B8DB50 850D000E */  lh      $t5, 0x000E($t0)           ## 0000000E
/* 00B04 80B8DB54 572D0003 */  bnel    $t9, $t5, .L80B8DB64       
/* 00B08 80B8DB58 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000007
/* 00B0C 80B8DB5C ACE0004C */  sw      $zero, 0x004C($a3)         ## 0000004C
/* 00B10 80B8DB60 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000008
.L80B8DB64:
/* 00B14 80B8DB64 546CFFD3 */  bnel    $v1, $t4, .L80B8DAB4       
/* 00B18 80B8DB68 8CC2004C */  lw      $v0, 0x004C($a2)           ## 0000004C
.L80B8DB6C:
/* 00B1C 80B8DB6C 148CFFC6 */  bne     $a0, $t4, .L80B8DA88       
/* 00B20 80B8DB70 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000001
/* 00B24 80B8DB74 03E00008 */  jr      $ra                        
/* 00B28 80B8DB78 00000000 */  nop


