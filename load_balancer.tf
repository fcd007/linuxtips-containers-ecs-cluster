resource "aws_security_group" "sg_lb" {
  name   = format("%s-sg-load-balancer", var.projetct_name)
  vpc_id = data.aws_ssm_parameter.vpc_id.value

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group_rule" "ingress_80" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.sg_lb.id
  description       = "Allow HTTP traffic from the internet 80"
}

resource "aws_security_group_rule" "ingress_443" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.sg_lb.id
  description       = "Allow HTTPS traffic from the internet 443"
}

resource "aws_lb" "main_lb" {
  name               = format("%s-ingress", var.projetct_name)
  internal           = var.load_balancer_internal
  load_balancer_type = var.load_balancer_type

  subnets = [
    data.aws_ssm_parameter.public_subnet_1a.value,
    data.aws_ssm_parameter.public_subnet_1b.value,
    data.aws_ssm_parameter.public_subnet_1c.value
  ]

  security_groups = [
    aws_security_group.sg_lb.id
  ]

  enable_deletion_protection       = false
  enable_cross_zone_load_balancing = false

  tags = {
    Name = format("%s-ingress", var.projetct_name)
  }
}

resource "aws_lb_listener" "main" {
  load_balancer_arn = aws_lb.main_lb.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type = "fixed-response"
    fixed_response {
      content_type = "text/plain"
      message_body = "Linuxtips"
      status_code  = 200
    }
  }
}