locals {
  bastion_autoscaling_group_ids = [aws_autoscaling_group.bastions-clusters-terra-hunter-com.id]
  bastion_security_group_ids    = [aws_security_group.bastion-clusters-terra-hunter-com.id]
  bastions_role_arn             = aws_iam_role.bastions-clusters-terra-hunter-com.arn
  bastions_role_name            = aws_iam_role.bastions-clusters-terra-hunter-com.name
  cluster_name                  = "clusters.terra-hunter.com"
  master_autoscaling_group_ids  = [aws_autoscaling_group.control-plane-eu-west-1a-masters-clusters-terra-hunter-com.id, aws_autoscaling_group.control-plane-eu-west-1b-masters-clusters-terra-hunter-com.id, aws_autoscaling_group.control-plane-eu-west-1c-masters-clusters-terra-hunter-com.id]
  master_security_group_ids     = [aws_security_group.masters-clusters-terra-hunter-com.id]
  masters_role_arn              = aws_iam_role.masters-clusters-terra-hunter-com.arn
  masters_role_name             = aws_iam_role.masters-clusters-terra-hunter-com.name
  node_autoscaling_group_ids    = [aws_autoscaling_group.nodes-eu-west-1a-clusters-terra-hunter-com.id, aws_autoscaling_group.nodes-eu-west-1b-clusters-terra-hunter-com.id, aws_autoscaling_group.nodes-eu-west-1c-clusters-terra-hunter-com.id]
  node_security_group_ids       = [aws_security_group.nodes-clusters-terra-hunter-com.id]
  node_subnet_ids               = ["subnet-01500a58f2b3b2727", "subnet-015f836d91170a86b", "subnet-0f95da1de4fc8c8ca"]
  nodes_role_arn                = aws_iam_role.nodes-clusters-terra-hunter-com.arn
  nodes_role_name               = aws_iam_role.nodes-clusters-terra-hunter-com.name
  region                        = "eu-west-1"
  subnet_eu-west-1a_id          = "subnet-01500a58f2b3b2727"
  subnet_eu-west-1b_id          = "subnet-0f95da1de4fc8c8ca"
  subnet_eu-west-1c_id          = "subnet-015f836d91170a86b"
  subnet_ids                    = ["subnet-01500a58f2b3b2727", "subnet-015f836d91170a86b", "subnet-0c0574a590053ccba", "subnet-0cf7bd566769b02ba", "subnet-0ea605d885be0b3d2", "subnet-0f95da1de4fc8c8ca"]
  subnet_utility-eu-west-1a_id  = "subnet-0c0574a590053ccba"
  subnet_utility-eu-west-1b_id  = "subnet-0cf7bd566769b02ba"
  subnet_utility-eu-west-1c_id  = "subnet-0ea605d885be0b3d2"
  vpc_cidr_block                = data.aws_vpc.clusters-terra-hunter-com.cidr_block
  vpc_id                        = "vpc-0032cf1a0abb25287"
  vpc_ipv6_cidr_block           = data.aws_vpc.clusters-terra-hunter-com.ipv6_cidr_block
  vpc_ipv6_cidr_length          = local.vpc_ipv6_cidr_block == "" ? null : tonumber(regex(".*/(\\d+)", local.vpc_ipv6_cidr_block)[0])
}

output "bastion_autoscaling_group_ids" {
  value = [aws_autoscaling_group.bastions-clusters-terra-hunter-com.id]
}

output "bastion_security_group_ids" {
  value = [aws_security_group.bastion-clusters-terra-hunter-com.id]
}

output "bastions_role_arn" {
  value = aws_iam_role.bastions-clusters-terra-hunter-com.arn
}

output "bastions_role_name" {
  value = aws_iam_role.bastions-clusters-terra-hunter-com.name
}

output "cluster_name" {
  value = "clusters.terra-hunter.com"
}

output "master_autoscaling_group_ids" {
  value = [aws_autoscaling_group.control-plane-eu-west-1a-masters-clusters-terra-hunter-com.id, aws_autoscaling_group.control-plane-eu-west-1b-masters-clusters-terra-hunter-com.id, aws_autoscaling_group.control-plane-eu-west-1c-masters-clusters-terra-hunter-com.id]
}

output "master_security_group_ids" {
  value = [aws_security_group.masters-clusters-terra-hunter-com.id]
}

output "masters_role_arn" {
  value = aws_iam_role.masters-clusters-terra-hunter-com.arn
}

output "masters_role_name" {
  value = aws_iam_role.masters-clusters-terra-hunter-com.name
}

output "node_autoscaling_group_ids" {
  value = [aws_autoscaling_group.nodes-eu-west-1a-clusters-terra-hunter-com.id, aws_autoscaling_group.nodes-eu-west-1b-clusters-terra-hunter-com.id, aws_autoscaling_group.nodes-eu-west-1c-clusters-terra-hunter-com.id]
}

output "node_security_group_ids" {
  value = [aws_security_group.nodes-clusters-terra-hunter-com.id]
}

output "node_subnet_ids" {
  value = ["subnet-01500a58f2b3b2727", "subnet-015f836d91170a86b", "subnet-0f95da1de4fc8c8ca"]
}

output "nodes_role_arn" {
  value = aws_iam_role.nodes-clusters-terra-hunter-com.arn
}

output "nodes_role_name" {
  value = aws_iam_role.nodes-clusters-terra-hunter-com.name
}

output "region" {
  value = "eu-west-1"
}

output "subnet_eu-west-1a_id" {
  value = "subnet-01500a58f2b3b2727"
}

output "subnet_eu-west-1b_id" {
  value = "subnet-0f95da1de4fc8c8ca"
}

output "subnet_eu-west-1c_id" {
  value = "subnet-015f836d91170a86b"
}

output "subnet_ids" {
  value = ["subnet-01500a58f2b3b2727", "subnet-015f836d91170a86b", "subnet-0c0574a590053ccba", "subnet-0cf7bd566769b02ba", "subnet-0ea605d885be0b3d2", "subnet-0f95da1de4fc8c8ca"]
}

output "subnet_utility-eu-west-1a_id" {
  value = "subnet-0c0574a590053ccba"
}

output "subnet_utility-eu-west-1b_id" {
  value = "subnet-0cf7bd566769b02ba"
}

output "subnet_utility-eu-west-1c_id" {
  value = "subnet-0ea605d885be0b3d2"
}

output "vpc_cidr_block" {
  value = data.aws_vpc.clusters-terra-hunter-com.cidr_block
}

output "vpc_id" {
  value = "vpc-0032cf1a0abb25287"
}

output "vpc_ipv6_cidr_block" {
  value = data.aws_vpc.clusters-terra-hunter-com.ipv6_cidr_block
}

output "vpc_ipv6_cidr_length" {
  value = local.vpc_ipv6_cidr_block == "" ? null : tonumber(regex(".*/(\\d+)", local.vpc_ipv6_cidr_block)[0])
}

provider "aws" {
  region = "eu-west-1"
}

provider "aws" {
  alias  = "files"
  region = "eu-west-1"
}

resource "aws_autoscaling_group" "bastions-clusters-terra-hunter-com" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.bastions-clusters-terra-hunter-com.id
    version = aws_launch_template.bastions-clusters-terra-hunter-com.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "bastions.clusters.terra-hunter.com"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "clusters.terra-hunter.com"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "bastions.clusters.terra-hunter.com"
  }
  tag {
    key                 = "aws-node-termination-handler/managed"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/bastion"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "bastions"
  }
  tag {
    key                 = "kubernetes.io/cluster/clusters.terra-hunter.com"
    propagate_at_launch = true
    value               = "owned"
  }
  target_group_arns   = [aws_lb_target_group.bastion-clusters-terra-hu-un8c0i.id]
  vpc_zone_identifier = ["subnet-01500a58f2b3b2727", "subnet-0f95da1de4fc8c8ca", "subnet-015f836d91170a86b"]
}

