# VSCode

A lot of people on this project use VSCode as their coding environment.

## Extensions

There are a number of useful extensions available to make work more efficient:

- C/C++ IntelliSense
- Clang-Format
- HexInspector (hover on numbers for float and other info)
- NumberMonger (convert hex to decimal and vice versa)
- Better MIPS Support




## Useful keyboard shortcuts

- Ctrl + Alt + Up/Down (on Windows, on Linux it's Ctrl + Shift + Up/Down or Shift + Alt + Up/Down) gives multicursors across consecutive lines. If you want several cursors in a more diverse arrangement, middle clicking works, at least on Windows.
- Alt + Up/Down moves lines up/down.
- Shift + Alt + Up/Down (Linux: Ctrl + Shift + Alt + Up/Down) copies lines up/down.
- Ctrl + P offers a box to use to search for and open files.
- Ctrl + Shift + P offers a box for commands like editing settings or reloading the window.

- Make use of VSCode's search/search-and-replace features.
    - Ctrl + Click goes to a definition.
    - Ctrl + F for search in current file
    - Ctrl + H for replace in current file
    - Ctrl + Shift + F for search in all files
    - Ctrl + Shift + H for replace in all files
    - F2 for Rename symbol

Many of VS Code's other shortcuts can be found on [its getting started page](https://code.visualstudio.com/docs/getstarted/keybindings), which also has links to OS-specific PDFs.

## C/C++ configuration

You can create a `.vscode/c_cpp_properties.json` file with `C/C++: Edit Configurations (JSON)` in the command box to customise how IntelliSense reads the repository (stuff like where to look for includes, flags, compiler defines, etc.) to make VSCode's IntelliSense plugin better able to understand the structure of the repository. This is a good default one to use for this project's repository:

```jsonc
{
    "configurations": [
        {
            "name": "Linux",
            "compilerPath": "${default}", // Needs to not be "" for -m32 to work
            "compilerArgs": [
                "-m32" // Removes integer truncation warnings with gbi macros
            ],
            "intelliSenseMode": "${default}", // Shouldn't matter
            "includePath": [ // Matches makefile's includes
                "${workspaceFolder}/**",
                "src",
                "build",
                "include"
            ],
            "defines": [
                "_LANGUAGE_C" // For gbi.h
            ],
            "cStandard": "gnu89", // C89 + some GNU extensions from C99 like C++ comments
            "cppStandard": "${default}" // Only ZAPD uses C++, so doesn't really matter
        }
    ],
    "version": 4
}
```

## Settings

Add the following to (or create) the `.vscode/settings.json` file for VSCode to search the gitignored asset files by default:

```jsonc
{
    "search.useIgnoreFiles": false,
    "search.exclude": {
        "**/.git": true,
        "baserom/**": true,
        "build/**": true,
        "expected/**": true,
    },
}
```
