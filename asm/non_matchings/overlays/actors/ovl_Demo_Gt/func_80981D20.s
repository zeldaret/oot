.late_rodata
glabel D_80982B3C
    .float 0.001

glabel D_80982B40
    .float 0.048

.text
glabel func_80981D20
/* 046B0 80981D20 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 046B4 80981D24 24C6FA90 */  addiu   $a2, $a2, 0xFA90           ## $a2 = 8015FA90
/* 046B8 80981D28 8CC30000 */  lw      $v1, 0x0000($a2)           ## 8015FA90
/* 046BC 80981D2C 84820172 */  lh      $v0, 0x0172($a0)           ## 00000172
/* 046C0 80981D30 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 046C4 80981D34 846E14EC */  lh      $t6, 0x14EC($v1)           ## 000014EC
/* 046C8 80981D38 846F14D4 */  lh      $t7, 0x14D4($v1)           ## 000014D4
/* 046CC 80981D3C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 046D0 80981D40 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 046D4 80981D44 448F9000 */  mtc1    $t7, $f18                  ## $f18 = 0.00
/* 046D8 80981D48 46802020 */  cvt.s.w $f0, $f4                   
/* 046DC 80981D4C 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 046E0 80981D50 3C018098 */  lui     $at, %hi(D_80982B3C)       ## $at = 80980000
/* 046E4 80981D54 46803220 */  cvt.s.w $f8, $f6                   
/* 046E8 80981D58 C4262B3C */  lwc1    $f6, %lo(D_80982B3C)($at)  
/* 046EC 80981D5C 3C018098 */  lui     $at, %hi(D_80982B40)       ## $at = 80980000
/* 046F0 80981D60 46809120 */  cvt.s.w $f4, $f18                  
/* 046F4 80981D64 460A4400 */  add.s   $f16, $f8, $f10            
/* 046F8 80981D68 46062202 */  mul.s   $f8, $f4, $f6              
/* 046FC 80981D6C C42A2B40 */  lwc1    $f10, %lo(D_80982B40)($at) 
/* 04700 80981D70 460A4480 */  add.s   $f18, $f8, $f10            
/* 04704 80981D74 46120102 */  mul.s   $f4, $f0, $f18             
/* 04708 80981D78 46048180 */  add.s   $f6, $f16, $f4             
/* 0470C 80981D7C 4600320D */  trunc.w.s $f8, $f6                   
/* 04710 80981D80 44194000 */  mfc1    $t9, $f8                   
/* 04714 80981D84 00000000 */  nop
/* 04718 80981D88 A4990174 */  sh      $t9, 0x0174($a0)           ## 00000174
/* 0471C 80981D8C 84880174 */  lh      $t0, 0x0174($a0)           ## 00000174
/* 04720 80981D90 00484821 */  addu    $t1, $v0, $t0              
/* 04724 80981D94 A4890172 */  sh      $t1, 0x0172($a0)           ## 00000172
/* 04728 80981D98 8CCA0000 */  lw      $t2, 0x0000($a2)           ## 8015FA90
/* 0472C 80981D9C 848D0172 */  lh      $t5, 0x0172($a0)           ## 00000172
/* 04730 80981DA0 854514F4 */  lh      $a1, 0x14F4($t2)           ## 000014F4
/* 04734 80981DA4 24A54000 */  addiu   $a1, $a1, 0x4000           ## $a1 = 00004000
/* 04738 80981DA8 00055C00 */  sll     $t3, $a1, 16               
/* 0473C 80981DAC 000B6403 */  sra     $t4, $t3, 16               
/* 04740 80981DB0 018D082A */  slt     $at, $t4, $t5              
/* 04744 80981DB4 10200002 */  beq     $at, $zero, .L80981DC0     
/* 04748 80981DB8 00000000 */  nop
/* 0474C 80981DBC A4850172 */  sh      $a1, 0x0172($a0)           ## 00000172
.L80981DC0:
/* 04750 80981DC0 03E00008 */  jr      $ra                        
/* 04754 80981DC4 00000000 */  nop


