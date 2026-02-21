const path = require("path");
const root = path.join(__dirname, "..", "..");

module.exports = require(
  path.join(root, "prebuilds", `${process.platform}-${process.arch}`, "tree-sitter-mermaid.node")
);

try {
  module.exports.nodeTypeInfo = require(path.join(root, "src", "node-types.json"));
} catch (_) {}
