module "bq1" {
  source       = "./Big-Query"
  dataset_name = var.dataset_one
}

module "bq2" {
  source       = "./Big-Query"
  dataset_name = var.dataset_two
}

module "bq3" {
  source       = "./Big-Query"
  dataset_name = var.dataset_three
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

module "gs-one" {
  source        = "./GS-Bucket"
  bucket_name   = var.bucket_one
  storage_class = var.storage_class
}

module "gs-two" {
  source        = "./GS-Bucket"
  bucket_name   = var.bucket_two
  storage_class = var.storage_class
}

module "gs-three" {
  source        = "./GS-Bucket"
  bucket_name   = var.bucket_three
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