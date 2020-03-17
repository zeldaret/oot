glabel func_80A53C0C
/* 00D6C 80A53C0C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D70 80A53C10 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D74 80A53C14 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00D78 80A53C18 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00D7C 80A53C1C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00D80 80A53C20 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00D84 80A53C24 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00D88 80A53C28 0C042F6F */  jal     func_8010BDBC              
/* 00D8C 80A53C2C 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 00D90 80A53C30 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00D94 80A53C34 85CF0300 */  lh      $t7, 0x0300($t6)           ## 00000300
/* 00D98 80A53C38 55E20012 */  bnel    $t7, $v0, .L80A53C84       
/* 00D9C 80A53C3C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DA0 80A53C40 0C041AF2 */  jal     func_80106BC8              
/* 00DA4 80A53C44 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00DA8 80A53C48 1040000D */  beq     $v0, $zero, .L80A53C80     
/* 00DAC 80A53C4C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00DB0 80A53C50 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00DB4 80A53C54 0C00B7D5 */  jal     func_8002DF54              
/* 00DB8 80A53C58 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 00DBC 80A53C5C 8FB9001C */  lw      $t9, 0x001C($sp)           
/* 00DC0 80A53C60 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00DC4 80A53C64 24180037 */  addiu   $t8, $zero, 0x0037         ## $t8 = 00000037
/* 00DC8 80A53C68 00390821 */  addu    $at, $at, $t9              
/* 00DCC 80A53C6C A03803DC */  sb      $t8, 0x03DC($at)           ## 000103DC
/* 00DD0 80A53C70 8FA90018 */  lw      $t1, 0x0018($sp)           
/* 00DD4 80A53C74 3C0880A5 */  lui     $t0, %hi(func_80A53C90)    ## $t0 = 80A50000
/* 00DD8 80A53C78 25083C90 */  addiu   $t0, $t0, %lo(func_80A53C90) ## $t0 = 80A53C90
/* 00DDC 80A53C7C AD28025C */  sw      $t0, 0x025C($t1)           ## 0000025C
.L80A53C80:
/* 00DE0 80A53C80 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A53C84:
/* 00DE4 80A53C84 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00DE8 80A53C88 03E00008 */  jr      $ra                        
/* 00DEC 80A53C8C 00000000 */  nop


