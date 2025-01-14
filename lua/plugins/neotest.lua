return {
  {
    "nvim-neotest/neotest",
    dependencies = { "haydenmeade/neotest-jest" },
    opts = function(_, opts)
      table.insert(
        opts.adapters,
        require("neotest-jest")({
          jestCommand = "npx jest",
          env = { CI = true },
          cwd = function(file)
            return string.find(file, "/packages/") and string.match(file, "(.*/packages/[^/]+/)") or vim.fn.getcwd()
          end,
        })
      )
    end,
  },
}
