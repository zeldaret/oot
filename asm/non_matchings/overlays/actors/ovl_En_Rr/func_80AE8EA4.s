.rdata
glabel D_80AEA79C
    .asciz "\x1b[32mカキン(%d)！！\x1b[m\n"
    .balign 4

glabel D_80AEA7B4
    .asciz "\x1b[31mいてっ( %d : LIFE %d : DAMAGE %d : %x )！！\x1b[m\n"
    .balign 4

glabel D_80AEA7EC
    .asciz "\x1b[32mキャッチ(%d)！！\x1b[m\n"
    .balign 4

.late_rodata
glabel jtbl_80AEA8B4
.word L80AE9170
.word L80AE9094
.word L80AE90DC
.word L80AE912C
.word L80AE91A8
.word L80AE91A8
.word L80AE91A8
.word L80AE91A8
.word L80AE91A8
.word L80AE91A8
.word L80AE8FD4
.word L80AE8FD8
.word L80AE8FE0
.word L80AE8FE8
.word L80AE8FF0

.text
glabel func_80AE8EA4
/* 00A64 80AE8EA4 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00A68 80AE8EA8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00A6C 80AE8EAC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00A70 80AE8EB0 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00A74 80AE8EB4 908201AD */  lbu     $v0, 0x01AD($a0)           ## 000001AD
/* 00A78 80AE8EB8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A7C 80AE8EBC 8CA71C44 */  lw      $a3, 0x1C44($a1)           ## 00001C44
/* 00A80 80AE8EC0 304F0002 */  andi    $t7, $v0, 0x0002           ## $t7 = 00000000
/* 00A84 80AE8EC4 11E0001A */  beq     $t7, $zero, .L80AE8F30     
/* 00A88 80AE8EC8 3058FFFD */  andi    $t8, $v0, 0xFFFD           ## $t8 = 00000000
/* 00A8C 80AE8ECC A09801AD */  sb      $t8, 0x01AD($a0)           ## 000001AD
/* 00A90 80AE8ED0 3C0480AF */  lui     $a0, %hi(D_80AEA79C)       ## $a0 = 80AF0000
/* 00A94 80AE8ED4 2484A79C */  addiu   $a0, $a0, %lo(D_80AEA79C)  ## $a0 = 80AEA79C
/* 00A98 80AE8ED8 0C00084C */  jal     osSyncPrintf
              
