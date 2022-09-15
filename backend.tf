terraform {
  backend "s3" {
    bucket = "ta-terraform-tfstates-923372466541"
    key    = "tf-lab/week2/vpc-training/terraform.tfstates"
    dynamodb_table = "terraform-lock"
  }
}