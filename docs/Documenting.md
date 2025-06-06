
# Documentation Style Guide

This project uses [Doxygen](https://www.doxygen.nl/index.html) to generate documentation pages from comments found in the source files. This guide focuses on writing compatible comments and ensuring consistency across the codebase.

However to keep the documentation readable in text and favor consistency, the Doxygen commands that should be used are restricted to what this document mentions.

To generate a doxygen manual for the project, ensure you have doxygen installed and then cd into the project root directory and run `doxygen Doxyfile`.

The documentation can then be browsed by opening `docs/doxygen/html/index.html` in a web browser.

## Documenting Functions

Any comments inside functions, except bugs ([see below](#documenting-bugs)), should use `//`-style comments, even if spanning over multiple lines.

A simple example of documenting a function with just a description (note the leading `/**`):

```c
/**
 * Update the crawl sound timer, and play the crawling sound when it reaches 0.
 */
void EnInsect_UpdateCrawlSfx(EnInsect* this) {
```

A more complete example:

```c
/**
 * Request to either increase or consume magic.
 *
 * @param amount the positive-valued amount to either increase or decrease magic by
 * @param type how the magic is increased or consumed.
 *
 * @return false if the request failed
 */
s32 Magic_RequestChange(PlayState* play, s16 amount, s16 type) {
```

Note:

- Documentation for self-explanatory arguments (`@param`) and return values (`@return`) may be omitted.
- `@param` commands should not have empty lines in between.
- Different commands (main description, `@param`, `@return`, ...) should be separated by empty lines.

Other directives that may be used for documenting functions:

- `@see` to reference something else ([see below](#linking-related-information)).
- `@note` to bring attention to some of the function behavior.

## Documenting Variables

In case the name of a variable isn't completely clear, documentation can provide a description.

If applicable, it may refer to a set of defines or enumerations that should be used with it (those should be linked with `@see`, [see below](#linking-related-information)).

```c
/**
 * My description of this variable
 */
s32 foo;
```

## Documenting Files

File documentation should be located at the top of the file, above `#include`s.

File documentation should only feature information that is general to the file or the system it implements.

```c
/**
 * @file z_fcurve_data_skelanime.c
 * @brief Curve skeleton animation system
 *
 * A curve skeleton has a fixed number of limbs, ...
...
 */
```

## Other

### Documenting Bugs:

Bugs should be documented on the line above where the bug begins.

```c
//! @bug Missing early return
```

Bug described on multiple lines should still use the `//!` syntax, over multiple lines. For example:

```c
//! @bug this code was clearly meaning to print `abs(camera->camDataIdx)` as a
//! one-or-two-digit number, instead of `i`.
```

### Linking related information:

`@see` should be used to provide links to related information where appropriate, for example:

```c
/**
 * Sets the next framebuffer to the framebuffer associated to `task`.
 * If there is no current buffer or it is time to swap, this buffer will be swapped to
 * immediately, otherwise it will be swapped to later in Sched_HandleRetrace.
 *
 * @see Sched_HandleRetrace
 */
void Sched_SetNextFramebufferFromTask(Scheduler* sc, OSScTask* task) {
```

In the case of functions, `@see` should come before the first `@param`.

`@see` may also be used for documenting files or variables.

### HTML and LaTeX

It is possible to include HTML and LaTeX in documentation comments.

However it is prefered not to do so, so that the raw text stays readable when looked at as plain text, for example when browsing the source code.
