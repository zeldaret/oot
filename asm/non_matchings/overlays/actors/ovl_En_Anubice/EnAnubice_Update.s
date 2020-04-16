.late_rodata
glabel D_809B2438
    .float 3.1415927

.text
glabel EnAnubice_Update
/* 00BE8 809B1D08 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 00BEC 809B1D0C 3C0E809B */  lui     $t6, %hi(func_809B1984)    ## $t6 = 809B0000
/* 00BF0 809B1D10 25CE1984 */  addiu   $t6, $t6, %lo(func_809B1984) ## $t6 = 809B1984
/* 00BF4 809B1D14 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00BF8 809B1D18 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00BFC 809B1D1C AFA50064 */  sw      $a1, 0x0064($sp)           
/* 00C00 809B1D20 AFAE0034 */  sw      $t6, 0x0034($sp)           
/* 00C04 809B1D24 8C820250 */  lw      $v0, 0x0250($a0)           ## 00000250
/* 00C08 809B1D28 3C0F809B */  lui     $t7, %hi(func_809B1A54)    ## $t7 = 809B0000
/* 00C0C 809B1D2C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C10 809B1D30 11C2009B */  beq     $t6, $v0, .L809B1FA0       
/* 00C14 809B1D34 25EF1A54 */  addiu   $t7, $t7, %lo(func_809B1A54) ## $t7 = 809B1A54
/* 00C18 809B1D38 51E2009A */  beql    $t7, $v0, .L809B1FA4       
/* 00C1C 809B1D3C 860E0254 */  lh      $t6, 0x0254($s0)           ## 00000254
/* 00C20 809B1D40 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00C24 809B1D44 C48600BC */  lwc1    $f6, 0x00BC($a0)           ## 000000BC
/* 00C28 809B1D48 46062032 */  c.eq.s  $f4, $f6                   
/* 00C2C 809B1D4C 00000000 */  nop
/* 00C30 809B1D50 45020094 */  bc1fl   .L809B1FA4                 
/* 00C34 809B1D54 860E0254 */  lh      $t6, 0x0254($s0)           ## 00000254
/* 00C38 809B1D58 0C26C448 */  jal     func_809B1120              
/* 00C3C 809B1D5C 00000000 */  nop
/* 00C40 809B1D60 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00C44 809B1D64 44811000 */  mtc1    $at, $f2                   ## $f2 = 60.00
/* 00C48 809B1D68 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 00C4C 809B1D6C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00C50 809B1D70 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
.L809B1D74:
/* 00C54 809B1D74 8CA302B0 */  lw      $v1, 0x02B0($a1)           ## 000002B0
/* 00C58 809B1D78 24840004 */  addiu   $a0, $a0, 0x0004           ## $a0 = 00000004
/* 00C5C 809B1D7C 10600026 */  beq     $v1, $zero, .L809B1E18     
/* 00C60 809B1D80 00000000 */  nop
/* 00C64 809B1D84 C4680024 */  lwc1    $f8, 0x0024($v1)           ## 00000024
/* 00C68 809B1D88 C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 00C6C 809B1D8C 460A4001 */  sub.s   $f0, $f8, $f10             
/* 00C70 809B1D90 46000005 */  abs.s   $f0, $f0                   
/* 00C74 809B1D94 4602003C */  c.lt.s  $f0, $f2                   
/* 00C78 809B1D98 00000000 */  nop
/* 00C7C 809B1D9C 4500001E */  bc1f    .L809B1E18                 
/* 00C80 809B1DA0 00000000 */  nop
/* 00C84 809B1DA4 C470002C */  lwc1    $f16, 0x002C($v1)          ## 0000002C
/* 00C88 809B1DA8 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 00C8C 809B1DAC 46128001 */  sub.s   $f0, $f16, $f18            
/* 00C90 809B1DB0 46000005 */  abs.s   $f0, $f0                   
/* 00C94 809B1DB4 4602003C */  c.lt.s  $f0, $f2                   
/* 00C98 809B1DB8 00000000 */  nop
/* 00C9C 809B1DBC 45000016 */  bc1f    .L809B1E18                 
/* 00CA0 809B1DC0 00000000 */  nop
/* 00CA4 809B1DC4 84780154 */  lh      $t8, 0x0154($v1)           ## 00000154
/* 00CA8 809B1DC8 13000013 */  beq     $t8, $zero, .L809B1E18     
/* 00CAC 809B1DCC 00000000 */  nop
/* 00CB0 809B1DD0 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 00CB4 809B1DD4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00CB8 809B1DD8 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
/* 00CBC 809B1DDC 0C00CDD2 */  jal     Actor_ChangeType
              
