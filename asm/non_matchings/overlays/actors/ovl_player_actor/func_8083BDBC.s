glabel func_8083BDBC
/* 09BAC 8083BDBC 3C0E8086 */  lui     $t6, %hi(D_80858AB4)       ## $t6 = 80860000
/* 09BB0 8083BDC0 8DCE8AB4 */  lw      $t6, %lo(D_80858AB4)($t6)  
/* 09BB4 8083BDC4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 09BB8 8083BDC8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 09BBC 8083BDCC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 09BC0 8083BDD0 95CF000C */  lhu     $t7, 0x000C($t6)           ## 8086000C
/* 09BC4 8083BDD4 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 09BC8 8083BDD8 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 09BCC 8083BDDC 01E1C027 */  nor     $t8, $t7, $at              
/* 09BD0 8083BDE0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 09BD4 8083BDE4 17000054 */  bne     $t8, $zero, .L8083BF38     
/* 09BD8 8083BDE8 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 09BDC 8083BDEC 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 09BE0 8083BDF0 0325C821 */  addu    $t9, $t9, $a1              
/* 09BE4 8083BDF4 93391CBF */  lbu     $t9, 0x1CBF($t9)           ## 00011CBF
/* 09BE8 8083BDF8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 09BEC 8083BDFC 3C088085 */  lui     $t0, %hi(D_808535E4)       ## $t0 = 80850000
/* 09BF0 8083BE00 5321004E */  beql    $t9, $at, .L8083BF3C       
/* 09BF4 8083BE04 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 09BF8 8083BE08 8D0835E4 */  lw      $t0, %lo(D_808535E4)($t0)  
/* 09BFC 8083BE0C 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 09C00 8083BE10 24A407C0 */  addiu   $a0, $a1, 0x07C0           ## $a0 = 000007C0
/* 09C04 8083BE14 51010049 */  beql    $t0, $at, .L8083BF3C       
/* 09C08 8083BE18 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 09C0C 8083BE1C 8E050078 */  lw      $a1, 0x0078($s0)           ## 00000078
/* 09C10 8083BE20 9206007D */  lbu     $a2, 0x007D($s0)           ## 0000007D
/* 09C14 8083BE24 0C0107DF */  jal     func_80041F7C              
/* 09C18 8083BE28 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 09C1C 8083BE2C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 09C20 8083BE30 50410042 */  beql    $v0, $at, .L8083BF3C       
/* 09C24 8083BE34 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 09C28 8083BE38 92090846 */  lbu     $t1, 0x0846($s0)           ## 00000846
/* 09C2C 8083BE3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 09C30 8083BE40 02095021 */  addu    $t2, $s0, $t1              
/* 09C34 8083BE44 8146084B */  lb      $a2, 0x084B($t2)           ## 0000084B
/* 09C38 8083BE48 1CC00037 */  bgtz    $a2, .L8083BF28            
/* 09C3C 8083BE4C 00000000 */  nop
/* 09C40 8083BE50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 09C44 8083BE54 0C20CEF3 */  jal     func_80833BCC              
/* 09C48 8083BE58 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 09C4C 8083BE5C 10400036 */  beq     $v0, $zero, .L8083BF38     
/* 09C50 8083BE60 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 09C54 8083BE64 920B0002 */  lbu     $t3, 0x0002($s0)           ## 00000002
/* 09C58 8083BE68 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 09C5C 8083BE6C 11610018 */  beq     $t3, $at, .L8083BED0       
/* 09C60 8083BE70 00000000 */  nop
/* 09C64 8083BE74 04C10012 */  bgez    $a2, .L8083BEC0            
/* 09C68 8083BE78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 09C6C 8083BE7C 3C0C8016 */  lui     $t4, 0x8016                ## $t4 = 80160000
/* 09C70 8083BE80 8D8CFA90 */  lw      $t4, -0x0570($t4)          ## 8015FA90
/* 09C74 8083BE84 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 09C78 8083BE88 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 09C7C 8083BE8C 858D009E */  lh      $t5, 0x009E($t4)           ## 8016009E
/* 09C80 8083BE90 3C050400 */  lui     $a1, 0x0400                ## $a1 = 04000000
/* 09C84 8083BE94 24A52FE0 */  addiu   $a1, $a1, 0x2FE0           ## $a1 = 04002FE0
/* 09C88 8083BE98 448D2000 */  mtc1    $t5, $f4                   ## $f4 = 0.00
/* 09C8C 8083BE9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 09C90 8083BEA0 8FA70034 */  lw      $a3, 0x0034($sp)           
/* 09C94 8083BEA4 468021A0 */  cvt.s.w $f6, $f4                   
/* 09C98 8083BEA8 46083283 */  div.s   $f10, $f6, $f8             
/* 09C9C 8083BEAC 44065000 */  mfc1    $a2, $f10                  
/* 09CA0 8083BEB0 0C20E27A */  jal     func_808389E8              
/* 09CA4 8083BEB4 00000000 */  nop
/* 09CA8 8083BEB8 10000020 */  beq     $zero, $zero, .L8083BF3C   
/* 09CAC 8083BEBC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083BEC0:
/* 09CB0 8083BEC0 0C20EF01 */  jal     func_8083BC04              
/* 09CB4 8083BEC4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 09CB8 8083BEC8 1000001C */  beq     $zero, $zero, .L8083BF3C   
/* 09CBC 8083BECC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083BED0:
/* 09CC0 8083BED0 0C023C60 */  jal     func_8008F180              
/* 09CC4 8083BED4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 09CC8 8083BED8 5040000F */  beql    $v0, $zero, .L8083BF18     
/* 09CCC 8083BEDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 09CD0 8083BEE0 0C20D972 */  jal     func_808365C8              
/* 09CD4 8083BEE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 09CD8 8083BEE8 1040000A */  beq     $v0, $zero, .L8083BF14     
/* 09CDC 8083BEEC 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 09CE0 8083BEF0 44810000 */  mtc1    $at, $f0                   ## $f0 = 5.00
/* 09CE4 8083BEF4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 09CE8 8083BEF8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 09CEC 8083BEFC 44070000 */  mfc1    $a3, $f0                   
/* 09CF0 8083BF00 24060011 */  addiu   $a2, $zero, 0x0011         ## $a2 = 00000011
/* 09CF4 8083BF04 0C20EEA4 */  jal     func_8083BA90              
/* 09CF8 8083BF08 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 09CFC 8083BF0C 1000000B */  beq     $zero, $zero, .L8083BF3C   
/* 09D00 8083BF10 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083BF14:
/* 09D04 8083BF14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8083BF18:
/* 09D08 8083BF18 0C20EF01 */  jal     func_8083BC04              
/* 09D0C 8083BF1C 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 09D10 8083BF20 10000006 */  beq     $zero, $zero, .L8083BF3C   
/* 09D14 8083BF24 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083BF28:
/* 09D18 8083BF28 0C20EF34 */  jal     func_8083BCD0              
/* 09D1C 8083BF2C 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 09D20 8083BF30 10000002 */  beq     $zero, $zero, .L8083BF3C   
/* 09D24 8083BF34 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083BF38:
/* 09D28 8083BF38 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8083BF3C:
/* 09D2C 8083BF3C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 09D30 8083BF40 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 09D34 8083BF44 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 09D38 8083BF48 03E00008 */  jr      $ra                        
/* 09D3C 8083BF4C 00000000 */  nop


