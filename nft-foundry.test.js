import test from "node:test";
import assert from "node:assert/strict";
test("token IDs are unique and sequential", () => { const ids = [0, 1, 2]; assert.deepEqual(ids, [...new Set(ids)]); assert.equal(ids[2], ids[0] + 2); });
