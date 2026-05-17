env "local" {
  # Points directly to your schema file in the repository
  src = "file://schema.hcl"
  
  # Target Database: Where your actual tables will be built
  url = "postgres://postgres:mysecretpassword@127.0.0.1:5432/testdb?sslmode=disable"
  
  # FIX: Clean sandbox path using the search_path parameter string
  dev = "postgres://postgres:mysecretpassword@127.0.0.1:5432/testdb?search_path=atlas_schema_dev&sslmode=disable"
}
