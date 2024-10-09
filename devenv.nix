{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/packages/
  packages = [ pkgs.git pkgs.nodejs ];

  # https://devenv.sh/tasks/
  tasks = {
    "parser:generate".exec = "tree-sitter generate";
    "parser:build".exec = "tree-sitter build";
  };

  # https://devenv.sh/tests/
  enterTest = ''
    tree-sitter test
  '';

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;
}
