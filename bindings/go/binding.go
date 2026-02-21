package tree_sitter_mermaid

// #cgo CFLAGS: -std=c11 -fPIC
// #include "../../src/parser.c"
// #include "../../src/scanner.c"
import "C"

import "unsafe"

// Get the tree-sitter Language pointer for this grammar.
func Language() unsafe.Pointer {
	return unsafe.Pointer(C.tree_sitter_mermaid())
}
