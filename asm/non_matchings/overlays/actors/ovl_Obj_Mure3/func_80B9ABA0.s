glabel func_80B9ABA0
/* 001D0 80B9ABA0 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 001D4 80B9ABA4 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 001D8 80B9ABA8 AFB60038 */  sw      $s6, 0x0038($sp)           
/* 001DC 80B9ABAC AFB50034 */  sw      $s5, 0x0034($sp)           
/* 001E0 80B9ABB0 AFB40030 */  sw      $s4, 0x0030($sp)           
/* 001E4 80B9ABB4 AFB3002C */  sw      $s3, 0x002C($sp)           
/* 001E8 80B9ABB8 AFB20028 */  sw      $s2, 0x0028($sp)           
/* 001EC 80B9ABBC AFB10024 */  sw      $s1, 0x0024($sp)           
/* 001F0 80B9ABC0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 001F4 80B9ABC4 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 001F8 80B9ABC8 C4840028 */  lwc1    $f4, 0x0028($a0)           ## 00000028
/* 001FC 80B9ABCC 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00200 80B9ABD0 4481A000 */  mtc1    $at, $f20                  ## $f20 = 40.00
/* 00204 80B9ABD4 E7A4004C */  swc1    $f4, 0x004C($sp)           
/* 00208 80B9ABD8 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 0020C 80B9ABDC 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 00210 80B9ABE0 84930032 */  lh      $s3, 0x0032($a0)           ## 00000032
/* 00214 80B9ABE4 9482016C */  lhu     $v0, 0x016C($a0)           ## 0000016C
/* 00218 80B9ABE8 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 0021C 80B9ABEC 24140006 */  addiu   $s4, $zero, 0x0006         ## $s4 = 00000006
/* 00220 80B9ABF0 27B60048 */  addiu   $s6, $sp, 0x0048           ## $s6 = FFFFFFF0
.L80B9ABF4:
/* 00224 80B9ABF4 02027007 */  srav    $t6, $v0, $s0              
/* 00228 80B9ABF8 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 0022C 80B9ABFC 15E00018 */  bne     $t7, $zero, .L80B9AC60     
/* 00230 80B9AC00 00132400 */  sll     $a0, $s3, 16               
/* 00234 80B9AC04 0010C080 */  sll     $t8, $s0,  2               
/* 00238 80B9AC08 02588821 */  addu    $s1, $s2, $t8              
/* 0023C 80B9AC0C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00240 80B9AC10 00042403 */  sra     $a0, $a0, 16               
/* 00244 80B9AC14 46140182 */  mul.s   $f6, $f0, $f20             
/* 00248 80B9AC18 C6480024 */  lwc1    $f8, 0x0024($s2)           ## 00000024
/* 0024C 80B9AC1C 00132400 */  sll     $a0, $s3, 16               
/* 00250 80B9AC20 00042403 */  sra     $a0, $a0, 16               
/* 00254 80B9AC24 46083280 */  add.s   $f10, $f6, $f8             
/* 00258 80B9AC28 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0025C 80B9AC2C E7AA0048 */  swc1    $f10, 0x0048($sp)          
/* 00260 80B9AC30 46140402 */  mul.s   $f16, $f0, $f20            
/* 00264 80B9AC34 C652002C */  lwc1    $f18, 0x002C($s2)          ## 0000002C
/* 00268 80B9AC38 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 0026C 80B9AC3C 02C02825 */  or      $a1, $s6, $zero            ## $a1 = FFFFFFF0
/* 00270 80B9AC40 24064000 */  addiu   $a2, $zero, 0x4000         ## $a2 = 00004000
/* 00274 80B9AC44 46128100 */  add.s   $f4, $f16, $f18            
/* 00278 80B9AC48 0C007DDF */  jal     Item_DropCollectible2
              
/* 0027C 80B9AC4C E7A40050 */  swc1    $f4, 0x0050($sp)           
/* 00280 80B9AC50 10400003 */  beq     $v0, $zero, .L80B9AC60     
/* 00284 80B9AC54 AE220150 */  sw      $v0, 0x0150($s1)           ## 00000150
/* 00288 80B9AC58 82590003 */  lb      $t9, 0x0003($s2)           ## 00000003
/* 0028C 80B9AC5C A0590003 */  sb      $t9, 0x0003($v0)           ## 00000003
.L80B9AC60:
/* 00290 80B9AC60 26732AAA */  addiu   $s3, $s3, 0x2AAA           ## $s3 = 00002AAA
/* 00294 80B9AC64 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 00298 80B9AC68 00139C00 */  sll     $s3, $s3, 16               
/* 0029C 80B9AC6C 9642016C */  lhu     $v0, 0x016C($s2)           ## 0000016C
/* 002A0 80B9AC70 1614FFE0 */  bne     $s0, $s4, .L80B9ABF4       
/* 002A4 80B9AC74 00139C03 */  sra     $s3, $s3, 16               
/* 002A8 80B9AC78 00024983 */  sra     $t1, $v0,  6               
/* 002AC 80B9AC7C 312A0001 */  andi    $t2, $t1, 0x0001           ## $t2 = 00000000
/* 002B0 80B9AC80 5540000E */  bnel    $t2, $zero, .L80B9ACBC     
/* 002B4 80B9AC84 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 002B8 80B9AC88 C6460024 */  lwc1    $f6, 0x0024($s2)           ## 00000024
/* 002BC 80B9AC8C 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 002C0 80B9AC90 02C02825 */  or      $a1, $s6, $zero            ## $a1 = FFFFFFF0
/* 002C4 80B9AC94 E7A60048 */  swc1    $f6, 0x0048($sp)           
/* 002C8 80B9AC98 C648002C */  lwc1    $f8, 0x002C($s2)           ## 0000002C
/* 002CC 80B9AC9C 24064002 */  addiu   $a2, $zero, 0x4002         ## $a2 = 00004002
/* 002D0 80B9ACA0 0C007DDF */  jal     Item_DropCollectible2
              
/* 002D4 80B9ACA4 E7A80050 */  swc1    $f8, 0x0050($sp)           
/* 002D8 80B9ACA8 10400003 */  beq     $v0, $zero, .L80B9ACB8     
/* 002DC 80B9ACAC AE420168 */  sw      $v0, 0x0168($s2)           ## 00000168
/* 002E0 80B9ACB0 824B0003 */  lb      $t3, 0x0003($s2)           ## 00000003
/* 002E4 80B9ACB4 A04B0003 */  sb      $t3, 0x0003($v0)           ## 00000003
.L80B9ACB8:
/* 002E8 80B9ACB8 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80B9ACBC:
/* 002EC 80B9ACBC D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 002F0 80B9ACC0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 002F4 80B9ACC4 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 002F8 80B9ACC8 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 002FC 80B9ACCC 8FB3002C */  lw      $s3, 0x002C($sp)           
/* 00300 80B9ACD0 8FB40030 */  lw      $s4, 0x0030($sp)           
/* 00304 80B9ACD4 8FB50034 */  lw      $s5, 0x0034($sp)           
/* 00308 80B9ACD8 8FB60038 */  lw      $s6, 0x0038($sp)           
/* 0030C 80B9ACDC 03E00008 */  jr      $ra                        
/* 00310 80B9ACE0 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000