resource "aws_autoscaling_group" "control-plane-eu-west-1a-masters-clusters-terra-hunter-com" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.control-plane-eu-west-1a-masters-clusters-terra-hunter-com.id
    version = aws_launch_template.control-plane-eu-west-1a-masters-clusters-terra-hunter-com.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "control-plane-eu-west-1a.masters.clusters.terra-hunter.com"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "clusters.terra-hunter.com"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "control-plane-eu-west-1a.masters.clusters.terra-hunter.com"
  }
  tag {
    key                 = "aws-node-termination-handler/managed"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/control-plane"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "k8s.io/role/master"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "control-plane-eu-west-1a"
  }
  tag {
    key                 = "kubernetes.io/cluster/clusters.terra-hunter.com"
    propagate_at_launch = true
    value               = "owned"
  }
  target_group_arns   = [aws_lb_target_group.tcp-clusters-terra-hunter-6hri46.id]
  vpc_zone_identifier = ["subnet-01500a58f2b3b2727"]
}

resource "aws_autoscaling_group" "control-plane-eu-west-1b-masters-clusters-terra-hunter-com" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.control-plane-eu-west-1b-masters-clusters-terra-hunter-com.id
    version = aws_launch_template.control-plane-eu-west-1b-masters-clusters-terra-hunter-com.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "control-plane-eu-west-1b.masters.clusters.terra-hunter.com"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "clusters.terra-hunter.com"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "control-plane-eu-west-1b.masters.clusters.terra-hunter.com"
  }
  tag {
    key                 = "aws-node-termination-handler/managed"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/control-plane"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "k8s.io/role/master"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "control-plane-eu-west-1b"
  }
  tag {
    key                 = "kubernetes.io/cluster/clusters.terra-hunter.com"
    propagate_at_launch = true
    value               = "owned"
  }
  target_group_arns   = [aws_lb_target_group.tcp-clusters-terra-hunter-6hri46.id]
  vpc_zone_identifier = ["subnet-0f95da1de4fc8c8ca"]
}

resource "aws_autoscaling_group" "control-plane-eu-west-1c-masters-clusters-terra-hunter-com" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.control-plane-eu-west-1c-masters-clusters-terra-hunter-com.id
    version = aws_launch_template.control-plane-eu-west-1c-masters-clusters-terra-hunter-com.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "control-plane-eu-west-1c.masters.clusters.terra-hunter.com"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "clusters.terra-hunter.com"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "control-plane-eu-west-1c.masters.clusters.terra-hunter.com"
  }
  tag {
    key                 = "aws-node-termination-handler/managed"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/control-plane"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "k8s.io/role/master"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "control-plane-eu-west-1c"
  }
  tag {
    key                 = "kubernetes.io/cluster/clusters.terra-hunter.com"
    propagate_at_launch = true
    value               = "owned"
  }
  target_group_arns   = [aws_lb_target_group.tcp-clusters-terra-hunter-6hri46.id]
  vpc_zone_identifier = ["subnet-015f836d91170a86b"]
}

resource "aws_autoscaling_group" "nodes-eu-west-1a-clusters-terra-hunter-com" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-eu-west-1a-clusters-terra-hunter-com.id
    version = aws_launch_template.nodes-eu-west-1a-clusters-terra-hunter-com.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-eu-west-1a.clusters.terra-hunter.com"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "clusters.terra-hunter.com"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-eu-west-1a.clusters.terra-hunter.com"
  }
  tag {
    key                 = "aws-node-termination-handler/managed"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/node"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes-eu-west-1a"
  }
  tag {
    key                 = "kubernetes.io/cluster/clusters.terra-hunter.com"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-01500a58f2b3b2727"]
}

resource "aws_autoscaling_group" "nodes-eu-west-1b-clusters-terra-hunter-com" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-eu-west-1b-clusters-terra-hunter-com.id
    version = aws_launch_template.nodes-eu-west-1b-clusters-terra-hunter-com.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-eu-west-1b.clusters.terra-hunter.com"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "clusters.terra-hunter.com"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-eu-west-1b.clusters.terra-hunter.com"
  }
  tag {
    key                 = "aws-node-termination-handler/managed"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/node"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes-eu-west-1b"
  }
  tag {
    key                 = "kubernetes.io/cluster/clusters.terra-hunter.com"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-0f95da1de4fc8c8ca"]
}

resource "aws_autoscaling_group" "nodes-eu-west-1c-clusters-terra-hunter-com" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-eu-west-1c-clusters-terra-hunter-com.id
    version = aws_launch_template.nodes-eu-west-1c-clusters-terra-hunter-com.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-eu-west-1c.clusters.terra-hunter.com"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "clusters.terra-hunter.com"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-eu-west-1c.clusters.terra-hunter.com"
  }
  tag {
    key                 = "aws-node-termination-handler/managed"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/node"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes-eu-west-1c"
  }
  tag {
    key                 = "kubernetes.io/cluster/clusters.terra-hunter.com"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-015f836d91170a86b"]
}

resource "aws_autoscaling_lifecycle_hook" "bastions-NTHLifecycleHook" {
  autoscaling_group_name = aws_autoscaling_group.bastions-clusters-terra-hunter-com.id
  default_result         = "CONTINUE"
  heartbeat_timeout      = 300
  lifecycle_transition   = "autoscaling:EC2_INSTANCE_TERMINATING"
  name                   = "bastions-NTHLifecycleHook"
}

resource "aws_autoscaling_lifecycle_hook" "control-plane-eu-west-1a-NTHLifecycleHook" {
  autoscaling_group_name = aws_autoscaling_group.control-plane-eu-west-1a-masters-clusters-terra-hunter-com.id
  default_result         = "CONTINUE"
  heartbeat_timeout      = 300
  lifecycle_transition   = "autoscaling:EC2_INSTANCE_TERMINATING"
  name                   = "control-plane-eu-west-1a-NTHLifecycleHook"
}

resource "aws_autoscaling_lifecycle_hook" "control-plane-eu-west-1b-NTHLifecycleHook" {
  autoscaling_group_name = aws_autoscaling_group.control-plane-eu-west-1b-masters-clusters-terra-hunter-com.id
  default_result         = "CONTINUE"
  heartbeat_timeout      = 300
  lifecycle_transition   = "autoscaling:EC2_INSTANCE_TERMINATING"
  name                   = "control-plane-eu-west-1b-NTHLifecycleHook"
}

resource "aws_autoscaling_lifecycle_hook" "control-plane-eu-west-1c-NTHLifecycleHook" {
  autoscaling_group_name = aws_autoscaling_group.control-plane-eu-west-1c-masters-clusters-terra-hunter-com.id
  default_result         = "CONTINUE"
  heartbeat_timeout      = 300
  lifecycle_transition   = "autoscaling:EC2_INSTANCE_TERMINATING"
  name                   = "control-plane-eu-west-1c-NTHLifecycleHook"
}

resource "aws_autoscaling_lifecycle_hook" "nodes-eu-west-1a-NTHLifecycleHook" {
  autoscaling_group_name = aws_autoscaling_group.nodes-eu-west-1a-clusters-terra-hunter-com.id
  default_result         = "CONTINUE"
  heartbeat_timeout      = 300
  lifecycle_transition   = "autoscaling:EC2_INSTANCE_TERMINATING"
  name                   = "nodes-eu-west-1a-NTHLifecycleHook"
}

resource "aws_autoscaling_lifecycle_hook" "nodes-eu-west-1b-NTHLifecycleHook" {
  autoscaling_group_name = aws_autoscaling_group.nodes-eu-west-1b-clusters-terra-hunter-com.id
  default_result         = "CONTINUE"
  heartbeat_timeout      = 300
  lifecycle_transition   = "autoscaling:EC2_INSTANCE_TERMINATING"
  name                   = "nodes-eu-west-1b-NTHLifecycleHook"
}

