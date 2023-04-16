terraform {
    backend "s3" {
      bucket  = "terraform0statefile"
      dynamodb_table = "terraform-state-locking"
      key     = "terraform.tfstate"
      region  = "us-east-1"
    }
}