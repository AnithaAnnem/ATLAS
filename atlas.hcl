env "local" {
  src = "file://schema.hcl"
  
  # Connects directly to your PostgreSQL 14 instance
  url = "postgres://postgres:mysecretpassword@127.0.0.1:5432/testdb?sslmode=disable"
  
  # Reuses your local DB to calculate changes safely without Docker
  dev = "postgres://postgres:mysecretpassword@127.0.0.1:5432/testdb?sslmode=disable"
}

