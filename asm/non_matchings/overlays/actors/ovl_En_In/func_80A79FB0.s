glabel func_80A79FB0
/* 01000 80A79FB0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01004 80A79FB4 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 01008 80A79FB8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0100C 80A79FBC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01010 80A79FC0 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 01014 80A79FC4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01018 80A79FC8 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 0101C 80A79FCC AFA0003C */  sw      $zero, 0x003C($sp)         
/* 01020 80A79FD0 00A12021 */  addu    $a0, $a1, $at              
/* 01024 80A79FD4 0C026062 */  jal     Object_IsLoaded
              
/* 01028 80A79FD8 820501E4 */  lb      $a1, 0x01E4($s0)           ## 000001E4
/* 0102C 80A79FDC 14400003 */  bne     $v0, $zero, .L80A79FEC     
/* 01030 80A79FE0 00000000 */  nop
/* 01034 80A79FE4 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 01038 80A79FE8 1DC000C1 */  bgtz    $t6, .L80A7A2F0            
.L80A79FEC:
/* 0103C 80A79FEC 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 01040 80A79FF0 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 01044 80A79FF4 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 01048 80A79FF8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0104C 80A79FFC 0C00AC78 */  jal     ActorShape_Init
              
/* 01050 80A7A000 3C074210 */  lui     $a3, 0x4210                ## $a3 = 42100000
/* 01054 80A7A004 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 01058 80A7A008 260F01FE */  addiu   $t7, $s0, 0x01FE           ## $t7 = 000001FE
/* 0105C 80A7A00C 26180276 */  addiu   $t8, $s0, 0x0276           ## $t8 = 00000276
/* 01060 80A7A010 24190014 */  addiu   $t9, $zero, 0x0014         ## $t9 = 00000014
/* 01064 80A7A014 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 01068 80A7A018 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 0106C 80A7A01C AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 01070 80A7A020 24C63B88 */  addiu   $a2, $a2, 0x3B88           ## $a2 = 06013B88
/* 01074 80A7A024 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01078 80A7A028 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 0107C 80A7A02C 0C0291BE */  jal     func_800A46F8              
/* 01080 80A7A030 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01084 80A7A034 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 01088 80A7A038 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0108C 80A7A03C 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 01090 80A7A040 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01094 80A7A044 3C0780A8 */  lui     $a3, %hi(D_80A7B840)       ## $a3 = 80A80000
/* 01098 80A7A048 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 0109C 80A7A04C 24E7B840 */  addiu   $a3, $a3, %lo(D_80A7B840)  ## $a3 = 80A7B840
/* 010A0 80A7A050 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 010A4 80A7A054 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 010A8 80A7A058 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 010AC 80A7A05C 3C0680A8 */  lui     $a2, %hi(D_80A7B86C)       ## $a2 = 80A80000
/* 010B0 80A7A060 24C6B86C */  addiu   $a2, $a2, %lo(D_80A7B86C)  ## $a2 = 80A7B86C
/* 010B4 80A7A064 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 010B8 80A7A068 0C0187BF */  jal     func_80061EFC              
/* 010BC 80A7A06C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 010C0 80A7A070 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 010C4 80A7A074 0C29E5D7 */  jal     func_80A7975C              
/* 010C8 80A7A078 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 010CC 80A7A07C 10400008 */  beq     $v0, $zero, .L80A7A0A0     
/* 010D0 80A7A080 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 010D4 80A7A084 24C6E660 */  addiu   $a2, $a2, 0xE660           ## $a2 = 8015E660
/* 010D8 80A7A088 94C813FA */  lhu     $t0, 0x13FA($a2)           ## 8015FA5A
/* 010DC 80A7A08C 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 010E0 80A7A090 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 010E4 80A7A094 01014824 */  and     $t1, $t0, $at              
/* 010E8 80A7A098 10000095 */  beq     $zero, $zero, .L80A7A2F0   
/* 010EC 80A7A09C A4C913FA */  sh      $t1, 0x13FA($a2)           ## 8015FA5A
.L80A7A0A0:
/* 010F0 80A7A0A0 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 010F4 80A7A0A4 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 010F8 80A7A0A8 0C00B58B */  jal     Actor_SetScale
              
