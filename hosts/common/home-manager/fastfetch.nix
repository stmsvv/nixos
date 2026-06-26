{ ... }:
{
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = "nixos_small";
        padding = {
          top = 1;
          left = 2;
          right = 2;
        };
      };
      display = {
        size = {
          binaryPrefix = "si";
        };
        color = "blue";
        separator = " ";
      };
      modules = [
        {
          type = "custom";
          key = "╭───────────────────╮";
        }
        {
          type = "os";
          key = "│ os";
          format = "{2>14} {#blue}│{#}";
        }
        {
          type = "kernel";
          key = "│ kern";
          format = "{2>12} {#blue}│{#}";
        }
        {
          type = "uptime";
          key = "│ up";
          format = "{minutes>10}mins {#blue}│{#}";
        }
        {
          type = "packages";
          key = "│ pkgs";
          format = "{1>12} {#blue}│{#}";
        }
        {
          type = "shell";
          key = "│ sh";
          format = "{1>14} {#blue}│{#}";
        }
        {
          type = "wm";
          key = "│ wm";
          format = "{2>14} {#blue}│{#}";
        }
        {
          type = "terminal";
          key = "│ term";
          format = "{1>12} {#blue}│{#}";
        }
        {
          type = "custom";
          key = "╰───────────────────╯";
        }
      ];
    };
  };
}
