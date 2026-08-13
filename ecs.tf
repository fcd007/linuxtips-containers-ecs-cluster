resource "aws_ecs_cluster" "main" {
  name = format("%s", var.projetct_name)

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}