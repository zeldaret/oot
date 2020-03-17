glabel func_80845C68
/* 13A58 80845C68 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 13A5C 80845C6C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 13A60 80845C70 14A00006 */  bne     $a1, $zero, .L80845C8C     
/* 13A64 80845C74 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 13A68 80845C78 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 13A6C 80845C7C 24060DFF */  addiu   $a2, $zero, 0x0DFF         ## $a2 = 00000DFF
/* 13A70 80845C80 0C0302BD */  jal     func_800C0AF4              
/* 13A74 80845C84 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 13A78 80845C88 8FA7001C */  lw      $a3, 0x001C($sp)           
.L80845C8C:
/* 13A7C 80845C8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 13A80 80845C90 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 13A84 80845C94 A020F9DB */  sb      $zero, -0x0625($at)        ## 8015F9DB
/* 13A88 80845C98 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 13A8C 80845C9C 03E00008 */  jr      $ra                        
/* 13A90 80845CA0 00E01025 */  or      $v0, $a3, $zero            ## $v0 = 00000000


