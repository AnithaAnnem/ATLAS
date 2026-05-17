env "local" {
  # Points directly to your schema file in the repository
  src = "file://schema.hcl"
  
  # Target Database: Where your actual tables will be built
  url = "postgres://postgres:mysecretpassword@127.0.0.1:5432/testdb?sslmode=disable"
  
  # FIX: Uses the explicit options query parameter to auto-generate the dev space if missing
  dev = "postgres://postgres:mysecretpassword@127.0.0.1:5432/testdb?options=--search_path=atlas_schema_dev&sslmode=disable"
}

