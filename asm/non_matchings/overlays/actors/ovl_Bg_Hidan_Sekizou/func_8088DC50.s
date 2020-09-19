glabel func_8088DC50
/* 00D90 8088DC50 27BDFF40 */  addiu   $sp, $sp, 0xFF40           ## $sp = FFFFFF40
/* 00D94 8088DC54 AFB40048 */  sw      $s4, 0x0048($sp)           
/* 00D98 8088DC58 0007A400 */  sll     $s4, $a3, 16               
/* 00D9C 8088DC5C 0014A403 */  sra     $s4, $s4, 16               
/* 00DA0 8088DC60 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00DA4 8088DC64 00068400 */  sll     $s0, $a2, 16               
/* 00DA8 8088DC68 AFB60050 */  sw      $s6, 0x0050($sp)           
/* 00DAC 8088DC6C AFB5004C */  sw      $s5, 0x004C($sp)           
/* 00DB0 8088DC70 2A810004 */  slti    $at, $s4, 0x0004           
/* 00DB4 8088DC74 0080A825 */  or      $s5, $a0, $zero            ## $s5 = 00000000
/* 00DB8 8088DC78 00A0B025 */  or      $s6, $a1, $zero            ## $s6 = 00000000
/* 00DBC 8088DC7C 00108403 */  sra     $s0, $s0, 16               
/* 00DC0 8088DC80 AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 00DC4 8088DC84 AFB30044 */  sw      $s3, 0x0044($sp)           
/* 00DC8 8088DC88 AFB20040 */  sw      $s2, 0x0040($sp)           
/* 00DCC 8088DC8C AFB1003C */  sw      $s1, 0x003C($sp)           
/* 00DD0 8088DC90 F7B60030 */  sdc1    $f22, 0x0030($sp)          
/* 00DD4 8088DC94 F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 00DD8 8088DC98 AFA600C8 */  sw      $a2, 0x00C8($sp)           
/* 00DDC 8088DC9C 10200005 */  beq     $at, $zero, .L8088DCB4     
/* 00DE0 8088DCA0 AFA700CC */  sw      $a3, 0x00CC($sp)           
/* 00DE4 8088DCA4 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 00DE8 8088DCA8 01D48823 */  subu    $s1, $t6, $s4              
/* 00DEC 8088DCAC 10000007 */  beq     $zero, $zero, .L8088DCCC   
/* 00DF0 8088DCB0 24120004 */  addiu   $s2, $zero, 0x0004         ## $s2 = 00000004
.L8088DCB4:
/* 00DF4 8088DCB4 240F0024 */  addiu   $t7, $zero, 0x0024         ## $t7 = 00000024
/* 00DF8 8088DCB8 01F49023 */  subu    $s2, $t7, $s4              
/* 00DFC 8088DCBC 2A410005 */  slti    $at, $s2, 0x0005           
/* 00E00 8088DCC0 14200002 */  bne     $at, $zero, .L8088DCCC     
/* 00E04 8088DCC4 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00E08 8088DCC8 24120004 */  addiu   $s2, $zero, 0x0004         ## $s2 = 00000004
.L8088DCCC:
/* 00E0C 8088DCCC 00102400 */  sll     $a0, $s0, 16               
/* 00E10 8088DCD0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00E14 8088DCD4 00042403 */  sra     $a0, $a0, 16               
/* 00E18 8088DCD8 00102400 */  sll     $a0, $s0, 16               
/* 00E1C 8088DCDC 46000506 */  mov.s   $f20, $f0                  
/* 00E20 8088DCE0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00E24 8088DCE4 00042403 */  sra     $a0, $a0, 16               
/* 00E28 8088DCE8 27B30068 */  addiu   $s3, $sp, 0x0068           ## $s3 = FFFFFFA8
/* 00E2C 8088DCEC 3C058013 */  lui     $a1, %hi(gMtxFClear)
/* 00E30 8088DCF0 46000586 */  mov.s   $f22, $f0                  
/* 00E34 8088DCF4 24A5DB60 */  addiu   $a1, %lo(gMtxFClear)
/* 00E38 8088DCF8 0C0346EA */  jal     Matrix_MtxFCopy              
/* 00E3C 8088DCFC 02602025 */  or      $a0, $s3, $zero            ## $a0 = FFFFFFA8
/* 00E40 8088DD00 86B807A0 */  lh      $t8, 0x07A0($s5)           ## 000007A0
/* 00E44 8088DD04 0018C880 */  sll     $t9, $t8,  2               
/* 00E48 8088DD08 02B94021 */  addu    $t0, $s5, $t9              
/* 00E4C 8088DD0C 0C016A7D */  jal     Camera_GetCamDirYaw              
/* 00E50 8088DD10 8D040790 */  lw      $a0, 0x0790($t0)           ## 00000790
/* 00E54 8088DD14 00501823 */  subu    $v1, $v0, $s0              
/* 00E58 8088DD18 00031C00 */  sll     $v1, $v1, 16               
/* 00E5C 8088DD1C 00031C03 */  sra     $v1, $v1, 16               
/* 00E60 8088DD20 04600003 */  bltz    $v1, .L8088DD30            
/* 00E64 8088DD24 00031023 */  subu    $v0, $zero, $v1            
/* 00E68 8088DD28 10000001 */  beq     $zero, $zero, .L8088DD30   
/* 00E6C 8088DD2C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L8088DD30:
/* 00E70 8088DD30 28414000 */  slti    $at, $v0, 0x4000           
/* 00E74 8088DD34 10200015 */  beq     $at, $zero, .L8088DD8C     
/* 00E78 8088DD38 2650FFFF */  addiu   $s0, $s2, 0xFFFF           ## $s0 = 00000003
/* 00E7C 8088DD3C 0211082A */  slt     $at, $s0, $s1              
/* 00E80 8088DD40 14200010 */  bne     $at, $zero, .L8088DD84     
/* 00E84 8088DD44 2632FFFF */  addiu   $s2, $s1, 0xFFFF           ## $s2 = FFFFFFFF
/* 00E88 8088DD48 8FB100D0 */  lw      $s1, 0x00D0($sp)           
.L8088DD4C:
/* 00E8C 8088DD4C 00103400 */  sll     $a2, $s0, 16               
/* 00E90 8088DD50 00063403 */  sra     $a2, $a2, 16               
/* 00E94 8088DD54 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00E98 8088DD58 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 00E9C 8088DD5C 02603825 */  or      $a3, $s3, $zero            ## $a3 = FFFFFFA8
/* 00EA0 8088DD60 E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 00EA4 8088DD64 E7B60014 */  swc1    $f22, 0x0014($sp)          
/* 00EA8 8088DD68 AFB40018 */  sw      $s4, 0x0018($sp)           
/* 00EAC 8088DD6C 0C22367D */  jal     func_8088D9F4              
/* 00EB0 8088DD70 AFB1001C */  sw      $s1, 0x001C($sp)           
/* 00EB4 8088DD74 2610FFFF */  addiu   $s0, $s0, 0xFFFF           ## $s0 = 00000002
/* 00EB8 8088DD78 1612FFF4 */  bne     $s0, $s2, .L8088DD4C       
/* 00EBC 8088DD7C 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 00EC0 8088DD80 AFA200D0 */  sw      $v0, 0x00D0($sp)           
.L8088DD84:
/* 00EC4 8088DD84 10000014 */  beq     $zero, $zero, .L8088DDD8   
/* 00EC8 8088DD88 8FBF0054 */  lw      $ra, 0x0054($sp)           
.L8088DD8C:
/* 00ECC 8088DD8C 0232082A */  slt     $at, $s1, $s2              
/* 00ED0 8088DD90 10200010 */  beq     $at, $zero, .L8088DDD4     
/* 00ED4 8088DD94 02208025 */  or      $s0, $s1, $zero            ## $s0 = 00000000
/* 00ED8 8088DD98 8FB100D0 */  lw      $s1, 0x00D0($sp)           
.L8088DD9C:
/* 00EDC 8088DD9C 00103400 */  sll     $a2, $s0, 16               
/* 00EE0 8088DDA0 00063403 */  sra     $a2, $a2, 16               
/* 00EE4 8088DDA4 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00EE8 8088DDA8 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 00EEC 8088DDAC 02603825 */  or      $a3, $s3, $zero            ## $a3 = FFFFFFA8
/* 00EF0 8088DDB0 E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 00EF4 8088DDB4 E7B60014 */  swc1    $f22, 0x0014($sp)          
/* 00EF8 8088DDB8 AFB40018 */  sw      $s4, 0x0018($sp)           
/* 00EFC 8088DDBC 0C22367D */  jal     func_8088D9F4              
/* 00F00 8088DDC0 AFB1001C */  sw      $s1, 0x001C($sp)           
/* 00F04 8088DDC4 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00F08 8088DDC8 1612FFF4 */  bne     $s0, $s2, .L8088DD9C       
/* 00F0C 8088DDCC 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 00F10 8088DDD0 AFA200D0 */  sw      $v0, 0x00D0($sp)           
.L8088DDD4:
/* 00F14 8088DDD4 8FBF0054 */  lw      $ra, 0x0054($sp)           
.L8088DDD8:
/* 00F18 8088DDD8 8FA200D0 */  lw      $v0, 0x00D0($sp)           
/* 00F1C 8088DDDC D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 00F20 8088DDE0 D7B60030 */  ldc1    $f22, 0x0030($sp)          
/* 00F24 8088DDE4 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 00F28 8088DDE8 8FB1003C */  lw      $s1, 0x003C($sp)           
/* 00F2C 8088DDEC 8FB20040 */  lw      $s2, 0x0040($sp)           
/* 00F30 8088DDF0 8FB30044 */  lw      $s3, 0x0044($sp)           
/* 00F34 8088DDF4 8FB40048 */  lw      $s4, 0x0048($sp)           
/* 00F38 8088DDF8 8FB5004C */  lw      $s5, 0x004C($sp)           
/* 00F3C 8088DDFC 8FB60050 */  lw      $s6, 0x0050($sp)           
/* 00F40 8088DE00 03E00008 */  jr      $ra                        
/* 00F44 8088DE04 27BD00C0 */  addiu   $sp, $sp, 0x00C0           ## $sp = 00000000