resource "aws_autoscaling_lifecycle_hook" "nodes-eu-west-1c-NTHLifecycleHook" {
  autoscaling_group_name = aws_autoscaling_group.nodes-eu-west-1c-clusters-terra-hunter-com.id
  default_result         = "CONTINUE"
  heartbeat_timeout      = 300
  lifecycle_transition   = "autoscaling:EC2_INSTANCE_TERMINATING"
  name                   = "nodes-eu-west-1c-NTHLifecycleHook"
}

resource "aws_cloudwatch_event_rule" "clusters-terra-hunter-com-ASGLifecycle" {
  event_pattern = file("${path.module}/data/aws_cloudwatch_event_rule_clusters.terra-hunter.com-ASGLifecycle_event_pattern")
  name          = "clusters.terra-hunter.com-ASGLifecycle"
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "clusters.terra-hunter.com-ASGLifecycle"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
}

resource "aws_cloudwatch_event_rule" "clusters-terra-hunter-com-InstanceScheduledChange" {
  event_pattern = file("${path.module}/data/aws_cloudwatch_event_rule_clusters.terra-hunter.com-InstanceScheduledChange_event_pattern")
  name          = "clusters.terra-hunter.com-InstanceScheduledChange"
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "clusters.terra-hunter.com-InstanceScheduledChange"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
}

resource "aws_cloudwatch_event_rule" "clusters-terra-hunter-com-InstanceStateChange" {
  event_pattern = file("${path.module}/data/aws_cloudwatch_event_rule_clusters.terra-hunter.com-InstanceStateChange_event_pattern")
  name          = "clusters.terra-hunter.com-InstanceStateChange"
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "clusters.terra-hunter.com-InstanceStateChange"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
}

resource "aws_cloudwatch_event_rule" "clusters-terra-hunter-com-SpotInterruption" {
  event_pattern = file("${path.module}/data/aws_cloudwatch_event_rule_clusters.terra-hunter.com-SpotInterruption_event_pattern")
  name          = "clusters.terra-hunter.com-SpotInterruption"
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "clusters.terra-hunter.com-SpotInterruption"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
}

resource "aws_cloudwatch_event_target" "clusters-terra-hunter-com-ASGLifecycle-Target" {
  arn  = aws_sqs_queue.clusters-terra-hunter-com-nth.arn
  rule = aws_cloudwatch_event_rule.clusters-terra-hunter-com-ASGLifecycle.id
}

resource "aws_cloudwatch_event_target" "clusters-terra-hunter-com-InstanceScheduledChange-Target" {
  arn  = aws_sqs_queue.clusters-terra-hunter-com-nth.arn
  rule = aws_cloudwatch_event_rule.clusters-terra-hunter-com-InstanceScheduledChange.id
}

resource "aws_cloudwatch_event_target" "clusters-terra-hunter-com-InstanceStateChange-Target" {
  arn  = aws_sqs_queue.clusters-terra-hunter-com-nth.arn
  rule = aws_cloudwatch_event_rule.clusters-terra-hunter-com-InstanceStateChange.id
}

resource "aws_cloudwatch_event_target" "clusters-terra-hunter-com-SpotInterruption-Target" {
  arn  = aws_sqs_queue.clusters-terra-hunter-com-nth.arn
  rule = aws_cloudwatch_event_rule.clusters-terra-hunter-com-SpotInterruption.id
}

