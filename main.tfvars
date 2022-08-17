/////////////////////////////////
//for big query
dataset_name = ["first_dataset", "second_dataset", "third_dataset"]
role = "roles/bigquery.dataViewer"

/////////////////////////////////
//for cluster
cluster_region           = "us-central1"
cluster_zones_list       = ["us-central1-c", "us-central1-f"]
machine_type = "e2-medium"
number_of_nodes_per_zone = 2
cluster_name             = "first-gke"
master_node_cidr         = "172.16.0.32/28"

/////////////////////////////////
//for buckets
bucket_name = ["gss-one", "gss-two", "gss-three"]
storage_class = "STANDARD"

/////////////////////////////////
//for service accounts
sa_id = ["bucket-sa-id", "bq-sa-id", "gcr-sa-id"]
sa    = ["bucket-sa", "bq-sa", "gcr-sa"]

/////////////////////////////////
//for network
vpc_cidr    = "10.1.0.0/16"
vpc_name    = "first-vpc"
subnet_cidr = "10.0.1.0/24"
subnet_name = "first-subnet"

/////////////////////////////////
//for vm
machine_name = "first-machine"
os_image     = "Debian GNU/Linux 11 (bullseye)"
vm_zone      = "us-central1-c"

/////////////////////////////////
//for gcr
gcr_role = "roles/storage.objectViewer"