glabel func_8084F698
/* 1D488 8084F698 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1D48C 8084F69C AFA40030 */  sw      $a0, 0x0030($sp)           
/* 1D490 8084F6A0 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 1D494 8084F6A4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 1D498 8084F6A8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 1D49C 8084F6AC 3C068085 */  lui     $a2, %hi(func_8084F608)    ## $a2 = 80850000
/* 1D4A0 8084F6B0 24C6F608 */  addiu   $a2, $a2, %lo(func_8084F608) ## $a2 = 8084F608
/* 1D4A4 8084F6B4 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 1D4A8 8084F6B8 0C20D716 */  jal     func_80835C58              
/* 1D4AC 8084F6BC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 1D4B0 8084F6C0 8FAF0030 */  lw      $t7, 0x0030($sp)           
/* 1D4B4 8084F6C4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 1D4B8 8084F6C8 240E0028 */  addiu   $t6, $zero, 0x0028         ## $t6 = 00000028
/* 1D4BC 8084F6CC A5EE0850 */  sh      $t6, 0x0850($t7)           ## 00000850
/* 1D4C0 8084F6D0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 1D4C4 8084F6D4 24180010 */  addiu   $t8, $zero, 0x0010         ## $t8 = 00000010
/* 1D4C8 8084F6D8 AFB80024 */  sw      $t8, 0x0024($sp)           
/* 1D4CC 8084F6DC 44070000 */  mfc1    $a3, $f0                   
/* 1D4D0 8084F6E0 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 1D4D4 8084F6E4 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 1D4D8 8084F6E8 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 1D4DC 8084F6EC 2406008C */  addiu   $a2, $zero, 0x008C         ## $a2 = 0000008C
/* 1D4E0 8084F6F0 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 1D4E4 8084F6F4 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 1D4E8 8084F6F8 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 1D4EC 8084F6FC E7A00014 */  swc1    $f0, 0x0014($sp)           
/* 1D4F0 8084F700 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 1D4F4 8084F704 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 1D4F8 8084F708 03E00008 */  jr      $ra                        
/* 1D4FC 8084F70C 00000000 */  nop


