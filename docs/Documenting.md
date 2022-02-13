
# Documentation Style Guide

This project uses [Doxygen](https://www.doxygen.nl/index.html) to generate documentation pages from comments found in the source files. This guide focuses on writing compatible comments and ensuring consistency across the codebase.
```diff
- Note -
As the codebase is constantly changing, only document what is complete, well-understood and not
already covered by good naming. This is especially true for function parameters and return values.
Also note that there is no obligation to completing the documentation steps for functions you
work on if you do not want to at the time.
```
To generate a doxygen manual for the project, ensure you have doxygen installed and then cd into the project root directory and run `doxygen Doxyfile`.

## Documenting Functions
For functions, a description of the function's purpose should go above the function:
```c
/**
 * My description of this function
 */
void foo(void);
```
Further considerations:
- Any comments inside the function should follow the usual `//` or `/**/` comment styles.
- For documenting return values, place a `@return` at the bottom of the function comment followed by the description of the return value. This should only be done if the name of the function is not self-explanatory and is well-understood.
- For documenting parameters, place a `@param` between the comment and the @return (if applicable) followed by the name of the parameter and a brief description. This should only be done if the name of the parameter is not self-explanatory and is well-understood.
- All `@param`s should come before `@return` and be in the same order the parameters appear in the function declaration. Note that this does not mean you should add empty `@params` for parameters deemed self-explanatory.

A full example would be as follows: (however in practice functions such as this would be considered self-explanatory)
```c
/**
 * This is an example
 *
 * @param bar the input
 * @return bar multiplied by 2
 */
s32 foo(s32 bar) {
    return 2*bar;
}
```

## Documenting Variables
Documentation of variables should include what this variable is used for if the name is not completely clear and if applicable whether a set of defines or enumerations should be used alongside it (which should be linked with `@see`, see below)
```c
/**
 * My description of this variable
 */
s32 foo;
```

## Documenting Files
File documentation should go near the top of the file, below includes. It should only feature information that is general to the file.
```c
/**
 * @file file_name.c
 *
 * My description of this file
 */
```

## Other

### Documenting Bugs:
Bugs should be documented on the line above where the bug begins.
```c
//! @bug description
```
### Linking related information:
`@see` should be used to provide links to related information where appropriate, for example:
```c
/**
 * Save File Data
 * @see SaveContext
 */
SaveContext gSaveContext;
```
In the case of functions, `@see` should come before the first `@param`.
### HTML
You can include html tags in your doc comments, however it is strongly advised against doing this if it greatly reduces readability of the code comments.
```c
/**
 * My<br>
 * Newline<br>
 * Doc Comment
 */
```
### LaTeX
You can embed [LaTeX](https://wikipedia.org/wiki/LaTeX) in your doc comments if useful to do so.

For inline rendering:
```c
/**
 * \f$ \textrm{Your LaTeX Here} \f$
 */
```
For centered rendering on a separate line:
```c
/**
 * \f[ \textrm{Your LaTeX Here} \f]
 */
```
