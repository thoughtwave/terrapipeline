provider "openstack" {
  user_name   = "automation"
  tenant_name = "automation"
  password    = "${var.ospassword}"
  auth_url    = "https://cloud.thoughtwave.net:5000/v2.0"
  region      = "RegionOne"
}

resource "openstack_compute_floatingip_v2" "www_ip" {
  pool = "admin_floating_net"
}

resource "openstack_compute_floatingip_v2" "db_ip" {
  pool = "admin_floating_net"
}

resource "openstack_compute_instance_v2" "www" {
  name = "www"
  image_id   = "9f9d86b7-85f6-48a6-af04-b096dfecee11"
  flavor_name   = "c1.large"
}

resource "openstack_compute_instance_v2" "db" {
  name = "db"
  image_id   = "9f9d86b7-85f6-48a6-af04-b096dfecee11"
  flavor_name   = "c1.large"
}
