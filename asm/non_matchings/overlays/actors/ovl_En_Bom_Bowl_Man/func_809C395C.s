glabel func_809C395C
/* 0032C 809C395C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00330 809C3960 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00334 809C3964 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00338 809C3968 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0033C 809C396C 0C02927F */  jal     Animation_Update
              
/* 00340 809C3970 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00344 809C3974 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00348 809C3978 0C042F6F */  jal     func_8010BDBC              
/* 0034C 809C397C 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 00350 809C3980 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00354 809C3984 85CF022E */  lh      $t7, 0x022E($t6)           ## 0000022E
/* 00358 809C3988 55E2000E */  bnel    $t7, $v0, .L809C39C4       
/* 0035C 809C398C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00360 809C3990 0C041AF2 */  jal     func_80106BC8              
/* 00364 809C3994 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00368 809C3998 10400009 */  beq     $v0, $zero, .L809C39C0     
/* 0036C 809C399C 8FB9001C */  lw      $t9, 0x001C($sp)           
/* 00370 809C39A0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00374 809C39A4 00390821 */  addu    $at, $at, $t9              
/* 00378 809C39A8 24180037 */  addiu   $t8, $zero, 0x0037         ## $t8 = 00000037
/* 0037C 809C39AC A03803DC */  sb      $t8, 0x03DC($at)           ## 000103DC
/* 00380 809C39B0 8FA90018 */  lw      $t1, 0x0018($sp)           
/* 00384 809C39B4 3C08809C */  lui     $t0, %hi(func_809C39D0)    ## $t0 = 809C0000
/* 00388 809C39B8 250839D0 */  addiu   $t0, $t0, %lo(func_809C39D0) ## $t0 = 809C39D0
/* 0038C 809C39BC AD280214 */  sw      $t0, 0x0214($t1)           ## 00000214
.L809C39C0:
/* 00390 809C39C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809C39C4:
/* 00394 809C39C4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00398 809C39C8 03E00008 */  jr      $ra                        
/* 0039C 809C39CC 00000000 */  nop
