return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "haydenmeade/neotest-jest",
    },
    opts = function(_, opts)
      table.insert(
        opts.adapters,
        require("neotest-jest")({
          jestCommand = "npx jest",
          env = { CI = true },
          cwd = function(file)
            if string.find(file, "/packages/") then
              -- match /*/packages/**/
              return string.match(file, "(.*/packages/[^/]+/)")
            end
            return vim.fn.getcwd()
          end,
        })
      )
    end,
  },
}
