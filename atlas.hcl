env "local" {
  src = "file://schema.hcl"
  
  # Target Database: Explicitly tell Atlas to ONLY look inside the public schema
  url = "postgres://postgres:mysecretpassword@127.0.0.1:5432/testdb?search_path=public&sslmode=disable"
  
  # Isolated Sandbox Workspace
  dev = "postgres://postgres:mysecretpassword@127.0.0.1:5432/testdb?search_path=atlas_schema_dev&sslmode=disable"

  # FIX CODE: This line stops Atlas from dropping your dev schema on successful runs!
  schemas = ["public"]
}
