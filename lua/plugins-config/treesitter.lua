return function()
  require "nvim-treesitter".setup {
    ensure_installed = {
      "arduino",
      "bash",
      "c",
      "c_sharp",
      "cmake",
      "cpp",
      "cuda",
      "dart",
      "diff",
      "dockerfile",
      "gitignore",
      "go",
      "html",
      "java",
      "jinja",
      "json",
      "julia",
      "kotlin",
      "latex",
      "lua",
      "make",
      "markdown",
      "markdown_inline",
      "matlab",
      "php",
      "python",
      "query",
      "ruby",
      "rust",
      "sql",
      "terraform",
      "toml",
      "verilog",
      "vhdl",
      "vim",
      "vimdoc",
      "yaml"
    },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = true,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = false,

    -- List of parsers to ignore installing (for "all")
    -- ignore_install = { "all" },

    highlight = {
      enable = true,

      -- disable slow treesitter highlight for large files
      disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
          return true
        end
      end,
    },

    additional_vim_regex_highlighting = false,
  }
end
