provider "google" {
  credentials = file("tfserv.json")
  project = "tarkshyas-1636464430889"
  region  = "asia-south1"
  zone    = "asia-south1-c"
}
resource "google_spanner_instance" "example" {
  config       = "regional-us-central1"
  display_name = "Test Spanner Instance"
  num_nodes    = 2
  labels = {
    "foo" = "bar"
  }
}