/* 010FC 80A7A0AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01100 80A7A0B0 3C0280A8 */  lui     $v0, %hi(func_80A7A4BC)    ## $v0 = 80A80000
/* 01104 80A7A0B4 240A0006 */  addiu   $t2, $zero, 0x0006         ## $t2 = 00000006
/* 01108 80A7A0B8 2442A4BC */  addiu   $v0, $v0, %lo(func_80A7A4BC) ## $v0 = 80A7A4BC
/* 0110C 80A7A0BC A20A001F */  sb      $t2, 0x001F($s0)           ## 0000001F
/* 01110 80A7A0C0 A6000308 */  sh      $zero, 0x0308($s0)         ## 00000308
/* 01114 80A7A0C4 AE020190 */  sw      $v0, 0x0190($s0)           ## 00000190
/* 01118 80A7A0C8 AFA20034 */  sw      $v0, 0x0034($sp)           
/* 0111C 80A7A0CC 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 01120 80A7A0D0 0C29E60C */  jal     func_80A79830              
/* 01124 80A7A0D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01128 80A7A0D8 1040002E */  beq     $v0, $zero, .L80A7A194     
/* 0112C 80A7A0DC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01130 80A7A0E0 10450011 */  beq     $v0, $a1, .L80A7A128       
/* 01134 80A7A0E4 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
/* 01138 80A7A0E8 10430015 */  beq     $v0, $v1, .L80A7A140       
/* 0113C 80A7A0EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01140 80A7A0F0 24040004 */  addiu   $a0, $zero, 0x0004         ## $a0 = 00000004
/* 01144 80A7A0F4 1044001F */  beq     $v0, $a0, .L80A7A174       
/* 01148 80A7A0F8 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 0114C 80A7A0FC 24C6E660 */  addiu   $a2, $a2, 0xE660           ## $a2 = 8015E660
/* 01150 80A7A100 94C213FA */  lhu     $v0, 0x13FA($a2)           ## 8015FA5A
/* 01154 80A7A104 3042000F */  andi    $v0, $v0, 0x000F           ## $v0 = 00000000
/* 01158 80A7A108 2C410008 */  sltiu   $at, $v0, 0x0008           
/* 0115C 80A7A10C 10200034 */  beq     $at, $zero, .L80A7A1E0     
/* 01160 80A7A110 00025880 */  sll     $t3, $v0,  2               
/* 01164 80A7A114 3C0180A8 */  lui     $at, %hi(jtbl_80A7BA9C)       ## $at = 80A80000
/* 01168 80A7A118 002B0821 */  addu    $at, $at, $t3              
/* 0116C 80A7A11C 8C2BBA9C */  lw      $t3, %lo(jtbl_80A7BA9C)($at)  
/* 01170 80A7A120 01600008 */  jr      $t3                        
/* 01174 80A7A124 00000000 */  nop
.L80A7A128:
/* 01178 80A7A128 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0117C 80A7A12C 0C29E5BB */  jal     func_80A796EC              
/* 01180 80A7A130 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 01184 80A7A134 8FAC0034 */  lw      $t4, 0x0034($sp)           
/* 01188 80A7A138 1000006D */  beq     $zero, $zero, .L80A7A2F0   
/* 0118C 80A7A13C AE0C0190 */  sw      $t4, 0x0190($s0)           ## 00000190
.L80A7A140:
/* 01190 80A7A140 0C29E5BB */  jal     func_80A796EC              
/* 01194 80A7A144 24050007 */  addiu   $a1, $zero, 0x0007         ## $a1 = 00000007
/* 01198 80A7A148 8FAD0034 */  lw      $t5, 0x0034($sp)           
/* 0119C 80A7A14C 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 011A0 80A7A150 24C6E660 */  addiu   $a2, $a2, 0xE660           ## $a2 = 8015E660
/* 011A4 80A7A154 AE0D0190 */  sw      $t5, 0x0190($s0)           ## 00000190
/* 011A8 80A7A158 94CE0ED6 */  lhu     $t6, 0x0ED6($a2)           ## 8015F536
/* 011AC 80A7A15C 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 011B0 80A7A160 31CF0100 */  andi    $t7, $t6, 0x0100           ## $t7 = 00000000
/* 011B4 80A7A164 55E00063 */  bnel    $t7, $zero, .L80A7A2F4     
/* 011B8 80A7A168 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 011BC 80A7A16C 10000060 */  beq     $zero, $zero, .L80A7A2F0   
/* 011C0 80A7A170 A618001C */  sh      $t8, 0x001C($s0)           ## 0000001C
.L80A7A174:
/* 011C4 80A7A174 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011C8 80A7A178 0C29E5BB */  jal     func_80A796EC              
/* 011CC 80A7A17C 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 011D0 80A7A180 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
/* 011D4 80A7A184 A60301EE */  sh      $v1, 0x01EE($s0)           ## 000001EE
/* 011D8 80A7A188 8FB90034 */  lw      $t9, 0x0034($sp)           
/* 011DC 80A7A18C 10000058 */  beq     $zero, $zero, .L80A7A2F0   
/* 011E0 80A7A190 AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
.L80A7A194:
/* 011E4 80A7A194 0C00B55C */  jal     Actor_Kill
              
