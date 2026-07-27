return {
  "Mathijs-Bakker/godotdev.nvim",
  dependencies = { "nvim-dap", "nvim-dap-ui", "nvim-treesitter" },
  opts = {
    -- autostart_editor_server controls the OPTIONAL "click a script in Godot's UI
    -- to open it in a terminal Neovim" bridge (:GodotStartEditorServer). Not needed
    -- for the LSP/DAP quickstart workflow below, so left at the plugin's default (false).
  },
}
