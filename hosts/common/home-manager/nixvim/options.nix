{ ... }:
{
  programs.nixvim = {
    globals.mapleader = " ";

    opts = {
      number = true;
      relativenumber = true;

      tabstop = 2;
      shiftwidth = 2;
      expandtab = true;
      smartindent = true;

      ignorecase = true;
      smartcase = true;
      hlsearch = false;
      incsearch = true;

      termguicolors = true;
      signcolumn = "yes";
      cursorline = true;

      autoindent = true;
      showmode = false;

      undofile = true;
      undolevels = 10000;

      mouse = "a";
      clipboard = "unnamedplus";
    };
  };
}
