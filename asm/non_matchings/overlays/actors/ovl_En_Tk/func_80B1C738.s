glabel func_80B1C738
/* 00E38 80B1C738 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E3C 80B1C73C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E40 80B1C740 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00E44 80B1C744 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00E48 80B1C748 3C0180B2 */  lui     $at, %hi(D_80B1D668)       ## $at = 80B20000
/* 00E4C 80B1C74C C424D668 */  lwc1    $f4, %lo(D_80B1D668)($at)  
/* 00E50 80B1C750 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00E54 80B1C754 3C0180B2 */  lui     $at, %hi(D_80B1D670)       ## $at = 80B20000
/* 00E58 80B1C758 4604003C */  c.lt.s  $f0, $f4                   
/* 00E5C 80B1C75C 00000000 */  nop
/* 00E60 80B1C760 45000003 */  bc1f    .L80B1C770                 
/* 00E64 80B1C764 00000000 */  nop
/* 00E68 80B1C768 10000012 */  beq     $zero, $zero, .L80B1C7B4   
/* 00E6C 80B1C76C 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
.L80B1C770:
/* 00E70 80B1C770 D426D670 */  ldc1    $f6, %lo(D_80B1D670)($at)  
/* 00E74 80B1C774 460000A1 */  cvt.d.s $f2, $f0                   
/* 00E78 80B1C778 3C0180B2 */  lui     $at, %hi(D_80B1D678)       ## $at = 80B20000
/* 00E7C 80B1C77C 4626103C */  c.lt.d  $f2, $f6                   
/* 00E80 80B1C780 00000000 */  nop
/* 00E84 80B1C784 45000003 */  bc1f    .L80B1C794                 
/* 00E88 80B1C788 00000000 */  nop
/* 00E8C 80B1C78C 10000009 */  beq     $zero, $zero, .L80B1C7B4   
/* 00E90 80B1C790 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
.L80B1C794:
/* 00E94 80B1C794 D428D678 */  ldc1    $f8, %lo(D_80B1D678)($at)  
/* 00E98 80B1C798 24040003 */  addiu   $a0, $zero, 0x0003         ## $a0 = 00000003
/* 00E9C 80B1C79C 4628103C */  c.lt.d  $f2, $f8                   
/* 00EA0 80B1C7A0 00000000 */  nop
/* 00EA4 80B1C7A4 45000003 */  bc1f    .L80B1C7B4                 
/* 00EA8 80B1C7A8 00000000 */  nop
/* 00EAC 80B1C7AC 10000001 */  beq     $zero, $zero, .L80B1C7B4   
/* 00EB0 80B1C7B0 24040002 */  addiu   $a0, $zero, 0x0002         ## $a0 = 00000002
.L80B1C7B4:
/* 00EB4 80B1C7B4 10800009 */  beq     $a0, $zero, .L80B1C7DC     
/* 00EB8 80B1C7B8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00EBC 80B1C7BC 1081000E */  beq     $a0, $at, .L80B1C7F8       
/* 00EC0 80B1C7C0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00EC4 80B1C7C4 10810015 */  beq     $a0, $at, .L80B1C81C       
/* 00EC8 80B1C7C8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00ECC 80B1C7CC 5081001D */  beql    $a0, $at, .L80B1C844       
/* 00ED0 80B1C7D0 90A3020C */  lbu     $v1, 0x020C($a1)           ## 0000020C
/* 00ED4 80B1C7D4 10000021 */  beq     $zero, $zero, .L80B1C85C   
/* 00ED8 80B1C7D8 90A30209 */  lbu     $v1, 0x0209($a1)           ## 00000209
.L80B1C7DC:
/* 00EDC 80B1C7DC 90A30209 */  lbu     $v1, 0x0209($a1)           ## 00000209
/* 00EE0 80B1C7E0 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000002
/* 00EE4 80B1C7E4 28610008 */  slti    $at, $v1, 0x0008           
/* 00EE8 80B1C7E8 1020001C */  beq     $at, $zero, .L80B1C85C     
/* 00EEC 80B1C7EC 246E0001 */  addiu   $t6, $v1, 0x0001           ## $t6 = 00000001
/* 00EF0 80B1C7F0 1000003B */  beq     $zero, $zero, .L80B1C8E0   
/* 00EF4 80B1C7F4 A0AE0209 */  sb      $t6, 0x0209($a1)           ## 00000209
.L80B1C7F8:
/* 00EF8 80B1C7F8 90A3020A */  lbu     $v1, 0x020A($a1)           ## 0000020A
/* 00EFC 80B1C7FC 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000002
/* 00F00 80B1C800 28610004 */  slti    $at, $v1, 0x0004           
/* 00F04 80B1C804 10200003 */  beq     $at, $zero, .L80B1C814     
/* 00F08 80B1C808 246F0001 */  addiu   $t7, $v1, 0x0001           ## $t7 = 00000001
/* 00F0C 80B1C80C 10000034 */  beq     $zero, $zero, .L80B1C8E0   
/* 00F10 80B1C810 A0AF020A */  sb      $t7, 0x020A($a1)           ## 0000020A
.L80B1C814:
/* 00F14 80B1C814 10000011 */  beq     $zero, $zero, .L80B1C85C   
/* 00F18 80B1C818 90A30209 */  lbu     $v1, 0x0209($a1)           ## 00000209
.L80B1C81C:
/* 00F1C 80B1C81C 90A3020B */  lbu     $v1, 0x020B($a1)           ## 0000020B
/* 00F20 80B1C820 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000002
/* 00F24 80B1C824 28610002 */  slti    $at, $v1, 0x0002           
/* 00F28 80B1C828 10200003 */  beq     $at, $zero, .L80B1C838     
/* 00F2C 80B1C82C 24780001 */  addiu   $t8, $v1, 0x0001           ## $t8 = 00000001
/* 00F30 80B1C830 1000002B */  beq     $zero, $zero, .L80B1C8E0   
/* 00F34 80B1C834 A0B8020B */  sb      $t8, 0x020B($a1)           ## 0000020B
.L80B1C838:
/* 00F38 80B1C838 10000008 */  beq     $zero, $zero, .L80B1C85C   
/* 00F3C 80B1C83C 90A30209 */  lbu     $v1, 0x0209($a1)           ## 00000209
/* 00F40 80B1C840 90A3020C */  lbu     $v1, 0x020C($a1)           ## 0000020C
.L80B1C844:
/* 00F44 80B1C844 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000002
/* 00F48 80B1C848 1C600003 */  bgtz    $v1, .L80B1C858            
/* 00F4C 80B1C84C 24790001 */  addiu   $t9, $v1, 0x0001           ## $t9 = 00000001
/* 00F50 80B1C850 10000023 */  beq     $zero, $zero, .L80B1C8E0   
/* 00F54 80B1C854 A0B9020C */  sb      $t9, 0x020C($a1)           ## 0000020C
.L80B1C858:
/* 00F58 80B1C858 90A30209 */  lbu     $v1, 0x0209($a1)           ## 00000209
.L80B1C85C:
/* 00F5C 80B1C85C 28610008 */  slti    $at, $v1, 0x0008           
/* 00F60 80B1C860 10200004 */  beq     $at, $zero, .L80B1C874     
/* 00F64 80B1C864 24680001 */  addiu   $t0, $v1, 0x0001           ## $t0 = 00000001
/* 00F68 80B1C868 A0A80209 */  sb      $t0, 0x0209($a1)           ## 00000209
/* 00F6C 80B1C86C 1000001B */  beq     $zero, $zero, .L80B1C8DC   
/* 00F70 80B1C870 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
.L80B1C874:
/* 00F74 80B1C874 90A3020A */  lbu     $v1, 0x020A($a1)           ## 0000020A
/* 00F78 80B1C878 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 00F7C 80B1C87C 28610004 */  slti    $at, $v1, 0x0004           
/* 00F80 80B1C880 10200003 */  beq     $at, $zero, .L80B1C890     
/* 00F84 80B1C884 24690001 */  addiu   $t1, $v1, 0x0001           ## $t1 = 00000001
/* 00F88 80B1C888 10000014 */  beq     $zero, $zero, .L80B1C8DC   
/* 00F8C 80B1C88C A0A9020A */  sb      $t1, 0x020A($a1)           ## 0000020A
.L80B1C890:
/* 00F90 80B1C890 90A3020B */  lbu     $v1, 0x020B($a1)           ## 0000020B
/* 00F94 80B1C894 24040002 */  addiu   $a0, $zero, 0x0002         ## $a0 = 00000002
/* 00F98 80B1C898 28610002 */  slti    $at, $v1, 0x0002           
/* 00F9C 80B1C89C 10200003 */  beq     $at, $zero, .L80B1C8AC     
/* 00FA0 80B1C8A0 246A0001 */  addiu   $t2, $v1, 0x0001           ## $t2 = 00000001
/* 00FA4 80B1C8A4 1000000D */  beq     $zero, $zero, .L80B1C8DC   
/* 00FA8 80B1C8A8 A0AA020B */  sb      $t2, 0x020B($a1)           ## 0000020B
.L80B1C8AC:
/* 00FAC 80B1C8AC 90A3020C */  lbu     $v1, 0x020C($a1)           ## 0000020C
/* 00FB0 80B1C8B0 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 00FB4 80B1C8B4 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00FB8 80B1C8B8 1C600004 */  bgtz    $v1, .L80B1C8CC            
/* 00FBC 80B1C8BC 246B0001 */  addiu   $t3, $v1, 0x0001           ## $t3 = 00000001
/* 00FC0 80B1C8C0 A0AB020C */  sb      $t3, 0x020C($a1)           ## 0000020C
/* 00FC4 80B1C8C4 10000005 */  beq     $zero, $zero, .L80B1C8DC   
/* 00FC8 80B1C8C8 24040003 */  addiu   $a0, $zero, 0x0003         ## $a0 = 00000003
.L80B1C8CC:
/* 00FCC 80B1C8CC A0AC0209 */  sb      $t4, 0x0209($a1)           ## 00000209
/* 00FD0 80B1C8D0 A0A0020A */  sb      $zero, 0x020A($a1)         ## 0000020A
/* 00FD4 80B1C8D4 A0A0020B */  sb      $zero, 0x020B($a1)         ## 0000020B
/* 00FD8 80B1C8D8 A0A0020C */  sb      $zero, 0x020C($a1)         ## 0000020C
.L80B1C8DC:
/* 00FDC 80B1C8DC 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000003
.L80B1C8E0:
/* 00FE0 80B1C8E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00FE4 80B1C8E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00FE8 80B1C8E8 03E00008 */  jr      $ra                        
/* 00FEC 80B1C8EC 00000000 */  nop


