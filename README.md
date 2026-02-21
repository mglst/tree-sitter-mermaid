# tree-sitter-mermaid

A [Mermaid.js](https://mermaid.js.org/) grammar for [tree-sitter](https://tree-sitter.github.io/tree-sitter/).

## Usage

### Node.js

```js
const Parser = require("tree-sitter");
const Mermaid = require("tree-sitter-mermaid");

const parser = new Parser();
parser.setLanguage(Mermaid);

const tree = parser.parse("flowchart TD\n    A --> B");
```

### Rust

```toml
[dependencies]
tree-sitter = "0.25"
tree-sitter-mermaid = "0.25"
```

```rust
let mut parser = tree_sitter::Parser::new();
parser.set_language(&tree_sitter_mermaid::LANGUAGE.into()).unwrap();
```

### Python

```sh
pip install tree-sitter-mermaid
```

```python
import tree_sitter_mermaid
from tree_sitter import Language, Parser

language = Language(tree_sitter_mermaid.language())
parser = Parser(language)
```

## Diagram types

Flowchart, Sequence, Class, State, Entity Relationship, Gantt, Git Graph, Pie,
Mind Map, User Journey, Quadrant Chart, XY Chart, Timeline, ZenUML, Sankey,
Block, Packet, Kanban, Architecture, Radar, Treemap, C4, Requirement.

## Development

```sh
# Generate parser from grammar
tree-sitter generate

# Run corpus tests
tree-sitter test

# Interactive playground
npm start
```

## Credits

Originally by [Mogami Shinichi](https://github.com/monaqa). Forked via [Singularity](https://github.com/singularity-ng).
