glabel EnPart_Update
/* 00C14 80ACE9E4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00C18 80ACE9E8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00C1C 80ACE9EC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00C20 80ACE9F0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C24 80ACE9F4 0C00B638 */  jal     Actor_MoveForward
              
/* 00C28 80ACE9F8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00C2C 80ACE9FC 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00C30 80ACEA00 28410005 */  slti    $at, $v0, 0x0005           
/* 00C34 80ACEA04 14200003 */  bne     $at, $zero, .L80ACEA14     
/* 00C38 80ACEA08 28410009 */  slti    $at, $v0, 0x0009           
/* 00C3C 80ACEA0C 54200004 */  bnel    $at, $zero, .L80ACEA20     
/* 00C40 80ACEA10 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
.L80ACEA14:
/* 00C44 80ACEA14 0443001D */  bgezl   $v0, .L80ACEA8C            
/* 00C48 80ACEA18 9208014C */  lbu     $t0, 0x014C($s0)           ## 0000014C
/* 00C4C 80ACEA1C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
.L80ACEA20:
/* 00C50 80ACEA20 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 00C54 80ACEA24 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00C58 80ACEA28 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00C5C 80ACEA2C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00C60 80ACEA30 3C0640A0 */  lui     $a2, 0x40A0                ## $a2 = 40A00000
/* 00C64 80ACEA34 3C074170 */  lui     $a3, 0x4170                ## $a3 = 41700000
/* 00C68 80ACEA38 0C00B92D */  jal     func_8002E4B4              
/* 00C6C 80ACEA3C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00C70 80ACEA40 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 00C74 80ACEA44 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00C78 80ACEA48 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00C7C 80ACEA4C 05E0000E */  bltz    $t7, .L80ACEA88            
/* 00C80 80ACEA50 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00C84 80ACEA54 44050000 */  mfc1    $a1, $f0                   
/* 00C88 80ACEA58 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 00C8C 80ACEA5C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00C90 80ACEA60 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00C94 80ACEA64 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 00C98 80ACEA68 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00C9C 80ACEA6C 30580001 */  andi    $t8, $v0, 0x0001           ## $t8 = 00000000
/* 00CA0 80ACEA70 53000006 */  beql    $t8, $zero, .L80ACEA8C     
/* 00CA4 80ACEA74 9208014C */  lbu     $t0, 0x014C($s0)           ## 0000014C
/* 00CA8 80ACEA78 44813000 */  mtc1    $at, $f6                   ## $f6 = 6.00
/* 00CAC 80ACEA7C 3059FFFE */  andi    $t9, $v0, 0xFFFE           ## $t9 = 00000000
/* 00CB0 80ACEA80 A6190088 */  sh      $t9, 0x0088($s0)           ## 00000088
/* 00CB4 80ACEA84 E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
.L80ACEA88:
/* 00CB8 80ACEA88 9208014C */  lbu     $t0, 0x014C($s0)           ## 0000014C
.L80ACEA8C:
/* 00CBC 80ACEA8C 3C1980AD */  lui     $t9, %hi(D_80ACF1F8)       ## $t9 = 80AD0000
/* 00CC0 80ACEA90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CC4 80ACEA94 00084880 */  sll     $t1, $t0,  2               
/* 00CC8 80ACEA98 0329C821 */  addu    $t9, $t9, $t1              
/* 00CCC 80ACEA9C 8F39F1F8 */  lw      $t9, %lo(D_80ACF1F8)($t9)  
/* 00CD0 80ACEAA0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00CD4 80ACEAA4 0320F809 */  jalr    $ra, $t9                   
/* 00CD8 80ACEAA8 00000000 */  nop
/* 00CDC 80ACEAAC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00CE0 80ACEAB0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00CE4 80ACEAB4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00CE8 80ACEAB8 03E00008 */  jr      $ra                        
/* 00CEC 80ACEABC 00000000 */  nop


