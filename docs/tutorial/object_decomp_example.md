# Object Decompilation Example

A fairly typical example of an NPC's object is `object_bg`. It is used by one actor: `ovl_En_Bom_Bowl_Man`.

## First pass: getting it to compile

Running `tools/xmlcreate.py` gives

```xml
$ python3 tools/xmlcreate.py src/overlays/actors/ovl_En_Bom_Bowl_Man/z_en_bom_bowl_man.c chuGirl
Unknown type at offset 004110
Unknown type at offset 004910
Unknown type at offset 005110
<Root>
    <File Name="object_bg" Segment="6">
        <Skeleton Name="gchuGirlSkel_006EB0" Type="Flex" LimbType="Standard" Offset="0x6EB0"/>
        <Animation Name="gchuGirlAnim_000710" Offset="0x710"/>
        <Animation Name="gchuGirlAnim_000080" Offset="0x80"/>
        <Animation Name="gchuGirlAnim_0072AC" Offset="0x72AC"/>
        <!-- <UNK_PTR Name="gchuGirlUnknown_004110" Offset="0x4110"/> -->
        <!-- <UNK_PTR Name="gchuGirlUnknown_004910" Offset="0x4910"/> -->
        <!-- <UNK_PTR Name="gchuGirlUnknown_005110" Offset="0x5110"/> -->
    </File>
</Root>
```

We have two issues here that need to be resolved: naming the animations and sorting out the unknown things.

### Animations

You have three choices to work out what the animations are:

- Read the code and look at them in the game.
- Hylian Toolbox
- The latest versions of Z64Utils

The first of these is probably simplest if you know the game and the actor well. In this case, we know that she is dozing when you first enter, wakes up when you talk to her, then leans on the counter with both hands. We can thus name them accordingly.

Hylian Toolbox is terrible, but good for quick-and-dirty things like finding out what a particular animation does without booting up the game.

Z64Utils is way better than Hylian Toolbox, but still in development.

### Unknowns

Looking in the actor, the unknowns are assigned to segment 8 using `SEGMENTED_TO_VIRTUAL`. This indicates textures. To find out what type they are, we can find the displaylist that uses them, and look at it in Z64Utils: if we look at the object in the object analyser, then find the right displaylist, it will not display correctly in the DList viewer, asking for a texture to put on 08000000. Giving it one of the textures, we discover that it is the head displaylist and the textures are eye textures. Hence we can name them `gChuGirlEyeOpen/Half/ClosedTex` (we equivocate on half-open/half-closed since many actors use the half texture for both opening and closing). From the code in the displaylist that loads it, we can also extract the texture's format, namely

```c
06002FD8: gsDPLoadTextureBlock(D_08000000, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 5, 5, 0, 0),
```

So all three are `Format="rgba16" Width="32" Height="32"`.

```xml
<Root>
    <File Name="object_bg" Segment="6">

        <!-- Bombchu Bowling Girl skeleton -->
        <Skeleton Name="gChuGirlSkel" Type="Flex" LimbType="Standard" Offset="0x6EB0"/>

        <!-- Bombchu Bowling Girl animations -->
        <Animation Name="gChuGirlWakeUpAnim" Offset="0x80"/>
        <Animation Name="gChuGirlNoddingOffAnim" Offset="0x710"/>
        <Animation Name="gChuGirlLeanOverCounterAnim" Offset="0x72AC"/>

        <!-- Bombchu Bowling Girl eye textures -->
        <Texture Name="gChuGirlEyeOpenTex" OutName="chu_girl_eye_open" Format="rgba16" Width="32" Height="32" Offset="0x4110"/>
        <Texture Name="gChuGirlEyeHalfTex" OutName="chu_girl_eye_half" Format="rgba16" Width="32" Height="32" Offset="0x4910"/>
        <Texture Name="gChuGirlEyeClosedTex" OutName="chu_girl_eye_closed" Format="rgba16" Width="32" Height="32"  Offset="0x5110"/>

    </File>
</Root>
```

Having got this far, we can now run

```bash
./extract_assets.py -s objects/object_bg
```

to extract the contents of the object into the new folder, change the spec to use our newly extracted assets:

```txt
beginseg
    name "object_bg"
    romalign 0x1000
    include "build/baserom/object_bg.o"
endseg
```

to

```txt
beginseg
    name "object_bg"
    romalign 0x1000
    include "build/assets/objects/object_bg/object_bg.o"
    number 6
endseg
```

and wipe the `z_en_bom_bowl_man` section from `undefined_syms.txt`:

```txt
// z_en_bom_bowl_man
D_06006EB0 = 0x06006EB0;
D_06000710 = 0x06000710;
D_06000080 = 0x06000080;
D_060072AC = 0x060072AC;
```

Now `make` should give OK.

## The displaylists

For this step, we use Hylian Toolbox; if you have more than one skeleton in your actor, Hylian Toolbox will only show the first one. The others can be examined in the latest version of Z64Utils. Z64Utils can also give you a list of every displaylist in an object, be it just for cross-checking or to find extras.

