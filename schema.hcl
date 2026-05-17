table "users" {
  schema = schema.public
  column "id" {
    type = int
  }
  column "name" {
    type = varchar(100)
  }
}

schema "public" {}
