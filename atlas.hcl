env "prod" {
  # Tells Atlas to read your schema file directly
  src = "file://schema.hcl"
  
  # Connects to production using your Jenkins secret
  url = env("PROD_DATABASE_URL")
  
  # A temporary spin-up database Atlas uses to test changes safely
  dev = "docker://postgres/15/dev" 
}