Opening the rom in Hylian Toolbox and looking at object_bg, we can note down the displaylist associated to each limb.
In this case naming is easy: we just have to note down the limb each is attached to. We only need a name and offset, and we end up with:

```xml
<Root>
    <File Name="object_bg" Segment="6">

        <!-- Bombchu Bowling Girl skeleton -->
        <Skeleton Name="gChuGirlSkel" Type="Flex" LimbType="Standard" Offset="0x6EB0"/>

        <!-- Bombchu Bowling Girl animations -->
        <Animation Name="gChuGirlWakeUpAnim" Offset="0x80"/>
        <Animation Name="gChuGirlNoddingOffAnim" Offset="0x710"/>
        <Animation Name="gChuGirlLeanOverCounterAnim" Offset="0x72AC"/>

        <!-- Bombchu Bowling Girl limb displaylists -->
        <DList Name="gChuGirlWaistDL" Offset="0x4038"/>
        <DList Name="gChuGirlTorsoDL" Offset="0x3DB0"/>
        <DList Name="gChuGirlNeckDL" Offset="0x33C8"/>
        <DList Name="gChuGirlHeadDL" Offset="0x2EE0"/>
        <DList Name="gChuGirlLeftUpperArmDL" Offset="0x3780"/>
        <DList Name="gChuGirlLeftForearmDL" Offset="0x3670"/>
        <DList Name="gChuGirlLeftHandDL" Offset="0x3520"/>
        <DList Name="gChuGirlRightUpperArmDL" Offset="0x3BC8"/>
        <DList Name="gChuGirlRightForearmDL" Offset="0x3AB8"/>
        <DList Name="gChuGirlRightHandDL" Offset="0x3968"/>

        <!-- Bombchu Bowling Girl eye textures -->
        <Texture Name="gChuGirlEyeOpenTex" OutName="chu_girl_eye_open" Format="rgba16" Width="32" Height="32" Offset="0x4110"/>
        <Texture Name="gChuGirlEyeHalfTex" OutName="chu_girl_eye_half" Format="rgba16" Width="32" Height="32" Offset="0x4910"/>
        <Texture Name="gChuGirlEyeClosedTex" OutName="chu_girl_eye_closed" Format="rgba16" Width="32" Height="32"  Offset="0x5110"/>


    </File>
</Root>
```

Checking the C file, these are all of the displaylists in the actor, so we can move on.

## The rest of the textures

