{ ... }:
{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<S-l>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options.desc = "Cycle to next buffer";
    }
    {
      mode = "n";
      key = "<S-h>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options.desc = "Cycle to previous buffer";
    }
    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>bdelete<cr>";
      options.desc = "Delete buffer";
    }
    {
      mode = "n";
      key = "<leader>bD";
      action = "<cmd>bdelete!<cr>";
      options.desc = "Delete buffer!";
    }
    {
      mode = "n";
      key = "-";
      action = "<Cmd>Oil<CR>";
      options.desc = "Explorer";
    }
    {
      mode = "v";
      key = "K";
      action = ":m '<-2<CR>gv=gv";
      options.desc = "Move line up";
    }
    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
      options.desc = "Move line down";
    }
    {
      mode = "t";
      key = "<Esc>";
      action = "<C-\\><C-n>";
      options.desc = "Exit terminal mode";
    }
    {
      mode = "n";
      key = "<Esc>";
      action = "<Cmd>noh<CR>";
      options.desc = "Снять выделение поиска";
    }
    {
      mode = "n";
      key = "<leader>ff";
      action = "<Cmd>Telescope find_files<CR>";
      options.desc = "Telescope find files";
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = "<Cmd>Telescope live_grep<CR>";
      options.desc = "Telescope live grep";
    }
    {
      mode = "n";
      key = "<leader>fb";
      action = "<Cmd>Telescope buffers<CR>";
      options.desc = "Telescope buffers";
    }
    {
      mode = "n";
      key = "<leader>fh";
      action = "<Cmd>Telescope help_tags<CR>";
      options.desc = "Telescope help tags";
    }
    {
      mode = "n";
      key = "<leader>a";
      action.__raw = ''
        function()
          vim.cmd("cd %:h")
          local filename = vim.fn.input('Имя нового файла: ')
          vim.cmd("e " .. filename)
          print("")
        end
      '';
      options.desc = "Create new file";
    }
    {
      mode = "n";
      key = "<leader>e";
      action = "<Cmd>NvimTreeToggle<CR>";
      options.desc = "Toggle nvim-tree";
    }
    {
      mode = "n";
      key = "<leader>u";
      action = "<Cmd>UndotreeToggle<CR>";
      options.desc = "Toggle Undotree";
    }
    {
      mode = "n";
      key = "<leader>t";
      action = "<Cmd>ToggleTerm<CR>";
      options.desc = "Open terminal below";
    }
  ];
}
