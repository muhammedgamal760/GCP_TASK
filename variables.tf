/////////////////////////////////
//for big query
variable "dataset_name" {
  type = list(string)
}

/////////////////////////////////
//for cluster
variable "cluster_region" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "cluster_zones_list" {
  type = list(any)
}

variable "machine_type" {
  type = string
}

variable "number_of_nodes_per_zone" {
  type = number
}

variable "master_node_cidr" {
  type = string
}

/////////////////////////////////
//for buckets
variable "bucket_name" {
  type = list(string)
}

variable "storage_class" {
  type = string
}

/////////////////////////////////
//for service accounts
variable "sa_id" {
  type = list(string)
}

variable "sa" {
  type = list(string)
}

/////////////////////////////////
//for network
variable "vpc_cidr" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "subnet_cidr" {
  type = string
}

variable "subnet_name" {
  type = string
}

/////////////////////////////////
//for vm
variable "machine_name" {
  type = string
}

variable "os_image" {
  type = string
}

variable "vm_zone" {
  type = string
}

/////////////////////////////////
//for gcr
variable "role" {
  type = string
}

variable "gcr_role" {
  type = string
}
