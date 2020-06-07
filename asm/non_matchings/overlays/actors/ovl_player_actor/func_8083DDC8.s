.late_rodata
glabel D_808553B4
    .float 0.1

.text
glabel func_8083DDC8
/* 0BBB8 8083DDC8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0BBBC 8083DDCC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0BBC0 8083DDD0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0BBC4 8083DDD4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0BBC8 8083DDD8 0C00B75E */  jal     func_8002DD78              
/* 0BBCC 8083DDDC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0BBD0 8083DDE0 5440005A */  bnel    $v0, $zero, .L8083DF4C     
/* 0BBD4 8083DDE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0BBD8 8083DDE8 0C20CD2D */  jal     func_808334B4              
/* 0BBDC 8083DDEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0BBE0 8083DDF0 14400055 */  bne     $v0, $zero, .L8083DF48     
/* 0BBE4 8083DDF4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 0BBE8 8083DDF8 C6000838 */  lwc1    $f0, 0x0838($s0)           ## 00000838
/* 0BBEC 8083DDFC 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 0BBF0 8083DE00 260406BC */  addiu   $a0, $s0, 0x06BC           ## $a0 = 000006BC
/* 0BBF4 8083DE04 24060384 */  addiu   $a2, $zero, 0x0384         ## $a2 = 00000384
/* 0BBF8 8083DE08 4600203C */  c.lt.s  $f4, $f0                   
/* 0BBFC 8083DE0C 00000000 */  nop
/* 0BC00 8083DE10 4502004E */  bc1fl   .L8083DF4C                 
/* 0BC04 8083DE14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0BC08 8083DE18 860F083C */  lh      $t7, 0x083C($s0)           ## 0000083C
/* 0BC0C 8083DE1C 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
/* 0BC10 8083DE20 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 0BC14 8083DE24 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 0BC18 8083DE28 01F8C823 */  subu    $t9, $t7, $t8              
/* 0BC1C 8083DE2C 00194400 */  sll     $t0, $t9, 16               
/* 0BC20 8083DE30 00084C03 */  sra     $t1, $t0, 16               
/* 0BC24 8083DE34 44898000 */  mtc1    $t1, $f16                  ## $f16 = 0.00
/* 0BC28 8083DE38 46060202 */  mul.s   $f8, $f0, $f6              
/* 0BC2C 8083DE3C 3C018085 */  lui     $at, %hi(D_808553B4)       ## $at = 80850000
/* 0BC30 8083DE40 C42653B4 */  lwc1    $f6, %lo(D_808553B4)($at)  
/* 0BC34 8083DE44 468084A0 */  cvt.s.w $f18, $f16                 
/* 0BC38 8083DE48 4600428D */  trunc.w.s $f10, $f8                  
/* 0BC3C 8083DE4C 46009102 */  mul.s   $f4, $f18, $f0             
/* 0BC40 8083DE50 44055000 */  mfc1    $a1, $f10                  
/* 0BC44 8083DE54 00000000 */  nop
/* 0BC48 8083DE58 00052C00 */  sll     $a1, $a1, 16               
/* 0BC4C 8083DE5C 46062202 */  mul.s   $f8, $f4, $f6              
/* 0BC50 8083DE60 00052C03 */  sra     $a1, $a1, 16               
/* 0BC54 8083DE64 28A1F060 */  slti    $at, $a1, 0xF060           
/* 0BC58 8083DE68 4600428D */  trunc.w.s $f10, $f8                  
/* 0BC5C 8083DE6C 44075000 */  mfc1    $a3, $f10                  
/* 0BC60 8083DE70 00000000 */  nop
/* 0BC64 8083DE74 00073C00 */  sll     $a3, $a3, 16               
/* 0BC68 8083DE78 10200003 */  beq     $at, $zero, .L8083DE88     
/* 0BC6C 8083DE7C 00073C03 */  sra     $a3, $a3, 16               
/* 0BC70 8083DE80 10000008 */  beq     $zero, $zero, .L8083DEA4   
/* 0BC74 8083DE84 2405F060 */  addiu   $a1, $zero, 0xF060         ## $a1 = FFFFF060
.L8083DE88:
/* 0BC78 8083DE88 28A10FA1 */  slti    $at, $a1, 0x0FA1           
/* 0BC7C 8083DE8C 14200003 */  bne     $at, $zero, .L8083DE9C     
/* 0BC80 8083DE90 00A01025 */  or      $v0, $a1, $zero            ## $v0 = FFFFF060
/* 0BC84 8083DE94 10000001 */  beq     $zero, $zero, .L8083DE9C   
/* 0BC88 8083DE98 24020FA0 */  addiu   $v0, $zero, 0x0FA0         ## $v0 = 00000FA0
.L8083DE9C:
/* 0BC8C 8083DE9C 00022C00 */  sll     $a1, $v0, 16               
/* 0BC90 8083DEA0 00052C03 */  sra     $a1, $a1, 16               
.L8083DEA4:
/* 0BC94 8083DEA4 00071823 */  subu    $v1, $zero, $a3            
/* 0BC98 8083DEA8 2861F060 */  slti    $at, $v1, 0xF060           
/* 0BC9C 8083DEAC 50200004 */  beql    $at, $zero, .L8083DEC0     
/* 0BCA0 8083DEB0 28610FA1 */  slti    $at, $v1, 0x0FA1           
/* 0BCA4 8083DEB4 10000008 */  beq     $zero, $zero, .L8083DED8   
/* 0BCA8 8083DEB8 2407F060 */  addiu   $a3, $zero, 0xF060         ## $a3 = FFFFF060
/* 0BCAC 8083DEBC 28610FA1 */  slti    $at, $v1, 0x0FA1           
.L8083DEC0:
/* 0BCB0 8083DEC0 14200003 */  bne     $at, $zero, .L8083DED0     
/* 0BCB4 8083DEC4 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 0BCB8 8083DEC8 10000001 */  beq     $zero, $zero, .L8083DED0   
/* 0BCBC 8083DECC 24020FA0 */  addiu   $v0, $zero, 0x0FA0         ## $v0 = 00000FA0
.L8083DED0:
/* 0BCC0 8083DED0 00023C00 */  sll     $a3, $v0, 16               
/* 0BCC4 8083DED4 00073C03 */  sra     $a3, $a3, 16               
.L8083DED8:
/* 0BCC8 8083DED8 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 0BCCC 8083DEDC A7A70024 */  sh      $a3, 0x0024($sp)           
/* 0BCD0 8083DEE0 860B06BC */  lh      $t3, 0x06BC($s0)           ## 000006BC
/* 0BCD4 8083DEE4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0BCD8 8083DEE8 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 0BCDC 8083DEEC 448B8000 */  mtc1    $t3, $f16                  ## $f16 = 0.00
/* 0BCE0 8083DEF0 87A70024 */  lh      $a3, 0x0024($sp)           
/* 0BCE4 8083DEF4 260406BA */  addiu   $a0, $s0, 0x06BA           ## $a0 = 000006BA
/* 0BCE8 8083DEF8 468084A0 */  cvt.s.w $f18, $f16                 
/* 0BCEC 8083DEFC 00072C00 */  sll     $a1, $a3, 16               
/* 0BCF0 8083DF00 00052C03 */  sra     $a1, $a1, 16               
/* 0BCF4 8083DF04 2406012C */  addiu   $a2, $zero, 0x012C         ## $a2 = 0000012C
/* 0BCF8 8083DF08 46009107 */  neg.s   $f4, $f18                  
/* 0BCFC 8083DF0C 46062202 */  mul.s   $f8, $f4, $f6              
/* 0BD00 8083DF10 4600428D */  trunc.w.s $f10, $f8                  
/* 0BD04 8083DF14 440D5000 */  mfc1    $t5, $f10                  
/* 0BD08 8083DF18 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 0BD0C 8083DF1C A60D06B6 */  sh      $t5, 0x06B6($s0)           ## 000006B6
/* 0BD10 8083DF20 87A70024 */  lh      $a3, 0x0024($sp)           
/* 0BD14 8083DF24 260406C0 */  addiu   $a0, $s0, 0x06C0           ## $a0 = 000006C0
/* 0BD18 8083DF28 240600C8 */  addiu   $a2, $zero, 0x00C8         ## $a2 = 000000C8
/* 0BD1C 8083DF2C 00072C00 */  sll     $a1, $a3, 16               
/* 0BD20 8083DF30 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 0BD24 8083DF34 00052C03 */  sra     $a1, $a1, 16               
/* 0BD28 8083DF38 960E06AE */  lhu     $t6, 0x06AE($s0)           ## 000006AE
/* 0BD2C 8083DF3C 35CF0168 */  ori     $t7, $t6, 0x0168           ## $t7 = 00000168
/* 0BD30 8083DF40 10000004 */  beq     $zero, $zero, .L8083DF54   
/* 0BD34 8083DF44 A60F06AE */  sh      $t7, 0x06AE($s0)           ## 000006AE
.L8083DF48:
/* 0BD38 8083DF48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8083DF4C:
/* 0BD3C 8083DF4C 0C20F715 */  jal     func_8083DC54              
/* 0BD40 8083DF50 8FA5002C */  lw      $a1, 0x002C($sp)           
.L8083DF54:
/* 0BD44 8083DF54 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0BD48 8083DF58 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0BD4C 8083DF5C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0BD50 8083DF60 03E00008 */  jr      $ra                        
/* 0BD54 8083DF64 00000000 */  nop
