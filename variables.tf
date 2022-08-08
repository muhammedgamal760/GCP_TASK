variable "dataset_one" {
  type = string
}

variable "dataset_two" {
  type = string
}

variable "dataset_three" {
  type = string
}

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

variable "bucket_one" {
  type = string
}

variable "bucket_two" {
  type = string
}

variable "bucket_three" {
  type = string
}

variable "storage_class" {
  type = string
}

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

variable "machine_name" {
  type = string
}

variable "os_image" {
  type = string
}

variable "vm_zone" {
  type = string
}