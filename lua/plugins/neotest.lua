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
          -- default jest installed at cwd. Requires npx be installed which is usually is...
          jestCommand = "npx jest",
          env = { CI = true },
          cwd = function(file)
            if string.find(file, "/packages/") then
              -- match /*/packages/**/
              -- E.g: /Users/brandonbailey/Repositories/p8-api-services/packages/[core-service]
              return string.match(file, "(.*/packages/[^/]+/)")
            end
            return vim.fn.getcwd()
          end,
        })
      )
    end,
  },
}