resource "aws_ebs_volume" "a-etcd-events-clusters-terra-hunter-com" {
  availability_zone = "eu-west-1a"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "a.etcd-events.clusters.terra-hunter.com"
    "k8s.io/etcd/events"                              = "a/a,b,c"
    "k8s.io/role/control-plane"                       = "1"
    "k8s.io/role/master"                              = "1"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "a-etcd-main-clusters-terra-hunter-com" {
  availability_zone = "eu-west-1a"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "a.etcd-main.clusters.terra-hunter.com"
    "k8s.io/etcd/main"                                = "a/a,b,c"
    "k8s.io/role/control-plane"                       = "1"
    "k8s.io/role/master"                              = "1"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "b-etcd-events-clusters-terra-hunter-com" {
  availability_zone = "eu-west-1b"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "b.etcd-events.clusters.terra-hunter.com"
    "k8s.io/etcd/events"                              = "b/a,b,c"
    "k8s.io/role/control-plane"                       = "1"
    "k8s.io/role/master"                              = "1"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "b-etcd-main-clusters-terra-hunter-com" {
  availability_zone = "eu-west-1b"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "b.etcd-main.clusters.terra-hunter.com"
    "k8s.io/etcd/main"                                = "b/a,b,c"
    "k8s.io/role/control-plane"                       = "1"
    "k8s.io/role/master"                              = "1"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "c-etcd-events-clusters-terra-hunter-com" {
  availability_zone = "eu-west-1c"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "c.etcd-events.clusters.terra-hunter.com"
    "k8s.io/etcd/events"                              = "c/a,b,c"
    "k8s.io/role/control-plane"                       = "1"
    "k8s.io/role/master"                              = "1"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "c-etcd-main-clusters-terra-hunter-com" {
  availability_zone = "eu-west-1c"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "c.etcd-main.clusters.terra-hunter.com"
    "k8s.io/etcd/main"                                = "c/a,b,c"
    "k8s.io/role/control-plane"                       = "1"
    "k8s.io/role/master"                              = "1"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_iam_instance_profile" "bastions-clusters-terra-hunter-com" {
  name = "bastions.clusters.terra-hunter.com"
  role = aws_iam_role.bastions-clusters-terra-hunter-com.name
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "bastions.clusters.terra-hunter.com"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
}

resource "aws_iam_instance_profile" "masters-clusters-terra-hunter-com" {
  name = "masters.clusters.terra-hunter.com"
  role = aws_iam_role.masters-clusters-terra-hunter-com.name
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "masters.clusters.terra-hunter.com"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
}

resource "aws_iam_instance_profile" "nodes-clusters-terra-hunter-com" {
  name = "nodes.clusters.terra-hunter.com"
  role = aws_iam_role.nodes-clusters-terra-hunter-com.name
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "nodes.clusters.terra-hunter.com"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
}

resource "aws_iam_role" "bastions-clusters-terra-hunter-com" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_bastions.clusters.terra-hunter.com_policy")
  name               = "bastions.clusters.terra-hunter.com"
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "bastions.clusters.terra-hunter.com"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
}

resource "aws_iam_role" "masters-clusters-terra-hunter-com" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_masters.clusters.terra-hunter.com_policy")
  name               = "masters.clusters.terra-hunter.com"
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "masters.clusters.terra-hunter.com"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
}

resource "aws_iam_role" "nodes-clusters-terra-hunter-com" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_nodes.clusters.terra-hunter.com_policy")
  name               = "nodes.clusters.terra-hunter.com"
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "nodes.clusters.terra-hunter.com"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
}

resource "aws_iam_role_policy" "bastions-clusters-terra-hunter-com" {
  name   = "bastions.clusters.terra-hunter.com"
  policy = file("${path.module}/data/aws_iam_role_policy_bastions.clusters.terra-hunter.com_policy")
  role   = aws_iam_role.bastions-clusters-terra-hunter-com.name
}

resource "aws_iam_role_policy" "masters-clusters-terra-hunter-com" {
  name   = "masters.clusters.terra-hunter.com"
  policy = file("${path.module}/data/aws_iam_role_policy_masters.clusters.terra-hunter.com_policy")
  role   = aws_iam_role.masters-clusters-terra-hunter-com.name
}

resource "aws_iam_role_policy" "nodes-clusters-terra-hunter-com" {
  name   = "nodes.clusters.terra-hunter.com"
  policy = file("${path.module}/data/aws_iam_role_policy_nodes.clusters.terra-hunter.com_policy")
  role   = aws_iam_role.nodes-clusters-terra-hunter-com.name
}

resource "aws_key_pair" "kubernetes-clusters-terra-hunter-com-8852d1a55b6b27040907b82754efe922" {
  key_name   = "kubernetes.clusters.terra-hunter.com-88:52:d1:a5:5b:6b:27:04:09:07:b8:27:54:ef:e9:22"
  public_key = file("${path.module}/data/aws_key_pair_kubernetes.clusters.terra-hunter.com-8852d1a55b6b27040907b82754efe922_public_key")
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "clusters.terra-hunter.com"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
}

resource "aws_launch_template" "bastions-clusters-terra-hunter-com" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 32
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.bastions-clusters-terra-hunter-com.id
  }
  image_id      = "ami-01d0334e94e895e89"
  instance_type = "t3.micro"
  key_name      = aws_key_pair.kubernetes-clusters-terra-hunter-com-8852d1a55b6b27040907b82754efe922.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "bastions.clusters.terra-hunter.com"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.bastion-clusters-terra-hunter-com.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                               = "clusters.terra-hunter.com"
      "Name"                                            = "bastions.clusters.terra-hunter.com"
      "aws-node-termination-handler/managed"            = ""
      "k8s.io/role/bastion"                             = "1"
      "kops.k8s.io/instancegroup"                       = "bastions"
      "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                               = "clusters.terra-hunter.com"
      "Name"                                            = "bastions.clusters.terra-hunter.com"
      "aws-node-termination-handler/managed"            = ""
      "k8s.io/role/bastion"                             = "1"
      "kops.k8s.io/instancegroup"                       = "bastions"
      "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
    }
  }
  tag_specifications {
    resource_type = "network-interface"
    tags = {
      "KubernetesCluster"                               = "clusters.terra-hunter.com"
      "Name"                                            = "bastions.clusters.terra-hunter.com"
      "aws-node-termination-handler/managed"            = ""
      "k8s.io/role/bastion"                             = "1"
      "kops.k8s.io/instancegroup"                       = "bastions"
      "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "bastions.clusters.terra-hunter.com"
    "aws-node-termination-handler/managed"            = ""
    "k8s.io/role/bastion"                             = "1"
    "kops.k8s.io/instancegroup"                       = "bastions"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
}

resource "aws_launch_template" "control-plane-eu-west-1a-masters-clusters-terra-hunter-com" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 64
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.masters-clusters-terra-hunter-com.id
  }
  image_id      = "ami-01d0334e94e895e89"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.kubernetes-clusters-terra-hunter-com-8852d1a55b6b27040907b82754efe922.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "control-plane-eu-west-1a.masters.clusters.terra-hunter.com"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.masters-clusters-terra-hunter-com.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                                                     = "clusters.terra-hunter.com"
      "Name"                                                                                                  = "control-plane-eu-west-1a.masters.clusters.terra-hunter.com"
      "aws-node-termination-handler/managed"                                                                  = ""
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/control-plane"                                                                             = "1"
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "control-plane-eu-west-1a"
      "kubernetes.io/cluster/clusters.terra-hunter.com"                                                       = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                                                     = "clusters.terra-hunter.com"
      "Name"                                                                                                  = "control-plane-eu-west-1a.masters.clusters.terra-hunter.com"
      "aws-node-termination-handler/managed"                                                                  = ""
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/control-plane"                                                                             = "1"
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "control-plane-eu-west-1a"
      "kubernetes.io/cluster/clusters.terra-hunter.com"                                                       = "owned"
    }
  }
  tag_specifications {
    resource_type = "network-interface"
    tags = {
      "KubernetesCluster"                                                                                     = "clusters.terra-hunter.com"
      "Name"                                                                                                  = "control-plane-eu-west-1a.masters.clusters.terra-hunter.com"
      "aws-node-termination-handler/managed"                                                                  = ""
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/control-plane"                                                                             = "1"
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "control-plane-eu-west-1a"
      "kubernetes.io/cluster/clusters.terra-hunter.com"                                                       = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                                                     = "clusters.terra-hunter.com"
    "Name"                                                                                                  = "control-plane-eu-west-1a.masters.clusters.terra-hunter.com"
    "aws-node-termination-handler/managed"                                                                  = ""
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
    "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
    "k8s.io/role/control-plane"                                                                             = "1"
    "k8s.io/role/master"                                                                                    = "1"
    "kops.k8s.io/instancegroup"                                                                             = "control-plane-eu-west-1a"
    "kubernetes.io/cluster/clusters.terra-hunter.com"                                                       = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_control-plane-eu-west-1a.masters.clusters.terra-hunter.com_user_data")
}

resource "aws_launch_template" "control-plane-eu-west-1b-masters-clusters-terra-hunter-com" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 64
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.masters-clusters-terra-hunter-com.id
  }
  image_id      = "ami-01d0334e94e895e89"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.kubernetes-clusters-terra-hunter-com-8852d1a55b6b27040907b82754efe922.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "control-plane-eu-west-1b.masters.clusters.terra-hunter.com"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.masters-clusters-terra-hunter-com.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                                                     = "clusters.terra-hunter.com"
      "Name"                                                                                                  = "control-plane-eu-west-1b.masters.clusters.terra-hunter.com"
      "aws-node-termination-handler/managed"                                                                  = ""
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/control-plane"                                                                             = "1"
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "control-plane-eu-west-1b"
      "kubernetes.io/cluster/clusters.terra-hunter.com"                                                       = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                                                     = "clusters.terra-hunter.com"
      "Name"                                                                                                  = "control-plane-eu-west-1b.masters.clusters.terra-hunter.com"
      "aws-node-termination-handler/managed"                                                                  = ""
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/control-plane"                                                                             = "1"
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "control-plane-eu-west-1b"
      "kubernetes.io/cluster/clusters.terra-hunter.com"                                                       = "owned"
    }
  }
  tag_specifications {
    resource_type = "network-interface"
    tags = {
      "KubernetesCluster"                                                                                     = "clusters.terra-hunter.com"
      "Name"                                                                                                  = "control-plane-eu-west-1b.masters.clusters.terra-hunter.com"
      "aws-node-termination-handler/managed"                                                                  = ""
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/control-plane"                                                                             = "1"
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "control-plane-eu-west-1b"
      "kubernetes.io/cluster/clusters.terra-hunter.com"                                                       = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                                                     = "clusters.terra-hunter.com"
    "Name"                                                                                                  = "control-plane-eu-west-1b.masters.clusters.terra-hunter.com"
    "aws-node-termination-handler/managed"                                                                  = ""
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
    "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
    "k8s.io/role/control-plane"                                                                             = "1"
    "k8s.io/role/master"                                                                                    = "1"
    "kops.k8s.io/instancegroup"                                                                             = "control-plane-eu-west-1b"
    "kubernetes.io/cluster/clusters.terra-hunter.com"                                                       = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_control-plane-eu-west-1b.masters.clusters.terra-hunter.com_user_data")
}

resource "aws_launch_template" "control-plane-eu-west-1c-masters-clusters-terra-hunter-com" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 64
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.masters-clusters-terra-hunter-com.id
  }
  image_id      = "ami-01d0334e94e895e89"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.kubernetes-clusters-terra-hunter-com-8852d1a55b6b27040907b82754efe922.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "control-plane-eu-west-1c.masters.clusters.terra-hunter.com"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.masters-clusters-terra-hunter-com.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                                                     = "clusters.terra-hunter.com"
      "Name"                                                                                                  = "control-plane-eu-west-1c.masters.clusters.terra-hunter.com"
      "aws-node-termination-handler/managed"                                                                  = ""
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/control-plane"                                                                             = "1"
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "control-plane-eu-west-1c"
      "kubernetes.io/cluster/clusters.terra-hunter.com"                                                       = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                                                     = "clusters.terra-hunter.com"
      "Name"                                                                                                  = "control-plane-eu-west-1c.masters.clusters.terra-hunter.com"
      "aws-node-termination-handler/managed"                                                                  = ""
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/control-plane"                                                                             = "1"
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "control-plane-eu-west-1c"
      "kubernetes.io/cluster/clusters.terra-hunter.com"                                                       = "owned"
    }
  }
  tag_specifications {
    resource_type = "network-interface"
    tags = {
      "KubernetesCluster"                                                                                     = "clusters.terra-hunter.com"
      "Name"                                                                                                  = "control-plane-eu-west-1c.masters.clusters.terra-hunter.com"
      "aws-node-termination-handler/managed"                                                                  = ""
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/control-plane"                                                                             = "1"
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "control-plane-eu-west-1c"
      "kubernetes.io/cluster/clusters.terra-hunter.com"                                                       = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                                                     = "clusters.terra-hunter.com"
    "Name"                                                                                                  = "control-plane-eu-west-1c.masters.clusters.terra-hunter.com"
    "aws-node-termination-handler/managed"                                                                  = ""
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
    "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
    "k8s.io/role/control-plane"                                                                             = "1"
    "k8s.io/role/master"                                                                                    = "1"
    "kops.k8s.io/instancegroup"                                                                             = "control-plane-eu-west-1c"
    "kubernetes.io/cluster/clusters.terra-hunter.com"                                                       = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_control-plane-eu-west-1c.masters.clusters.terra-hunter.com_user_data")
}

resource "aws_launch_template" "nodes-eu-west-1a-clusters-terra-hunter-com" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 128
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.nodes-clusters-terra-hunter-com.id
  }
  image_id      = "ami-01d0334e94e895e89"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.kubernetes-clusters-terra-hunter-com-8852d1a55b6b27040907b82754efe922.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "nodes-eu-west-1a.clusters.terra-hunter.com"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-clusters-terra-hunter-com.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "clusters.terra-hunter.com"
      "Name"                                                                       = "nodes-eu-west-1a.clusters.terra-hunter.com"
      "aws-node-termination-handler/managed"                                       = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-eu-west-1a"
      "kubernetes.io/cluster/clusters.terra-hunter.com"                            = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "clusters.terra-hunter.com"
      "Name"                                                                       = "nodes-eu-west-1a.clusters.terra-hunter.com"
      "aws-node-termination-handler/managed"                                       = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-eu-west-1a"
      "kubernetes.io/cluster/clusters.terra-hunter.com"                            = "owned"
    }
  }
  tag_specifications {
    resource_type = "network-interface"
    tags = {
      "KubernetesCluster"                                                          = "clusters.terra-hunter.com"
      "Name"                                                                       = "nodes-eu-west-1a.clusters.terra-hunter.com"
      "aws-node-termination-handler/managed"                                       = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-eu-west-1a"
      "kubernetes.io/cluster/clusters.terra-hunter.com"                            = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "clusters.terra-hunter.com"
    "Name"                                                                       = "nodes-eu-west-1a.clusters.terra-hunter.com"
    "aws-node-termination-handler/managed"                                       = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-eu-west-1a"
    "kubernetes.io/cluster/clusters.terra-hunter.com"                            = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-eu-west-1a.clusters.terra-hunter.com_user_data")
}

resource "aws_launch_template" "nodes-eu-west-1b-clusters-terra-hunter-com" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 128
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.nodes-clusters-terra-hunter-com.id
  }
  image_id      = "ami-01d0334e94e895e89"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.kubernetes-clusters-terra-hunter-com-8852d1a55b6b27040907b82754efe922.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "nodes-eu-west-1b.clusters.terra-hunter.com"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-clusters-terra-hunter-com.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "clusters.terra-hunter.com"
      "Name"                                                                       = "nodes-eu-west-1b.clusters.terra-hunter.com"
      "aws-node-termination-handler/managed"                                       = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-eu-west-1b"
      "kubernetes.io/cluster/clusters.terra-hunter.com"                            = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "clusters.terra-hunter.com"
      "Name"                                                                       = "nodes-eu-west-1b.clusters.terra-hunter.com"
      "aws-node-termination-handler/managed"                                       = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-eu-west-1b"
      "kubernetes.io/cluster/clusters.terra-hunter.com"                            = "owned"
    }
  }
  tag_specifications {
    resource_type = "network-interface"
    tags = {
      "KubernetesCluster"                                                          = "clusters.terra-hunter.com"
      "Name"                                                                       = "nodes-eu-west-1b.clusters.terra-hunter.com"
      "aws-node-termination-handler/managed"                                       = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-eu-west-1b"
      "kubernetes.io/cluster/clusters.terra-hunter.com"                            = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "clusters.terra-hunter.com"
    "Name"                                                                       = "nodes-eu-west-1b.clusters.terra-hunter.com"
    "aws-node-termination-handler/managed"                                       = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-eu-west-1b"
    "kubernetes.io/cluster/clusters.terra-hunter.com"                            = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-eu-west-1b.clusters.terra-hunter.com_user_data")
}

resource "aws_launch_template" "nodes-eu-west-1c-clusters-terra-hunter-com" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 128
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.nodes-clusters-terra-hunter-com.id
  }
  image_id      = "ami-01d0334e94e895e89"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.kubernetes-clusters-terra-hunter-com-8852d1a55b6b27040907b82754efe922.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "nodes-eu-west-1c.clusters.terra-hunter.com"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-clusters-terra-hunter-com.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "clusters.terra-hunter.com"
      "Name"                                                                       = "nodes-eu-west-1c.clusters.terra-hunter.com"
      "aws-node-termination-handler/managed"                                       = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-eu-west-1c"
      "kubernetes.io/cluster/clusters.terra-hunter.com"                            = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "clusters.terra-hunter.com"
      "Name"                                                                       = "nodes-eu-west-1c.clusters.terra-hunter.com"
      "aws-node-termination-handler/managed"                                       = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-eu-west-1c"
      "kubernetes.io/cluster/clusters.terra-hunter.com"                            = "owned"
    }
  }
  tag_specifications {
    resource_type = "network-interface"
    tags = {
      "KubernetesCluster"                                                          = "clusters.terra-hunter.com"
      "Name"                                                                       = "nodes-eu-west-1c.clusters.terra-hunter.com"
      "aws-node-termination-handler/managed"                                       = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-eu-west-1c"
      "kubernetes.io/cluster/clusters.terra-hunter.com"                            = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "clusters.terra-hunter.com"
    "Name"                                                                       = "nodes-eu-west-1c.clusters.terra-hunter.com"
    "aws-node-termination-handler/managed"                                       = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-eu-west-1c"
    "kubernetes.io/cluster/clusters.terra-hunter.com"                            = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-eu-west-1c.clusters.terra-hunter.com_user_data")
}

resource "aws_lb" "api-clusters-terra-hunter-com" {
  enable_cross_zone_load_balancing = false
  internal                         = false
  load_balancer_type               = "network"
  name                             = "api-clusters-terra-hunter-5unlo4"
  security_groups                  = [aws_security_group.api-elb-clusters-terra-hunter-com.id]
  subnet_mapping {
    subnet_id = "subnet-0c0574a590053ccba"
  }
  subnet_mapping {
    subnet_id = "subnet-0cf7bd566769b02ba"
  }
  subnet_mapping {
    subnet_id = "subnet-0ea605d885be0b3d2"
  }
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "api.clusters.terra-hunter.com"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
}

resource "aws_lb" "bastion-clusters-terra-hunter-com" {
  enable_cross_zone_load_balancing = false
  internal                         = false
  load_balancer_type               = "network"
  name                             = "bastion-clusters-terra-hu-un8c0i"
  security_groups                  = [aws_security_group.bastion-elb-clusters-terra-hunter-com.id]
  subnet_mapping {
    subnet_id = "subnet-0c0574a590053ccba"
  }
  subnet_mapping {
    subnet_id = "subnet-0cf7bd566769b02ba"
  }
  subnet_mapping {
    subnet_id = "subnet-0ea605d885be0b3d2"
  }
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "bastion.clusters.terra-hunter.com"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
}

resource "aws_lb_listener" "api-clusters-terra-hunter-com-443" {
  default_action {
    target_group_arn = aws_lb_target_group.tcp-clusters-terra-hunter-6hri46.id
    type             = "forward"
  }
  load_balancer_arn = aws_lb.api-clusters-terra-hunter-com.id
  port              = 443
  protocol          = "TCP"
}

resource "aws_lb_listener" "bastion-clusters-terra-hunter-com-22" {
  default_action {
    target_group_arn = aws_lb_target_group.bastion-clusters-terra-hu-un8c0i.id
    type             = "forward"
  }
  load_balancer_arn = aws_lb.bastion-clusters-terra-hunter-com.id
  port              = 22
  protocol          = "TCP"
}

resource "aws_lb_target_group" "bastion-clusters-terra-hu-un8c0i" {
  connection_termination = "true"
  deregistration_delay   = "30"
  health_check {
    healthy_threshold   = 2
    interval            = 10
    protocol            = "TCP"
    unhealthy_threshold = 2
  }
  name     = "bastion-clusters-terra-hu-un8c0i"
  port     = 22
  protocol = "TCP"
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "bastion-clusters-terra-hu-un8c0i"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
  vpc_id = "vpc-0032cf1a0abb25287"
}

resource "aws_lb_target_group" "tcp-clusters-terra-hunter-6hri46" {
  connection_termination = "true"
  deregistration_delay   = "30"
  health_check {
    healthy_threshold   = 2
    interval            = 10
    protocol            = "TCP"
    unhealthy_threshold = 2
  }
  name     = "tcp-clusters-terra-hunter-6hri46"
  port     = 443
  protocol = "TCP"
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "tcp-clusters-terra-hunter-6hri46"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
  vpc_id = "vpc-0032cf1a0abb25287"
}

resource "aws_route53_record" "api-clusters-terra-hunter-com" {
  alias {
    evaluate_target_health = false
    name                   = aws_lb.api-clusters-terra-hunter-com.dns_name
    zone_id                = aws_lb.api-clusters-terra-hunter-com.zone_id
  }
  name    = "api.clusters.terra-hunter.com"
  type    = "A"
  zone_id = "/hostedzone/Z0709494BXH1YN6N45CV"
}

resource "aws_route53_record" "api-clusters-terra-hunter-com-AAAA" {
  alias {
    evaluate_target_health = false
    name                   = aws_lb.api-clusters-terra-hunter-com.dns_name
    zone_id                = aws_lb.api-clusters-terra-hunter-com.zone_id
  }
  name    = "api.clusters.terra-hunter.com"
  type    = "AAAA"
  zone_id = "/hostedzone/Z0709494BXH1YN6N45CV"
}

resource "aws_route53_record" "bastion-clusters-terra-hunter-com" {
  alias {
    evaluate_target_health = false
    name                   = aws_lb.bastion-clusters-terra-hunter-com.dns_name
    zone_id                = aws_lb.bastion-clusters-terra-hunter-com.zone_id
  }
  name    = "bastion.clusters.terra-hunter.com"
  type    = "A"
  zone_id = "/hostedzone/Z0709494BXH1YN6N45CV"
}

resource "aws_route53_record" "bastion-clusters-terra-hunter-com-AAAA" {
  alias {
    evaluate_target_health = false
    name                   = aws_lb.bastion-clusters-terra-hunter-com.dns_name
    zone_id                = aws_lb.bastion-clusters-terra-hunter-com.zone_id
  }
  name    = "bastion.clusters.terra-hunter.com"
  type    = "AAAA"
  zone_id = "/hostedzone/Z0709494BXH1YN6N45CV"
}

resource "aws_s3_object" "cluster-completed-spec" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_cluster-completed.spec_content")
  key      = "clusters.terra-hunter.com/cluster-completed.spec"
  provider = aws.files
}

