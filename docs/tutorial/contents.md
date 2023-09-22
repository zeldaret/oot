# Getting started

## [Introduction to decomp](introduction.md)
- What we are doing
- Structure of the code

## Pre-decompilation
- Building the repo (follow the instructions in the README.md)
- Most of us use VSCode. (You can watch Fig's video to get an idea of how this can be used). Some useful information is [here](../vscode.md).
- Choosing a first actor (You want something small that has simple interactions with the environment. But OoT is far enough in that there are basically no unreserved actors left anyway now.)

## Decompilation

- [Begining decompilation: order, Init and the actor struct](beginning_decomp.md)
    - Order of decompilation
    - Init and common actor features
        - Initchains
        - Actors and dynapoly actors
        - Colliders
        - Skelanime

    - Matching
        - Using diff
        - control flow (branches) -> instruction ordering -> register allocation -> stack

- [The rest of the functions in the actor](other_functions.md)
    - Order of decompilation
    - Action Functions and other functions

    - More on matching: the permuter

- [Draw functions](draw_functions.md)

- [Data, migration and non-migration](data.md)
    - Importing the data: early and late
    - Fake symbols
    - Inlining

## [Object Decompilation](object_decomp.md)
- Object files
- How we decompile objects
- [Example](object_decomp_example.md)


## After Decompilation

- [Preparing to merge](merging.md)
    - Preliminary documentation
    - Preparing to PR
    - Pull Requests
    - Trello

## Appendices
- [Types, Structs and Padding](types_structs_padding.md) (a miscellany of useful stuff)
- [Helper scripts](helper_scripts.md)

To be written, maybe

- How we use git and GitHub
- Some notes on the basic structure of N64 MIPS
- Glossary
- Conventions
