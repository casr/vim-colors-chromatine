chromatine.vim
==============

A low-colour theme with light and dark variants.

  - No syntax highlighting except to distinguish comments from code.
  - The palette, for better or worse, is restricted to only the 240
    colours that are stable across terminals.

<picture>
  <source srcset="https://user-images.githubusercontent.com/566719/189227741-1b8d5e40-facf-4bfa-9fd1-5dbbbed99023.png"
          media="(prefers-color-scheme: light)">
  <source srcset="https://user-images.githubusercontent.com/566719/189227740-1353464b-3025-4fff-9928-cdc888f203e3.png"
          media="(prefers-color-scheme: dark)">
  <img width="1272" alt="Terminal with Vim editing a web project" src="https://user-images.githubusercontent.com/566719/189227734-bf0a033a-1818-4487-adee-083f8b6c00f4.png">
</picture>


Using
-----

If you would like to adjust the accent colours, you can provide light
and dark variants to `g:chromatine_accent` in your `$MYVIMRC`. Numbers
correspond to the XTerm 256 palette.

Some examples:

```vim
" red tint
let g:chromatine_accent = { 'light': 160, 'dark': 203 }

" green tint
let g:chromatine_accent = { 'light': 29, 'dark': 71 }

" blue tint (default)
let g:chromatine_accent = { 'light': 32, 'dark': 75 }
```


See Also
--------

  - [casr/vim-colors-reference](https://github.com/casr/vim-colors-reference)
  - [casr/vim-colors-normalise](https://github.com/casr/vim-colors-normalise)
