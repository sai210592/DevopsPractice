provider "aws" {
  region = "ap-south-1"  # Replace with your desired AWS region
}

resource "aws_ecr_repository" "my_private_repository" {
  name                 = "my-repo"  # Replace with your desired repository name
  image_tag_mutability = "MUTABLE"  # Options: "IMMUTABLE" or "MUTABLE"
  encryption_configuration {
    encryption_type = "AES256"  # AES256 encryption is default for private repositories
  }

  # Optional: Prevent accidental deletion
  lifecycle {
    prevent_destroy = true
  }

  tags = {
    "Environment" = "production"  # Optional: Add tags to the ECR repository
  }
}

output "ecr_repository_url" {
  value = aws_ecr_repository.my_private_repository.repository_url
}
