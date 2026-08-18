#### General configs ####

projetct_name = "linuxtips-ecs-cluster"

region = "us-east-2"


#### SSM VPC ####

ssm_vpc_id = "/linuxtips-vpc/vpc/vpc_id"

ssm_private_subnet_1a = "/linuxtips-vpc/vpc/private_subnet_1a"

ssm_private_subnet_1b = "/linuxtips-vpc/vpc/private_subnet_1b"

ssm_private_subnet_1c = "/linuxtips-vpc/vpc/private_subnet_1c"

ssm_public_subnet_1a = "/linuxtips-vpc/vpc/public_subnet_1a"

ssm_public_subnet_1b = "/linuxtips-vpc/vpc/public_subnet_1b"

ssm_public_subnet_1c = "/linuxtips-vpc/vpc/public_subnet_1c"


#### Load Balancer ####

load_balancer_internal = "false"
load_balancer_type     = "application"

### ECS Gerenal ###

nodes_ami = "ami-07c1e4afb88366d59"

nodes_instance_type = "t2.micro"

node_volume_size = "50"

node_volume_type = "gp3"

cluster_on_demand_min_size = "2"

cluster_on_demand_max_size = "4"

cluster_on_demand_desired_size = "3"

cluster_spots_min_size = "2"

cluster_spots_max_size = "4"

cluster_spots_desired_size = "3"