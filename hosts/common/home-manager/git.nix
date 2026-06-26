{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        email = "artyrurasow@gmail.com";
        name = "stmsvv";
      };
      core.editor = "nvim";
    };
  };
}
