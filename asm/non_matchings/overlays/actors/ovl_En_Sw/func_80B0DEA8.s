glabel func_80B0DEA8
/* 020F8 80B0DEA8 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 020FC 80B0DEAC AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 02100 80B0DEB0 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 02104 80B0DEB4 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 02108 80B0DEB8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0210C 80B0DEBC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 02110 80B0DEC0 8C6E067C */  lw      $t6, 0x067C($v1)           ## 0000067C
/* 02114 80B0DEC4 000E7A80 */  sll     $t7, $t6, 10               
/* 02118 80B0DEC8 05E20006 */  bltzl   $t7, .L80B0DEE4            
/* 0211C 80B0DECC AFA3005C */  sw      $v1, 0x005C($sp)           
/* 02120 80B0DED0 50C00004 */  beql    $a2, $zero, .L80B0DEE4     
/* 02124 80B0DED4 AFA3005C */  sw      $v1, 0x005C($sp)           
/* 02128 80B0DED8 10000043 */  beq     $zero, $zero, .L80B0DFE8   
/* 0212C 80B0DEDC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 02130 80B0DEE0 AFA3005C */  sw      $v1, 0x005C($sp)           
.L80B0DEE4:
/* 02134 80B0DEE4 AFA50064 */  sw      $a1, 0x0064($sp)           
/* 02138 80B0DEE8 0C00B77D */  jal     func_8002DDF4              
/* 0213C 80B0DEEC AFA60068 */  sw      $a2, 0x0068($sp)           
/* 02140 80B0DEF0 8FA3005C */  lw      $v1, 0x005C($sp)           
/* 02144 80B0DEF4 10400005 */  beq     $v0, $zero, .L80B0DF0C     
/* 02148 80B0DEF8 8FA60068 */  lw      $a2, 0x0068($sp)           
/* 0214C 80B0DEFC 50C00004 */  beql    $a2, $zero, .L80B0DF10     
/* 02150 80B0DF00 24650024 */  addiu   $a1, $v1, 0x0024           ## $a1 = 00000024
/* 02154 80B0DF04 10000038 */  beq     $zero, $zero, .L80B0DFE8   
/* 02158 80B0DF08 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B0DF0C:
/* 0215C 80B0DF0C 24650024 */  addiu   $a1, $v1, 0x0024           ## $a1 = 00000024
.L80B0DF10:
/* 02160 80B0DF10 AFA50040 */  sw      $a1, 0x0040($sp)           
/* 02164 80B0DF14 0C2C378D */  jal     func_80B0DE34              
/* 02168 80B0DF18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0216C 80B0DF1C 861800B8 */  lh      $t8, 0x00B8($s0)           ## 000000B8
/* 02170 80B0DF20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02174 80B0DF24 8FA50040 */  lw      $a1, 0x0040($sp)           
/* 02178 80B0DF28 0058C823 */  subu    $t9, $v0, $t8              
/* 0217C 80B0DF2C 07200006 */  bltz    $t9, .L80B0DF48            
/* 02180 80B0DF30 00000000 */  nop
/* 02184 80B0DF34 0C2C378D */  jal     func_80B0DE34              
/* 02188 80B0DF38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0218C 80B0DF3C 860800B8 */  lh      $t0, 0x00B8($s0)           ## 000000B8
/* 02190 80B0DF40 10000006 */  beq     $zero, $zero, .L80B0DF5C   
/* 02194 80B0DF44 00481823 */  subu    $v1, $v0, $t0              
.L80B0DF48:
/* 02198 80B0DF48 0C2C378D */  jal     func_80B0DE34              
/* 0219C 80B0DF4C 8FA50040 */  lw      $a1, 0x0040($sp)           
/* 021A0 80B0DF50 860900B8 */  lh      $t1, 0x00B8($s0)           ## 000000B8
/* 021A4 80B0DF54 00491823 */  subu    $v1, $v0, $t1              
/* 021A8 80B0DF58 00031823 */  subu    $v1, $zero, $v1            
.L80B0DF5C:
/* 021AC 80B0DF5C 28611FC2 */  slti    $at, $v1, 0x1FC2           
/* 021B0 80B0DF60 14200003 */  bne     $at, $zero, .L80B0DF70     
/* 021B4 80B0DF64 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 021B8 80B0DF68 1000001F */  beq     $zero, $zero, .L80B0DFE8   
/* 021BC 80B0DF6C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B0DF70:
/* 021C0 80B0DF70 8FA50040 */  lw      $a1, 0x0040($sp)           
/* 021C4 80B0DF74 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 021C8 80B0DF78 AFA4003C */  sw      $a0, 0x003C($sp)           
/* 021CC 80B0DF7C 3C014302 */  lui     $at, 0x4302                ## $at = 43020000
/* 021D0 80B0DF80 44812000 */  mtc1    $at, $f4                   ## $f4 = 130.00
/* 021D4 80B0DF84 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 021D8 80B0DF88 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 021DC 80B0DF8C 4600203E */  c.le.s  $f4, $f0                   
/* 021E0 80B0DF90 8FA60040 */  lw      $a2, 0x0040($sp)           
/* 021E4 80B0DF94 27A70048 */  addiu   $a3, $sp, 0x0048           ## $a3 = FFFFFFE8
/* 021E8 80B0DF98 27AA0058 */  addiu   $t2, $sp, 0x0058           ## $t2 = FFFFFFF8
/* 021EC 80B0DF9C 45000003 */  bc1f    .L80B0DFAC                 
/* 021F0 80B0DFA0 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 021F4 80B0DFA4 10000010 */  beq     $zero, $zero, .L80B0DFE8   
/* 021F8 80B0DFA8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B0DFAC:
/* 021FC 80B0DFAC 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 02200 80B0DFB0 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 02204 80B0DFB4 27AD0054 */  addiu   $t5, $sp, 0x0054           ## $t5 = FFFFFFF4
/* 02208 80B0DFB8 AFAD0024 */  sw      $t5, 0x0024($sp)           
/* 0220C 80B0DFBC AFAC0020 */  sw      $t4, 0x0020($sp)           
/* 02210 80B0DFC0 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 02214 80B0DFC4 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 02218 80B0DFC8 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 0221C 80B0DFCC 0C00F7A1 */  jal     BgCheck_EntityLineTest1              
/* 02220 80B0DFD0 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 02224 80B0DFD4 54400004 */  bnel    $v0, $zero, .L80B0DFE8     
/* 02228 80B0DFD8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0222C 80B0DFDC 10000002 */  beq     $zero, $zero, .L80B0DFE8   
/* 02230 80B0DFE0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 02234 80B0DFE4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B0DFE8:
/* 02238 80B0DFE8 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 0223C 80B0DFEC 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 02240 80B0DFF0 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 02244 80B0DFF4 03E00008 */  jr      $ra                        
/* 02248 80B0DFF8 00000000 */  nop
