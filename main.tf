# module "bq" {
#   source       = "./Big-Query"
#   dataset_name = "first-dataset"
# }

# module "gke" {
#   source                   = "./GKE"
#   cluster_region           = "us-central1"
#   cluster_zones_list       = ["us-central1-c", "us-central1-f"]
#   machine_type             = "e2-standard-2"
#   number_of_nodes_per_zone = 2
#   cluster_name             = "first-gke"
#   master_node_cidr         = "172.16.0.32/28"
#   vpc_id                   = module.network.vpc_id
#   subnet_id                = module.network.subnet_id
# }

# module "gs-bucket" {
#   source        = "./GS-Bucket"
#   bucket_name   = "first-bucket"
#   storage_class = "STANDARD"
# }

# module "network" {
#   source      = "./Network"
#   vpc_cidr    = "10.1.0.0/16"
#   vpc_name    = "first-vpc"
#   subnet_cidr = "10.0.1.0/24"
#   subnet_name = "first-subnet"
# }

# module "vm" {
#   source       = "./VM"
#   machine_name = "first-machine"
#   machine_type = "e2-standard-2"
#   os_image     = "Debian GNU/Linux 11 (bullseye)"
#   vm_zone      = "us-central1-c"
#   vpc_id       = module.network.vpc_id
# }


module "bq" {
  source       = "./Big-Query"
  dataset_name = var.dataset_name
}

module "gke" {
  source                   = "./GKE"
  cluster_region           = var.cluster_region
  cluster_zones_list       = var.cluster_zones_list
  machine_type             = var.machine_type
  number_of_nodes_per_zone = var.number_of_nodes_per_zone
  cluster_name             = var.cluster_name
  master_node_cidr         = var.master_node_cidr
  vpc_id                   = module.network.vpc_id
  subnet_id                = module.network.subnet_id
}

module "gs-bucket" {
  source        = "./GS-Bucket"
  bucket_name   = var.bucket_name
  storage_class = var.storage_class
}

module "network" {
  source      = "./Network"
  vpc_cidr    = var.vpc_cidr
  vpc_name    = var.vpc_name
  subnet_cidr = var.subnet_cidr
  subnet_name = var.subnet_name
}

module "vm" {
  source       = "./VM"
  machine_name = var.machine_name
  machine_type = var.machine_type
  os_image     = var.os_image
  vm_zone      = var.vm_zone
  vpc_id       = module.network.vpc_id
}