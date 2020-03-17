glabel func_80BADE74
/* 001B4 80BADE74 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 001B8 80BADE78 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 001BC 80BADE7C AFB00030 */  sw      $s0, 0x0030($sp)           
/* 001C0 80BADE80 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 001C4 80BADE84 0C016C66 */  jal     func_8005B198              
/* 001C8 80BADE88 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 001CC 80BADE8C 920E0002 */  lbu     $t6, 0x0002($s0)           ## 00000002
/* 001D0 80BADE90 3C1880BB */  lui     $t8, %hi(func_80BADDCC)    ## $t8 = 80BB0000
/* 001D4 80BADE94 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 001D8 80BADE98 104E0004 */  beq     $v0, $t6, .L80BADEAC       
/* 001DC 80BADE9C 2718DDCC */  addiu   $t8, $t8, %lo(func_80BADDCC) ## $t8 = 80BADDCC
/* 001E0 80BADEA0 860F01A2 */  lh      $t7, 0x01A2($s0)           ## 000001A2
/* 001E4 80BADEA4 51E00015 */  beql    $t7, $zero, .L80BADEFC     
/* 001E8 80BADEA8 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80BADEAC:
/* 001EC 80BADEAC C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 001F0 80BADEB0 24190032 */  addiu   $t9, $zero, 0x0032         ## $t9 = 00000032
/* 001F4 80BADEB4 AE180198 */  sw      $t8, 0x0198($s0)           ## 00000198
/* 001F8 80BADEB8 A61901A2 */  sh      $t9, 0x01A2($s0)           ## 000001A2
/* 001FC 80BADEBC 8E070008 */  lw      $a3, 0x0008($s0)           ## 00000008
/* 00200 80BADEC0 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00204 80BADEC4 C6060010 */  lwc1    $f6, 0x0010($s0)           ## 00000010
/* 00208 80BADEC8 24080011 */  addiu   $t0, $zero, 0x0011         ## $t0 = 00000011
/* 0020C 80BADECC AFA80024 */  sw      $t0, 0x0024($sp)           
/* 00210 80BADED0 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00214 80BADED4 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00218 80BADED8 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 0021C 80BADEDC 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 00220 80BADEE0 2406008C */  addiu   $a2, $zero, 0x008C         ## $a2 = 0000008C
/* 00224 80BADEE4 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00228 80BADEE8 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 0022C 80BADEEC 260400E4 */  addiu   $a0, $s0, 0x00E4           ## $a0 = 000000E4
/* 00230 80BADEF0 0C01E245 */  jal     func_80078914              
/* 00234 80BADEF4 2405287B */  addiu   $a1, $zero, 0x287B         ## $a1 = 0000287B
/* 00238 80BADEF8 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80BADEFC:
/* 0023C 80BADEFC 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00240 80BADF00 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00244 80BADF04 03E00008 */  jr      $ra                        
/* 00248 80BADF08 00000000 */  nop


