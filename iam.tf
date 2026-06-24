resource "aws_iam_user" "devops_user" {
  name = "akhilesh-devops"

  tags = {
    Team = "DevOps"
  }
}
