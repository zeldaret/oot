.late_rodata
glabel jtbl_809E29B0
.word L809E1CA4
.word L809E1CA4
.word L809E1CA4
.word L809E1CA4
.word L809E1BD4
.word L809E1CA4
.word L809E1C3C

.text
glabel func_809E1B8C
/* 002DC 809E1B8C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 002E0 809E1B90 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 002E4 809E1B94 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002E8 809E1B98 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 002EC 809E1B9C 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 002F0 809E1BA0 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 002F4 809E1BA4 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 002F8 809E1BA8 0C042F6F */  jal     func_8010BDBC              
/* 002FC 809E1BAC 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00300 809E1BB0 2C410007 */  sltiu   $at, $v0, 0x0007           
/* 00304 809E1BB4 1020003B */  beq     $at, $zero, .L809E1CA4     
/* 00308 809E1BB8 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 0030C 809E1BBC 00027080 */  sll     $t6, $v0,  2               
/* 00310 809E1BC0 3C01809E */  lui     $at, %hi(jtbl_809E29B0)       ## $at = 809E0000
/* 00314 809E1BC4 002E0821 */  addu    $at, $at, $t6              
/* 00318 809E1BC8 8C2E29B0 */  lw      $t6, %lo(jtbl_809E29B0)($at)  
/* 0031C 809E1BCC 01C00008 */  jr      $t6                        
/* 00320 809E1BD0 00000000 */  nop
glabel L809E1BD4
/* 00324 809E1BD4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00328 809E1BD8 0C041AF2 */  jal     func_80106BC8              
/* 0032C 809E1BDC AFA30024 */  sw      $v1, 0x0024($sp)           
/* 00330 809E1BE0 10400030 */  beq     $v0, $zero, .L809E1CA4     
/* 00334 809E1BE4 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 00338 809E1BE8 8FAF0034 */  lw      $t7, 0x0034($sp)           
/* 0033C 809E1BEC 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 00340 809E1BF0 24082024 */  addiu   $t0, $zero, 0x2024         ## $t0 = 00002024
/* 00344 809E1BF4 030FC021 */  addu    $t8, $t8, $t7              
/* 00348 809E1BF8 931804BD */  lbu     $t8, 0x04BD($t8)           ## 000104BD
/* 0034C 809E1BFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00350 809E1C00 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00354 809E1C04 17000009 */  bne     $t8, $zero, .L809E1C2C     
/* 00358 809E1C08 26060210 */  addiu   $a2, $s0, 0x0210           ## $a2 = 00000210
/* 0035C 809E1C0C 24192026 */  addiu   $t9, $zero, 0x2026         ## $t9 = 00002026
/* 00360 809E1C10 A619010E */  sh      $t9, 0x010E($s0)           ## 0000010E
/* 00364 809E1C14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00368 809E1C18 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 0036C 809E1C1C 0C27862C */  jal     func_809E18B0              
/* 00370 809E1C20 26060210 */  addiu   $a2, $s0, 0x0210           ## $a2 = 00000210
/* 00374 809E1C24 1000001F */  beq     $zero, $zero, .L809E1CA4   
/* 00378 809E1C28 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
.L809E1C2C:
/* 0037C 809E1C2C 0C27862C */  jal     func_809E18B0              
/* 00380 809E1C30 A608010E */  sh      $t0, 0x010E($s0)           ## 0000010E
/* 00384 809E1C34 1000001B */  beq     $zero, $zero, .L809E1CA4   
/* 00388 809E1C38 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
glabel L809E1C3C
/* 0038C 809E1C3C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00390 809E1C40 0C041AF2 */  jal     func_80106BC8              
/* 00394 809E1C44 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 00398 809E1C48 10400016 */  beq     $v0, $zero, .L809E1CA4     
/* 0039C 809E1C4C 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 003A0 809E1C50 9609010E */  lhu     $t1, 0x010E($s0)           ## 0000010E
/* 003A4 809E1C54 24012026 */  addiu   $at, $zero, 0x2026         ## $at = 00002026
/* 003A8 809E1C58 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 003AC 809E1C5C 15210011 */  bne     $t1, $at, .L809E1CA4       
/* 003B0 809E1C60 00000000 */  nop
/* 003B4 809E1C64 0C023C23 */  jal     func_8008F08C              
/* 003B8 809E1C68 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 003BC 809E1C6C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 003C0 809E1C70 0C021344 */  jal     Item_Give              
/* 003C4 809E1C74 2405002C */  addiu   $a1, $zero, 0x002C         ## $a1 = 0000002C
/* 003C8 809E1C78 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 003CC 809E1C7C 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 003D0 809E1C80 946A0EF6 */  lhu     $t2, 0x0EF6($v1)           ## 8015F556
/* 003D4 809E1C84 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 003D8 809E1C88 354B0400 */  ori     $t3, $t2, 0x0400           ## $t3 = 00000400
/* 003DC 809E1C8C 0C021CC3 */  jal     Rupees_ChangeBy              
/* 003E0 809E1C90 A46B0EF6 */  sh      $t3, 0x0EF6($v1)           ## 8015F556
/* 003E4 809E1C94 240C2027 */  addiu   $t4, $zero, 0x2027         ## $t4 = 00002027
/* 003E8 809E1C98 A60C010E */  sh      $t4, 0x010E($s0)           ## 0000010E
/* 003EC 809E1C9C 10000001 */  beq     $zero, $zero, .L809E1CA4   
/* 003F0 809E1CA0 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
glabel L809E1CA4
.L809E1CA4:
/* 003F4 809E1CA4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 003F8 809E1CA8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 003FC 809E1CAC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00400 809E1CB0 03E00008 */  jr      $ra                        
/* 00404 809E1CB4 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000002
