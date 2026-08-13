#### General configs ####

variable "projetct_name" {}

variable "region" {}


#### SSM VPC ####

variable "ssm_vpc_id" {}

variable "ssm_public_subnet_1a" {}

variable "ssm_public_subnet_1b" {}

variable "ssm_public_subnet_1c" {}

variable "ssm_private_subnet_1a" {}

variable "ssm_private_subnet_1b" {}

variable "ssm_private_subnet_1c" {}

#### Load Balancer ####

variable "load_balancer_internal" {}

variable "load_balancer_type" {}


### ECS Gerenal ###

variable "nodes_ami" {}

variable "nodes_instance_type" {}

variable "node_volume_size" {}

variable "node_volume_type" {}

variable "cluster_on_demand_min_size" {}

variable "cluster_on_demand_max_size" {}

variable "cluster_on_demand_desired_size" {}