resource "aws_s3_object" "clusters-terra-hunter-com-addons-aws-cloud-controller-addons-k8s-io-k8s-1-18" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_clusters.terra-hunter.com-addons-aws-cloud-controller.addons.k8s.io-k8s-1.18_content")
  key      = "clusters.terra-hunter.com/addons/aws-cloud-controller.addons.k8s.io/k8s-1.18.yaml"
  provider = aws.files
}

resource "aws_s3_object" "clusters-terra-hunter-com-addons-aws-ebs-csi-driver-addons-k8s-io-k8s-1-17" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_clusters.terra-hunter.com-addons-aws-ebs-csi-driver.addons.k8s.io-k8s-1.17_content")
  key      = "clusters.terra-hunter.com/addons/aws-ebs-csi-driver.addons.k8s.io/k8s-1.17.yaml"
  provider = aws.files
}

resource "aws_s3_object" "clusters-terra-hunter-com-addons-bootstrap" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_clusters.terra-hunter.com-addons-bootstrap_content")
  key      = "clusters.terra-hunter.com/addons/bootstrap-channel.yaml"
  provider = aws.files
}

resource "aws_s3_object" "clusters-terra-hunter-com-addons-coredns-addons-k8s-io-k8s-1-12" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_clusters.terra-hunter.com-addons-coredns.addons.k8s.io-k8s-1.12_content")
  key      = "clusters.terra-hunter.com/addons/coredns.addons.k8s.io/k8s-1.12.yaml"
  provider = aws.files
}

