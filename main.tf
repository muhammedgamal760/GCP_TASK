module "bq"{
    source = "./Big-Query"
    dataset_name = "first-dataset"
}

module "gke"{
    source = "./GKE"
    cluster_region = "us-central1"
    cluster_zones_list = ["us-central1-c" , "us-central1-f"]
    machine_type = "e2-standard-2"
    number_of_nodes_per_zone = 2
    cluster_name = "first-gke"
    master_node_cidr = "172.16.0.32/28"
}

module "gs-bucket"{
    source = "./GS-Bucket"
    bucket_name = "first-bucket"
    storage_class = "STANDARD"
}

module "network"{
    source = "./Network"
    vpc_cidr = "10.1.0.0/16"
    vpc_name = "first-vpc"
    subnet_cidr = "10.0.1.0/24"
    subnet_name = "first-subnet"
}

module "vm"{
    source = "./VM"
    machine_name = "first-machine"
    machine_type = "e2-standard-2"
    os_image = "Debian GNU/Linux 11 (bullseye)"
    vm_region = "us-central1"
    vm_zone = "us-central1-c"
}