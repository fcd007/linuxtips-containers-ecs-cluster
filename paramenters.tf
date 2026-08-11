resource "aws_ssm_parameter" "lb_arn" {
  name  = "/linuxtips/ecs/lb/id"
  value = aws_lb.main_lb.arn
  type  = "String"
}


resource "aws_ssm_parameter" "lb_listener_arn" {
  name  = "/linuxtips/ecs/lb/listener"
  value = aws_lb_listener.main.arn
  type  = "String"
}