import { acceptance } from "helpers/qunit-helpers";

acceptance("reflexivity", { loggedIn: true });

test("reflexivity works", async assert => {
  await visit("/admin/plugins/reflexivity");

  assert.ok(false, "it shows the reflexivity button");
});
