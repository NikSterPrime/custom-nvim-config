return {
  "stevearc/oil.nvim",
  lazy = false,

  dependencies = {
    { "nvim-mini/mini.icons", opts = {} },
    -- Or use this instead:
    -- "nvim-tree/nvim-web-devicons",
  },

  opts = {
    -- Replace netrw
    default_file_explorer = true,

    -- Columns shown
    columns = {
      "icon",
    },

    -- Buffer options
    buf_options = {
      buflisted = false,
      bufhidden = "hide",
    },

    -- Window options
    win_options = {
      wrap = false,
      signcolumn = "no",
      cursorcolumn = false,
      foldcolumn = "0",
      spell = false,
      list = false,
      conceallevel = 3,
      concealcursor = "nvic",
    },

    delete_to_trash = false,
    skip_confirm_for_simple_edits = false,
    prompt_save_on_select_new_entry = true,
    cleanup_delay_ms = 2000,

    lsp_file_methods = {
      enabled = true,
      timeout_ms = 1000,
      autosave_changes = false,
    },

    constrain_cursor = "editable",
    watch_for_changes = false,

    -- 🔑 Clean Keymaps
    keymaps = {
      ["<CR>"] = "actions.select",
      ["<C-s>"] = { "actions.select", opts = { vertical = true } },
      ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
      ["<C-t>"] = { "actions.select", opts = { tab = true } },

      ["<C-p>"] = "actions.preview",
      ["<C-c>"] = { "actions.close", mode = "n" },
      ["<C-l>"] = "actions.refresh",

      ["-"] = { "actions.parent", mode = "n" },
      ["_"] = { "actions.open_cwd", mode = "n" },
      ["`"] = { "actions.cd", mode = "n" },
      ["g~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },

      ["gs"] = { "actions.change_sort", mode = "n" },
      ["gx"] = "actions.open_external",
      ["g."] = { "actions.toggle_hidden", mode = "n" },
      ["g\\"] = { "actions.toggle_trash", mode = "n" },

      ["g?"] = { "actions.show_help", mode = "n" },
    },

    use_default_keymaps = true,

    view_options = {
      show_hidden = false,

      is_hidden_file = function(name)
        return name:match("^%.") ~= nil
      end,

      is_always_hidden = function()
        return false
      end,

      natural_order = "fast",
      case_insensitive = false,

      sort = {
        { "type", "asc" },
        { "name", "asc" },
      },

      highlight_filename = function()
        return nil
      end,
    },

    -- Floating window config
    float = {
      padding = 2,
      max_width = 0,
      max_height = 0,
      border = nil,
      win_options = {
        winblend = 0,
      },
    },

    preview_win = {
      update_on_cursor_moved = true,
      preview_method = "fast_scratch",
      disable_preview = function()
        return false
      end,
      win_options = {},
    },

    confirmation = {
      max_width = 0.9,
      min_width = { 40, 0.4 },
      max_height = 0.9,
      min_height = { 5, 0.1 },
      border = nil,
      win_options = {
        winblend = 0,
      },
    },

    progress = {
      max_width = 0.9,
      min_width = { 40, 0.4 },
      max_height = { 10, 0.9 },
      min_height = { 5, 0.1 },
      border = nil,
      minimized_border = "none",
      win_options = {
        winblend = 0,
      },
    },

    ssh = {
      border = nil,
    },

    keymaps_help = {
      border = nil,
    },
  },

  -- Optional: global key to open Oil
  keys = {
    { "<leader>cd", "<cmd>Oil<CR>", desc = "Open parent directory" },
  },
}

