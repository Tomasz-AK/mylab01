resource "digitalocean_vpc" "main" {
    name     = "${var.workspace_prefix}-main-vm-tf-cloud"
    region   = "fra1"
    ip_range = "${var.workspace_ip_prefix}.100.0/24"
}

resource "digitalocean_droplet" "main" {
    name     = "${var.workspace_prefix}-main-vm"
    image    = "${var.vm_size}"
    region   = "fra1"
    size     = "s-1vcpu-1gb"
    vpc_uuid = digitalocean_vpc.main.id
}

resource "digitalocean_droplet" "main2" {
    name     = "${var.workspace_prefix}-main-vm"
    image    = "ubuntu-20-04-x64"
    region   = "fra1"
    size     = "s-1vcpu-1gb"
    vpc_uuid = digitalocean_vpc.main.id
}