/* 00CC0 809B1DE0 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C28
/* 00CC4 809B1DE4 8E190004 */  lw      $t9, 0x0004($s0)           ## 00000004
/* 00CC8 809B1DE8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00CCC 809B1DEC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00CD0 809B1DF0 03214024 */  and     $t0, $t9, $at              
/* 00CD4 809B1DF4 AE080004 */  sw      $t0, 0x0004($s0)           ## 00000004
/* 00CD8 809B1DF8 0C00CB1F */  jal     func_80032C7C              
/* 00CDC 809B1DFC 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 00CE0 809B1E00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CE4 809B1E04 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00CE8 809B1E08 2405399F */  addiu   $a1, $zero, 0x399F         ## $a1 = 0000399F
/* 00CEC 809B1E0C 8FA90034 */  lw      $t1, 0x0034($sp)           
/* 00CF0 809B1E10 100000B7 */  beq     $zero, $zero, .L809B20F0   
/* 00CF4 809B1E14 AE090250 */  sw      $t1, 0x0250($s0)           ## 00000250
.L809B1E18:
/* 00CF8 809B1E18 1486FFD6 */  bne     $a0, $a2, .L809B1D74       
/* 00CFC 809B1E1C 24A50004 */  addiu   $a1, $a1, 0x0004           ## $a1 = 00000004
/* 00D00 809B1E20 920202D9 */  lbu     $v0, 0x02D9($s0)           ## 000002D9
/* 00D04 809B1E24 304A0002 */  andi    $t2, $v0, 0x0002           ## $t2 = 00000000
/* 00D08 809B1E28 51400044 */  beql    $t2, $zero, .L809B1F3C     
/* 00D0C 809B1E2C 860A0262 */  lh      $t2, 0x0262($s0)           ## 00000262
/* 00D10 809B1E30 920C00B1 */  lbu     $t4, 0x00B1($s0)           ## 000000B1
/* 00D14 809B1E34 304BFFFD */  andi    $t3, $v0, 0xFFFD           ## $t3 = 00000000
/* 00D18 809B1E38 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00D1C 809B1E3C 15810013 */  bne     $t4, $at, .L809B1E8C       
/* 00D20 809B1E40 A20B02D9 */  sb      $t3, 0x02D9($s0)           ## 000002D9
/* 00D24 809B1E44 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 00D28 809B1E48 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00D2C 809B1E4C 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
/* 00D30 809B1E50 0C00CDD2 */  jal     Actor_ChangeType
              
