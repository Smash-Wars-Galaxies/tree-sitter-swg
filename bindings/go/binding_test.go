package tree_sitter_swg_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_swg "github.com/smash-wars-galaxies/tree-sitter-swg/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_swg.Language())
	if language == nil {
		t.Errorf("Error loading Swg grammar")
	}
}
