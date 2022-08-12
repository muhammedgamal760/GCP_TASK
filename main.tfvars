dataset_one   = "first_dataset"
dataset_two   = "second_dataset"
dataset_three = "third_dataset"
role          = "OWNER"

cluster_region           = "us-central1"
cluster_zones_list       = ["us-central1-c", "us-central1-f"]
machine_type             = "e2-medium"
number_of_nodes_per_zone = 2
cluster_name             = "first-gke"
master_node_cidr         = "172.16.0.32/28"


bucket_one   = "gss-one"
bucket_two   = "gss-two"
bucket_three = "gss-three"
# bucket_four   = "fourth-bucket"
storage_class = "STANDARD"


bucket_sa_id = "bucket-sa-id"
bucket_sa    = "bucket-sa"
bq_sa_id     = "bq-sa-id"
bq_sa        = "bq-sa"
gcr_sa_id    = "gcr-sa-id"
gcr_sa       = "gcr-sa"


vpc_cidr    = "10.1.0.0/16"
vpc_name    = "first-vpc"
subnet_cidr = "10.0.1.0/24"
subnet_name = "first-subnet"


machine_name = "first-machine"
os_image     = "Debian GNU/Linux 11 (bullseye)"
vm_zone      = "us-central1-c"


gcr_role = "roles/storage.objectViewer"