/* 00A9C 80AE8EDC 860501E8 */  lh      $a1, 0x01E8($s0)           ## 000001E8
/* 00AA0 80AE8EE0 861901C2 */  lh      $t9, 0x01C2($s0)           ## 000001C2
/* 00AA4 80AE8EE4 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00AA8 80AE8EE8 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFF4
/* 00AAC 80AE8EEC 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 00AB0 80AE8EF0 00000000 */  nop
/* 00AB4 80AE8EF4 468021A0 */  cvt.s.w $f6, $f4                   
/* 00AB8 80AE8EF8 E7A6003C */  swc1    $f6, 0x003C($sp)           
/* 00ABC 80AE8EFC 860801C4 */  lh      $t0, 0x01C4($s0)           ## 000001C4
/* 00AC0 80AE8F00 44884000 */  mtc1    $t0, $f8                   ## $f8 = 0.00
/* 00AC4 80AE8F04 00000000 */  nop
/* 00AC8 80AE8F08 468042A0 */  cvt.s.w $f10, $f8                  
/* 00ACC 80AE8F0C E7AA0040 */  swc1    $f10, 0x0040($sp)          
/* 00AD0 80AE8F10 860901C6 */  lh      $t1, 0x01C6($s0)           ## 000001C6
/* 00AD4 80AE8F14 44898000 */  mtc1    $t1, $f16                  ## $f16 = 0.00
/* 00AD8 80AE8F18 00000000 */  nop
/* 00ADC 80AE8F1C 468084A0 */  cvt.s.w $f18, $f16                 
/* 00AE0 80AE8F20 0C018B7D */  jal     func_80062DF4              
/* 00AE4 80AE8F24 E7B20044 */  swc1    $f18, 0x0044($sp)          
/* 00AE8 80AE8F28 100000CC */  beq     $zero, $zero, .L80AE925C   
/* 00AEC 80AE8F2C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE8F30:
/* 00AF0 80AE8F30 92040161 */  lbu     $a0, 0x0161($s0)           ## 00000161
/* 00AF4 80AE8F34 308A0002 */  andi    $t2, $a0, 0x0002           ## $t2 = 00000000
/* 00AF8 80AE8F38 5140009C */  beql    $t2, $zero, .L80AE91AC     
/* 00AFC 80AE8F3C 860B01F4 */  lh      $t3, 0x01F4($s0)           ## 000001F4
/* 00B00 80AE8F40 920200B1 */  lbu     $v0, 0x00B1($s0)           ## 000000B1
/* 00B04 80AE8F44 308BFFFD */  andi    $t3, $a0, 0xFFFD           ## $t3 = 00000000
/* 00B08 80AE8F48 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00B0C 80AE8F4C 10400018 */  beq     $v0, $zero, .L80AE8FB0     
/* 00B10 80AE8F50 A20B0161 */  sb      $t3, 0x0161($s0)           ## 00000161
/* 00B14 80AE8F54 860C0176 */  lh      $t4, 0x0176($s0)           ## 00000176
/* 00B18 80AE8F58 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00B1C 80AE8F5C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00B20 80AE8F60 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 00B24 80AE8F64 27A6003C */  addiu   $a2, $sp, 0x003C           ## $a2 = FFFFFFF4
/* 00B28 80AE8F68 468021A0 */  cvt.s.w $f6, $f4                   
/* 00B2C 80AE8F6C E7A6003C */  swc1    $f6, 0x003C($sp)           
/* 00B30 80AE8F70 860D0178 */  lh      $t5, 0x0178($s0)           ## 00000178
/* 00B34 80AE8F74 448D4000 */  mtc1    $t5, $f8                   ## $f8 = 0.00
/* 00B38 80AE8F78 00000000 */  nop
/* 00B3C 80AE8F7C 468042A0 */  cvt.s.w $f10, $f8                  
/* 00B40 80AE8F80 E7AA0040 */  swc1    $f10, 0x0040($sp)          
/* 00B44 80AE8F84 860E017A */  lh      $t6, 0x017A($s0)           ## 0000017A
/* 00B48 80AE8F88 AFA70038 */  sw      $a3, 0x0038($sp)           
/* 00B4C 80AE8F8C A3A00037 */  sb      $zero, 0x0037($sp)         
/* 00B50 80AE8F90 448E8000 */  mtc1    $t6, $f16                  ## $f16 = 0.00
/* 00B54 80AE8F94 00000000 */  nop
/* 00B58 80AE8F98 468084A0 */  cvt.s.w $f18, $f16                 
/* 00B5C 80AE8F9C 0C0177EB */  jal     func_8005DFAC              
/* 00B60 80AE8FA0 E7B20044 */  swc1    $f18, 0x0044($sp)          
/* 00B64 80AE8FA4 93A30037 */  lbu     $v1, 0x0037($sp)           
/* 00B68 80AE8FA8 8FA70038 */  lw      $a3, 0x0038($sp)           
/* 00B6C 80AE8FAC 920200B1 */  lbu     $v0, 0x00B1($s0)           ## 000000B1
.L80AE8FB0:
/* 00B70 80AE8FB0 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 00B74 80AE8FB4 2DE1000F */  sltiu   $at, $t7, 0x000F           
/* 00B78 80AE8FB8 1020007B */  beq     $at, $zero, .L80AE91A8     
/* 00B7C 80AE8FBC 000F7880 */  sll     $t7, $t7,  2               
/* 00B80 80AE8FC0 3C0180AF */  lui     $at, %hi(jtbl_80AEA8B4)       ## $at = 80AF0000
/* 00B84 80AE8FC4 002F0821 */  addu    $at, $at, $t7              
/* 00B88 80AE8FC8 8C2FA8B4 */  lw      $t7, %lo(jtbl_80AEA8B4)($at)  
/* 00B8C 80AE8FCC 01E00008 */  jr      $t7                        
/* 00B90 80AE8FD0 00000000 */  nop
glabel L80AE8FD4
/* 00B94 80AE8FD4 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
glabel L80AE8FD8
/* 00B98 80AE8FD8 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000002
/* 00B9C 80AE8FDC 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 00000002
glabel L80AE8FE0
/* 00BA0 80AE8FE0 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000003
/* 00BA4 80AE8FE4 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 00000003
glabel L80AE8FE8
/* 00BA8 80AE8FE8 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000004
/* 00BAC 80AE8FEC 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 00000004
glabel L80AE8FF0
/* 00BB0 80AE8FF0 3C0480AF */  lui     $a0, %hi(D_80AEA7B4)       ## $a0 = 80AF0000
/* 00BB4 80AE8FF4 860501E8 */  lh      $a1, 0x01E8($s0)           ## 000001E8
/* 00BB8 80AE8FF8 920600AF */  lbu     $a2, 0x00AF($s0)           ## 000000AF
/* 00BBC 80AE8FFC 920700B0 */  lbu     $a3, 0x00B0($s0)           ## 000000B0
/* 00BC0 80AE9000 A3A30037 */  sb      $v1, 0x0037($sp)           
/* 00BC4 80AE9004 AFA20010 */  sw      $v0, 0x0010($sp)           
/* 00BC8 80AE9008 0C00084C */  jal     osSyncPrintf
              
