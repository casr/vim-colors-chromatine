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


Suggested colour palette
------------------------

The following colours are set for GUI Vim’s terminal. In the case that
Vim is run in the terminal it will just borrow colours from your current
Terminal’s theme.

For this reason, a suggested theme is given below.

Colours are defined in the sRGB colour space but you should be aware that
some terminals such as macOS’s Terminal.app default to a different colour
space which you will need to account for.

See [`./contrib/`][contrib] for some pre-built themes.

[contrib]: ./contrib/

<details><summary>Light</summary>

|         | Foreground | Background |     Cursor |  Selection |
|---------|------------|------------|------------|------------|
| sRGB    |  `#262626` |  `#FFFFFF` |  `#87AFD7` |  `#AFD7FF` |
| xterm   |      `235` |      `231` |      `110` |      `153` |

|               |     Black |       Red |     Green |    Yellow |      Blue |   Magenta |      Cyan |     White |
|---------------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|
| Normal, sRGB  | `#1C1C1C` | `#AF5F5F` | `#008700` | `#D78700` | `#00005F` | `#875F87` | `#5F8787` | `#DADADA` |
| Bright, sRGB  | `#767676` |        〃 |        〃 |        〃 |        〃 |        〃 |        〃 | `#FFFFFF` |
| Normal, xterm |     `234` |     `131` |      `28` |     `172` |      `17` |      `96` |      `66` |     `253` |
| Bright, xterm |     `243` |        〃 |        〃 |        〃 |        〃 |        〃 |        〃 |     `231` |

</details>

<details><summary>Dark</summary>

|         | Foreground | Background |     Cursor |  Selection |
|---------|------------|------------|------------|------------|
| sRGB    |  `#DADADA` |  `#1C1C1C` |  `#005FD7` |  `#005F87` |
| xterm   |      `253` |      `234` |       `26` |       `24` |

|               |     Black |       Red |     Green |    Yellow |      Blue |   Magenta |      Cyan |     White |
|---------------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|-----------|
| Normal, sRGB  | `#303030` | `#AF5F5F` | `#87AF87` | `#FFD787` | `#5F5FAF` | `#AF87AF` | `#87AFAF` | `#DADADA` |
| Bright, sRGB  | `#767676` |        〃 |        〃 |        〃 |        〃 |        〃 |        〃 | `#E4E4E4` |
| Normal, xterm |     `236` |     `131` |     `108` |     `222` |      `61` |     `139` |     `109` |     `253` |
| Bright, xterm |     `243` |        〃 |        〃 |        〃 |        〃 |        〃 |        〃 |     `254` |

</details>


See Also
--------

  - [casr/vim-colors-reference](https://github.com/casr/vim-colors-reference)
  - [casr/vim-colors-normalise](https://github.com/casr/vim-colors-normalise)
