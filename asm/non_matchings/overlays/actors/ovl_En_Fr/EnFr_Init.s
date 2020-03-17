glabel EnFr_Init
/* 00114 80A1AAB4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00118 80A1AAB8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0011C 80A1AABC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00120 80A1AAC0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00124 80A1AAC4 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00128 80A1AAC8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0012C 80A1AACC 3C0E80A2 */  lui     $t6, %hi(func_80A1CB58)    ## $t6 = 80A20000
/* 00130 80A1AAD0 14400015 */  bne     $v0, $zero, .L80A1AB28     
/* 00134 80A1AAD4 28410006 */  slti    $at, $v0, 0x0006           
/* 00138 80A1AAD8 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 0013C 80A1AADC 2401FFEE */  addiu   $at, $zero, 0xFFEE         ## $at = FFFFFFEE
/* 00140 80A1AAE0 25CECB58 */  addiu   $t6, $t6, %lo(func_80A1CB58) ## $t6 = 80A1CB58
/* 00144 80A1AAE4 01E1C024 */  and     $t8, $t7, $at              
/* 00148 80A1AAE8 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 0014C 80A1AAEC AC80012C */  sw      $zero, 0x012C($a0)         ## 0000012C
/* 00150 80A1AAF0 AC800134 */  sw      $zero, 0x0134($a0)         ## 00000134
/* 00154 80A1AAF4 AC8E0130 */  sw      $t6, 0x0130($a0)           ## 00000130
/* 00158 80A1AAF8 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 0015C 80A1AAFC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00160 80A1AB00 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00164 80A1AB04 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
/* 00168 80A1AB08 0C00CDD2 */  jal     Actor_ChangeType
              
/* 0016C 80A1AB0C 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 00170 80A1AB10 3C0A80A2 */  lui     $t2, %hi(func_80A1BCB4)    ## $t2 = 80A20000
/* 00174 80A1AB14 240940AC */  addiu   $t1, $zero, 0x40AC         ## $t1 = 000040AC
/* 00178 80A1AB18 254ABCB4 */  addiu   $t2, $t2, %lo(func_80A1BCB4) ## $t2 = 80A1BCB4
/* 0017C 80A1AB1C A609010E */  sh      $t1, 0x010E($s0)           ## 0000010E
/* 00180 80A1AB20 10000035 */  beq     $zero, $zero, .L80A1ABF8   
/* 00184 80A1AB24 AE0A0354 */  sw      $t2, 0x0354($s0)           ## 00000354
.L80A1AB28:
/* 00188 80A1AB28 10200003 */  beq     $at, $zero, .L80A1AB38     
/* 0018C 80A1AB2C 3C0480A2 */  lui     $a0, %hi(D_80A1D110)       ## $a0 = 80A20000
/* 00190 80A1AB30 04430014 */  bgezl   $v0, .L80A1AB84            
/* 00194 80A1AB34 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80A1AB38:
/* 00198 80A1AB38 0C00084C */  jal     osSyncPrintf
              
/* 0019C 80A1AB3C 2484D110 */  addiu   $a0, $a0, %lo(D_80A1D110)  ## $a0 = 80A1D110
/* 001A0 80A1AB40 3C0480A2 */  lui     $a0, %hi(D_80A1D11C)       ## $a0 = 80A20000
/* 001A4 80A1AB44 3C0580A2 */  lui     $a1, %hi(D_80A1D144)       ## $a1 = 80A20000
/* 001A8 80A1AB48 24A5D144 */  addiu   $a1, $a1, %lo(D_80A1D144)  ## $a1 = 80A1D144
/* 001AC 80A1AB4C 2484D11C */  addiu   $a0, $a0, %lo(D_80A1D11C)  ## $a0 = 80A1D11C
/* 001B0 80A1AB50 24060172 */  addiu   $a2, $zero, 0x0172         ## $a2 = 00000172
/* 001B4 80A1AB54 0C00084C */  jal     osSyncPrintf
              
/* 001B8 80A1AB58 8607001C */  lh      $a3, 0x001C($s0)           ## 0000001C
/* 001BC 80A1AB5C 3C0480A2 */  lui     $a0, %hi(D_80A1D154)       ## $a0 = 80A20000
/* 001C0 80A1AB60 0C00084C */  jal     osSyncPrintf
              
