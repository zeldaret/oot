.late_rodata
glabel D_80BA6FD0
 .word 0x4019999A
glabel D_80BA6FD4
    .float 0.3

.text
glabel OceffSpot_Init
/* 00008 80BA6078 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0000C 80BA607C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00010 80BA6080 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00014 80BA6084 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00018 80BA6088 3C0580BA */  lui     $a1, %hi(D_80BA6F38)       ## $a1 = 80BA0000
/* 0001C 80BA608C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00020 80BA6090 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00024 80BA6094 24A56F38 */  addiu   $a1, $a1, %lo(D_80BA6F38)  ## $a1 = 80BA6F38
/* 00028 80BA6098 3C0580BA */  lui     $a1, %hi(func_80BA63AC)    ## $a1 = 80BA0000
/* 0002C 80BA609C 24A563AC */  addiu   $a1, $a1, %lo(func_80BA63AC) ## $a1 = 80BA63AC
/* 00030 80BA60A0 0C2E981C */  jal     func_80BA6070              
/* 00034 80BA60A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00038 80BA60A8 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 0003C 80BA60AC C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00040 80BA60B0 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00044 80BA60B4 4600218D */  trunc.w.s $f6, $f4                   
/* 00048 80BA60B8 26040150 */  addiu   $a0, $s0, 0x0150           ## $a0 = 00000150
/* 0004C 80BA60BC AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00050 80BA60C0 4600428D */  trunc.w.s $f10, $f8                  
/* 00054 80BA60C4 44053000 */  mfc1    $a1, $f6                   
/* 00058 80BA60C8 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 0005C 80BA60CC 4600848D */  trunc.w.s $f18, $f16                 
/* 00060 80BA60D0 44065000 */  mfc1    $a2, $f10                  
/* 00064 80BA60D4 00052C00 */  sll     $a1, $a1, 16               
/* 00068 80BA60D8 00052C03 */  sra     $a1, $a1, 16               
/* 0006C 80BA60DC 44079000 */  mfc1    $a3, $f18                  
/* 00070 80BA60E0 00063400 */  sll     $a2, $a2, 16               
/* 00074 80BA60E4 00063403 */  sra     $a2, $a2, 16               
/* 00078 80BA60E8 00073C00 */  sll     $a3, $a3, 16               
/* 0007C 80BA60EC 00073C03 */  sra     $a3, $a3, 16               
/* 00080 80BA60F0 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00084 80BA60F4 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00088 80BA60F8 0C01E763 */  jal     Lights_InitType0PositionalLight
              
/* 0008C 80BA60FC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00090 80BA6100 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00094 80BA6104 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 00098 80BA6108 248507A8 */  addiu   $a1, $a0, 0x07A8           ## $a1 = 000007A8
/* 0009C 80BA610C 0C01E9D9 */  jal     Lights_Insert
              
/* 000A0 80BA6110 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 000A4 80BA6114 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 000A8 80BA6118 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 000AC 80BA611C C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 000B0 80BA6120 4600218D */  trunc.w.s $f6, $f4                   
/* 000B4 80BA6124 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 000B8 80BA6128 26040164 */  addiu   $a0, $s0, 0x0164           ## $a0 = 00000164
/* 000BC 80BA612C 4600428D */  trunc.w.s $f10, $f8                  
/* 000C0 80BA6130 44053000 */  mfc1    $a1, $f6                   
/* 000C4 80BA6134 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 000C8 80BA6138 4600848D */  trunc.w.s $f18, $f16                 
/* 000CC 80BA613C 44065000 */  mfc1    $a2, $f10                  
/* 000D0 80BA6140 00052C00 */  sll     $a1, $a1, 16               
/* 000D4 80BA6144 00052C03 */  sra     $a1, $a1, 16               
/* 000D8 80BA6148 44079000 */  mfc1    $a3, $f18                  
/* 000DC 80BA614C 00063400 */  sll     $a2, $a2, 16               
/* 000E0 80BA6150 00063403 */  sra     $a2, $a2, 16               
/* 000E4 80BA6154 00073C00 */  sll     $a3, $a3, 16               
/* 000E8 80BA6158 00073C03 */  sra     $a3, $a3, 16               
/* 000EC 80BA615C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 000F0 80BA6160 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 000F4 80BA6164 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 000F8 80BA6168 0C01E763 */  jal     Lights_InitType0PositionalLight
              
/* 000FC 80BA616C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00100 80BA6170 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00104 80BA6174 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00108 80BA6178 0C01E9D9 */  jal     Lights_Insert
              
/* 0010C 80BA617C 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 00110 80BA6180 AE020160 */  sw      $v0, 0x0160($s0)           ## 00000160
/* 00114 80BA6184 3C0A8016 */  lui     $t2, 0x8016                ## $t2 = 80160000
/* 00118 80BA6188 8D4AFA90 */  lw      $t2, -0x0570($t2)          ## 8015FA90
/* 0011C 80BA618C 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00120 80BA6190 3C0180BA */  lui     $at, %hi(D_80BA6FD4)       ## $at = 80BA0000
/* 00124 80BA6194 854B04B2 */  lh      $t3, 0x04B2($t2)           ## 801604B2
/* 00128 80BA6198 11600005 */  beq     $t3, $zero, .L80BA61B0     
/* 0012C 80BA619C 00000000 */  nop
/* 00130 80BA61A0 3C0180BA */  lui     $at, %hi(D_80BA6FD0)       ## $at = 80BA0000
/* 00134 80BA61A4 C4246FD0 */  lwc1    $f4, %lo(D_80BA6FD0)($at)  
/* 00138 80BA61A8 10000003 */  beq     $zero, $zero, .L80BA61B8   
/* 0013C 80BA61AC E6040054 */  swc1    $f4, 0x0054($s0)           ## 00000054
.L80BA61B0:
/* 00140 80BA61B0 C4266FD4 */  lwc1    $f6, %lo(D_80BA6FD4)($at)  
/* 00144 80BA61B4 E6060054 */  swc1    $f6, 0x0054($s0)           ## 00000054
.L80BA61B8:
/* 00148 80BA61B8 E6080174 */  swc1    $f8, 0x0174($s0)           ## 00000174
/* 0014C 80BA61BC 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00150 80BA61C0 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00154 80BA61C4 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00158 80BA61C8 03E00008 */  jr      $ra                        
/* 0015C 80BA61CC 00000000 */  nop
