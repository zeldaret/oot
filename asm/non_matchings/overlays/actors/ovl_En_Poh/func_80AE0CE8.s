.rdata
glabel D_80AE1B80
    .asciz "../z_en_poh.c"
    .balign 4

.late_rodata
glabel D_80AE1C68
    .float 0.01

glabel D_80AE1C6C
 .word 0x3F48C8C9

.text
glabel func_80AE0CE8
/* 02F98 80AE0CE8 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 02F9C 80AE0CEC AFB00028 */  sw      $s0, 0x0028($sp)           
/* 02FA0 80AE0CF0 8FB00058 */  lw      $s0, 0x0058($sp)           
/* 02FA4 80AE0CF4 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 02FA8 80AE0CF8 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 02FAC 80AE0CFC AFA5004C */  sw      $a1, 0x004C($sp)           
/* 02FB0 80AE0D00 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 02FB4 80AE0D04 AFA60050 */  sw      $a2, 0x0050($sp)           
/* 02FB8 80AE0D08 AFA70054 */  sw      $a3, 0x0054($sp)           
/* 02FBC 80AE0D0C 0C018A29 */  jal     func_800628A4              
/* 02FC0 80AE0D10 26050308 */  addiu   $a1, $s0, 0x0308           ## $a1 = 00000308
/* 02FC4 80AE0D14 8E0E0190 */  lw      $t6, 0x0190($s0)           ## 00000190
/* 02FC8 80AE0D18 3C0880AE */  lui     $t0, %hi(func_80ADF15C)    ## $t0 = 80AE0000
/* 02FCC 80AE0D1C 2508F15C */  addiu   $t0, $t0, %lo(func_80ADF15C) ## $t0 = 80ADF15C
/* 02FD0 80AE0D20 550E0026 */  bnel    $t0, $t6, .L80AE0DBC       
/* 02FD4 80AE0D24 8E0902A4 */  lw      $t1, 0x02A4($s0)           ## 000002A4
/* 02FD8 80AE0D28 860F0198 */  lh      $t7, 0x0198($s0)           ## 00000198
/* 02FDC 80AE0D2C 29E10002 */  slti    $at, $t7, 0x0002           
/* 02FE0 80AE0D30 54200022 */  bnel    $at, $zero, .L80AE0DBC     
/* 02FE4 80AE0D34 8E0902A4 */  lw      $t1, 0x02A4($s0)           ## 000002A4
/* 02FE8 80AE0D38 8E1902A4 */  lw      $t9, 0x02A4($s0)           ## 000002A4
/* 02FEC 80AE0D3C 8FB8004C */  lw      $t8, 0x004C($sp)           
/* 02FF0 80AE0D40 8FA7005C */  lw      $a3, 0x005C($sp)           
/* 02FF4 80AE0D44 93290007 */  lbu     $t1, 0x0007($t9)           ## 00000007
/* 02FF8 80AE0D48 3C0BDA38 */  lui     $t3, 0xDA38                ## $t3 = DA380000
/* 02FFC 80AE0D4C 5709001B */  bnel    $t8, $t1, .L80AE0DBC       
/* 03000 80AE0D50 8E0902A4 */  lw      $t1, 0x02A4($s0)           ## 000002A4
/* 03004 80AE0D54 8CE20000 */  lw      $v0, 0x0000($a3)           ## 00000000
/* 03008 80AE0D58 356B0003 */  ori     $t3, $t3, 0x0003           ## $t3 = DA380003
/* 0300C 80AE0D5C 3C0580AE */  lui     $a1, %hi(D_80AE1B80)       ## $a1 = 80AE0000
/* 03010 80AE0D60 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 03014 80AE0D64 ACEA0000 */  sw      $t2, 0x0000($a3)           ## 00000000
/* 03018 80AE0D68 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 0301C 80AE0D6C 8FAC0048 */  lw      $t4, 0x0048($sp)           
/* 03020 80AE0D70 24A51B80 */  addiu   $a1, $a1, %lo(D_80AE1B80)  ## $a1 = 80AE1B80
/* 03024 80AE0D74 2406099C */  addiu   $a2, $zero, 0x099C         ## $a2 = 0000099C
/* 03028 80AE0D78 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 0302C 80AE0D7C AFA80034 */  sw      $t0, 0x0034($sp)           
/* 03030 80AE0D80 0C0346A2 */  jal     Matrix_NewMtx              
/* 03034 80AE0D84 AFA20040 */  sw      $v0, 0x0040($sp)           
/* 03038 80AE0D88 8FA30040 */  lw      $v1, 0x0040($sp)           
/* 0303C 80AE0D8C 8FA7005C */  lw      $a3, 0x005C($sp)           
/* 03040 80AE0D90 8FA80034 */  lw      $t0, 0x0034($sp)           
/* 03044 80AE0D94 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03048 80AE0D98 8CE20000 */  lw      $v0, 0x0000($a3)           ## 00000000
/* 0304C 80AE0D9C 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 03050 80AE0DA0 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 03054 80AE0DA4 ACED0000 */  sw      $t5, 0x0000($a3)           ## 00000000
/* 03058 80AE0DA8 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 0305C 80AE0DAC 8E0F02A4 */  lw      $t7, 0x02A4($s0)           ## 000002A4
/* 03060 80AE0DB0 8DF90020 */  lw      $t9, 0x0020($t7)           ## 00000020
/* 03064 80AE0DB4 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 03068 80AE0DB8 8E0902A4 */  lw      $t1, 0x02A4($s0)           ## 000002A4
.L80AE0DBC:
/* 0306C 80AE0DBC 8FB8004C */  lw      $t8, 0x004C($sp)           
/* 03070 80AE0DC0 912A0006 */  lbu     $t2, 0x0006($t1)           ## 00000006
/* 03074 80AE0DC4 570A0043 */  bnel    $t8, $t2, .L80AE0ED4       
/* 03078 80AE0DC8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0307C 80AE0DCC 8E0B0190 */  lw      $t3, 0x0190($s0)           ## 00000190
/* 03080 80AE0DD0 550B0015 */  bnel    $t0, $t3, .L80AE0E28       
/* 03084 80AE0DD4 26040368 */  addiu   $a0, $s0, 0x0368           ## $a0 = 00000368
/* 03088 80AE0DD8 860C0198 */  lh      $t4, 0x0198($s0)           ## 00000198
/* 0308C 80AE0DDC 29810013 */  slti    $at, $t4, 0x0013           
/* 03090 80AE0DE0 54200011 */  bnel    $at, $zero, .L80AE0E28     
/* 03094 80AE0DE4 26040368 */  addiu   $a0, $s0, 0x0368           ## $a0 = 00000368
/* 03098 80AE0DE8 C6000050 */  lwc1    $f0, 0x0050($s0)           ## 00000050
/* 0309C 80AE0DEC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 030A0 80AE0DF0 3C0180AE */  lui     $at, %hi(D_80AE1C68)       ## $at = 80AE0000
/* 030A4 80AE0DF4 46002032 */  c.eq.s  $f4, $f0                   
/* 030A8 80AE0DF8 00000000 */  nop
/* 030AC 80AE0DFC 4503000A */  bc1tl   .L80AE0E28                 
/* 030B0 80AE0E00 26040368 */  addiu   $a0, $s0, 0x0368           ## $a0 = 00000368
/* 030B4 80AE0E04 C4261C68 */  lwc1    $f6, %lo(D_80AE1C68)($at)  
/* 030B8 80AE0E08 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 030BC 80AE0E0C AFA80034 */  sw      $t0, 0x0034($sp)           
/* 030C0 80AE0E10 46003303 */  div.s   $f12, $f6, $f0             
/* 030C4 80AE0E14 44066000 */  mfc1    $a2, $f12                  
/* 030C8 80AE0E18 0C0342A3 */  jal     Matrix_Scale              
/* 030CC 80AE0E1C 46006386 */  mov.s   $f14, $f12                 
/* 030D0 80AE0E20 8FA80034 */  lw      $t0, 0x0034($sp)           
/* 030D4 80AE0E24 26040368 */  addiu   $a0, $s0, 0x0368           ## $a0 = 00000368
.L80AE0E28:
/* 030D8 80AE0E28 0C034236 */  jal     Matrix_Get              
/* 030DC 80AE0E2C AFA80034 */  sw      $t0, 0x0034($sp)           
/* 030E0 80AE0E30 8FA80034 */  lw      $t0, 0x0034($sp)           
/* 030E4 80AE0E34 8E0D0190 */  lw      $t5, 0x0190($s0)           ## 00000190
/* 030E8 80AE0E38 550D000C */  bnel    $t0, $t5, .L80AE0E6C       
/* 030EC 80AE0E3C 8E020324 */  lw      $v0, 0x0324($s0)           ## 00000324
/* 030F0 80AE0E40 860E0198 */  lh      $t6, 0x0198($s0)           ## 00000198
/* 030F4 80AE0E44 2401001B */  addiu   $at, $zero, 0x001B         ## $at = 0000001B
/* 030F8 80AE0E48 55C10008 */  bnel    $t6, $at, .L80AE0E6C       
/* 030FC 80AE0E4C 8E020324 */  lw      $v0, 0x0324($s0)           ## 00000324
/* 03100 80AE0E50 C6080398 */  lwc1    $f8, 0x0398($s0)           ## 00000398
/* 03104 80AE0E54 C60A039C */  lwc1    $f10, 0x039C($s0)          ## 0000039C
/* 03108 80AE0E58 C61003A0 */  lwc1    $f16, 0x03A0($s0)          ## 000003A0
/* 0310C 80AE0E5C E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
/* 03110 80AE0E60 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
/* 03114 80AE0E64 E610002C */  swc1    $f16, 0x002C($s0)          ## 0000002C
/* 03118 80AE0E68 8E020324 */  lw      $v0, 0x0324($s0)           ## 00000324
.L80AE0E6C:
/* 0311C 80AE0E6C 920F029E */  lbu     $t7, 0x029E($s0)           ## 0000029E
/* 03120 80AE0E70 260402AC */  addiu   $a0, $s0, 0x02AC           ## $a0 = 000002AC
/* 03124 80AE0E74 84450030 */  lh      $a1, 0x0030($v0)           ## 00000030
/* 03128 80AE0E78 84460032 */  lh      $a2, 0x0032($v0)           ## 00000032
/* 0312C 80AE0E7C 84470034 */  lh      $a3, 0x0034($v0)           ## 00000034
/* 03130 80AE0E80 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 03134 80AE0E84 9219029F */  lbu     $t9, 0x029F($s0)           ## 0000029F
/* 03138 80AE0E88 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 0313C 80AE0E8C AFB90014 */  sw      $t9, 0x0014($sp)           
/* 03140 80AE0E90 920902A0 */  lbu     $t1, 0x02A0($s0)           ## 000002A0
/* 03144 80AE0E94 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 03148 80AE0E98 921802A1 */  lbu     $t8, 0x02A1($s0)           ## 000002A1
/* 0314C 80AE0E9C 44989000 */  mtc1    $t8, $f18                  ## $f18 = 0.00
/* 03150 80AE0EA0 07010004 */  bgez    $t8, .L80AE0EB4            
/* 03154 80AE0EA4 46809120 */  cvt.s.w $f4, $f18                  
/* 03158 80AE0EA8 44813000 */  mtc1    $at, $f6                   ## $f6 = 4294967296.00
/* 0315C 80AE0EAC 00000000 */  nop
/* 03160 80AE0EB0 46062100 */  add.s   $f4, $f4, $f6              
.L80AE0EB4:
/* 03164 80AE0EB4 3C0180AE */  lui     $at, %hi(D_80AE1C6C)       ## $at = 80AE0000
/* 03168 80AE0EB8 C4281C6C */  lwc1    $f8, %lo(D_80AE1C6C)($at)  
/* 0316C 80AE0EBC 46082282 */  mul.s   $f10, $f4, $f8             
/* 03170 80AE0EC0 4600540D */  trunc.w.s $f16, $f10                 
/* 03174 80AE0EC4 440B8000 */  mfc1    $t3, $f16                  
/* 03178 80AE0EC8 0C01E77C */  jal     Lights_InitType2PositionalLight
              
/* 0317C 80AE0ECC AFAB001C */  sw      $t3, 0x001C($sp)           
/* 03180 80AE0ED0 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AE0ED4:
/* 03184 80AE0ED4 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 03188 80AE0ED8 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 0318C 80AE0EDC 03E00008 */  jr      $ra                        
/* 03190 80AE0EE0 00000000 */  nop
