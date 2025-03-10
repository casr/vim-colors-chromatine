chromatine.vim
==============

A low-colour theme with light and dark variants.

  - No syntax highlighting except to distinguish comments from code.
  - The palette, for better or worse, is restricted to only the 240
    colours that are stable across terminals.

<picture>
  <source srcset="https://github.com/user-attachments/assets/89b39e64-4f78-41fa-bc71-98f46e1c7a24"
          media="(prefers-color-scheme: dark)">
  <img width="1272" alt="Terminal with Vim editing a web project" src="https://github.com/user-attachments/assets/1df2bb33-84f3-4c07-b24f-00e30e998178">
</picture>


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
| sRGB    |  `#262626` |  `#FFFFFF` |  `#5FFFD7` |  `#87D7FF` |
| xterm   |      `235` |      `231` |       `86` |      `117` |

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
| sRGB    |  `#E4E4E4` |  `#3A3A3A` |  `#005F5F` |  `#121212` |
| xterm   |      `254` |      `237` |       `23` |      `233` |

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