/* 001C4 80A1AB64 2484D154 */  addiu   $a0, $a0, %lo(D_80A1D154)  ## $a0 = 80A1D154
/* 001C8 80A1AB68 3C0480A2 */  lui     $a0, %hi(D_80A1D158)       ## $a0 = 80A20000
/* 001CC 80A1AB6C 3C0580A2 */  lui     $a1, %hi(D_80A1D15C)       ## $a1 = 80A20000
/* 001D0 80A1AB70 24A5D15C */  addiu   $a1, $a1, %lo(D_80A1D15C)  ## $a1 = 80A1D15C
/* 001D4 80A1AB74 2484D158 */  addiu   $a0, $a0, %lo(D_80A1D158)  ## $a0 = 80A1D158
/* 001D8 80A1AB78 0C0007FC */  jal     __assert
              
/* 001DC 80A1AB7C 24060174 */  addiu   $a2, $zero, 0x0174         ## $a2 = 00000174
/* 001E0 80A1AB80 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80A1AB84:
/* 001E4 80A1AB84 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 001E8 80A1AB88 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 001EC 80A1AB8C 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 001F0 80A1AB90 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 001F4 80A1AB94 00812021 */  addu    $a0, $a0, $at              
/* 001F8 80A1AB98 A202036A */  sb      $v0, 0x036A($s0)           ## 0000036A
/* 001FC 80A1AB9C 820B036A */  lb      $t3, 0x036A($s0)           ## 0000036A
/* 00200 80A1ABA0 05630016 */  bgezl   $t3, .L80A1ABFC            
/* 00204 80A1ABA4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00208 80A1ABA8 0C00B55C */  jal     Actor_Kill
              
/* 0020C 80A1ABAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00210 80A1ABB0 3C0480A2 */  lui     $a0, %hi(D_80A1D16C)       ## $a0 = 80A20000
/* 00214 80A1ABB4 0C00084C */  jal     osSyncPrintf
              
/* 00218 80A1ABB8 2484D16C */  addiu   $a0, $a0, %lo(D_80A1D16C)  ## $a0 = 80A1D16C
/* 0021C 80A1ABBC 3C0480A2 */  lui     $a0, %hi(D_80A1D178)       ## $a0 = 80A20000
/* 00220 80A1ABC0 3C0580A2 */  lui     $a1, %hi(D_80A1D198)       ## $a1 = 80A20000
/* 00224 80A1ABC4 24A5D198 */  addiu   $a1, $a1, %lo(D_80A1D198)  ## $a1 = 80A1D198
/* 00228 80A1ABC8 2484D178 */  addiu   $a0, $a0, %lo(D_80A1D178)  ## $a0 = 80A1D178
/* 0022C 80A1ABCC 0C00084C */  jal     osSyncPrintf
              
/* 00230 80A1ABD0 2406017C */  addiu   $a2, $zero, 0x017C         ## $a2 = 0000017C
/* 00234 80A1ABD4 3C0480A2 */  lui     $a0, %hi(D_80A1D1A8)       ## $a0 = 80A20000
/* 00238 80A1ABD8 0C00084C */  jal     osSyncPrintf
              
/* 0023C 80A1ABDC 2484D1A8 */  addiu   $a0, $a0, %lo(D_80A1D1A8)  ## $a0 = 80A1D1A8
/* 00240 80A1ABE0 3C0480A2 */  lui     $a0, %hi(D_80A1D1AC)       ## $a0 = 80A20000
/* 00244 80A1ABE4 3C0580A2 */  lui     $a1, %hi(D_80A1D1B0)       ## $a1 = 80A20000
/* 00248 80A1ABE8 24A5D1B0 */  addiu   $a1, $a1, %lo(D_80A1D1B0)  ## $a1 = 80A1D1B0
/* 0024C 80A1ABEC 2484D1AC */  addiu   $a0, $a0, %lo(D_80A1D1AC)  ## $a0 = 80A1D1AC
/* 00250 80A1ABF0 0C0007FC */  jal     __assert
              
/* 00254 80A1ABF4 2406017E */  addiu   $a2, $zero, 0x017E         ## $a2 = 0000017E
.L80A1ABF8:
/* 00258 80A1ABF8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A1ABFC:
/* 0025C 80A1ABFC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00260 80A1AC00 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00264 80A1AC04 03E00008 */  jr      $ra                        
/* 00268 80A1AC08 00000000 */  nop


