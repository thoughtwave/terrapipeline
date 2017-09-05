provider "openstack" {
  user_name   = "automation"
  tenant_name = "automation"
  password    = "${var.ospassword}"
  auth_url    = "https://cloud.thoughtwave.net:5000/v2.0"
  region      = "RegionOne"
}

# Create a web server
resource "openstack_compute_instance_v2" "test-server" {
  name = "test"
  image_id   = "e28ba5de-9b3b-4867-8fb4-3dbc8c9c79a9"
  flavor_name   = "c1.large"
}

