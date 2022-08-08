output cluster_id {
    value = google_container_cluster.first-gke.id
}

output nodepool_id {
    value = google_container_node_pool.first-node-pool.id
}