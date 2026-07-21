# poste-sql.nvim

Independent SQL plugin for Poste. Depends on [poste.nvim](https://github.com/beyondlex/poste.nvim) for shared infra (state.lua, select.lua, indicators.lua, cli.lua, etc.) and the poste Rust binary.

## Key Facts

- All SQL Lua code lives under `lua/poste/sql/`
- Requires `poste.nvim` on rtp — `require("poste.state")` must succeed
- `plugin/poste-sql.lua` calls `require("poste.sql.init").setup()`
- `ftdetect/poste_sql.vim` sets filetypes for `.sql` and `.sqlite`
- Uses same `poste` Rust binary from poste.nvim
- `.opencode/skills/sql/` and `.opencode/skills/sql-completion/` for agent context

## File Index

See `docs/dev/sql/README.md` for detailed file index.

## Design Principles

- Zero coupling to HTTP modules — no `require("poste.http.*")`
- State lives in `lua/poste/sql/state.lua` (accessed via `require("poste.sql.state")`)
- Help in `lua/poste/help.lua` (shared infra, filetype-aware dispatch)

## References

| Want | Go to |
|------|-------|
| **Shared infra (state, cli, select, indicators, buffer_setup, help, etc.)** | `../poste.nvim/lua/poste/` — edit there |
| **Rust CLI (crates, build system)** | `../poste.nvim/crates/` — edit there |
| Completion rules | `.opencode/skills/sql-completion/SKILL.md` |
| Build & test | `tests/run.sh` |
| Agent learnings | `LEARNINGS.md` |