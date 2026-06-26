{ ... }:
{
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      command_timeout = 1300;
      scan_timeout = 50;
      format = "$directory$git_branch$git_status$cmd_duration\n$character";

      cmd_duration = {
        min_time = 1000;
        format = "[took $duration]($style)";
      };

      directory = {
        format = "[$path]($style)[$read_only]($read_only_style) ";
        read_only = " 󰌾";
        fish_style_pwd_dir_length = 1;
      };

      git_state = {
        format = "\\([$state( $progress_current/$progress_total)]($style)\\) ";
        style = "bright-black";
      };

      character = {
        format = "$symbol ";
        success_symbol = "[](bold green) ";
        error_symbol = "[✗](bold red) ";
      };
    };
  };
}
