provider "google" {
  credentials = file("serv.json")
  project = "tarkshyas-1636464439133"
  region  = "asia-south1"
  zone    = "asia-south1-c"
}

resource "google_bigtable_instance" "production-instance" {
  name = "tf-instance"

  cluster {
    cluster_id   = "tf-instance-cluster"
    num_nodes    = 1
    storage_type = "HDD"
  }

  labels = {
    my-label = "prod-label"
  }
}