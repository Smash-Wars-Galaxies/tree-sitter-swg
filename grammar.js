/**
 * @file Star Wars Galaxies IDL grammar for tree-sitter 
 * @author Omegaice <950526+Omegaice@users.noreply.github.com>
 * @license MIT
 */

/// <reference types="tree-sitter-cli/dsl" />
// @ts-check

module.exports = grammar({
  name: "swg",

  rules: {
    // TODO: add the actual grammar rules
    source_file: $ => "hello"
  }
});