/* 00BCC 80AE900C 2484A7B4 */  addiu   $a0, $a0, %lo(D_80AEA7B4)  ## $a0 = 80AEA7B4
/* 00BD0 80AE9010 A2000376 */  sb      $zero, 0x0376($s0)         ## 00000376
/* 00BD4 80AE9014 0C00D58A */  jal     Actor_ApplyDamage
              
/* 00BD8 80AE9018 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BDC 80AE901C 24180028 */  addiu   $t8, $zero, 0x0028         ## $t8 = 00000028
/* 00BE0 80AE9020 A61801F0 */  sh      $t8, 0x01F0($s0)           ## 000001F0
/* 00BE4 80AE9024 861901F0 */  lh      $t9, 0x01F0($s0)           ## 000001F0
/* 00BE8 80AE9028 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BEC 80AE902C 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00BF0 80AE9030 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00BF4 80AE9034 24072000 */  addiu   $a3, $zero, 0x2000         ## $a3 = 00002000
/* 00BF8 80AE9038 0C00D09B */  jal     func_8003426C              
/* 00BFC 80AE903C AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00C00 80AE9040 86080378 */  lh      $t0, 0x0378($s0)           ## 00000378
/* 00C04 80AE9044 93A30037 */  lbu     $v1, 0x0037($sp)           
/* 00C08 80AE9048 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C0C 80AE904C 51000006 */  beql    $t0, $zero, .L80AE9068     
/* 00C10 80AE9050 920900AF */  lbu     $t1, 0x00AF($s0)           ## 000000AF
/* 00C14 80AE9054 0C2BA25A */  jal     func_80AE8968              
/* 00C18 80AE9058 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 00C1C 80AE905C 1000007F */  beq     $zero, $zero, .L80AE925C   
/* 00C20 80AE9060 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00C24 80AE9064 920900AF */  lbu     $t1, 0x00AF($s0)           ## 000000AF
.L80AE9068:
/* 00C28 80AE9068 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C2C 80AE906C 11200005 */  beq     $t1, $zero, .L80AE9084     
/* 00C30 80AE9070 00000000 */  nop
/* 00C34 80AE9074 0C2BA2DE */  jal     func_80AE8B78              
/* 00C38 80AE9078 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C3C 80AE907C 10000077 */  beq     $zero, $zero, .L80AE925C   
/* 00C40 80AE9080 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE9084:
/* 00C44 80AE9084 0C2BA33E */  jal     func_80AE8CF8              
/* 00C48 80AE9088 A2030374 */  sb      $v1, 0x0374($s0)           ## 00000374
/* 00C4C 80AE908C 10000073 */  beq     $zero, $zero, .L80AE925C   
/* 00C50 80AE9090 8FBF0024 */  lw      $ra, 0x0024($sp)           
glabel L80AE9094
/* 00C54 80AE9094 0C00D58A */  jal     Actor_ApplyDamage
              
/* 00C58 80AE9098 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C5C 80AE909C 920A00AF */  lbu     $t2, 0x00AF($s0)           ## 000000AF
/* 00C60 80AE90A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C64 80AE90A4 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00C68 80AE90A8 15400002 */  bne     $t2, $zero, .L80AE90B4     
/* 00C6C 80AE90AC 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00C70 80AE90B0 A2000374 */  sb      $zero, 0x0374($s0)         ## 00000374
.L80AE90B4:
/* 00C74 80AE90B4 240B0050 */  addiu   $t3, $zero, 0x0050         ## $t3 = 00000050
/* 00C78 80AE90B8 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 00C7C 80AE90BC 0C00D09B */  jal     func_8003426C              
/* 00C80 80AE90C0 24072000 */  addiu   $a3, $zero, 0x2000         ## $a3 = 00002000
/* 00C84 80AE90C4 240C0014 */  addiu   $t4, $zero, 0x0014         ## $t4 = 00000014
/* 00C88 80AE90C8 A60C01F2 */  sh      $t4, 0x01F2($s0)           ## 000001F2
/* 00C8C 80AE90CC 0C2BA367 */  jal     func_80AE8D9C              
/* 00C90 80AE90D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C94 80AE90D4 10000061 */  beq     $zero, $zero, .L80AE925C   
/* 00C98 80AE90D8 8FBF0024 */  lw      $ra, 0x0024($sp)           
glabel L80AE90DC
/* 00C9C 80AE90DC 0C00D58A */  jal     Actor_ApplyDamage
              
