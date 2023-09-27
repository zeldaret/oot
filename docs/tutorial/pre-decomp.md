# Pre-decompilation

It is very important to get everything set up properly before you start trying to decompile anything. As usual, if you need help at any stage of the process, ask in the Discord and we'll do our best to help.

## Setting up the repository

This is covered on the main page of the repository.

## Git and GitHub workflow

First, make a GitHub fork of the repository, then clone it into a git-enabled local folder.

Once you have decided on an actor, you should make a new git branch to work on: your main branch is meant to stay level with the main repository. Name it something sensible: my `EnFirefly` branch is called "en_firefly", for example, but you may prefer to use a more descriptive name: "Dark_Link" is rather more suggestive than "en_torch2", for example. You work on the branch, commit changes, and periodically push them to GitHub, if only for backup purposes.

Once you have finished an actor, you submit a pull request for other people to check your work complies with the project's conventions, and once it is deemed satisfactory, it will be merged in to the main repository.

But we are getting ahead of ourselves:

## Choosing a first actor

Since actors cover so many different categories of stuff in the game, they come in a wide variety of shapes, sizes and difficulties. The following is a list of things to bear in mind:

- Bosses are by far the largest, and all are already taken, so you can safely ignore them. Likewise `ovl_Fishing`, the largest actor in the game.
- Enemies are often quite complicated due to the many different interactions they have with Link, and sometimes one another.
- NPCs vary hugely. Some of the smaller ones are suitable to be first actors, but many are not.
- Cutscene objects tend to have very complicated functions, and are best left until later.
- The best starter actors tend to be dungeon or scene objects: statues, platforms, decorations, gates, etc., although we are naturally running a bit short on these now.

The general rule of thumb is to pick something with few, simple interactions with its environment. (For example, my first actor was BgIceTurara: icicles, which can do about 3 different things: break, fall, and grow.) This hopefully means that the functions are mostly small and simple. You are also probably better off if Draw and Init are small functions, although difficulty is sometimes not correlated to size.

If in doubt, ask someone to have a quick look through the code to see if it's suitable.
