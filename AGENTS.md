# poste-sql.nvim Agent Guide

Independent SQL plugin for Poste. Depends on poste.nvim for shared infra
(state.lua, select.lua, indicators.lua, cli.lua, etc.) and the poste Rust binary.

## Key Facts

- All SQL Lua code lives under `lua/poste/sql/` — same paths as poste.nvim
- Requires `poste.nvim` on rtp — `require("poste.state")` must succeed
- `plugin/poste-sql.lua` calls `require("poste.sql.init").setup()`
- `ftdetect/poste_sql.vim` sets filetypes for `.sql` and `.sqlite`
- Uses same `poste` Rust binary as poste.nvim

## File Index

See `docs/dev/sql/README.md` for detailed file index.

## Design Principles

- Zero coupling to HTTP modules — no `require("poste.http.*")`
- State lives in `lua/poste/sql/state.lua` (accessed via `require("poste.sql.state")`)
- Help in `lua/poste/sql/help.lua`