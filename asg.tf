resource "aws_autoscaling_group" "on_demand" {
  name_prefix = format("%s-on-demand", var.projetct_name)

  vpc_zone_identifier = [
    data.aws_ssm_parameter.private_subnet_1a.value,
    data.aws_ssm_parameter.private_subnet_1b.value,
    data.aws_ssm_parameter.private_subnet_1c.value
  ]

  desired_capacity = var.cluster_on_demand_desired_size
  max_size         = var.cluster_on_demand_max_size
  min_size         = var.cluster_on_demand_min_size

  launch_template {
    id      = aws_launch_template.on_demand.id
    version = aws_launch_template.on_demand.latest_version
  }

  tag {
    key                 = "Name"
    value               = format("%s-on-demand", var.projetct_name)
    propagate_at_launch = true
  }

  tag {
    key                 = "AmazonECSManaged"
    value               = true
    propagate_at_launch = true
  }

}