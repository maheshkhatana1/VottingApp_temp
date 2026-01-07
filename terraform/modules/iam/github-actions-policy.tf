# ECR Push/Pull
resource "aws_iam_role_policy_attachment" "ecr" {
  role       = aws_iam_role.github_actions.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser"
}

# EKS Describe (kubeconfig)
resource "aws_iam_role_policy_attachment" "eks" {
  role       = aws_iam_role.github_actions.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSReadOnlyAccess"
}
