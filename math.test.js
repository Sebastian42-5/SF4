const test = require("node:test");
const assert = require("node:assert");

function add(a, b) {
  return a + b;
}

test("adds 2 + 3 = 5", () => {
  assert.strictEqual(add(2, 3), 5);
});

// run: node --test
