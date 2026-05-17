table "users" {
  schema = schema.public
  column "id" {
    type = int
  }
  column "name" {
    type = varchar(100)
  }
  # ADD THIS NEW LINE:
  column "phone" {
    type = varchar(20)
    null = true
  }
}

schema "public" {}
