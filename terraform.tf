provider "aws" {
    region = "us-east-1"  
}

resource "aws_s3_bucket" "bucket-prueba-atoj" {
    count = 2 
    bucket = "proveedores-regional-bucket-prueba-atoj-${random_string.suffix[count.index].id}"

    tags = {
        Owner       = "ATOJ"
        Environment = "Dev"
        Office      = "Proveedores"
    }
}

resource "random_string" "suffix"{
    count = 2
    length = 8
    upper = false
    numeric = false
    special = false
}