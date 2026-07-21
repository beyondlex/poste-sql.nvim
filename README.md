# poste-sql.nvim

SQL execution, dataset browser, and schema introspection for Neovim.

**Requires**: [poste.nvim](https://github.com/beyondlex/poste.nvim) (shared infra + Rust binary)

## Features

- Execute SQL statements from `.sql` files (PostgreSQL, MySQL, SQLite)
- Dataset panel with cell navigation, sorting, filtering, pagination
- Database browser sidebar (tables, columns, indexes, DDL)
- Inline edit, insert, delete rows with commit
- SQL completion (blink.cmp / nvim-cmp)
- Schema introspection for PKs, FKs, indexes
- Export to CSV/JSON
- Import CSV/JSON into tables
- Execution log viewer

## Installation

```lua
-- lazy.nvim
{
  "beyondlex/poste.nvim",
  lazy = false,
  priority = 1000,
  dependencies = {
    "beyondlex/poste-sql.nvim",
  },
}
```

## Usage

Open a `.sql` file and press `<CR>` on a statement to execute.

## License

MIT