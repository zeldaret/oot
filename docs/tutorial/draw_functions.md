# Draw functions

Up: [Contents](contents.md)
Previous: [The rest of the functions in the actor](other_functions.md)

Draw functions behave completely differently from the other functions in an actor. They often use a lot of macros.

For this tutorial we will first look at the `EnJj` draw function, `EnJj_Draw`, then some more complicated examples.

## A first example

Unless it is completely invisible, an actor usually has a draw function as one of the main four actor functions. Hence its prototype looks like

```C
EnJj_Draw(Actor* thisx, PlayState* play);
```

As in Init, Destroy and Update, it is much more convenient to feed mips2c the fake prototype

```C
EnJj_Draw(EnJj* this, PlayState* play);
```

so that it fills out the struct fields from the actuar actor; we then put a

```C
EnJj* this = THIS;
```

in the declarations as before. From now on, the process is rather different from the decompilation process used for the other functions. Here is the output of mips2c after sorting out the actor struct from Init, and with the arguments set back to `Actor* thisx`:
```C
void EnJj_Draw(Actor *thisx, PlayState *play) {
    EnJj* this = THIS;

    GraphicsContext *sp4C;
    Gfx *sp3C;
    EnJj *sp18;
    Gfx *temp_v1;
    GraphicsContext *temp_a1;
    s32 temp_a0;

    temp_a1 = play->state.gfxCtx;
    sp4C = temp_a1;
    Graph_OpenDisps(&sp3C, temp_a1, (const char *) "../z_en_jj.c", 0x36F);
    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    Matrix_Translate(0.0f, (cosf(this->skelAnime.curFrame * 0.076624215f) * 10.0f) - 10.0f, 0.0f, (u8)1U);
    Matrix_Scale(10.0f, 10.0f, 10.0f, (u8)1U);
    temp_v1 = temp_a1->polyOpa.p;
    temp_a1->polyOpa.p = temp_v1 + 8;
    temp_v1->words.w0 = 0xDB060020;
    temp_a0 = *(&D_80A88CFC + (this->unk_30E * 4));
    temp_v1->words.w1 = (temp_a0 & 0xFFFFFF) + gSegments[(u32) (temp_a0 * 0x10) >> 0x1C] + 0x80000000;
    sp18 = this;
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, (s32) this->skelAnime.dListCount, 0, 0);
    Graph_CloseDisps(&sp3C, play->state.gfxCtx, (const char *) "../z_en_jj.c", 0x382);
}
```

Notable features are the Open and Close Disps functions, and blocks of the form

```C
temp_v1 = temp_a1->polyOpa.p;
temp_a1->polyOpa.p = temp_v1 + 8;
temp_v1->words.w0 = 0xDB060020;
temp_a0 = *(&D_80A88CFC + (this->unk_30E * 4));
temp_v1->words.w1 = (temp_a0 & 0xFFFFFF) + gSegments[(u32) (temp_a0 * 0x10) >> 0x1C] + 0x80000000;
```

