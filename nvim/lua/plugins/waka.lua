return {
  "wakatime/vim-wakatime",
  config = function()
    vim.g.wakatime_autodetect = false
    vim.g.wakatime_project = "dotfiles"
    vim.g.wakatime_api_key = vim.fn.getenv("WAKATIME_API_KEY")
  end,
}
