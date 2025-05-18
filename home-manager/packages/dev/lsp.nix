pkgs:
with pkgs; [
  vscode-langservers-extracted
  lua-language-server
  texlab

  # scala
  metals

  nodePackages_latest.typescript-language-server
  nodePackages_latest.eslint
  prettierd

  # rust
  rust-analyzer

  # markdown
  marksman

  # go
  gopls
]
