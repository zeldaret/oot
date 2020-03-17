glabel func_8083DC54
/* 0BA44 8083DC54 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 0BA48 8083DC58 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0BA4C 8083DC5C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0BA50 8083DC60 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 0BA54 8083DC64 8C8E0664 */  lw      $t6, 0x0664($a0)           ## 00000664
/* 0BA58 8083DC68 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0BA5C 8083DC6C 3C0F8085 */  lui     $t7, %hi(D_808535E4)       ## $t7 = 80850000
/* 0BA60 8083DC70 11C00012 */  beq     $t6, $zero, .L8083DCBC     
/* 0BA64 8083DC74 00000000 */  nop
/* 0BA68 8083DC78 0C00B75E */  jal     func_8002DD78              
/* 0BA6C 8083DC7C 00000000 */  nop
/* 0BA70 8083DC80 54400006 */  bnel    $v0, $zero, .L8083DC9C     
/* 0BA74 8083DC84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0BA78 8083DC88 0C20CD2D */  jal     func_808334B4              
/* 0BA7C 8083DC8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0BA80 8083DC90 10400006 */  beq     $v0, $zero, .L8083DCAC     
/* 0BA84 8083DC94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0BA88 8083DC98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8083DC9C:
/* 0BA8C 8083DC9C 0C20F6E6 */  jal     func_8083DB98              
/* 0BA90 8083DCA0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0BA94 8083DCA4 10000044 */  beq     $zero, $zero, .L8083DDB8   
/* 0BA98 8083DCA8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L8083DCAC:
/* 0BA9C 8083DCAC 0C20F6E6 */  jal     func_8083DB98              
/* 0BAA0 8083DCB0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0BAA4 8083DCB4 10000040 */  beq     $zero, $zero, .L8083DDB8   
/* 0BAA8 8083DCB8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L8083DCBC:
/* 0BAAC 8083DCBC 8DEF35E4 */  lw      $t7, %lo(D_808535E4)($t7)  
/* 0BAB0 8083DCC0 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 0BAB4 8083DCC4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0BAB8 8083DCC8 15E1000A */  bne     $t7, $at, .L8083DCF4       
/* 0BABC 8083DCCC 3C068085 */  lui     $a2, %hi(D_8085456C)       ## $a2 = 80850000
/* 0BAC0 8083DCD0 24180320 */  addiu   $t8, $zero, 0x0320         ## $t8 = 00000320
/* 0BAC4 8083DCD4 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 0BAC8 8083DCD8 26040044 */  addiu   $a0, $s0, 0x0044           ## $a0 = 00000044
/* 0BACC 8083DCDC 2405B1E0 */  addiu   $a1, $zero, 0xB1E0         ## $a1 = FFFFB1E0
/* 0BAD0 8083DCE0 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 0BAD4 8083DCE4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0BAD8 8083DCE8 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 0BADC 8083DCEC 10000027 */  beq     $zero, $zero, .L8083DD8C   
/* 0BAE0 8083DCF0 00000000 */  nop
.L8083DCF4:
/* 0BAE4 8083DCF4 A7A00046 */  sh      $zero, 0x0046($sp)         
/* 0BAE8 8083DCF8 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 0BAEC 8083DCFC 24C6456C */  addiu   $a2, $a2, %lo(D_8085456C)  ## $a2 = 0000456C
/* 0BAF0 8083DD00 0C20E5CF */  jal     func_8083973C              
/* 0BAF4 8083DD04 27A70034 */  addiu   $a3, $sp, 0x0034           ## $a3 = FFFFFFEC
/* 0BAF8 8083DD08 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
/* 0BAFC 8083DD0C 44812000 */  mtc1    $at, $f4                   ## $f4 = -32000.00
/* 0BB00 8083DD10 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 0BB04 8083DD14 4600203C */  c.lt.s  $f4, $f0                   
/* 0BB08 8083DD18 00000000 */  nop
/* 0BB0C 8083DD1C 45020013 */  bc1fl   .L8083DD6C                 
/* 0BB10 8083DD20 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 0BB14 8083DD24 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 0BB18 8083DD28 44816000 */  mtc1    $at, $f12                  ## $f12 = 40.00
/* 0BB1C 8083DD2C 0C034199 */  jal     atan2s
              
/* 0BB20 8083DD30 46003381 */  sub.s   $f14, $f6, $f0             
/* 0BB24 8083DD34 2841F060 */  slti    $at, $v0, 0xF060           
/* 0BB28 8083DD38 10200004 */  beq     $at, $zero, .L8083DD4C     
/* 0BB2C 8083DD3C 00021C00 */  sll     $v1, $v0, 16               
/* 0BB30 8083DD40 2419F060 */  addiu   $t9, $zero, 0xF060         ## $t9 = FFFFF060
/* 0BB34 8083DD44 10000008 */  beq     $zero, $zero, .L8083DD68   
/* 0BB38 8083DD48 A7B90046 */  sh      $t9, 0x0046($sp)           
.L8083DD4C:
/* 0BB3C 8083DD4C 00031C03 */  sra     $v1, $v1, 16               
/* 0BB40 8083DD50 28610FA1 */  slti    $at, $v1, 0x0FA1           
/* 0BB44 8083DD54 14200003 */  bne     $at, $zero, .L8083DD64     
/* 0BB48 8083DD58 00602825 */  or      $a1, $v1, $zero            ## $a1 = 00000000
/* 0BB4C 8083DD5C 10000001 */  beq     $zero, $zero, .L8083DD64   
/* 0BB50 8083DD60 24050FA0 */  addiu   $a1, $zero, 0x0FA0         ## $a1 = 00000FA0
.L8083DD64:
/* 0BB54 8083DD64 A7A50046 */  sh      $a1, 0x0046($sp)           
.L8083DD68:
/* 0BB58 8083DD68 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
.L8083DD6C:
/* 0BB5C 8083DD6C 2409001E */  addiu   $t1, $zero, 0x001E         ## $t1 = 0000001E
/* 0BB60 8083DD70 26040044 */  addiu   $a0, $s0, 0x0044           ## $a0 = 00000044
/* 0BB64 8083DD74 A6080046 */  sh      $t0, 0x0046($s0)           ## 00000046
/* 0BB68 8083DD78 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 0BB6C 8083DD7C 87A50046 */  lh      $a1, 0x0046($sp)           
/* 0BB70 8083DD80 2406000E */  addiu   $a2, $zero, 0x000E         ## $a2 = 0000000E
/* 0BB74 8083DD84 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0BB78 8083DD88 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
.L8083DD8C:
/* 0BB7C 8083DD8C 0C00B75E */  jal     func_8002DD78              
/* 0BB80 8083DD90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0BB84 8083DD94 0002282B */  sltu    $a1, $zero, $v0            
/* 0BB88 8083DD98 14A00004 */  bne     $a1, $zero, .L8083DDAC     
/* 0BB8C 8083DD9C 00000000 */  nop
/* 0BB90 8083DDA0 0C20CD2D */  jal     func_808334B4              
/* 0BB94 8083DDA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0BB98 8083DDA8 0002282B */  sltu    $a1, $zero, $v0            
.L8083DDAC:
/* 0BB9C 8083DDAC 0C20DAAE */  jal     func_80836AB8              
/* 0BBA0 8083DDB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0BBA4 8083DDB4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L8083DDB8:
/* 0BBA8 8083DDB8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0BBAC 8083DDBC 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 0BBB0 8083DDC0 03E00008 */  jr      $ra                        
/* 0BBB4 8083DDC4 00000000 */  nop


