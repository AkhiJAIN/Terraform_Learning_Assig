resource "aws_iam_policy" "ec2_operator" {
  name        = "EC2OperatorPolicy"


  policy = jsonencode({
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "ec2:StartInstances",
          "ec2:StopInstances",
          "ec2:DescribeInstances",
          "ec2:DescribeInstanceStatus"
        ]
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "attach_policy" {
  user       = aws_iam_user.devops_user.name
  policy_arn = aws_iam_policy.ec2_operator.arn
}