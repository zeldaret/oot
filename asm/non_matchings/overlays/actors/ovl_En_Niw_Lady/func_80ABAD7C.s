glabel func_80ABAD7C
/* 0113C 80ABAD7C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01140 80ABAD80 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 01144 80ABAD84 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01148 80ABAD88 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 0114C 80ABAD8C 240E503D */  addiu   $t6, $zero, 0x503D         ## $t6 = 0000503D
/* 01150 80ABAD90 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01154 80ABAD94 A48E010E */  sh      $t6, 0x010E($a0)           ## 0000010E
/* 01158 80ABAD98 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0115C 80ABAD9C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01160 80ABADA0 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 01164 80ABADA4 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 01168 80ABADA8 10400004 */  beq     $v0, $zero, .L80ABADBC     
/* 0116C 80ABADAC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01170 80ABADB0 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 01174 80ABADB4 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 01178 80ABADB8 A602010E */  sh      $v0, 0x010E($s0)           ## 0000010E
.L80ABADBC:
/* 0117C 80ABADBC 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 01180 80ABADC0 0C042F6F */  jal     func_8010BDBC              
/* 01184 80ABADC4 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 01188 80ABADC8 10400005 */  beq     $v0, $zero, .L80ABADE0     
/* 0118C 80ABADCC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01190 80ABADD0 0C042F6F */  jal     func_8010BDBC              
/* 01194 80ABADD4 00000000 */  nop
/* 01198 80ABADD8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 0119C 80ABADDC 14410002 */  bne     $v0, $at, .L80ABADE8       
.L80ABADE0:
/* 011A0 80ABADE0 240F0008 */  addiu   $t7, $zero, 0x0008         ## $t7 = 00000008
/* 011A4 80ABADE4 A60F026E */  sh      $t7, 0x026E($s0)           ## 0000026E
.L80ABADE8:
/* 011A8 80ABADE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011AC 80ABADEC 0C00BC65 */  jal     func_8002F194              
/* 011B0 80ABADF0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 011B4 80ABADF4 1040000A */  beq     $v0, $zero, .L80ABAE20     
/* 011B8 80ABADF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011BC 80ABADFC 8619027A */  lh      $t9, 0x027A($s0)           ## 0000027A
/* 011C0 80ABAE00 3C0980AC */  lui     $t1, %hi(func_80ABAD38)    ## $t1 = 80AC0000
/* 011C4 80ABAE04 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 011C8 80ABAE08 2529AD38 */  addiu   $t1, $t1, %lo(func_80ABAD38) ## $t1 = 80ABAD38
/* 011CC 80ABAE0C 27280009 */  addiu   $t0, $t9, 0x0009           ## $t0 = 00000009
/* 011D0 80ABAE10 A2180274 */  sb      $t8, 0x0274($s0)           ## 00000274
/* 011D4 80ABAE14 A608026E */  sh      $t0, 0x026E($s0)           ## 0000026E
/* 011D8 80ABAE18 10000004 */  beq     $zero, $zero, .L80ABAE2C   
/* 011DC 80ABAE1C AE090250 */  sw      $t1, 0x0250($s0)           ## 00000250
.L80ABAE20:
/* 011E0 80ABAE20 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 011E4 80ABAE24 0C00BCB3 */  jal     func_8002F2CC              
/* 011E8 80ABAE28 3C0642C8 */  lui     $a2, 0x42C8                ## $a2 = 42C80000
.L80ABAE2C:
/* 011EC 80ABAE2C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 011F0 80ABAE30 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 011F4 80ABAE34 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 011F8 80ABAE38 03E00008 */  jr      $ra                        
/* 011FC 80ABAE3C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000