/* 00D34 809B1E54 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 00D38 809B1E58 8E0D0004 */  lw      $t5, 0x0004($s0)           ## 00000004
/* 00D3C 809B1E5C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00D40 809B1E60 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00D44 809B1E64 01A17024 */  and     $t6, $t5, $at              
/* 00D48 809B1E68 AE0E0004 */  sw      $t6, 0x0004($s0)           ## 00000004
/* 00D4C 809B1E6C 0C00CB1F */  jal     func_80032C7C              
/* 00D50 809B1E70 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 00D54 809B1E74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D58 809B1E78 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00D5C 809B1E7C 2405399F */  addiu   $a1, $zero, 0x399F         ## $a1 = 0000399F
/* 00D60 809B1E80 8FAF0034 */  lw      $t7, 0x0034($sp)           
/* 00D64 809B1E84 1000009A */  beq     $zero, $zero, .L809B20F0   
/* 00D68 809B1E88 AE0F0250 */  sw      $t7, 0x0250($s0)           ## 00000250
.L809B1E8C:
/* 00D6C 809B1E8C 86180262 */  lh      $t8, 0x0262($s0)           ## 00000262
/* 00D70 809B1E90 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 00D74 809B1E94 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00D78 809B1E98 17000027 */  bne     $t8, $zero, .L809B1F38     
/* 00D7C 809B1E9C 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00D80 809B1EA0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00D84 809B1EA4 A619025C */  sh      $t9, 0x025C($s0)           ## 0000025C
/* 00D88 809B1EA8 A6080262 */  sh      $t0, 0x0262($s0)           ## 00000262
/* 00D8C 809B1EAC 44812000 */  mtc1    $at, $f4                   ## $f4 = -10.00
/* 00D90 809B1EB0 E7A00048 */  swc1    $f0, 0x0048($sp)           
/* 00D94 809B1EB4 E7A0004C */  swc1    $f0, 0x004C($sp)           
/* 00D98 809B1EB8 E7A0003C */  swc1    $f0, 0x003C($sp)           
/* 00D9C 809B1EBC E7A00040 */  swc1    $f0, 0x0040($sp)           
/* 00DA0 809B1EC0 E7A00044 */  swc1    $f0, 0x0044($sp)           
/* 00DA4 809B1EC4 E7A40050 */  swc1    $f4, 0x0050($sp)           
/* 00DA8 809B1EC8 860900B6 */  lh      $t1, 0x00B6($s0)           ## 000000B6
/* 00DAC 809B1ECC 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 00DB0 809B1ED0 44815000 */  mtc1    $at, $f10                  ## $f10 = 32768.00
/* 00DB4 809B1ED4 44893000 */  mtc1    $t1, $f6                   ## $f6 = 0.00
/* 00DB8 809B1ED8 3C01809B */  lui     $at, %hi(D_809B2438)       ## $at = 809B0000
/* 00DBC 809B1EDC C4322438 */  lwc1    $f18, %lo(D_809B2438)($at) 
/* 00DC0 809B1EE0 46803220 */  cvt.s.w $f8, $f6                   
/* 00DC4 809B1EE4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00DC8 809B1EE8 460A4403 */  div.s   $f16, $f8, $f10            
/* 00DCC 809B1EEC 46128302 */  mul.s   $f12, $f16, $f18           
/* 00DD0 809B1EF0 0C034348 */  jal     Matrix_RotateY              
/* 00DD4 809B1EF4 00000000 */  nop
/* 00DD8 809B1EF8 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFE8
/* 00DDC 809B1EFC 0C0346BD */  jal     Matrix_MultVec3f              
/* 00DE0 809B1F00 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFDC
/* 00DE4 809B1F04 C7A4003C */  lwc1    $f4, 0x003C($sp)           
/* 00DE8 809B1F08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DEC 809B1F0C 2405393B */  addiu   $a1, $zero, 0x393B         ## $a1 = 0000393B
/* 00DF0 809B1F10 E604005C */  swc1    $f4, 0x005C($s0)           ## 0000005C
/* 00DF4 809B1F14 C7A60044 */  lwc1    $f6, 0x0044($sp)           
/* 00DF8 809B1F18 E6060064 */  swc1    $f6, 0x0064($s0)           ## 00000064
/* 00DFC 809B1F1C C7A8003C */  lwc1    $f8, 0x003C($sp)           
/* 00E00 809B1F20 46004287 */  neg.s   $f10, $f8                  
/* 00E04 809B1F24 E60A02A4 */  swc1    $f10, 0x02A4($s0)          ## 000002A4
/* 00E08 809B1F28 C7B00044 */  lwc1    $f16, 0x0044($sp)          
/* 00E0C 809B1F2C 46008487 */  neg.s   $f18, $f16                 
/* 00E10 809B1F30 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00E14 809B1F34 E61202AC */  swc1    $f18, 0x02AC($s0)          ## 000002AC
.L809B1F38:
/* 00E18 809B1F38 860A0262 */  lh      $t2, 0x0262($s0)           ## 00000262
.L809B1F3C:
/* 00E1C 809B1F3C 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 00E20 809B1F40 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 00E24 809B1F44 11400016 */  beq     $t2, $zero, .L809B1FA0     
/* 00E28 809B1F48 2604005C */  addiu   $a0, $s0, 0x005C           ## $a0 = 0000005C
/* 00E2C 809B1F4C 860B00B6 */  lh      $t3, 0x00B6($s0)           ## 000000B6
/* 00E30 809B1F50 8E0502A4 */  lw      $a1, 0x02A4($s0)           ## 000002A4
/* 00E34 809B1F54 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00E38 809B1F58 256C1964 */  addiu   $t4, $t3, 0x1964           ## $t4 = 00001964
/* 00E3C 809B1F5C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00E40 809B1F60 A60C00B6 */  sh      $t4, 0x00B6($s0)           ## 000000B6
/* 00E44 809B1F64 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 00E48 809B1F68 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 00E4C 809B1F6C 26040064 */  addiu   $a0, $s0, 0x0064           ## $a0 = 00000064
/* 00E50 809B1F70 8E0502AC */  lw      $a1, 0x02AC($s0)           ## 000002AC
/* 00E54 809B1F74 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00E58 809B1F78 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00E5C 809B1F7C 860D025C */  lh      $t5, 0x025C($s0)           ## 0000025C
/* 00E60 809B1F80 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00E64 809B1F84 55A00007 */  bnel    $t5, $zero, .L809B1FA4     
/* 00E68 809B1F88 860E0254 */  lh      $t6, 0x0254($s0)           ## 00000254
/* 00E6C 809B1F8C E6000064 */  swc1    $f0, 0x0064($s0)           ## 00000064
/* 00E70 809B1F90 E600005C */  swc1    $f0, 0x005C($s0)           ## 0000005C
/* 00E74 809B1F94 E60002AC */  swc1    $f0, 0x02AC($s0)           ## 000002AC
/* 00E78 809B1F98 E60002A4 */  swc1    $f0, 0x02A4($s0)           ## 000002A4
/* 00E7C 809B1F9C A6000262 */  sh      $zero, 0x0262($s0)         ## 00000262
.L809B1FA0:
/* 00E80 809B1FA0 860E0254 */  lh      $t6, 0x0254($s0)           ## 00000254
.L809B1FA4:
/* 00E84 809B1FA4 8602025C */  lh      $v0, 0x025C($s0)           ## 0000025C
/* 00E88 809B1FA8 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00E8C 809B1FAC 10400003 */  beq     $v0, $zero, .L809B1FBC     
/* 00E90 809B1FB0 A60F0254 */  sh      $t7, 0x0254($s0)           ## 00000254
/* 00E94 809B1FB4 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 00E98 809B1FB8 A618025C */  sh      $t8, 0x025C($s0)           ## 0000025C
.L809B1FBC:
/* 00E9C 809B1FBC 8602025A */  lh      $v0, 0x025A($s0)           ## 0000025A
/* 00EA0 809B1FC0 10400002 */  beq     $v0, $zero, .L809B1FCC     
/* 00EA4 809B1FC4 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 00EA8 809B1FC8 A619025A */  sh      $t9, 0x025A($s0)           ## 0000025A
.L809B1FCC:
/* 00EAC 809B1FCC 8E190250 */  lw      $t9, 0x0250($s0)           ## 00000250
/* 00EB0 809B1FD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EB4 809B1FD4 8FA50064 */  lw      $a1, 0x0064($sp)           
/* 00EB8 809B1FD8 0320F809 */  jalr    $ra, $t9                   
/* 00EBC 809B1FDC 00000000 */  nop
/* 00EC0 809B1FE0 C6040060 */  lwc1    $f4, 0x0060($s0)           ## 00000060
/* 00EC4 809B1FE4 C606006C */  lwc1    $f6, 0x006C($s0)           ## 0000006C
/* 00EC8 809B1FE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00ECC 809B1FEC 46062200 */  add.s   $f8, $f4, $f6              
/* 00ED0 809B1FF0 0C00B5FB */  jal     func_8002D7EC              
/* 00ED4 809B1FF4 E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 00ED8 809B1FF8 86080260 */  lh      $t0, 0x0260($s0)           ## 00000260
/* 00EDC 809B1FFC 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00EE0 809B2000 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 00EE4 809B2004 1500000F */  bne     $t0, $zero, .L809B2044     
/* 00EE8 809B2008 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00EEC 809B200C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00EF0 809B2010 44810000 */  mtc1    $at, $f0                   ## $f0 = 5.00
/* 00EF4 809B2014 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00EF8 809B2018 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 00EFC 809B201C 2409001D */  addiu   $t1, $zero, 0x001D         ## $t1 = 0000001D
/* 00F00 809B2020 44060000 */  mfc1    $a2, $f0                   
/* 00F04 809B2024 44070000 */  mfc1    $a3, $f0                   
/* 00F08 809B2028 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00F0C 809B202C 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 00F10 809B2030 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00F14 809B2034 0C00B92D */  jal     func_8002E4B4              
/* 00F18 809B2038 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 00F1C 809B203C 1000000B */  beq     $zero, $zero, .L809B206C   
/* 00F20 809B2040 8E020250 */  lw      $v0, 0x0250($s0)           ## 00000250
.L809B2044:
/* 00F24 809B2044 44810000 */  mtc1    $at, $f0                   ## $f0 = 0.00
/* 00F28 809B2048 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00F2C 809B204C 44818000 */  mtc1    $at, $f16                  ## $f16 = 10.00
/* 00F30 809B2050 240A001C */  addiu   $t2, $zero, 0x001C         ## $t2 = 0000001C
/* 00F34 809B2054 44060000 */  mfc1    $a2, $f0                   
/* 00F38 809B2058 44070000 */  mfc1    $a3, $f0                   
/* 00F3C 809B205C AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 00F40 809B2060 0C00B92D */  jal     func_8002E4B4              
/* 00F44 809B2064 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 00F48 809B2068 8E020250 */  lw      $v0, 0x0250($s0)           ## 00000250
.L809B206C:
/* 00F4C 809B206C 8FAB0034 */  lw      $t3, 0x0034($sp)           
/* 00F50 809B2070 3C0C809B */  lui     $t4, %hi(func_809B1A54)    ## $t4 = 809B0000
/* 00F54 809B2074 258C1A54 */  addiu   $t4, $t4, %lo(func_809B1A54) ## $t4 = 809B1A54
/* 00F58 809B2078 5162001E */  beql    $t3, $v0, .L809B20F4       
/* 00F5C 809B207C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00F60 809B2080 1182001B */  beq     $t4, $v0, .L809B20F0       
/* 00F64 809B2084 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F68 809B2088 0C00B56E */  jal     Actor_SetHeight
              