resource "aws_s3_object" "clusters-terra-hunter-com-addons-dns-controller-addons-k8s-io-k8s-1-12" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_clusters.terra-hunter.com-addons-dns-controller.addons.k8s.io-k8s-1.12_content")
  key      = "clusters.terra-hunter.com/addons/dns-controller.addons.k8s.io/k8s-1.12.yaml"
  provider = aws.files
}

resource "aws_s3_object" "clusters-terra-hunter-com-addons-kops-controller-addons-k8s-io-k8s-1-16" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_clusters.terra-hunter.com-addons-kops-controller.addons.k8s.io-k8s-1.16_content")
  key      = "clusters.terra-hunter.com/addons/kops-controller.addons.k8s.io/k8s-1.16.yaml"
  provider = aws.files
}

resource "aws_s3_object" "clusters-terra-hunter-com-addons-kubelet-api-rbac-addons-k8s-io-k8s-1-9" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_clusters.terra-hunter.com-addons-kubelet-api.rbac.addons.k8s.io-k8s-1.9_content")
  key      = "clusters.terra-hunter.com/addons/kubelet-api.rbac.addons.k8s.io/k8s-1.9.yaml"
  provider = aws.files
}

resource "aws_s3_object" "clusters-terra-hunter-com-addons-limit-range-addons-k8s-io" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_clusters.terra-hunter.com-addons-limit-range.addons.k8s.io_content")
  key      = "clusters.terra-hunter.com/addons/limit-range.addons.k8s.io/v1.5.0.yaml"
  provider = aws.files
}

resource "aws_s3_object" "clusters-terra-hunter-com-addons-networking-amazon-vpc-routed-eni-k8s-1-16" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_clusters.terra-hunter.com-addons-networking.amazon-vpc-routed-eni-k8s-1.16_content")
  key      = "clusters.terra-hunter.com/addons/networking.amazon-vpc-routed-eni/k8s-1.16.yaml"
  provider = aws.files
}

