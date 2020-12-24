.late_rodata
glabel D_80B22B8C
    .float 0.3

glabel D_80B22B90
    .float 0.3

.text
glabel func_80B21BDC
/* 00DFC 80B21BDC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00E00 80B21BE0 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00E04 80B21BE4 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00E08 80B21BE8 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 00E0C 80B21BEC 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 00E10 80B21BF0 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00E14 80B21BF4 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 00E18 80B21BF8 AFAE0034 */  sw      $t6, 0x0034($sp)           
/* 00E1C 80B21BFC C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00E20 80B21C00 848F015C */  lh      $t7, 0x015C($a0)           ## 0000015C
/* 00E24 80B21C04 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E28 80B21C08 4606203C */  c.lt.s  $f4, $f6                   
/* 00E2C 80B21C0C 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 00E30 80B21C10 A498015C */  sh      $t8, 0x015C($a0)           ## 0000015C
/* 00E34 80B21C14 2405C000 */  addiu   $a1, $zero, 0xC000         ## $a1 = FFFFC000
/* 00E38 80B21C18 4500005D */  bc1f    .L80B21D90                 
/* 00E3C 80B21C1C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00E40 80B21C20 90820184 */  lbu     $v0, 0x0184($a0)           ## 00000184
/* 00E44 80B21C24 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00E48 80B21C28 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 00E4C 80B21C2C 30590002 */  andi    $t9, $v0, 0x0002           ## $t9 = 00000000
/* 00E50 80B21C30 13200007 */  beq     $t9, $zero, .L80B21C50     
/* 00E54 80B21C34 3048FFFD */  andi    $t0, $v0, 0xFFFD           ## $t0 = 00000000
/* 00E58 80B21C38 A0880184 */  sb      $t0, 0x0184($a0)           ## 00000184
/* 00E5C 80B21C3C 8FA90034 */  lw      $t1, 0x0034($sp)           
/* 00E60 80B21C40 8C8A0178 */  lw      $t2, 0x0178($a0)           ## 00000178
/* 00E64 80B21C44 552A0003 */  bnel    $t1, $t2, .L80B21C54       
/* 00E68 80B21C48 8602015A */  lh      $v0, 0x015A($s0)           ## 0000015A
/* 00E6C 80B21C4C A480015A */  sh      $zero, 0x015A($a0)         ## 0000015A
.L80B21C50:
/* 00E70 80B21C50 8602015A */  lh      $v0, 0x015A($s0)           ## 0000015A
.L80B21C54:
/* 00E74 80B21C54 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00E78 80B21C58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E7C 80B21C5C 10400047 */  beq     $v0, $zero, .L80B21D7C     
/* 00E80 80B21C60 244BFFFF */  addiu   $t3, $v0, 0xFFFF           ## $t3 = FFFFFFFF
/* 00E84 80B21C64 A60B015A */  sh      $t3, 0x015A($s0)           ## 0000015A
/* 00E88 80B21C68 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00E8C 80B21C6C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00E90 80B21C70 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 00E94 80B21C74 240701F4 */  addiu   $a3, $zero, 0x01F4         ## $a3 = 000001F4
/* 00E98 80B21C78 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00E9C 80B21C7C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00EA0 80B21C80 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00EA4 80B21C84 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00EA8 80B21C88 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 00EAC 80B21C8C 240705DC */  addiu   $a3, $zero, 0x05DC         ## $a3 = 000005DC
/* 00EB0 80B21C90 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00EB4 80B21C94 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
/* 00EB8 80B21C98 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 00EBC 80B21C9C 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 00EC0 80B21CA0 3C0180B2 */  lui     $at, %hi(D_80B22B8C)       ## $at = 80B20000
/* 00EC4 80B21CA4 C4202B8C */  lwc1    $f0, %lo(D_80B22B8C)($at)  
/* 00EC8 80B21CA8 244C4000 */  addiu   $t4, $v0, 0x4000           ## $t4 = 00004000
/* 00ECC 80B21CAC A7AC0032 */  sh      $t4, 0x0032($sp)           
/* 00ED0 80B21CB0 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00ED4 80B21CB4 44815000 */  mtc1    $at, $f10                  ## $f10 = 30.00
/* 00ED8 80B21CB8 C608000C */  lwc1    $f8, 0x000C($s0)           ## 0000000C
/* 00EDC 80B21CBC 44060000 */  mfc1    $a2, $f0                   
/* 00EE0 80B21CC0 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 00EE4 80B21CC4 460A4400 */  add.s   $f16, $f8, $f10            
/* 00EE8 80B21CC8 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00EEC 80B21CCC E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00EF0 80B21CD0 44058000 */  mfc1    $a1, $f16                  
/* 00EF4 80B21CD4 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 00EF8 80B21CD8 00000000 */  nop
/* 00EFC 80B21CDC 8604015C */  lh      $a0, 0x015C($s0)           ## 0000015C
/* 00F00 80B21CE0 00800821 */  addu    $at, $a0, $zero            
/* 00F04 80B21CE4 00042140 */  sll     $a0, $a0,  5               
/* 00F08 80B21CE8 00812023 */  subu    $a0, $a0, $at              
/* 00F0C 80B21CEC 00042080 */  sll     $a0, $a0,  2               
/* 00F10 80B21CF0 00812021 */  addu    $a0, $a0, $at              
/* 00F14 80B21CF4 00042100 */  sll     $a0, $a0,  4               
/* 00F18 80B21CF8 00042400 */  sll     $a0, $a0, 16               
/* 00F1C 80B21CFC 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00F20 80B21D00 00042403 */  sra     $a0, $a0, 16               
/* 00F24 80B21D04 46000506 */  mov.s   $f20, $f0                  
/* 00F28 80B21D08 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00F2C 80B21D0C 87A40032 */  lh      $a0, 0x0032($sp)           
/* 00F30 80B21D10 C612016C */  lwc1    $f18, 0x016C($s0)          ## 0000016C
/* 00F34 80B21D14 8604015C */  lh      $a0, 0x015C($s0)           ## 0000015C
/* 00F38 80B21D18 C6080008 */  lwc1    $f8, 0x0008($s0)           ## 00000008
/* 00F3C 80B21D1C 46120102 */  mul.s   $f4, $f0, $f18             
/* 00F40 80B21D20 00800821 */  addu    $at, $a0, $zero            
/* 00F44 80B21D24 00042140 */  sll     $a0, $a0,  5               
/* 00F48 80B21D28 00812023 */  subu    $a0, $a0, $at              
/* 00F4C 80B21D2C 00042080 */  sll     $a0, $a0,  2               
/* 00F50 80B21D30 00812021 */  addu    $a0, $a0, $at              
/* 00F54 80B21D34 00042100 */  sll     $a0, $a0,  4               
/* 00F58 80B21D38 46142182 */  mul.s   $f6, $f4, $f20             
/* 00F5C 80B21D3C 00042400 */  sll     $a0, $a0, 16               
/* 00F60 80B21D40 00042403 */  sra     $a0, $a0, 16               
/* 00F64 80B21D44 46083280 */  add.s   $f10, $f6, $f8             
/* 00F68 80B21D48 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00F6C 80B21D4C E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
/* 00F70 80B21D50 46000506 */  mov.s   $f20, $f0                  
/* 00F74 80B21D54 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 00F78 80B21D58 87A40032 */  lh      $a0, 0x0032($sp)           
/* 00F7C 80B21D5C C610016C */  lwc1    $f16, 0x016C($s0)          ## 0000016C
/* 00F80 80B21D60 C6060010 */  lwc1    $f6, 0x0010($s0)           ## 00000010
/* 00F84 80B21D64 46100482 */  mul.s   $f18, $f0, $f16            
/* 00F88 80B21D68 00000000 */  nop
/* 00F8C 80B21D6C 46149102 */  mul.s   $f4, $f18, $f20            
/* 00F90 80B21D70 46062200 */  add.s   $f8, $f4, $f6              
/* 00F94 80B21D74 10000047 */  beq     $zero, $zero, .L80B21E94   
/* 00F98 80B21D78 E608002C */  swc1    $f8, 0x002C($s0)           ## 0000002C
.L80B21D7C:
/* 00F9C 80B21D7C A60000B4 */  sh      $zero, 0x00B4($s0)         ## 000000B4
/* 00FA0 80B21D80 0C2C8653 */  jal     func_80B2194C              
/* 00FA4 80B21D84 AE0D0150 */  sw      $t5, 0x0150($s0)           ## 00000150
/* 00FA8 80B21D88 10000043 */  beq     $zero, $zero, .L80B21E98   
/* 00FAC 80B21D8C C608000C */  lwc1    $f8, 0x000C($s0)           ## 0000000C
.L80B21D90:
/* 00FB0 80B21D90 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00FB4 80B21D94 240701F4 */  addiu   $a3, $zero, 0x01F4         ## $a3 = 000001F4
/* 00FB8 80B21D98 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 00FBC 80B21D9C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00FC0 80B21DA0 3C0180B2 */  lui     $at, %hi(D_80B22B90)       ## $at = 80B20000
/* 00FC4 80B21DA4 C4202B90 */  lwc1    $f0, %lo(D_80B22B90)($at)  
/* 00FC8 80B21DA8 8E05000C */  lw      $a1, 0x000C($s0)           ## 0000000C
/* 00FCC 80B21DAC 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 00FD0 80B21DB0 44060000 */  mfc1    $a2, $f0                   
/* 00FD4 80B21DB4 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 00FD8 80B21DB8 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 00FDC 80B21DBC E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00FE0 80B21DC0 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00FE4 80B21DC4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00FE8 80B21DC8 240E003C */  addiu   $t6, $zero, 0x003C         ## $t6 = 0000003C
/* 00FEC 80B21DCC 460A0032 */  c.eq.s  $f0, $f10                  
/* 00FF0 80B21DD0 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 00FF4 80B21DD4 45000003 */  bc1f    .L80B21DE4                 
/* 00FF8 80B21DD8 00000000 */  nop
/* 00FFC 80B21DDC 1000002D */  beq     $zero, $zero, .L80B21E94   
/* 01000 80B21DE0 A60E015A */  sh      $t6, 0x015A($s0)           ## 0000015A
.L80B21DE4:
/* 01004 80B21DE4 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 01008 80B21DE8 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
/* 0100C 80B21DEC A7A20032 */  sh      $v0, 0x0032($sp)           
/* 01010 80B21DF0 8604015C */  lh      $a0, 0x015C($s0)           ## 0000015C
/* 01014 80B21DF4 00800821 */  addu    $at, $a0, $zero            
/* 01018 80B21DF8 00042140 */  sll     $a0, $a0,  5               
/* 0101C 80B21DFC 00812023 */  subu    $a0, $a0, $at              
/* 01020 80B21E00 00042080 */  sll     $a0, $a0,  2               
/* 01024 80B21E04 00812021 */  addu    $a0, $a0, $at              
/* 01028 80B21E08 00042100 */  sll     $a0, $a0,  4               
/* 0102C 80B21E0C 00042400 */  sll     $a0, $a0, 16               
/* 01030 80B21E10 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 01034 80B21E14 00042403 */  sra     $a0, $a0, 16               
/* 01038 80B21E18 46000506 */  mov.s   $f20, $f0                  
/* 0103C 80B21E1C 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 01040 80B21E20 87A40032 */  lh      $a0, 0x0032($sp)           
/* 01044 80B21E24 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 01048 80B21E28 44818000 */  mtc1    $at, $f16                  ## $f16 = 6.00
/* 0104C 80B21E2C 8604015C */  lh      $a0, 0x015C($s0)           ## 0000015C
/* 01050 80B21E30 C6060008 */  lwc1    $f6, 0x0008($s0)           ## 00000008
/* 01054 80B21E34 46100482 */  mul.s   $f18, $f0, $f16            
/* 01058 80B21E38 00800821 */  addu    $at, $a0, $zero            
/* 0105C 80B21E3C 00042140 */  sll     $a0, $a0,  5               
/* 01060 80B21E40 00812023 */  subu    $a0, $a0, $at              
/* 01064 80B21E44 00042080 */  sll     $a0, $a0,  2               
/* 01068 80B21E48 00812021 */  addu    $a0, $a0, $at              
/* 0106C 80B21E4C 00042100 */  sll     $a0, $a0,  4               
/* 01070 80B21E50 46149102 */  mul.s   $f4, $f18, $f20            
/* 01074 80B21E54 00042400 */  sll     $a0, $a0, 16               
/* 01078 80B21E58 00042403 */  sra     $a0, $a0, 16               
/* 0107C 80B21E5C 46062200 */  add.s   $f8, $f4, $f6              
/* 01080 80B21E60 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 01084 80B21E64 E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
/* 01088 80B21E68 46000506 */  mov.s   $f20, $f0                  
/* 0108C 80B21E6C 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 01090 80B21E70 87A40032 */  lh      $a0, 0x0032($sp)           
/* 01094 80B21E74 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 01098 80B21E78 44815000 */  mtc1    $at, $f10                  ## $f10 = 6.00
/* 0109C 80B21E7C C6040010 */  lwc1    $f4, 0x0010($s0)           ## 00000010
/* 010A0 80B21E80 460A0402 */  mul.s   $f16, $f0, $f10            
/* 010A4 80B21E84 00000000 */  nop
/* 010A8 80B21E88 46148482 */  mul.s   $f18, $f16, $f20           
/* 010AC 80B21E8C 46049180 */  add.s   $f6, $f18, $f4             
/* 010B0 80B21E90 E606002C */  swc1    $f6, 0x002C($s0)           ## 0000002C
.L80B21E94:
/* 010B4 80B21E94 C608000C */  lwc1    $f8, 0x000C($s0)           ## 0000000C
.L80B21E98:
/* 010B8 80B21E98 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 010BC 80B21E9C 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 010C0 80B21EA0 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 010C4 80B21EA4 460A4032 */  c.eq.s  $f8, $f10                  
/* 010C8 80B21EA8 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 010CC 80B21EAC 24043064 */  addiu   $a0, $zero, 0x3064         ## $a0 = 00003064
/* 010D0 80B21EB0 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 010D4 80B21EB4 45010007 */  bc1t    .L80B21ED4                 
/* 010D8 80B21EB8 A60F00B6 */  sh      $t7, 0x00B6($s0)           ## 000000B6
/* 010DC 80B21EBC 3C188013 */  lui     $t8, %hi(D_801333E8)
/* 010E0 80B21EC0 271833E8 */  addiu   $t8, %lo(D_801333E8)
/* 010E4 80B21EC4 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 010E8 80B21EC8 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 010EC 80B21ECC 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 010F0 80B21ED0 AFA70010 */  sw      $a3, 0x0010($sp)           
.L80B21ED4:
/* 010F4 80B21ED4 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 010F8 80B21ED8 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 010FC 80B21EDC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 01100 80B21EE0 03E00008 */  jr      $ra                        
/* 01104 80B21EE4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
