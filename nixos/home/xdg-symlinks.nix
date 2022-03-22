{ config, ... }:
{
  # Symlink the whole .config/nvim directory:
  xdg.configFile.nvim.source = config.lib.file.mkOutOfStoreSymlink
    "${config.home.homeDirectory}/code/repos/dotfiles/.config/nvim";

  # Symlink individual fish files (and not the whole directory, as it contains
  # files generated by fish):
  xdg.configFile."fish/aliases.fish".source = config.lib.file.mkOutOfStoreSymlink
    "${config.home.homeDirectory}/code/repos/dotfiles/.config/fish/aliases.fish";

  xdg.configFile."fish/config.fish".source = config.lib.file.mkOutOfStoreSymlink
    "${config.home.homeDirectory}/code/repos/dotfiles/.config/fish/config.fish";

  xdg.configFile."fish/functions".source = config.lib.file.mkOutOfStoreSymlink
    "${config.home.homeDirectory}/code/repos/dotfiles/.config/fish/functions";
}
