dataset_name = "first-dataset"


cluster_region           = "us-central1"
cluster_zones_list       = ["us-central1-c", "us-central1-f"]
machine_type             = "e2-standard-2"
number_of_nodes_per_zone = 2
cluster_name             = "first-gke"
master_node_cidr         = "172.16.0.32/28"

bucket_name   = "first-bucket"
storage_class = "STANDARD"


vpc_cidr    = "10.1.0.0/16"
vpc_name    = "first-vpc"
subnet_cidr = "10.0.1.0/24"
subnet_name = "first-subnet"

machine_name = "first-machine"
os_image  = "Debian GNU/Linux 11 (bullseye)"
vm_zone   = "us-central1-c"