/* 00F6C 809B208C 8E05027C */  lw      $a1, 0x027C($s0)           ## 0000027C
/* 00F70 809B2090 260502C8 */  addiu   $a1, $s0, 0x02C8           ## $a1 = 000002C8
/* 00F74 809B2094 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00F78 809B2098 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 00F7C 809B209C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F80 809B20A0 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 00F84 809B20A4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00F88 809B20A8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00F8C 809B20AC 00812821 */  addu    $a1, $a0, $at              
/* 00F90 809B20B0 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00F94 809B20B4 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 00F98 809B20B8 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 00F9C 809B20BC 860D0262 */  lh      $t5, 0x0262($s0)           ## 00000262
/* 00FA0 809B20C0 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00FA4 809B20C4 55A0000B */  bnel    $t5, $zero, .L809B20F4     
/* 00FA8 809B20C8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00FAC 809B20CC 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 00FB0 809B20D0 C60400BC */  lwc1    $f4, 0x00BC($s0)           ## 000000BC
/* 00FB4 809B20D4 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 00FB8 809B20D8 46049032 */  c.eq.s  $f18, $f4                  
/* 00FBC 809B20DC 00000000 */  nop
/* 00FC0 809B20E0 45020004 */  bc1fl   .L809B20F4                 
/* 00FC4 809B20E4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00FC8 809B20E8 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00FCC 809B20EC 8FA60030 */  lw      $a2, 0x0030($sp)           
.L809B20F0:
/* 00FD0 809B20F0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809B20F4:
/* 00FD4 809B20F4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00FD8 809B20F8 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 00FDC 809B20FC 03E00008 */  jr      $ra                        
/* 00FE0 809B2100 00000000 */  nop
