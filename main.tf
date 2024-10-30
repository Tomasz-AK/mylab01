resource "digitalocean_vpc" "main" {
    name = "main-piotrkoska-tf-cloud"
    region = "fra1"
    ip_range = "10.222.100.0/24"
}

resource "digitalocean_droplet" "main" {
    name = "main-piotrkoska"
    image = "ubuntu-20-04-x64"
    region = "fra1"
    size = "s-1vcpu-1gb"    
    vpc_uuid = digitalocean_vpc.main.id
}

resource "digitalocean_droplet" "main2" {
    name = "main-piotrkoska"
    image = "ubuntu-20-04-x64"
    region = "fra1"
    size = "s-1vcpu-1gb"    
    vpc_uuid = digitalocean_vpc.main.id
}