/* 00CA0 80AE90E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CA4 80AE90E4 920D00AF */  lbu     $t5, 0x00AF($s0)           ## 000000AF
/* 00CA8 80AE90E8 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 00CAC 80AE90EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CB0 80AE90F0 15A00002 */  bne     $t5, $zero, .L80AE90FC     
/* 00CB4 80AE90F4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00CB8 80AE90F8 A2000374 */  sb      $zero, 0x0374($s0)         ## 00000374
.L80AE90FC:
/* 00CBC 80AE90FC 920E0114 */  lbu     $t6, 0x0114($s0)           ## 00000114
/* 00CC0 80AE9100 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00CC4 80AE9104 24072000 */  addiu   $a3, $zero, 0x2000         ## $a3 = 00002000
/* 00CC8 80AE9108 15C00004 */  bne     $t6, $zero, .L80AE911C     
/* 00CCC 80AE910C 24180050 */  addiu   $t8, $zero, 0x0050         ## $t8 = 00000050
/* 00CD0 80AE9110 A60F01F2 */  sh      $t7, 0x01F2($s0)           ## 000001F2
/* 00CD4 80AE9114 0C00D09B */  jal     func_8003426C              
/* 00CD8 80AE9118 AFB80010 */  sw      $t8, 0x0010($sp)           
.L80AE911C:
/* 00CDC 80AE911C 0C2BA367 */  jal     func_80AE8D9C              
/* 00CE0 80AE9120 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CE4 80AE9124 1000004D */  beq     $zero, $zero, .L80AE925C   
/* 00CE8 80AE9128 8FBF0024 */  lw      $ra, 0x0024($sp)           
glabel L80AE912C
/* 00CEC 80AE912C 0C00D58A */  jal     Actor_ApplyDamage
              
