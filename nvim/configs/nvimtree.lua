local options = {
  git = {
    enable = true
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true
      },
      glyphs = {
        git = {
          unstaged = "",
          staged = "✓",
          -- unmerged = "",
          renamed = "",
          untracked = "",
          deleted = "",
          ignored = "",
        }
      }
    }
  }
}

return options
