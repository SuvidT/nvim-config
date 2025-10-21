return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")

    -- Python
    pcall(function() require("dap-python").setup("python") end)

    -- C/C++
    dap.adapters.cppdbg = {
      id = "cppdbg",
      type = "executable",
      command = "/usr/bin/lldb-vscode", -- or "OpenDebugAD7" for cpptools
    }

    dap.configurations.cpp = {
      {
        name = "Launch file",
        type = "cppdbg",
        request = "launch",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopAtEntry = false,
      },
    }

    dap.configurations.c = dap.configurations.cpp
  end,
}

