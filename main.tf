terraform {
  backend "s3" {
    bucket = "sctp-ce5-tfstate-bucket-1"
    key    = "Dan.tfstate"
    region = "us-east-1"
  }
}

#Congifure provider
provider "aws" {
  region = "us-east-1"
}

#new sns topic
resource "aws_sns_topic" "user_updates" {
  name = "Dan-updates-topic"
}