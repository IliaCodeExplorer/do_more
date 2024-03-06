module "kubernetes_master" {
  source = "./ec2"

  instance_type = "t2.large"
  instance_count = 1
  role = "master"
}

module "kubernetes_workers" {
  source = "./ec2"
  role = "worker"
}
