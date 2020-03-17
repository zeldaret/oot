glabel func_80A1C248
/* 018A8 80A1C248 27BDFFF8 */  addiu   $sp, $sp, 0xFFF8           ## $sp = FFFFFFF8
/* 018AC 80A1C24C AFA40008 */  sw      $a0, 0x0008($sp)           
/* 018B0 80A1C250 308400FF */  andi    $a0, $a0, 0x00FF           ## $a0 = 00000000
/* 018B4 80A1C254 2C810005 */  sltiu   $at, $a0, 0x0005           
/* 018B8 80A1C258 10200013 */  beq     $at, $zero, .L80A1C2A8     
/* 018BC 80A1C25C 00047080 */  sll     $t6, $a0,  2               
/* 018C0 80A1C260 3C0180A2 */  lui     $at, %hi(jtbl_80A1D2DC)       ## $at = 80A20000
/* 018C4 80A1C264 002E0821 */  addu    $at, $at, $t6              
/* 018C8 80A1C268 8C2ED2DC */  lw      $t6, %lo(jtbl_80A1D2DC)($at)  
/* 018CC 80A1C26C 01C00008 */  jr      $t6                        
/* 018D0 80A1C270 00000000 */  nop
glabel L80A1C274
/* 018D4 80A1C274 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 018D8 80A1C278 1000000B */  beq     $zero, $zero, .L80A1C2A8   
/* 018DC 80A1C27C AFA20000 */  sw      $v0, 0x0000($sp)           
glabel L80A1C280
/* 018E0 80A1C280 10000009 */  beq     $zero, $zero, .L80A1C2A8   
/* 018E4 80A1C284 AFA00000 */  sw      $zero, 0x0000($sp)         
glabel L80A1C288
/* 018E8 80A1C288 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
/* 018EC 80A1C28C 10000006 */  beq     $zero, $zero, .L80A1C2A8   
/* 018F0 80A1C290 AFA20000 */  sw      $v0, 0x0000($sp)           
glabel L80A1C294
/* 018F4 80A1C294 24020003 */  addiu   $v0, $zero, 0x0003         ## $v0 = 00000003
/* 018F8 80A1C298 10000003 */  beq     $zero, $zero, .L80A1C2A8   
/* 018FC 80A1C29C AFA20000 */  sw      $v0, 0x0000($sp)           
glabel L80A1C2A0
/* 01900 80A1C2A0 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
/* 01904 80A1C2A4 AFA20000 */  sw      $v0, 0x0000($sp)           
.L80A1C2A8:
/* 01908 80A1C2A8 8FA20000 */  lw      $v0, 0x0000($sp)           
/* 0190C 80A1C2AC 3C0480A2 */  lui     $a0, %hi(D_80A1CFF4)       ## $a0 = 80A20000
/* 01910 80A1C2B0 8C84CFF4 */  lw      $a0, %lo(D_80A1CFF4)($a0)  
/* 01914 80A1C2B4 14400004 */  bne     $v0, $zero, .L80A1C2C8     
/* 01918 80A1C2B8 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 0191C 80A1C2BC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01920 80A1C2C0 10000003 */  beq     $zero, $zero, .L80A1C2D0   
/* 01924 80A1C2C4 A08603A8 */  sb      $a2, 0x03A8($a0)           ## 80A203A8
.L80A1C2C8:
/* 01928 80A1C2C8 A08003A8 */  sb      $zero, 0x03A8($a0)         ## 80A203A8
/* 0192C 80A1C2CC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
.L80A1C2D0:
/* 01930 80A1C2D0 3C1880A2 */  lui     $t8, %hi(D_80A1CFF0)       ## $t8 = 80A20000
/* 01934 80A1C2D4 2718CFF0 */  addiu   $t8, $t8, %lo(D_80A1CFF0)  ## $t8 = 80A1CFF0
/* 01938 80A1C2D8 00037880 */  sll     $t7, $v1,  2               
/* 0193C 80A1C2DC 01F82821 */  addu    $a1, $t7, $t8              
/* 01940 80A1C2E0 14620003 */  bne     $v1, $v0, .L80A1C2F0       
/* 01944 80A1C2E4 8CA40004 */  lw      $a0, 0x0004($a1)           ## 00000004
/* 01948 80A1C2E8 10000002 */  beq     $zero, $zero, .L80A1C2F4   
/* 0194C 80A1C2EC A08603A8 */  sb      $a2, 0x03A8($a0)           ## 80A203A8
.L80A1C2F0:
/* 01950 80A1C2F0 A08003A8 */  sb      $zero, 0x03A8($a0)         ## 80A203A8
.L80A1C2F4:
/* 01954 80A1C2F4 24790001 */  addiu   $t9, $v1, 0x0001           ## $t9 = 00000002
/* 01958 80A1C2F8 17220003 */  bne     $t9, $v0, .L80A1C308       
/* 0195C 80A1C2FC 8CA40008 */  lw      $a0, 0x0008($a1)           ## 00000008
/* 01960 80A1C300 10000002 */  beq     $zero, $zero, .L80A1C30C   
/* 01964 80A1C304 A08603A8 */  sb      $a2, 0x03A8($a0)           ## 80A203A8
.L80A1C308:
/* 01968 80A1C308 A08003A8 */  sb      $zero, 0x03A8($a0)         ## 80A203A8
.L80A1C30C:
/* 0196C 80A1C30C 24680002 */  addiu   $t0, $v1, 0x0002           ## $t0 = 00000003
/* 01970 80A1C310 15020003 */  bne     $t0, $v0, .L80A1C320       
/* 01974 80A1C314 8CA4000C */  lw      $a0, 0x000C($a1)           ## 0000000C
/* 01978 80A1C318 10000002 */  beq     $zero, $zero, .L80A1C324   
/* 0197C 80A1C31C A08603A8 */  sb      $a2, 0x03A8($a0)           ## 80A203A8
.L80A1C320:
/* 01980 80A1C320 A08003A8 */  sb      $zero, 0x03A8($a0)         ## 80A203A8
.L80A1C324:
/* 01984 80A1C324 24690003 */  addiu   $t1, $v1, 0x0003           ## $t1 = 00000004
/* 01988 80A1C328 15220003 */  bne     $t1, $v0, .L80A1C338       
/* 0198C 80A1C32C 8CA40010 */  lw      $a0, 0x0010($a1)           ## 00000010
/* 01990 80A1C330 10000002 */  beq     $zero, $zero, .L80A1C33C   
/* 01994 80A1C334 A08603A8 */  sb      $a2, 0x03A8($a0)           ## 80A203A8
.L80A1C338:
/* 01998 80A1C338 A08003A8 */  sb      $zero, 0x03A8($a0)         ## 80A203A8
.L80A1C33C:
/* 0199C 80A1C33C 03E00008 */  jr      $ra                        
/* 019A0 80A1C340 27BD0008 */  addiu   $sp, $sp, 0x0008           ## $sp = 00000000


