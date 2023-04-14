terraform {
    backend "s3" {
      bucket  = "terraformbackendstatefile00"
      dynamodb_table = "terraform-state-locking"
      key     = "terraform.tfstate"
      region  = "us-east-1"
    }
}