/* 011E8 80A7A198 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011EC 80A7A19C 10000055 */  beq     $zero, $zero, .L80A7A2F4   
/* 011F0 80A7A1A0 8FBF002C */  lw      $ra, 0x002C($sp)           
glabel L80A7A1A4
/* 011F4 80A7A1A4 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 011F8 80A7A1A8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 011FC 80A7A1AC 5501000D */  bnel    $t0, $at, .L80A7A1E4       
/* 01200 80A7A1B0 8FAB003C */  lw      $t3, 0x003C($sp)           
/* 01204 80A7A1B4 1000000A */  beq     $zero, $zero, .L80A7A1E0   
/* 01208 80A7A1B8 AFA5003C */  sw      $a1, 0x003C($sp)           
glabel L80A7A1BC
/* 0120C 80A7A1BC 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
/* 01210 80A7A1C0 54690008 */  bnel    $v1, $t1, .L80A7A1E4       
/* 01214 80A7A1C4 8FAB003C */  lw      $t3, 0x003C($sp)           
/* 01218 80A7A1C8 10000005 */  beq     $zero, $zero, .L80A7A1E0   
/* 0121C 80A7A1CC AFA5003C */  sw      $a1, 0x003C($sp)           
glabel L80A7A1D0
/* 01220 80A7A1D0 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 01224 80A7A1D4 548A0003 */  bnel    $a0, $t2, .L80A7A1E4       
/* 01228 80A7A1D8 8FAB003C */  lw      $t3, 0x003C($sp)           
/* 0122C 80A7A1DC AFA5003C */  sw      $a1, 0x003C($sp)           
.L80A7A1E0:
/* 01230 80A7A1E0 8FAB003C */  lw      $t3, 0x003C($sp)           
.L80A7A1E4:
/* 01234 80A7A1E4 2C410008 */  sltiu   $at, $v0, 0x0008           
/* 01238 80A7A1E8 11650005 */  beq     $t3, $a1, .L80A7A200       
/* 0123C 80A7A1EC 00000000 */  nop
/* 01240 80A7A1F0 0C00B55C */  jal     Actor_Kill
              
