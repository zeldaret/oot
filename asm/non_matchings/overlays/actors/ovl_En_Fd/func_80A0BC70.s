glabel func_80A0BC70
/* 005B0 80A0BC70 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 005B4 80A0BC74 AFA40058 */  sw      $a0, 0x0058($sp)           
/* 005B8 80A0BC78 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 005BC 80A0BC7C 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 005C0 80A0BC80 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 005C4 80A0BC84 AFA60060 */  sw      $a2, 0x0060($sp)           
/* 005C8 80A0BC88 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 005CC 80A0BC8C 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 005D0 80A0BC90 AFA40034 */  sw      $a0, 0x0034($sp)           
/* 005D4 80A0BC94 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 005D8 80A0BC98 44812000 */  mtc1    $at, $f4                   ## $f4 = 400.00
/* 005DC 80A0BC9C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 005E0 80A0BCA0 4600203C */  c.lt.s  $f4, $f0                   
/* 005E4 80A0BCA4 00000000 */  nop
/* 005E8 80A0BCA8 45000003 */  bc1f    .L80A0BCB8                 
/* 005EC 80A0BCAC 00000000 */  nop
/* 005F0 80A0BCB0 1000002D */  beq     $zero, $zero, .L80A0BD68   
/* 005F4 80A0BCB4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A0BCB8:
/* 005F8 80A0BCB8 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 005FC 80A0BCBC 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00600 80A0BCC0 8FAE0058 */  lw      $t6, 0x0058($sp)           
/* 00604 80A0BCC4 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 00608 80A0BCC8 8FA40060 */  lw      $a0, 0x0060($sp)           
/* 0060C 80A0BCCC 85CF00B6 */  lh      $t7, 0x00B6($t6)           ## 000000B6
/* 00610 80A0BCD0 46803220 */  cvt.s.w $f8, $f6                   
/* 00614 80A0BCD4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00618 80A0BCD8 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 0061C 80A0BCDC 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 00620 80A0BCE0 27A70044 */  addiu   $a3, $sp, 0x0044           ## $a3 = FFFFFFEC
/* 00624 80A0BCE4 46805420 */  cvt.s.w $f16, $f10                 
/* 00628 80A0BCE8 27B90054 */  addiu   $t9, $sp, 0x0054           ## $t9 = FFFFFFFC
/* 0062C 80A0BCEC 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00630 80A0BCF0 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00634 80A0BCF4 27AA0050 */  addiu   $t2, $sp, 0x0050           ## $t2 = FFFFFFF8
/* 00638 80A0BCF8 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 0063C 80A0BCFC 46104481 */  sub.s   $f18, $f8, $f16            
/* 00640 80A0BD00 4600910D */  trunc.w.s $f4, $f18                  
/* 00644 80A0BD04 44032000 */  mfc1    $v1, $f4                   
/* 00648 80A0BD08 00000000 */  nop
/* 0064C 80A0BD0C 00031C00 */  sll     $v1, $v1, 16               
/* 00650 80A0BD10 00031C03 */  sra     $v1, $v1, 16               
/* 00654 80A0BD14 04600003 */  bltz    $v1, .L80A0BD24            
/* 00658 80A0BD18 00031023 */  subu    $v0, $zero, $v1            
/* 0065C 80A0BD1C 10000001 */  beq     $zero, $zero, .L80A0BD24   
/* 00660 80A0BD20 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80A0BD24:
/* 00664 80A0BD24 28411C71 */  slti    $at, $v0, 0x1C71           
/* 00668 80A0BD28 54200004 */  bnel    $at, $zero, .L80A0BD3C     
/* 0066C 80A0BD2C AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00670 80A0BD30 1000000D */  beq     $zero, $zero, .L80A0BD68   
/* 00674 80A0BD34 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00678 80A0BD38 AFB90010 */  sw      $t9, 0x0010($sp)           
.L80A0BD3C:
/* 0067C 80A0BD3C AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00680 80A0BD40 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00684 80A0BD44 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00688 80A0BD48 AFA90020 */  sw      $t1, 0x0020($sp)           
/* 0068C 80A0BD4C 0C00F7A1 */  jal     func_8003DE84              
/* 00690 80A0BD50 AFAA0024 */  sw      $t2, 0x0024($sp)           
/* 00694 80A0BD54 50400004 */  beql    $v0, $zero, .L80A0BD68     
/* 00698 80A0BD58 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 0069C 80A0BD5C 10000002 */  beq     $zero, $zero, .L80A0BD68   
/* 006A0 80A0BD60 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 006A4 80A0BD64 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A0BD68:
/* 006A8 80A0BD68 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 006AC 80A0BD6C 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 006B0 80A0BD70 03E00008 */  jr      $ra                        
/* 006B4 80A0BD74 00000000 */  nop
