return {
  {
    "CRAG666/code_runner.nvim",
    cmd = { "RunCode", "RunFile", "RunProject", "RunClose" },
    keys = {
      { "<leader>rr", "<cmd>RunCode<cr>", desc = "Run Code" },
      { "<leader>rf", "<cmd>RunFile<cr>", desc = "Run File" },
      { "<leader>rp", "<cmd>RunProject<cr>", desc = "Run Project" },
      { "<leader>rc", "<cmd>RunClose<cr>", desc = "Close Runner" },
    },
    opts = {
      mode = "term", -- Options: "term", "float", "tab", "toggleterm"
      focus = true, -- Automatically focus the output window
      startinsert = true, -- Enter Insert mode immediately (useful for interactive input like cin/input())
      term = {
        position = "bot", -- Open at the bottom
        size = 15, -- Window height
      },
      filetype = {
        python = "python3 -u",
        cpp = {
          "cd $dir &&",
          "clang++ $fileName -g -std=c++11 -o /tmp/$fileNameWithoutExt &&",
          "/tmp/$fileNameWithoutExt",
        },
      },
    },
  },
}