(This is a particularly simple example, since there's only one of these blocks. We will give a more involved example later.)

Each of these blocks converts into a graphics macro. They are usually (but not always) straightforward, but manually converting them is a pain, and there are sometimes special cases. To deal with them easily, we will use a tool from glank's N64 tools. To install these, follow the instructions [here](https://practicerom.com/public/packages/debian/howto.txt).

For our purposes, we only need one of the programs this provides: `gfxdis.f3dex2`.


Graphics are actually 64-bit on the Nintendo 64. This code block is a result of instructions telling the processor what to do with the graphics pointer. There are two types of graphics pointer,
- polyOpa for solid textures
- polyXlu for translucent textures

Our example is polyOpa, not surprisingly since Jabu is solid.

`words.w0` and `words.w1` contain the actual graphics instruction, in hex format. Usually, `w0` is constant and `w1` contains the arguments. To find out what sort of macro we are dealing with, we use `gfxdis.f3dex2`. `w1` is variable, but we need to give the program a constant placeholder. A common word to use is 12345678, so in this case we run
```
gfxdis.f3dex2 -x -g "POLY_OPA_DISP++" -d DB06002012345678
```

- `-x` uses hex instead of the default qu macros (never mind what those are, OoT doesn't have them)
- `-g` is used to specify which graphics pointer macro to use
- `-d` is for the graphics dword

Our standard now is to use decimal colors. If you have a constant second argument rather than a variable one, you can also use `-dc` to get decimal colors instead of the default hex.

The output looks like
```
gSPSegment(POLY_OPA_DISP++, 0x08, 0x12345678);
```

We can now replace the `0x12345678` by the actual second word. Or we could, if we had worked out what it was.

Firstly, `*(&D_80A88CFC + (this->unk_30E * 4))` is referring to a piece of data we haven't externed yet. It looks like
```
glabel D_80A88CFC
.word 0x06007698, 0x06007A98, 0x06007E98, 0x00000000, 0x00000000
```

The first three words look like pointers to assets in the actor segment, which would make sense if we're looking for textures to draw. The last two words are 0, which is strange. A check in the rest of the actor file shows that `unk_30E` only takes the values `0,1,2`. We conclude that the last two words are just padding, and can be removed. Because this data is used in a graphics macro, it will be either a displaylist or a texture. We therefore set it up to be an array of unknown pointers for now:
```C
extern UNK_PTR D_80A88CFC[];
// static Gfx* D_80A88CFC[] = { 0x06007698, 0x06007A98, 0x06007E98, }
```

It goes through further processing before it is used in the macro: `(temp_a0 & 0xFFFFFF) + gSegments[(u32) (temp_a0 * 0x10) >> 0x1C] + 0x80000000` is a conversion of a segmented address into a VRAM address. We have a macro for this too: `SEGMENTED_TO_VIRTUAL`. So after all this, the second word is
```C
SEGMENTED_TO_VIRTUAL(D_80A88CFC[this->unk_30E]);
```
and the whole macro is
```C
gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80A88CFC[this->unk_30E]));
```
The contents of a desegmentation macro used like this are almost always textures in this context, so we can replace `UNK_PTR` by `u64*`, the type for textures.

You repeat this for every block in the function.

We also have macros for Graph_OpenDisps and Graph_CloseDisps: you can replace
```C
Graph_OpenDisps(&sp3C, temp_a1, (const char *) "../z_en_jj.c", 0x36F);
```
by
```C
OPEN_DISPS(temp_a1, "../z_en_jj.c", 879);
```
(the last argument is a line number, so should be in decimal).

The function may or may not use a temp for `play->state.gfxCtx`: you have to work it out using the diff.

Once you've replaced all the blocks and the open and close with macros, you proceed with the function as usual.

Two last things: the last argument of the matrix functions tells the compiler whether to use the previously stored matrix or not, so we have the enums `MTXMODE_NEW` and `MTXMODE_APPLY` for these. And the rather weird-looking float `0.076624215f` is, of all things, `(M_PI/41.0f)` (try Wolfram Alpha for these things, and if that doesn't produce anything sensible, ask in Discord).

(The actual reason is probably that the animation is 41 frames long, but you won't necessarily spot this sort of thing for most floats)

After all that, it turns out that
```C
void EnJj_Draw(Actor *thisx, PlayState *play) {
    EnJj *this = THIS;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_jj.c", 879);
    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    Matrix_Translate(0.0f, (cosf(this->skelAnime.curFrame * (M_PI/41.0f)) * 10.0f) - 10.0f, 0.0f, 1);
    Matrix_Scale(10.0f, 10.0f, 10.0f, 1);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80A88CFC[this->unk_30E]));
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable,
     this->skelAnime.dListCount, 0, 0, this);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_jj.c", 898);
}
```

matches apart from a couple of stack differences. This can be resolved by giving it `PlayState* play = play2;` at the top of the function and changing the second argument to `play2` as usual.

We have enums for the last argument of the matrix functions: `0` is `MTXMODE_NEW`, `1` is `MTXMODE_APPLY`.

Lastly, the penultimate and antepenultimate arguments of `SkelAnime_DrawFlexOpa` are actually pointers to functions, so they should be `NULL` instead of `0`.


## More examples: OverrideLimbDraw and PostLimbDraw

For more examples of graphics macros and the structure of Draw functions, we look at a function from `EnDntNormal`, which is some Deku Scrubs used in the minigame stuff in Lost Woods. This has a good selection of macros, and two functions that are commonly combined with Draw, namely OverrideLimbDraw and PostLimbDraw.

The mips2c output for

```C
void func_809F5A6C(Actor *thisx, PlayState *play) {
    ? sp60;
    Gfx *sp48;
    Gfx *sp38;
    Actor *sp14;
    Gfx *temp_v0;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    GraphicsContext *temp_a1;
    GraphicsContext *temp_s0;
    s32 temp_a0;
    void *temp_v1;

    sp60.unk0 = (s32) D_809F5E94.unk0;
    sp60.unk4 = (s32) D_809F5E94.unk4;
    sp60.unk8 = (s32) D_809F5E94.unk8;
    temp_a1 = play->state.gfxCtx;
    temp_s0 = temp_a1;
    Graph_OpenDisps(&sp48, temp_a1, (const char *) "../z_en_dnt_nomal.c", 0x6FE);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    temp_v0 = temp_s0->polyOpa.p;
    temp_s0->polyOpa.p = temp_v0 + 8;
    temp_v0->words.w0 = 0xDB060020;
    temp_a0 = *(&D_809F5EA0 + (thisx->unk268 * 4));
    temp_v0->words.w1 = (temp_a0 & 0xFFFFFF) + gSegments[(u32) (temp_a0 * 0x10) >> 0x1C] + 0x80000000;
    sp14 = thisx;
    SkelAnime_DrawOpa(play, thisx->unk150, thisx->unk16C, &func_809F58E4, &func_809F59E4);
    Matrix_Translate(thisx->unk21C, thisx->unk220, (bitwise f32) thisx->unk224, (u8)0U);
    Matrix_Scale(0.01f, 0.01f, 0.01f, (u8)1U);
    temp_v0_2 = temp_s0->polyOpa.p;
    temp_s0->polyOpa.p = temp_v0_2 + 8;
    temp_v0_2->words.w0 = 0xE7000000;
    temp_v0_2->words.w1 = 0;
    temp_v0_3 = temp_s0->polyOpa.p;
    temp_s0->polyOpa.p = temp_v0_3 + 8;
    temp_v0_3->words.w0 = 0xFB000000;
    temp_v1 = (thisx->unk26A * 4) + &D_809F5E4C;
    temp_v0_3->words.w1 = (temp_v1->unk-2 << 8) | (temp_v1->unk-4 << 0x18) | (temp_v1->unk-3 << 0x10) | 0xFF;
    temp_v0_4 = temp_s0->polyOpa.p;
    temp_s0->polyOpa.p = temp_v0_4 + 8;
    temp_v0_4->words.w0 = 0xDA380003;
    sp38 = temp_v0_4;
    sp38->words.w1 = Matrix_NewMtx(play->state.gfxCtx, (char *) "../z_en_dnt_nomal.c", 0x716);
    temp_v0_5 = temp_s0->polyOpa.p;
    temp_s0->polyOpa.p = temp_v0_5 + 8;
    temp_v0_5->words.w1 = (u32) &D_06001B00;
    temp_v0_5->words.w0 = 0xDE000000;
    Graph_CloseDisps(&sp48, play->state.gfxCtx, (const char *) "../z_en_dnt_nomal.c", 0x719);
    if (&func_809F49A4 == thisx->unk214) {
        func_80033C30((Vec3f *) &thisx->world, (Vec3f *) &sp60, (u8)0xFFU, play);
    }
}
```

### Graphics macros

There are 5 graphics macro blocks here:
```C
temp_v0 = temp_s0->polyOpa.p;
temp_s0->polyOpa.p = temp_v0 + 8;
temp_v0->words.w0 = 0xDB060020;
temp_a0 = *(&D_809F5EA0 + (thisx->unk268 * 4));
temp_v0->words.w1 = (temp_a0 & 0xFFFFFF) + gSegments[(u32) (temp_a0 * 0x10) >> 0x1C] + 0x80000000;
```

We've seen one of these before: gfxdis gives
```C
$ gfxdis.f3dex2 -g "POLY_OPA_DISP++" -d DB06002012345678
gSPSegment(POLY_OPA_DISP++, 0x08, 0x12345678);
```
and looking at the data shows
```
glabel D_809F5EA0
 .word 0x060027D0, 0x060025D0, 0x06002750, 0x00000000
```
which is an array of pointers to something again. It is used inside a `SEGMENTED_TO_VIRTUAL`, so they are most likely textures, and this block becomes
```C
gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_809F5EA0[this->unk_268]));
```

Next,
```C
temp_v0_2 = temp_s0->polyOpa.p;
temp_s0->polyOpa.p = temp_v0_2 + 8;
temp_v0_2->words.w0 = 0xE7000000;
temp_v0_2->words.w1 = 0;
```
which we can find immediately using
```
$ gfxdis.f3dex2 -g "POLY_OPA_DISP++" -d E700000000000000
gDPPipeSync(POLY_OPA_DISP++);
```

Third,
```C
temp_v0_3 = temp_s0->polyOpa.p;
temp_s0->polyOpa.p = temp_v0_3 + 8;
temp_v0_3->words.w0 = 0xFB000000;
temp_v1 = (thisx->unk26A * 4) + &D_809F5E4C;
temp_v0_3->words.w1 = (temp_v1->unk-2 << 8) | (temp_v1->unk-4 << 0x18) | (temp_v1->unk-3 << 0x10) | 0xFF;
```
this looks more troublesome. We find
```
$ gfxdis.f3dex2 -g "POLY_OPA_DISP++" -d FB00000012345678
gDPSetEnvColor(POLY_OPA_DISP++, 0x12, 0x34, 0x56, 0x78);
```

Now we need to work out what the last four arguments are. Two things are going on here: `D_809F5E4C` is an array of something:
```
glabel D_809F5E4C
 .word 0xFFFFFFFF, 0xFFC3AFFF, 0xD2FF00FF, 0xFFFFFFFF, 0xD2FF00FF, 0xFFC3AFFF, 0xFFFFFFFF, 0xFFC3AFFF, 0xD2FF00FF
```
Worse, this is being accessed with pointer subtraction in the second word. `temp_v1 = (thisx->unk26A * 4) + &D_809F5E4C;` tells us that the array has elements of size 4 bytes, and the graphics macro implies the elements are colors. Colors of size 4 bytes are `Color_RGBA8`. Usually, we write colors in decimal, so `D_809F5E4C` becomes
```C
static Color_RGBA8 D_809F5E4C[] = {
    { 255, 255, 255, 255 }, { 255, 195, 175, 255 }, { 210, 255, 0, 255 },
    { 255, 255, 255, 255 }, { 210, 255, 0, 255 },   { 255, 195, 175, 255 },
    { 255, 255, 255, 255 }, { 255, 195, 175, 255 }, { 210, 255, 0, 255 },
};
```

Now, we have two things to worry about: how to implement the negative pointer access, and how the second word is built. Negative accesses can be done by just subtracting 1, so that
```C
temp_v1 = D_809F5E4C[this->unk_26A - 1];
```
and then
```C
temp_v0_3->words.w1 = (temp_v1->unk2 << 8) | (temp_v1->unk0 << 0x18) | (temp_v1->unk3 << 0x10) | 0xFF;
```
or rather, since it is a `Color_RGB8`,
```C
temp_v0_3->words.w1 = (temp_v1.b << 8) | (temp_v1.r << 0x18) | (temp_v1.g << 0x10) | 0xFF;
```

The last thing to worry about is how to put this word into the macro. Let's think about what the word actually is in a concrete case; it is easiest to see what is going on in hex, so suppose we are in the case
```C
temp_v1 = { 0xFF, 0xC3, 0xAF, 0xFF };
```

Then the calculation is
```
(0xAF << 8) | (0xFF << 0x18) | (0xC3 << 0x10) | 0xFF = 0xAF00 | 0xC30000 | 0xFF0000000 | 0xFF = 0xFFC3AFFF
```
and so all this calculation is doing is turning `temp_v1` back into a word, with the last byte replaced by `0xFF` (that all the elements of `D_809F5E4C` have `0xFF` as their last element anyway is irrelevant here). Looking back at the output of gfxdis, we see that this actually means that the r,g,b just slot into the penultimate three arguments, the last being `0xFF`, leaving
```C
temp_v1 = D_809F5E4C[this->unk_26A - 1];
gDPSetEnvColor(POLY_OPA_DISP++, temp_v1.r, temp_v1.g, temp_v1.b, 0xFF);
```
as the residue of this block; it may turn out later that we can eliminate the temp.


The last two are much easier:
```C
temp_v0_4 = temp_s0->polyOpa.p;
temp_s0->polyOpa.p = temp_v0_4 + 8;
temp_v0_4->words.w0 = 0xDA380003;
sp38 = temp_v0_4;
sp38->words.w1 = Matrix_NewMtx(play->state.gfxCtx, (char *) "../z_en_dnt_nomal.c", 0x716);
```
The macro is
```
$ gfxdis.f3dex2 -g "POLY_OPA_DISP++" -d DA38000312345678
gSPMatrix(POLY_OPA_DISP++, 0x12345678, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
```
and the second argument is filled by the `Matrix_NewMtx` function:
```C
gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_en_dnt_nomal.c", 1814), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
```

Lastly,
```C
temp_v0_5 = temp_s0->polyOpa.p;
temp_s0->polyOpa.p = temp_v0_5 + 8;
temp_v0_5->words.w1 = (u32) &D_06001B00;
temp_v0_5->words.w0 = 0xDE000000;
```
The macro is
```
$ gfxdis.f3dex2 -g "POLY_OPA_DISP++" -d DE00000012345678
gSPDisplayList(POLY_OPA_DISP++, 0x12345678);
```
and so `D_06001B00` is a displaylist, so the type in the externed data at the top of the file can be changed to `Gfx D_06001B00[]`. Arrays act like pointers, so we don't need the `&` in the macro:
```C
gSPDisplayList(POLY_OPA_DISP++, D_06001B00);
```

Putting this all together
```C
void func_809F5A6C(Actor *thisx, PlayState *play) {
    EnDntNormal *this = THIS;
    ? sp60;
    Actor *sp14;
    Color_RGBA8 temp_v1;

    sp60.unk0 = (s32) D_809F5E94.unk0;
    sp60.unk4 = (s32) D_809F5E94.unk4;
    sp60.unk8 = (s32) D_809F5E94.unk8;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_dnt_nomal.c", 1790);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_809F5EA0[this->unk_268]));

    sp14 = this;
    SkelAnime_DrawOpa(play, thisx->unk150, thisx->unk16C, &func_809F58E4, &func_809F59E4);
    Matrix_Translate(thisx->unk21C, thisx->unk220, (bitwise f32) thisx->unk224, (u8)0U);
    Matrix_Scale(0.01f, 0.01f, 0.01f, (u8)1U);

    gDPPipeSync(POLY_OPA_DISP++);
    temp_v1 = D_809F5E4C[this->unk_26A - 1];
    gDPSetEnvColor(POLY_OPA_DISP++, temp_v1.r, temp_v1.g, temp_v1.r, 0xFF);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_en_dnt_nomal.c", 1814), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_06001B00);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_dnt_nomal.c", 1817);

    if (&func_809F49A4 == this->unk214) {
        func_80033C30((Vec3f *) &this.actor->world, (Vec3f *) &sp60, (u8)0xFFU, play);
    }
}
```

### SkelAnime_Draw and the LimbDraws

Some more general tidying up can be done here (`sp60` and so `D_809F5E94` are `Vec3f`, for example, and under normal circumstances we'd know that ), but the big remaining issue is
```C
sp14 = this;
SkelAnime_DrawOpa(play, thisx->unk150, thisx->unk16C, func_809F58E4, func_809F59E4);
```
If we look at the definition of `SkelAnime_DrawOpa`, we find that it's missing the last argument. This is mips2c not noticing why `this` has been put on the stack: this code should actually be
```C
SkelAnime_DrawOpa(play, thisx->unk150, thisx->unk16C, func_809F58E4, func_809F59E4, this);
```
mips2c doing this is not especially unusual, so bear it in mind.

The other thing this tells us is that `func_809F58E4` is of type `OverrideLimbDraw`, and `func_809F59E4` of type `PostLimbDraw`. Their names are fairly self-explanatory. Filling in the prototypes as
```C
s32 func_809F58E4(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);
void func_809F59E4(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx);
```
and running mips2c gives

```C
s32 func_809F58E4(PlayState *play, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, void *thisx) {
    GraphicsContext *sp38;
    Gfx *sp28;
    Gfx *temp_v1;
    Gfx *temp_v1_2;
    GraphicsContext *temp_a1;
    void *temp_v0;

    if ((limbIndex == 1) || (limbIndex == 3) || (limbIndex == 4) || (limbIndex == 5) || (limbIndex == 6)) {
        temp_a1 = play->state.gfxCtx;
        sp38 = temp_a1;
        Graph_OpenDisps(&sp28, temp_a1, (const char *) "../z_en_dnt_nomal.c", 0x6C5);
        temp_v1 = sp38->polyOpa.p;
        sp38->polyOpa.p = temp_v1 + 8;
        temp_v1->words.w1 = 0;
        temp_v1->words.w0 = 0xE7000000;
        temp_v1_2 = sp38->polyOpa.p;
        sp38->polyOpa.p = temp_v1_2 + 8;
        temp_v1_2->words.w0 = 0xFB000000;
        temp_v0 = (thisx->unk26A * 4) + &D_809F5E4C;
        temp_v1_2->words.w1 = (temp_v0->unk-2 << 8) | (temp_v0->unk-4 << 0x18) | (temp_v0->unk-3 << 0x10) | 0xFF;
        Graph_CloseDisps(&sp28, play->state.gfxCtx, (const char *) "../z_en_dnt_nomal.c", 0x6CF);
    }
    return 0;
}

void func_809F59E4(PlayState *play, s32 limbIndex, Gfx **dList, Vec3s *rot, void *thisx) {
    ? sp18;

    sp18.unk0 = (s32) D_809F5E88.unk0;
    sp18.unk4 = (s32) D_809F5E88.unk4;
    sp18.unk8 = (s32) D_809F5E88.unk8;
    if (thisx->unk26A == 0) {
        if (limbIndex == 5) {
            Matrix_MultVec3f((Vec3f *) &sp18, thisx + 0x27C);
            return;
        }
    } else if (limbIndex == 7) {
        Matrix_MultVec3f((Vec3f *) &sp18, thisx + 0x27C);
    }
}
```

This structure is pretty typical: both edit what certain limbs do. Both also usually need a `ActorName *this = THIS;` at the top. We have seen both of the macros in the former before: applying the usual procedure, we find that it becomes
```C
s32 func_809F58E4(PlayState *play, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, void *thisx) {
    EnDntNormal *this = THIS;

    if ((limbIndex == 1) || (limbIndex == 3) || (limbIndex == 4) || (limbIndex == 5) || (limbIndex == 6)) {
        OPEN_DISPS(play->state.gfxCtx, "../z_en_dnt_nomal.c", 1733);
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetEnvColor(POLY_OPA_DISP++, D_809F5E4C[this->type - 1].r, D_809F5E4C[this->type - 1].g, D_809F5E4C[this->type - 1].b, 255);
        CLOSE_DISPS(play->state.gfxCtx, "../z_en_dnt_nomal.c", 1743);
    }
    return 0;
}
```
Notice that this function returns `0`. OverrideLimbDraw almost always returns `0`.

The latter function is easier, and it is probably unnecessary to explain to the reader what it is necessary to do to it to clean it up.
