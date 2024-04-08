return {
  {
    "xeluxee/competitest.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    config = function()
      require("competitest").setup({
        -- 这里添加插件配置（如果有的话）
      })

      -- 设置自动命令以在打开 CPP 文件时添加特定的键位映射
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "cpp", "c", "java", "py" },
        callback = function()
          vim.keymap.set("n", "rr", ":CompetiTest run<CR>", { buffer = true })
          vim.keymap.set("n", "ra", ":CompetiTest add_testcase<CR>", { buffer = true })
          vim.keymap.set("n", "re", ":CompetiTest edit_testcase<CR>", { buffer = true })
          vim.keymap.set("n", "ri", ":CompetiTest receive testcases<CR>", { buffer = true })
          vim.keymap.set("n", "rd", ":CompetiTest delete_testcase<CR>", { buffer = true })
        end,
      })

      -- 为 veil 文件类型添加特定的键位映射
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "veil",
        callback = function()
          vim.keymap.set("n", "acm", ":CompetiTest receive contest<CR>", { buffer = true })
        end,
      })

      -- 添加一个全局键位映射
      vim.keymap.set("n", "<leader>nh", ":nohl<CR>")
    end,
  },
}
