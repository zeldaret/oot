# Introduction to decomp

In this project, we are decompiling The Legend of Zelda: Ocarina of Time. This means that we take the assembly language that is on the cartridge,

```
glabel func_80A13098
/* 00028 80A13098 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 0002C 80A1309C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00030 80A130A0 14410003 */  bne     $v0, $at, .L80A130B0
/* 00034 80A130A4 244EFFFE */  addiu   $t6, $v0, 0xFFFE           ## $t6 = FFFFFFFE
/* 00038 80A130A8 10000002 */  beq     $zero, $zero, .L80A130B4
/* 0003C 80A130AC A480001C */  sh      $zero, 0x001C($a0)         ## 0000001C
.L80A130B0:
/* 00040 80A130B0 A48E001C */  sh      $t6, 0x001C($a0)           ## 0000001C
.L80A130B4:
/* 00044 80A130B4 8C8F0330 */  lw      $t7, 0x0330($a0)           ## 00000330
/* 00048 80A130B8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 0004C 80A130BC 24180011 */  addiu   $t8, $zero, 0x0011         ## $t8 = 00000011
/* 00050 80A130C0 A1E20004 */  sb      $v0, 0x0004($t7)           ## 00000004
/* 00054 80A130C4 A08201B8 */  sb      $v0, 0x01B8($a0)           ## 000001B8
/* 00058 80A130C8 A08201B9 */  sb      $v0, 0x01B9($a0)           ## 000001B9
/* 0005C 80A130CC 03E00008 */  jr      $ra
/* 00060 80A130D0 A0980117 */  sb      $t8, 0x0117($a0)           ## 00000117
```

(the commented numbers on the left are the original machine code, the middle the translation into MIPS assembly, the right useful information about the numbers in the code)
and turn it into compilable C code:

```C
void func_80A13098(EnFirefly* this) {
    if (this->actor.params == 4) {
        this->actor.params = 0;
    } else {
        this->actor.params -= 2;
    }
    this->collider.list->body.toucher.effect = 1;
    this->auraType = 1;
    this->onFire = 1;
    this->actor.naviEnemyId = 0x11;
}
```

which is intended to be as close to the original code as possible. We are doing *matching* decomp: in the right context, and with the right compiler settings, the above C compiles into *precisely* the assembly code above, not just equivalent code.

N.B. We are using only publicly available code. In particular, we are not looking at any of the recent Nintendo source code leaks. (These apparently contain very little Ocarina of Time material anyway.)

Progress of the project can be found at [https://zelda64.dev]. The long-term goal of this project is to obtain a complete compilable version of the code for every publicly released version of Ocarina of Time (there are also sister projects for Majora's Mask and other Zelda games). *We are not working on a PC Port, and this project will not be making one*, although the resulting code will be very useful if someone does intend to make such a port.

Most of the discussion on the project takes place on the Zelda Decompilation Discord (linked in the README.md). We are very welcoming to newcomers and are happy to help you with any problems you might have with the decompilation process.

## What do I need to know to take part?

Basic knowledge of C, particularly arrays and pointers, is extremely useful. Knowledge of MIPS is not required initially, but if you are serious about decompilation you will soon pick up a lot of it.

Knowledge of the fundamentals of git and GitHub is required. There are a number of tutorials available online, and a later document in this tutorial describes how you contribute to this project outside the actual decompilation process.

The most useful knowledge to have is a general understanding of how the game works. An afternoon of constructive mucking about in the [Practice Rom](http://practicerom.com) (aka GZ) will be very beneficial if you have not looked at the game's subsurface workings before.

## Structure of the code

A lot of work has already been done on the code to bring it into a format that is easy to decompile. I will discuss actors, since this is where the majority of new people should begin.

An *actor* is any thing in the game that moves or performs actions or interactions: Link is an actor, enemies are actors, NPCs are actors, props like grass are actors (Fishing is also an actor, the largest one, but you don't need to know about it). The vast majority of actors are *overlays*, which means they are loaded only when the game needs them.

In the code, each actor is associated to several files: there is
- the main .c file, e.g. `src/overlays/actors/ovl_En_Firefly/z_en_firefly.c`
- the actor's Header file, e.g. `src/overlays/actors/ovl_En_Firefly/z_en_firefly.h`
- various .o files that tell the `make` script how to incorporate it into building the ROM,

and then for undecompiled actors, various assembly (.s) files, generally including:
- one for the actor's *data* (this usually includes things like its collision information about how to draw it, and various other stuff that is used in it), e.g. `data/overlays/actors/z_en_firefly.data.s`
- one for each function in the actor, e.g. `asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13098.s`

The basic process of decomp is to take one of the .s files, run it through a decompilation program (mips_to_c) that reads the ASM very literally, and then, through humen ingenuity, reshape it into code that not only compiles in the first place, but completely matches the original code (well-written or otherwise).
