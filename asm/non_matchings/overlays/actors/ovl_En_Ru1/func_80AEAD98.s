glabel func_80AEAD98
/* 00188 80AEAD98 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0018C 80AEAD9C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00190 80AEADA0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00194 80AEADA4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00198 80AEADA8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0019C 80AEADAC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001A0 80AEADB0 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 001A4 80AEADB4 24A502B4 */  addiu   $a1, $a1, 0x02B4           ## $a1 = 000002B4
/* 001A8 80AEADB8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 001AC 80AEADBC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 001B0 80AEADC0 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 001B4 80AEADC4 24A50300 */  addiu   $a1, $a1, 0x0300           ## $a1 = 00000300
/* 001B8 80AEADC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001BC 80AEADCC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001C0 80AEADD0 03E00008 */  jr      $ra                        
/* 001C4 80AEADD4 00000000 */  nop
