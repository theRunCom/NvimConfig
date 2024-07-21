return {
  {
    "tomiis4/Hypersonic.nvim",
    config = function(_, opts)
      require("hypersonic").setup(opts)
    end,

    opts = {},

    keys = {
      { "<leader>re", "<cmd>Hypersonic<cr>", mode = { "n", "v" }, desc = "RegExplain" },
    },
  },
}
