table "users" {
  schema = schema.public
  column "id" {
    type = int
  }
  column "name" {
    type = varchar(100)
  }
  column "phone" {
    type = varchar(20)
    null = true
  }
}

# ADD THIS NEW TABLE BLOCK:
table "posts" {
  schema = schema.public
  column "id" {
    type = int
  }
  column "title" {
    type = varchar(255)
  }
  column "body" {
    type = text
    null = true
  }
}

schema "public" {}
