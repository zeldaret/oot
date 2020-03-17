glabel func_80A7C058
/* 00238 80A7C058 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0023C 80A7C05C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00240 80A7C060 8482031E */  lh      $v0, 0x031E($a0)           ## 0000031E
/* 00244 80A7C064 240539F0 */  addiu   $a1, $zero, 0x39F0         ## $a1 = 000039F0
/* 00248 80A7C068 18400003 */  blez    $v0, .L80A7C078            
/* 0024C 80A7C06C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00250 80A7C070 1000001A */  beq     $zero, $zero, .L80A7C0DC   
/* 00254 80A7C074 A48E031E */  sh      $t6, 0x031E($a0)           ## 0000031E
.L80A7C078:
/* 00258 80A7C078 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0025C 80A7C07C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00260 80A7C080 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00264 80A7C084 3C0180A8 */  lui     $at, %hi(D_80A7DFCC)       ## $at = 80A80000
/* 00268 80A7C088 C42CDFCC */  lwc1    $f12, %lo(D_80A7DFCC)($at) 
/* 0026C 80A7C08C C48001C8 */  lwc1    $f0, 0x01C8($a0)           ## 000001C8
/* 00270 80A7C090 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00274 80A7C094 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 00278 80A7C098 460C003C */  c.lt.s  $f0, $f12                  
/* 0027C 80A7C09C 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 00280 80A7C0A0 45020004 */  bc1fl   .L80A7C0B4                 
/* 00284 80A7C0A4 46000086 */  mov.s   $f2, $f0                   
/* 00288 80A7C0A8 10000002 */  beq     $zero, $zero, .L80A7C0B4   
/* 0028C 80A7C0AC 46006086 */  mov.s   $f2, $f12                  
/* 00290 80A7C0B0 46000086 */  mov.s   $f2, $f0                   
.L80A7C0B4:
/* 00294 80A7C0B4 46022183 */  div.s   $f6, $f4, $f2              
/* 00298 80A7C0B8 4600320D */  trunc.w.s $f8, $f6                   
/* 0029C 80A7C0BC 44184000 */  mfc1    $t8, $f8                   
/* 002A0 80A7C0C0 00000000 */  nop
/* 002A4 80A7C0C4 A498031E */  sh      $t8, 0x031E($a0)           ## 0000031E
/* 002A8 80A7C0C8 8499031E */  lh      $t9, 0x031E($a0)           ## 0000031E
/* 002AC 80A7C0CC 2B210002 */  slti    $at, $t9, 0x0002           
/* 002B0 80A7C0D0 50200003 */  beql    $at, $zero, .L80A7C0E0     
/* 002B4 80A7C0D4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002B8 80A7C0D8 A488031E */  sh      $t0, 0x031E($a0)           ## 0000031E
.L80A7C0DC:
/* 002BC 80A7C0DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A7C0E0:
/* 002C0 80A7C0E0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002C4 80A7C0E4 03E00008 */  jr      $ra                        
/* 002C8 80A7C0E8 00000000 */  nop


