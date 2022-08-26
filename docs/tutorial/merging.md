# The merging process

## Optional: Documentation

It is helpful to document the functions and variables in the actor before you Pull Request it. The aim is to provide code that is sufficiently clear to be self-documenting, but it is worth leaving a comment on anything you find obscure or confusing. (Pull Request reviews will let you know if you are leaving too many comments.) Useful things to do documentation-wise:

- Name all (or most) of the functions.
- Name all the variables in the actor struct.
- Create enums for params, and any other numbers that would benefit from that sort of clarity.

You can test things using the practice rom for a retail version (watches and memory view is especially helpful), as well as the generated rom with Project 64 and something like Spectrum. The most important things to know if using a retail version to test are:

- all the addresses will be different
- actor structs in debug have 10 bytes of padding at the end, so subtract `0x10` from any subsequent offsets.

If you want to use `diff` after renaming anything, particularly functions, remember to copy the `build/` folder into `expected/` so use the correct symbols. *Make sure that `make` gives `OK` before doing this, or you're going to get very confused.*

Finally, *if you are not sure what something does, either ask or leave it unnamed: it will be less confusing later if things are unnamed than if they are wrongly named*

## Preparing to PR

### Change the `spec`

Specifically, to use the automatically generated reloc, rather than the original. In the case of an entirely matched actor, you find the section relating to the actor that you edited before:

```
beginseg
    name "ovl_En_Jj"
    include "build/src/overlays/actors/ovl_En_Jj/z_en_jj.o"
    //include "build/data/overlays/actors/z_en_jj.data.o"
    include "build/data/overlays/actors/z_en_jj.reloc.o"
endseg
```

and change to use our reloc:

```
beginseg
    name "ovl_En_Jj"
    include "build/src/overlays/actors/ovl_En_Jj/z_en_jj.o"
    include "build/src/overlays/actors/ovl_En_Jj/ovl_En_Jj_reloc.o"
endseg
```

(copy the path, then copy the directory name and put `_reloc.o` after it).

### Delete the asm files.

We have a script that will detect and delete unused asm files, `find_unused_asm.py`. Running it bare will output a list of all the unused files, while passing `-d` will delete them.

This does not distinguish comments, so remove all commented references to the files themselves first. If you have left the `#pragma` lines in but commented out, the following regular expression will find them:
```
\n//.*#pragma .*?\)
```

### Non-matchings

If you can't match a function even with everyone's, don't worry overlong about it. Hopefully you can get it to do the same thing as the original (non-matching), and then you set it up to use the original asm for the matching build, and your code for the non-matching. You can look at the other partially-matched actors to see how to set this up with `#ifdef`s.

### Format

Run the formatting script `format.py`, to format the C files in the standard way we use.

### Merge master

To make sure the PR builds correctly with the current master, you need to merge `upstream/master` before you make the PR. This tends to break things, that you have to fix to get it to compile correctly again.

## Pull Requests

Push commits to your fork of the repository on GitHub, and then open a pull request. Name the PR something sensible, like

- `EnJj OK and documented` (if all the functions match and your documentation is fairly complete)
- `EnJj OK` (if all the functions match)
- `EnJj (n nonmatching)` (if you couldn't get one or more functions to work, but to the best of your knowledge they are equivalent code)
- `EnJj (1 nonequivalent)` (if you couldn't get one or more functions to work, and do not believe the code has the same effect)

and so on, although these four tend to cover most cases. Feel free to add a comment describing anything interesting you had to do or issues in non-matchings,


### Reviews

Pull requests may be reviewed by anyone (who knows enough about the conventions of the project), but all are usually reviewed by Fig and Roman.

To implement suggestions made in reviews, it is generally easier to be consistent if you push more commits from your local branch. It is quite possible that in the meantime some other PR has gone in, and git will ask you to merge master before you add more commits. This is normally fairly painless, although often you have to resolve merge conflicts. If in doubt, backup your work before doing anything, and ask in Discord before doing anything drastic, or if you don't understand what git is telling you.

There is no need to wait for your PR to be approved and committed before working on your next actor.


## Trello

It's helpful to use the labels on Trello.
- RESERVED is obvious.
- Work in Progress is for when you're actively working on something
- Matched for when it is totally decompiled and matching
- Documented if at least everything is named and odd code is commented. We'll likely wipe these and start over when proper documentation begins.

We now have a PR label on the Trello that you can use to indicate your actor is in a PR. When the actor is committed to master, you can move the actor into the `Decompiled Files (Overlays)` column: it goes at the top if there is a non-matching, and below if not.