/* 01244 80A7A1F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01248 80A7A1F8 1000003E */  beq     $zero, $zero, .L80A7A2F4   
/* 0124C 80A7A1FC 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A7A200:
/* 01250 80A7A200 1020003B */  beq     $at, $zero, .L80A7A2F0     
/* 01254 80A7A204 00026080 */  sll     $t4, $v0,  2               
/* 01258 80A7A208 3C0180A8 */  lui     $at, %hi(jtbl_80A7BABC)       ## $at = 80A80000
/* 0125C 80A7A20C 002C0821 */  addu    $at, $at, $t4              
/* 01260 80A7A210 8C2CBABC */  lw      $t4, %lo(jtbl_80A7BABC)($at)  
/* 01264 80A7A214 01800008 */  jr      $t4                        
/* 01268 80A7A218 00000000 */  nop
glabel L80A7A21C
/* 0126C 80A7A21C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01270 80A7A220 0C29E5BB */  jal     func_80A796EC              
/* 01274 80A7A224 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 01278 80A7A228 3C0D80A8 */  lui     $t5, %hi(func_80A7A4C8)    ## $t5 = 80A80000
/* 0127C 80A7A22C 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 01280 80A7A230 25ADA4C8 */  addiu   $t5, $t5, %lo(func_80A7A4C8) ## $t5 = 80A7A4C8
/* 01284 80A7A234 24C6E660 */  addiu   $a2, $a2, 0xE660           ## $a2 = 8015E660
/* 01288 80A7A238 AE0D0190 */  sw      $t5, 0x0190($s0)           ## 00000190
/* 0128C 80A7A23C 1000002C */  beq     $zero, $zero, .L80A7A2F0   
/* 01290 80A7A240 A4C013FA */  sh      $zero, 0x13FA($a2)         ## 8015FA5A
glabel L80A7A244
/* 01294 80A7A244 A203001F */  sb      $v1, 0x001F($s0)           ## 0000001F
/* 01298 80A7A248 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0129C 80A7A24C 0C29E5BB */  jal     func_80A796EC              
/* 012A0 80A7A250 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 012A4 80A7A254 3C0E80A8 */  lui     $t6, %hi(func_80A7A568)    ## $t6 = 80A80000
/* 012A8 80A7A258 25CEA568 */  addiu   $t6, $t6, %lo(func_80A7A568) ## $t6 = 80A7A568
/* 012AC 80A7A25C AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
/* 012B0 80A7A260 0C0222CD */  jal     func_80088B34              
/* 012B4 80A7A264 2404003C */  addiu   $a0, $zero, 0x003C         ## $a0 = 0000003C
/* 012B8 80A7A268 10000022 */  beq     $zero, $zero, .L80A7A2F4   
/* 012BC 80A7A26C 8FBF002C */  lw      $ra, 0x002C($sp)           
glabel L80A7A270
/* 012C0 80A7A270 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012C4 80A7A274 0C29E5BB */  jal     func_80A796EC              
/* 012C8 80A7A278 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 012CC 80A7A27C 3C0F80A8 */  lui     $t7, %hi(func_80A7A770)    ## $t7 = 80A80000
/* 012D0 80A7A280 25EFA770 */  addiu   $t7, $t7, %lo(func_80A7A770) ## $t7 = 80A7A770
/* 012D4 80A7A284 1000001A */  beq     $zero, $zero, .L80A7A2F0   
/* 012D8 80A7A288 AE0F0190 */  sw      $t7, 0x0190($s0)           ## 00000190
glabel L80A7A28C
/* 012DC 80A7A28C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012E0 80A7A290 0C29E5BB */  jal     func_80A796EC              
/* 012E4 80A7A294 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 012E8 80A7A298 3C1980A8 */  lui     $t9, %hi(func_80A7A940)    ## $t9 = 80A80000
/* 012EC 80A7A29C 24180008 */  addiu   $t8, $zero, 0x0008         ## $t8 = 00000008
/* 012F0 80A7A2A0 2739A940 */  addiu   $t9, $t9, %lo(func_80A7A940) ## $t9 = 80A7A940
/* 012F4 80A7A2A4 A61801EC */  sh      $t8, 0x01EC($s0)           ## 000001EC
/* 012F8 80A7A2A8 10000011 */  beq     $zero, $zero, .L80A7A2F0   
/* 012FC 80A7A2AC AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
glabel L80A7A2B0
/* 01300 80A7A2B0 A203001F */  sb      $v1, 0x001F($s0)           ## 0000001F
/* 01304 80A7A2B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01308 80A7A2B8 0C29E5BB */  jal     func_80A796EC              
/* 0130C 80A7A2BC 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 01310 80A7A2C0 3C0980A8 */  lui     $t1, %hi(func_80A7AA40)    ## $t1 = 80A80000
/* 01314 80A7A2C4 24080008 */  addiu   $t0, $zero, 0x0008         ## $t0 = 00000008
/* 01318 80A7A2C8 2529AA40 */  addiu   $t1, $t1, %lo(func_80A7AA40) ## $t1 = 80A7AA40
/* 0131C 80A7A2CC A60801EC */  sh      $t0, 0x01EC($s0)           ## 000001EC
/* 01320 80A7A2D0 10000007 */  beq     $zero, $zero, .L80A7A2F0   
/* 01324 80A7A2D4 AE090190 */  sw      $t1, 0x0190($s0)           ## 00000190
glabel L80A7A2D8
/* 01328 80A7A2D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0132C 80A7A2DC 0C29E5BB */  jal     func_80A796EC              
/* 01330 80A7A2E0 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 01334 80A7A2E4 3C0A80A8 */  lui     $t2, %hi(func_80A7A848)    ## $t2 = 80A80000
/* 01338 80A7A2E8 254AA848 */  addiu   $t2, $t2, %lo(func_80A7A848) ## $t2 = 80A7A848
/* 0133C 80A7A2EC AE0A0190 */  sw      $t2, 0x0190($s0)           ## 00000190
.L80A7A2F0:
/* 01340 80A7A2F0 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A7A2F4:
/* 01344 80A7A2F4 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 01348 80A7A2F8 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0134C 80A7A2FC 03E00008 */  jr      $ra                        
/* 01350 80A7A300 00000000 */  nop