This is the difficult bit: we have to work out what each texture in the extracted pile is actually used for. A lot of this can be done in Z64Utils, but sometimes it is necessary to check in-game, especially for the weirder-looking ones. You can edit a texture file and compile the rom (which shouldn't match any more if you did it successfully) to make it easier to find.

```xml
<Root>
    <File Name="object_bg" Segment="6">

        <!-- Bombchu Bowling Girl skeleton -->
        <Skeleton Name="gChuGirlSkel" Type="Flex" LimbType="Standard" Offset="0x6EB0"/>

        <!-- Bombchu Bowling Girl animations -->
        <Animation Name="gChuGirlWakeUpAnim" Offset="0x80"/>
        <Animation Name="gChuGirlNoddingOffAnim" Offset="0x710"/>
        <Animation Name="gChuGirlLeanOverCounterAnim" Offset="0x72AC"/>

        <!-- Bombchu Bowling Girl limb displaylists -->
        <DList Name="gChuGirlWaistDL" Offset="0x4038"/>
        <DList Name="gChuGirlTorsoDL" Offset="0x3DB0"/>
        <DList Name="gChuGirlNeckDL" Offset="0x33C8"/>
        <DList Name="gChuGirlHeadDL" Offset="0x2EE0"/>
        <DList Name="gChuGirlLeftUpperArmDL" Offset="0x3780"/>
        <DList Name="gChuGirlLeftForearmDL" Offset="0x3670"/>
        <DList Name="gChuGirlLeftHandDL" Offset="0x3520"/>
        <DList Name="gChuGirlRightUpperArmDL" Offset="0x3BC8"/>
        <DList Name="gChuGirlRightForearmDL" Offset="0x3AB8"/>
        <DList Name="gChuGirlRightHandDL" Offset="0x3968"/>

        <!-- Bombchu Bowling Girl limb textures -->
        <Texture Name="gChuGirlMouthTex" OutName="chu_girl_mouth" Format="rgba16" Width="32" Height="32" Offset="0x5910"/>
        <Texture Name="gChuGirlSkinGradientTex" OutName="chu_girl_skin_gradient" Format="rgba16" Width="16" Height="16" Offset="0x6110"/>
        <Texture Name="gChuGirlSweaterTex" OutName="chu_girl_sweater" Format="rgba16" Width="32" Height="32" Offset="0x6510"/>
        <Texture Name="gChuGirlUmbEarLicusTex" OutName="chu_girl_umb_ear_licus" Format="rgba16" Width="16" Height="16" Offset="0x6310"/>
        <Texture Name="gChuGirlHairTex" OutName="chu_girl_hair" Format="rgba16" Width="8" Height="16" Offset="0x6D10"/>

        <!-- Bombchu Bowling Girl eye textures -->
        <Texture Name="gChuGirlEyeOpenTex" OutName="chu_girl_eye_open" Format="rgba16" Width="32" Height="32" Offset="0x4110"/>
        <Texture Name="gChuGirlEyeHalfTex" OutName="chu_girl_eye_half" Format="rgba16" Width="32" Height="32" Offset="0x4910"/>
        <Texture Name="gChuGirlEyeClosedTex" OutName="chu_girl_eye_closed" Format="rgba16" Width="32" Height="32"  Offset="0x5110"/>


    </File>
</Root>
```


## Final pass

Therefore, we end up with the following:
```xml
<Root>
    <File Name="object_bg" Segment="6">

        <!-- Bombchu Bowling Girl skeleton -->
        <Skeleton Name="gChuGirlSkel" Type="Flex" LimbType="Standard" Offset="0x6EB0"/>

        <!-- Bombchu Bowling Girl animations -->
        <Animation Name="gChuGirlWakeUpAnim" Offset="0x80"/>
        <Animation Name="gChuGirlNoddingOffAnim" Offset="0x710"/>
        <Animation Name="gChuGirlLeanOverCounterAnim" Offset="0x72AC"/>

        <!-- Bombchu Bowling Girl limb displaylists -->
        <DList Name="gChuGirlWaistDL" Offset="0x4038"/>
        <DList Name="gChuGirlTorsoDL" Offset="0x3DB0"/>
        <DList Name="gChuGirlNeckDL" Offset="0x33C8"/>
        <DList Name="gChuGirlHeadDL" Offset="0x2EE0"/>
        <DList Name="gChuGirlLeftUpperArmDL" Offset="0x3780"/>
        <DList Name="gChuGirlLeftForearmDL" Offset="0x3670"/>
        <DList Name="gChuGirlLeftHandDL" Offset="0x3520"/>
        <DList Name="gChuGirlRightUpperArmDL" Offset="0x3BC8"/>
        <DList Name="gChuGirlRightForearmDL" Offset="0x3AB8"/>
        <DList Name="gChuGirlRightHandDL" Offset="0x3968"/>

        <!-- Bombchu Bowling Girl limbs -->
        <Limb Name="gChuGirlWaistLimb" LimbType="Standard" Offset="0x6E10"/>
        <Limb Name="gChuGirlTorsoLimb" LimbType="Standard" Offset="0x6E1C"/>
        <Limb Name="gChuGirlNeckLimb" LimbType="Standard" Offset="0x6E28"/>
        <Limb Name="gChuGirlHeadLimb" LimbType="Standard" Offset="0x6E34"/>
        <Limb Name="gChuGirlLeftUpperArmLimb" LimbType="Standard" Offset="0x6E40"/>
        <Limb Name="gChuGirlLeftForearmLimb" LimbType="Standard" Offset="0x6E4C"/>
        <Limb Name="gChuGirlLeftHandLimb" LimbType="Standard" Offset="0x6E58"/>
        <Limb Name="gChuGirlRightUpperArmLimb" LimbType="Standard" Offset="0x6E64"/>
        <Limb Name="gChuGirlRightForearmLimb" LimbType="Standard" Offset="0x6E70"/>
        <Limb Name="gChuGirlRightHandLimb" LimbType="Standard" Offset="0x6E7C"/>

        <!-- Bombchu Bowling Girl limb textures -->
        <Texture Name="gChuGirlMouthTex" OutName="chu_girl_mouth" Format="rgba16" Width="32" Height="32" Offset="0x5910"/>
        <Texture Name="gChuGirlSkinGradientTex" OutName="chu_girl_skin_gradient" Format="rgba16" Width="16" Height="16" Offset="0x6110"/>
        <Texture Name="gChuGirlSweaterTex" OutName="chu_girl_sweater" Format="rgba16" Width="32" Height="32" Offset="0x6510"/>
        <Texture Name="gChuGirlUmbEarLicusTex" OutName="chu_girl_umb_ear_licus" Format="rgba16" Width="16" Height="16" Offset="0x6310"/>
        <Texture Name="gChuGirlHairTex" OutName="chu_girl_hair" Format="rgba16" Width="8" Height="16" Offset="0x6D10"/>

        <!-- Bombchu Bowling Girl eye textures -->
        <Texture Name="gChuGirlEyeOpenTex" OutName="chu_girl_eye_open" Format="rgba16" Width="32" Height="32" Offset="0x4110"/>
        <Texture Name="gChuGirlEyeHalfTex" OutName="chu_girl_eye_half" Format="rgba16" Width="32" Height="32" Offset="0x4910"/>
        <Texture Name="gChuGirlEyeClosedTex" OutName="chu_girl_eye_closed" Format="rgba16" Width="32" Height="32"  Offset="0x5110"/>


    </File>
</Root>
```

This was an easier object to do, both because it's a fairly simple collection of stuff associated to a single actor, and because a lot of the typing was already known.
