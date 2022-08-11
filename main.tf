module "bq1" {
  source       = "./Big-Query"
  dataset_name = var.dataset_one
  role         = var.role
  user         = module.bq-sa.email
}

module "bq2" {
  source       = "./Big-Query"
  dataset_name = var.dataset_two
  role         = var.role
  user         = module.bq-sa.email
}

module "bq3" {
  source       = "./Big-Query"
  dataset_name = var.dataset_three
  role         = var.role
  user         = module.bq-sa.email
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
  email                    = module.gcr-sa.email
  ip                       = module.vm.ip
}

module "gs-one" {
  source        = "./GS-Bucket"
  bucket_name   = var.bucket_one
  storage_class = var.storage_class
  email         = module.bucket-sa.email
}

module "gs-two" {
  source        = "./GS-Bucket"
  bucket_name   = var.bucket_two
  storage_class = var.storage_class
  email         = module.bucket-sa.email
}

module "gs-three" {
  source        = "./GS-Bucket"
  bucket_name   = var.bucket_three
  storage_class = var.storage_class
  email         = module.bucket-sa.email
}

module "bucket-sa" {
  source  = "./Service_Accounts"
  sa_id   = var.bucket_sa_id
  sa_name = var.bucket_sa
}

module "bq-sa" {
  source  = "./Service_Accounts"
  sa_id   = var.bq_sa_id
  sa_name = var.bq_sa
}

module "gcr-sa" {
  source  = "./Service_Accounts"
  sa_id   = var.gcr_sa_id
  sa_name = var.gcr_sa
}

# module "gs-four" {
#   source        = "./GS-Bucket"
#   bucket_name   = var.bucket_four
#   storage_class = var.storage_class
# }

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
  subnet_id    = module.network.subnet_id
  email        = module.bq-sa.email
}

module "gcr" {
  source = "./GCR"
  email  = module.gcr-sa.email
}