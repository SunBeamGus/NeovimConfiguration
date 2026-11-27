return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            completion = {
              callSnippet = "Disable", -- 仅补全函数名，不展开参数
            },
          },
        },
      },
      clangd = {
        cmd = { "clangd", "--function-arg-placeholders=0" }, -- 关闭 C/C++ 参数占位符
      },
    },
  },
}