resource "aws_s3_object" "clusters-terra-hunter-com-addons-node-termination-handler-aws-k8s-1-11" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_clusters.terra-hunter.com-addons-node-termination-handler.aws-k8s-1.11_content")
  key      = "clusters.terra-hunter.com/addons/node-termination-handler.aws/k8s-1.11.yaml"
  provider = aws.files
}

resource "aws_s3_object" "clusters-terra-hunter-com-addons-storage-aws-addons-k8s-io-v1-15-0" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_clusters.terra-hunter.com-addons-storage-aws.addons.k8s.io-v1.15.0_content")
  key      = "clusters.terra-hunter.com/addons/storage-aws.addons.k8s.io/v1.15.0.yaml"
  provider = aws.files
}

resource "aws_s3_object" "etcd-cluster-spec-events" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_etcd-cluster-spec-events_content")
  key      = "clusters.terra-hunter.com/backups/etcd/events/control/etcd-cluster-spec"
  provider = aws.files
}

resource "aws_s3_object" "etcd-cluster-spec-main" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_etcd-cluster-spec-main_content")
  key      = "clusters.terra-hunter.com/backups/etcd/main/control/etcd-cluster-spec"
  provider = aws.files
}

resource "aws_s3_object" "kops-version-txt" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_kops-version.txt_content")
  key      = "clusters.terra-hunter.com/kops-version.txt"
  provider = aws.files
}

resource "aws_s3_object" "manifests-etcdmanager-events-control-plane-eu-west-1a" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-events-control-plane-eu-west-1a_content")
  key      = "clusters.terra-hunter.com/manifests/etcd/events-control-plane-eu-west-1a.yaml"
  provider = aws.files
}

resource "aws_s3_object" "manifests-etcdmanager-events-control-plane-eu-west-1b" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-events-control-plane-eu-west-1b_content")
  key      = "clusters.terra-hunter.com/manifests/etcd/events-control-plane-eu-west-1b.yaml"
  provider = aws.files
}

resource "aws_s3_object" "manifests-etcdmanager-events-control-plane-eu-west-1c" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-events-control-plane-eu-west-1c_content")
  key      = "clusters.terra-hunter.com/manifests/etcd/events-control-plane-eu-west-1c.yaml"
  provider = aws.files
}

resource "aws_s3_object" "manifests-etcdmanager-main-control-plane-eu-west-1a" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-main-control-plane-eu-west-1a_content")
  key      = "clusters.terra-hunter.com/manifests/etcd/main-control-plane-eu-west-1a.yaml"
  provider = aws.files
}

resource "aws_s3_object" "manifests-etcdmanager-main-control-plane-eu-west-1b" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-main-control-plane-eu-west-1b_content")
  key      = "clusters.terra-hunter.com/manifests/etcd/main-control-plane-eu-west-1b.yaml"
  provider = aws.files
}

resource "aws_s3_object" "manifests-etcdmanager-main-control-plane-eu-west-1c" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-main-control-plane-eu-west-1c_content")
  key      = "clusters.terra-hunter.com/manifests/etcd/main-control-plane-eu-west-1c.yaml"
  provider = aws.files
}

resource "aws_s3_object" "manifests-static-kube-apiserver-healthcheck" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_manifests-static-kube-apiserver-healthcheck_content")
  key      = "clusters.terra-hunter.com/manifests/static/kube-apiserver-healthcheck.yaml"
  provider = aws.files
}

resource "aws_s3_object" "nodeupconfig-control-plane-eu-west-1a" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_nodeupconfig-control-plane-eu-west-1a_content")
  key      = "clusters.terra-hunter.com/igconfig/control-plane/control-plane-eu-west-1a/nodeupconfig.yaml"
  provider = aws.files
}

resource "aws_s3_object" "nodeupconfig-control-plane-eu-west-1b" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_nodeupconfig-control-plane-eu-west-1b_content")
  key      = "clusters.terra-hunter.com/igconfig/control-plane/control-plane-eu-west-1b/nodeupconfig.yaml"
  provider = aws.files
}

resource "aws_s3_object" "nodeupconfig-control-plane-eu-west-1c" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_nodeupconfig-control-plane-eu-west-1c_content")
  key      = "clusters.terra-hunter.com/igconfig/control-plane/control-plane-eu-west-1c/nodeupconfig.yaml"
  provider = aws.files
}

resource "aws_s3_object" "nodeupconfig-nodes-eu-west-1a" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-eu-west-1a_content")
  key      = "clusters.terra-hunter.com/igconfig/node/nodes-eu-west-1a/nodeupconfig.yaml"
  provider = aws.files
}

resource "aws_s3_object" "nodeupconfig-nodes-eu-west-1b" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-eu-west-1b_content")
  key      = "clusters.terra-hunter.com/igconfig/node/nodes-eu-west-1b/nodeupconfig.yaml"
  provider = aws.files
}

resource "aws_s3_object" "nodeupconfig-nodes-eu-west-1c" {
  bucket   = "taskapp-hunter-terraform-state"
  content  = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-eu-west-1c_content")
  key      = "clusters.terra-hunter.com/igconfig/node/nodes-eu-west-1c/nodeupconfig.yaml"
  provider = aws.files
}

resource "aws_security_group" "api-elb-clusters-terra-hunter-com" {
  description = "Security group for api ELB"
  name        = "api-elb.clusters.terra-hunter.com"
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "api-elb.clusters.terra-hunter.com"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
  vpc_id = "vpc-0032cf1a0abb25287"
}

resource "aws_security_group" "bastion-clusters-terra-hunter-com" {
  description = "Security group for bastion"
  name        = "bastion.clusters.terra-hunter.com"
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "bastion.clusters.terra-hunter.com"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
  vpc_id = "vpc-0032cf1a0abb25287"
}

resource "aws_security_group" "bastion-elb-clusters-terra-hunter-com" {
  description = "Security group for bastion ELB"
  name        = "bastion-elb.clusters.terra-hunter.com"
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "bastion-elb.clusters.terra-hunter.com"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
  vpc_id = "vpc-0032cf1a0abb25287"
}

resource "aws_security_group" "masters-clusters-terra-hunter-com" {
  description = "Security group for masters"
  name        = "masters.clusters.terra-hunter.com"
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "masters.clusters.terra-hunter.com"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
  vpc_id = "vpc-0032cf1a0abb25287"
}

resource "aws_security_group" "nodes-clusters-terra-hunter-com" {
  description = "Security group for nodes"
  name        = "nodes.clusters.terra-hunter.com"
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "nodes.clusters.terra-hunter.com"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
  vpc_id = "vpc-0032cf1a0abb25287"
}

resource "aws_security_group_rule" "from-0-0-0-0--0-ingress-tcp-22to22-bastion-elb-clusters-terra-hunter-com" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-elb-clusters-terra-hunter-com.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-0-0-0-0--0-ingress-tcp-443to443-api-elb-clusters-terra-hunter-com" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.api-elb-clusters-terra-hunter-com.id
  to_port           = 443
  type              = "ingress"
}

