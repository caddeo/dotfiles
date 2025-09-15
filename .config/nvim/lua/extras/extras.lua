return {
  -- extras
  -- lang
  {
    { import = "lazyvim.plugins.extras.lang.angular" },
    { import = "lazyvim.plugins.extras.lang.git" },
    { import = "lazyvim.plugins.extras.lang.go" },
    { import = "lazyvim.plugins.extras.lang.json" },
    { import = "lazyvim.plugins.extras.lang.markdown" },
    { import = "lazyvim.plugins.extras.lang.python" },
    { import = "lazyvim.plugins.extras.lang.rust" },
    { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.lang.yaml" },
    { import = "lazyvim.plugins.extras.lang.omnisharp" },
  },
  -- coding
  {
    { import = "lazyvim.plugins.extras.coding.blink" },
    { import = "lazyvim.plugins.extras.coding.mini-comment" },
    { import = "lazyvim.plugins.extras.coding.mini-surround" },
  },
  -- dap
  { { import = "lazyvim.plugins.extras.dap.core" }, { import = "lazyvim.plugins.extras.dap.nlua" } },
  -- editor
  { { import = "lazyvim.plugins.extras.editor.mini-diff" }, { import = "lazyvim.plugins.extras.editor.telescope" } },
  -- formatting
  -- lsp
  { import = "lazyvim.plugins.extras.lsp.none-ls" },
  -- test
  { import = "lazyvim.plugins.extras.test.core" },
  -- util
  {
    { import = "lazyvim.plugins.extras.util.dot" },
    { import = "lazyvim.plugins.extras.util.gitui" },
    { import = "lazyvim.plugins.extras.util.project" },
  },
  {
    { import = "lazyvim.plugins.extras.linting.eslint" },
    { import = "lazyvim.plugins.extras.formatting.prettier" },
  },
}
