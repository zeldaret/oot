glabel func_808B2180
/* 00000 808B2180 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00004 808B2184 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00008 808B2188 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0000C 808B218C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00010 808B2190 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00014 808B2194 24C50164 */  addiu   $a1, $a2, 0x0164           ## $a1 = 00000164
/* 00018 808B2198 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0001C 808B219C 0C0170D9 */  jal     CollisionCheck_AllocCylinder
              
/* 00020 808B21A0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00024 808B21A4 3C07808B */  lui     $a3, %hi(D_808B2700)       ## $a3 = 808B0000
/* 00028 808B21A8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0002C 808B21AC 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00030 808B21B0 24E72700 */  addiu   $a3, $a3, %lo(D_808B2700)  ## $a3 = 808B2700
/* 00034 808B21B4 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00038 808B21B8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0003C 808B21BC 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00040 808B21C0 C4C40024 */  lwc1    $f4, 0x0024($a2)           ## 00000024
/* 00044 808B21C4 C4C80028 */  lwc1    $f8, 0x0028($a2)           ## 00000028
/* 00048 808B21C8 C4D0002C */  lwc1    $f16, 0x002C($a2)          ## 0000002C
/* 0004C 808B21CC 4600218D */  trunc.w.s $f6, $f4                   
/* 00050 808B21D0 84CE01AA */  lh      $t6, 0x01AA($a2)           ## 000001AA
/* 00054 808B21D4 84CA01AC */  lh      $t2, 0x01AC($a2)           ## 000001AC
/* 00058 808B21D8 4600428D */  trunc.w.s $f10, $f8                  
/* 0005C 808B21DC 44083000 */  mfc1    $t0, $f6                   
/* 00060 808B21E0 84D901AE */  lh      $t9, 0x01AE($a2)           ## 000001AE
/* 00064 808B21E4 4600848D */  trunc.w.s $f18, $f16                 
/* 00068 808B21E8 440F5000 */  mfc1    $t7, $f10                  
/* 0006C 808B21EC 01C84821 */  addu    $t1, $t6, $t0              
/* 00070 808B21F0 A4C901AA */  sh      $t1, 0x01AA($a2)           ## 000001AA
/* 00074 808B21F4 440B9000 */  mfc1    $t3, $f18                  
/* 00078 808B21F8 014FC021 */  addu    $t8, $t2, $t7              
/* 0007C 808B21FC A4D801AC */  sh      $t8, 0x01AC($a2)           ## 000001AC
/* 00080 808B2200 032B6021 */  addu    $t4, $t9, $t3              
/* 00084 808B2204 A4CC01AE */  sh      $t4, 0x01AE($a2)           ## 000001AE
/* 00088 808B2208 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0008C 808B220C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00090 808B2210 03E00008 */  jr      $ra                        
/* 00094 808B2214 00000000 */  nop
