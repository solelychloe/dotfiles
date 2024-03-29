{ pkgs, ... }:

{
  home.file = {
    # 1Password configuration
    # https://developer.1password.com/docs/ssh/agent/config
    ".config/1Password/ssh/agent.toml".text = ''
      [[ssh-keys]]
      vault = "Development"
    '';

    # Catppuccin theme for btop
    ".config/btop/themes/catppuccin_mocha.theme" = {
      source = pkgs.fetchFromGitHub {
        owner = "catppuccin";
        repo = "btop";
        rev = "ecb8562";
        sha256 = "sha256-ovVtupO5jWUw6cwA3xEzRe1juUB8ykfarMRVTglx3mk=";
      } + "/catppuccin_mocha.theme";
    };

    # Catppuccin theme for Konsole
    ".local/share/konsole/catppuccin-mocha.colorscheme" = {
      source = pkgs.fetchFromGitHub {
        owner = "catppuccin";
        repo = "konsole";
        rev = "7d86b8a1e56e58f6b5649cdaac543a573ac194ca";
        sha256 = "sha256-EwSJMTxnaj2UlNJm1t6znnatfzgm1awIQQUF3VPfCTM=";
      } + "/Catppuccin-Mocha.colorscheme";
    };
  };
}