env "local" {
  # Points directly to your schema file in the repository
  src = "file://schema.hcl"
  
  # Connects directly to the PostgreSQL 14 database on your host system
  url = "postgres://postgres:mysecretpassword@127.0.0.1:5432/testdb?sslmode=disable"
  
  # FIX: Instructs Atlas to handle the schema workspace automatically
  dev = "postgres://postgres:mysecretpassword@127.0.0.1:5432/testdb?options=--search_path=atlas_schema_dev&sslmode=disable"
}