resource "aws_security_group_rule" "from-10-0-1-0--24-ingress-tcp-22to22-bastion-elb-clusters-terra-hunter-com" {
  cidr_blocks       = ["10.0.1.0/24"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-elb-clusters-terra-hunter-com.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-10-0-2-0--24-ingress-tcp-22to22-bastion-elb-clusters-terra-hunter-com" {
  cidr_blocks       = ["10.0.2.0/24"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-elb-clusters-terra-hunter-com.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-10-0-3-0--24-ingress-tcp-22to22-bastion-elb-clusters-terra-hunter-com" {
  cidr_blocks       = ["10.0.3.0/24"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-elb-clusters-terra-hunter-com.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-__--0-ingress-tcp-22to22-bastion-elb-clusters-terra-hunter-com" {
  from_port         = 22
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-elb-clusters-terra-hunter-com.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-__--0-ingress-tcp-443to443-api-elb-clusters-terra-hunter-com" {
  from_port         = 443
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "tcp"
  security_group_id = aws_security_group.api-elb-clusters-terra-hunter-com.id
  to_port           = 443
  type              = "ingress"
}

resource "aws_security_group_rule" "from-api-elb-clusters-terra-hunter-com-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.api-elb-clusters-terra-hunter-com.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-api-elb-clusters-terra-hunter-com-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.api-elb-clusters-terra-hunter-com.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-clusters-terra-hunter-com-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-clusters-terra-hunter-com.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-clusters-terra-hunter-com-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-clusters-terra-hunter-com.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-clusters-terra-hunter-com-ingress-icmp-3to4-bastion-elb-clusters-terra-hunter-com" {
  from_port                = 3
  protocol                 = "icmp"
  security_group_id        = aws_security_group.bastion-elb-clusters-terra-hunter-com.id
  source_security_group_id = aws_security_group.bastion-clusters-terra-hunter-com.id
  to_port                  = 4
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-bastion-clusters-terra-hunter-com-ingress-tcp-22to22-masters-clusters-terra-hunter-com" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-clusters-terra-hunter-com.id
  source_security_group_id = aws_security_group.bastion-clusters-terra-hunter-com.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-bastion-clusters-terra-hunter-com-ingress-tcp-22to22-nodes-clusters-terra-hunter-com" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.nodes-clusters-terra-hunter-com.id
  source_security_group_id = aws_security_group.bastion-clusters-terra-hunter-com.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-bastion-elb-clusters-terra-hunter-com-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-elb-clusters-terra-hunter-com.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-elb-clusters-terra-hunter-com-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-elb-clusters-terra-hunter-com.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-elb-clusters-terra-hunter-com-ingress-icmp-3to4-bastion-clusters-terra-hunter-com" {
  from_port                = 3
  protocol                 = "icmp"
  security_group_id        = aws_security_group.bastion-clusters-terra-hunter-com.id
  source_security_group_id = aws_security_group.bastion-elb-clusters-terra-hunter-com.id
  to_port                  = 4
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-bastion-elb-clusters-terra-hunter-com-ingress-tcp-22to22-bastion-clusters-terra-hunter-com" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.bastion-clusters-terra-hunter-com.id
  source_security_group_id = aws_security_group.bastion-elb-clusters-terra-hunter-com.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-masters-clusters-terra-hunter-com-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.masters-clusters-terra-hunter-com.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-masters-clusters-terra-hunter-com-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.masters-clusters-terra-hunter-com.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-masters-clusters-terra-hunter-com-ingress-all-0to0-masters-clusters-terra-hunter-com" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.masters-clusters-terra-hunter-com.id
  source_security_group_id = aws_security_group.masters-clusters-terra-hunter-com.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-masters-clusters-terra-hunter-com-ingress-all-0to0-nodes-clusters-terra-hunter-com" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-clusters-terra-hunter-com.id
  source_security_group_id = aws_security_group.masters-clusters-terra-hunter-com.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-clusters-terra-hunter-com-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.nodes-clusters-terra-hunter-com.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-nodes-clusters-terra-hunter-com-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.nodes-clusters-terra-hunter-com.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-nodes-clusters-terra-hunter-com-ingress-all-0to0-masters-clusters-terra-hunter-com" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.masters-clusters-terra-hunter-com.id
  source_security_group_id = aws_security_group.nodes-clusters-terra-hunter-com.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-clusters-terra-hunter-com-ingress-all-0to0-nodes-clusters-terra-hunter-com" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-clusters-terra-hunter-com.id
  source_security_group_id = aws_security_group.nodes-clusters-terra-hunter-com.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-clusters-terra-hunter-com-ingress-tcp-1to2379-masters-clusters-terra-hunter-com" {
  from_port                = 1
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-clusters-terra-hunter-com.id
  source_security_group_id = aws_security_group.nodes-clusters-terra-hunter-com.id
  to_port                  = 2379
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-clusters-terra-hunter-com-ingress-tcp-2382to4000-masters-clusters-terra-hunter-com" {
  from_port                = 2382
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-clusters-terra-hunter-com.id
  source_security_group_id = aws_security_group.nodes-clusters-terra-hunter-com.id
  to_port                  = 4000
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-clusters-terra-hunter-com-ingress-tcp-4003to65535-masters-clusters-terra-hunter-com" {
  from_port                = 4003
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-clusters-terra-hunter-com.id
  source_security_group_id = aws_security_group.nodes-clusters-terra-hunter-com.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-clusters-terra-hunter-com-ingress-udp-1to65535-masters-clusters-terra-hunter-com" {
  from_port                = 1
  protocol                 = "udp"
  security_group_id        = aws_security_group.masters-clusters-terra-hunter-com.id
  source_security_group_id = aws_security_group.nodes-clusters-terra-hunter-com.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "https-elb-to-master" {
  from_port                = 443
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-clusters-terra-hunter-com.id
  source_security_group_id = aws_security_group.api-elb-clusters-terra-hunter-com.id
  to_port                  = 443
  type                     = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.api-elb-clusters-terra-hunter-com.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-cp-to-elb" {
  from_port                = 3
  protocol                 = "icmp"
  security_group_id        = aws_security_group.api-elb-clusters-terra-hunter-com.id
  source_security_group_id = aws_security_group.masters-clusters-terra-hunter-com.id
  to_port                  = 4
  type                     = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-elb-to-cp" {
  from_port                = 3
  protocol                 = "icmp"
  security_group_id        = aws_security_group.masters-clusters-terra-hunter-com.id
  source_security_group_id = aws_security_group.api-elb-clusters-terra-hunter-com.id
  to_port                  = 4
  type                     = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-ssh-nlb-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.bastion-elb-clusters-terra-hunter-com.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-ssh-nlb-10-0-1-0--24" {
  cidr_blocks       = ["10.0.1.0/24"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.bastion-elb-clusters-terra-hunter-com.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-ssh-nlb-10-0-2-0--24" {
  cidr_blocks       = ["10.0.2.0/24"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.bastion-elb-clusters-terra-hunter-com.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-ssh-nlb-10-0-3-0--24" {
  cidr_blocks       = ["10.0.3.0/24"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.bastion-elb-clusters-terra-hunter-com.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_security_group_rule" "icmpv6-pmtu-api-elb-__--0" {
  from_port         = -1
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "icmpv6"
  security_group_id = aws_security_group.api-elb-clusters-terra-hunter-com.id
  to_port           = -1
  type              = "ingress"
}

resource "aws_security_group_rule" "icmpv6-pmtu-ssh-nlb-__--0" {
  from_port         = -1
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "icmpv6"
  security_group_id = aws_security_group.bastion-elb-clusters-terra-hunter-com.id
  to_port           = -1
  type              = "ingress"
}

resource "aws_sqs_queue" "clusters-terra-hunter-com-nth" {
  message_retention_seconds = 300
  name                      = "clusters-terra-hunter-com-nth"
  policy                    = file("${path.module}/data/aws_sqs_queue_clusters-terra-hunter-com-nth_policy")
  tags = {
    "KubernetesCluster"                               = "clusters.terra-hunter.com"
    "Name"                                            = "clusters-terra-hunter-com-nth"
    "kubernetes.io/cluster/clusters.terra-hunter.com" = "owned"
  }
}

data "aws_vpc" "clusters-terra-hunter-com" {
  id = "vpc-0032cf1a0abb25287"
}

terraform {
  required_version = ">= 0.15.0"
  required_providers {
    aws = {
      "configuration_aliases" = [aws.files]
      "source"                = "hashicorp/aws"
      "version"               = ">= 5.0.0"
    }
  }
}
