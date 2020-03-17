glabel func_80ABAC84
/* 01044 80ABAC84 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01048 80ABAC88 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0104C 80ABAC8C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01050 80ABAC90 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01054 80ABAC94 0C042F6F */  jal     func_8010BDBC              
/* 01058 80ABAC98 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 0105C 80ABAC9C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 01060 80ABACA0 54410022 */  bnel    $v0, $at, .L80ABAD2C       
/* 01064 80ABACA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01068 80ABACA8 0C041AF2 */  jal     func_80106BC8              
/* 0106C 80ABACAC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01070 80ABACB0 1040001D */  beq     $v0, $zero, .L80ABAD28     
/* 01074 80ABACB4 3C0480AC */  lui     $a0, %hi(D_80ABB6B8)       ## $a0 = 80AC0000
/* 01078 80ABACB8 0C00084C */  jal     osSyncPrintf
              
/* 0107C 80ABACBC 2484B6B8 */  addiu   $a0, $a0, %lo(D_80ABB6B8)  ## $a0 = 80ABB6B8
/* 01080 80ABACC0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 01084 80ABACC4 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 01088 80ABACC8 8C4E0004 */  lw      $t6, 0x0004($v0)           ## 8015E664
/* 0108C 80ABACCC 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 01090 80ABACD0 3C0880AC */  lui     $t0, %hi(func_80ABA778)    ## $t0 = 80AC0000
/* 01094 80ABACD4 15C0000D */  bne     $t6, $zero, .L80ABAD0C     
/* 01098 80ABACD8 240C0006 */  addiu   $t4, $zero, 0x0006         ## $t4 = 00000006
/* 0109C 80ABACDC 94430EF4 */  lhu     $v1, 0x0EF4($v0)           ## 8015F554
/* 010A0 80ABACE0 306F1000 */  andi    $t7, $v1, 0x1000           ## $t7 = 00000000
/* 010A4 80ABACE4 15E00004 */  bne     $t7, $zero, .L80ABACF8     
/* 010A8 80ABACE8 34794000 */  ori     $t9, $v1, 0x4000           ## $t9 = 00004000
/* 010AC 80ABACEC 34781000 */  ori     $t8, $v1, 0x1000           ## $t8 = 00001000
/* 010B0 80ABACF0 10000002 */  beq     $zero, $zero, .L80ABACFC   
/* 010B4 80ABACF4 A4580EF4 */  sh      $t8, 0x0EF4($v0)           ## 8015F554
.L80ABACF8:
/* 010B8 80ABACF8 A4590EF4 */  sh      $t9, 0x0EF4($v0)           ## 8015F554
.L80ABACFC:
/* 010BC 80ABACFC 8FA90018 */  lw      $t1, 0x0018($sp)           
/* 010C0 80ABAD00 2508A778 */  addiu   $t0, $t0, %lo(func_80ABA778) ## $t0 = 80ABA778
/* 010C4 80ABAD04 10000008 */  beq     $zero, $zero, .L80ABAD28   
/* 010C8 80ABAD08 AD280250 */  sw      $t0, 0x0250($t1)           ## 00000250
.L80ABAD0C:
/* 010CC 80ABAD0C 944A0EF0 */  lhu     $t2, 0x0EF0($v0)           ## 8015F550
/* 010D0 80ABAD10 3C0D80AC */  lui     $t5, %hi(func_80ABA244)    ## $t5 = 80AC0000
/* 010D4 80ABAD14 25ADA244 */  addiu   $t5, $t5, %lo(func_80ABA244) ## $t5 = 80ABA244
/* 010D8 80ABAD18 354B1000 */  ori     $t3, $t2, 0x1000           ## $t3 = 00001000
/* 010DC 80ABAD1C A44B0EF0 */  sh      $t3, 0x0EF0($v0)           ## 8015F550
/* 010E0 80ABAD20 A46C0262 */  sh      $t4, 0x0262($v1)           ## 00000262
/* 010E4 80ABAD24 AC6D0250 */  sw      $t5, 0x0250($v1)           ## 00000250
.L80ABAD28:
/* 010E8 80ABAD28 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ABAD2C:
/* 010EC 80ABAD2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 010F0 80ABAD30 03E00008 */  jr      $ra                        
/* 010F4 80ABAD34 00000000 */  nop


