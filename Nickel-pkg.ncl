{
  name = "rust-analyzer-nickel",
  version = "0.1.1",
  minimal_nickel_version = "1.10.0",
  authors = ["Joe Neeman <joe.neeman@tweag.io>"],
  dependencies = {
    json-schema-lib = 'Index { package = "github/jneem/json-schema-lib", version = "=0.1.1" }
  }
} | std.package.Manifest