/* 00CF0 80AE9130 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CF4 80AE9134 921900AF */  lbu     $t9, 0x00AF($s0)           ## 000000AF
/* 00CF8 80AE9138 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CFC 80AE913C 24058000 */  addiu   $a1, $zero, 0x8000         ## $a1 = FFFF8000
/* 00D00 80AE9140 17200003 */  bne     $t9, $zero, .L80AE9150     
/* 00D04 80AE9144 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00D08 80AE9148 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 00D0C 80AE914C A2080374 */  sb      $t0, 0x0374($s0)           ## 00000374
.L80AE9150:
/* 00D10 80AE9150 24090050 */  addiu   $t1, $zero, 0x0050         ## $t1 = 00000050
/* 00D14 80AE9154 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 00D18 80AE9158 0C00D09B */  jal     func_8003426C              
/* 00D1C 80AE915C 24072000 */  addiu   $a3, $zero, 0x2000         ## $a3 = 00002000
/* 00D20 80AE9160 0C2BA367 */  jal     func_80AE8D9C              
/* 00D24 80AE9164 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D28 80AE9168 1000003C */  beq     $zero, $zero, .L80AE925C   
/* 00D2C 80AE916C 8FBF0024 */  lw      $ra, 0x0024($sp)           
glabel L80AE9170
/* 00D30 80AE9170 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D34 80AE9174 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00D38 80AE9178 2405389E */  addiu   $a1, $zero, 0x389E         ## $a1 = 0000389E
/* 00D3C 80AE917C 240A0050 */  addiu   $t2, $zero, 0x0050         ## $t2 = 00000050
/* 00D40 80AE9180 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00D44 80AE9184 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D48 80AE9188 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00D4C 80AE918C 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00D50 80AE9190 0C00D09B */  jal     func_8003426C              
/* 00D54 80AE9194 24072000 */  addiu   $a3, $zero, 0x2000         ## $a3 = 00002000
/* 00D58 80AE9198 0C2BA367 */  jal     func_80AE8D9C              
/* 00D5C 80AE919C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D60 80AE91A0 1000002E */  beq     $zero, $zero, .L80AE925C   
/* 00D64 80AE91A4 8FBF0024 */  lw      $ra, 0x0024($sp)           
glabel L80AE91A8
.L80AE91A8:
/* 00D68 80AE91A8 860B01F4 */  lh      $t3, 0x01F4($s0)           ## 000001F4
.L80AE91AC:
/* 00D6C 80AE91AC 5560002B */  bnel    $t3, $zero, .L80AE925C     
/* 00D70 80AE91B0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00D74 80AE91B4 920C0114 */  lbu     $t4, 0x0114($s0)           ## 00000114
/* 00D78 80AE91B8 55800028 */  bnel    $t4, $zero, .L80AE925C     
/* 00D7C 80AE91BC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00D80 80AE91C0 80ED0A78 */  lb      $t5, 0x0A78($a3)           ## 00000A78
/* 00D84 80AE91C4 55A00025 */  bnel    $t5, $zero, .L80AE925C     
/* 00D88 80AE91C8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00D8C 80AE91CC 8CEE0680 */  lw      $t6, 0x0680($a3)           ## 00000680
/* 00D90 80AE91D0 31CF0080 */  andi    $t7, $t6, 0x0080           ## $t7 = 00000000
/* 00D94 80AE91D4 55E00021 */  bnel    $t7, $zero, .L80AE925C     
/* 00D98 80AE91D8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00D9C 80AE91DC 92020162 */  lbu     $v0, 0x0162($s0)           ## 00000162
/* 00DA0 80AE91E0 3C0480AF */  lui     $a0, %hi(D_80AEA7EC)       ## $a0 = 80AF0000
/* 00DA4 80AE91E4 2484A7EC */  addiu   $a0, $a0, %lo(D_80AEA7EC)  ## $a0 = 80AEA7EC
/* 00DA8 80AE91E8 30580002 */  andi    $t8, $v0, 0x0002           ## $t8 = 00000000
/* 00DAC 80AE91EC 17000005 */  bne     $t8, $zero, .L80AE9204     
/* 00DB0 80AE91F0 3049FFFD */  andi    $t1, $v0, 0xFFFD           ## $t1 = 00000000
/* 00DB4 80AE91F4 921901AE */  lbu     $t9, 0x01AE($s0)           ## 000001AE
/* 00DB8 80AE91F8 33280002 */  andi    $t0, $t9, 0x0002           ## $t0 = 00000000
/* 00DBC 80AE91FC 51000017 */  beql    $t0, $zero, .L80AE925C     
/* 00DC0 80AE9200 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE9204:
/* 00DC4 80AE9204 920A01AE */  lbu     $t2, 0x01AE($s0)           ## 000001AE
/* 00DC8 80AE9208 A2090162 */  sb      $t1, 0x0162($s0)           ## 00000162
/* 00DCC 80AE920C 860501E8 */  lh      $a1, 0x01E8($s0)           ## 000001E8
/* 00DD0 80AE9210 314BFFFD */  andi    $t3, $t2, 0xFFFD           ## $t3 = 00000000
/* 00DD4 80AE9214 A20B01AE */  sb      $t3, 0x01AE($s0)           ## 000001AE
/* 00DD8 80AE9218 0C00084C */  jal     osSyncPrintf
              
/* 00DDC 80AE921C AFA70038 */  sw      $a3, 0x0038($sp)           
/* 00DE0 80AE9220 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00DE4 80AE9224 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 00DE8 80AE9228 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 00DEC 80AE922C 0324C821 */  addu    $t9, $t9, $a0              
/* 00DF0 80AE9230 8F391D4C */  lw      $t9, 0x1D4C($t9)           ## 00011D4C
/* 00DF4 80AE9234 0320F809 */  jalr    $ra, $t9                   
/* 00DF8 80AE9238 00000000 */  nop
/* 00DFC 80AE923C 10400006 */  beq     $v0, $zero, .L80AE9258     
/* 00E00 80AE9240 8FA70038 */  lw      $a3, 0x0038($sp)           
/* 00E04 80AE9244 ACF00118 */  sw      $s0, 0x0118($a3)           ## 00000118
/* 00E08 80AE9248 A2000376 */  sb      $zero, 0x0376($s0)         ## 00000376
/* 00E0C 80AE924C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E10 80AE9250 0C2BA204 */  jal     func_80AE8810              
/* 00E14 80AE9254 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
.L80AE9258:
/* 00E18 80AE9258 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE925C:
/* 00E1C 80AE925C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00E20 80AE9260 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00E24 80AE9264 03E00008 */  jr      $ra                        
/* 00E28 80AE9268 00000000 */  nop
