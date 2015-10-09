resource "digitalocean_droplet" "immutable-test-droplet" {
    image = "ubuntu-14-04-x64"
    name = "immutable-test"
    region = "fra1"
    size = "512mb"
    private_networking = false
#    ssh_keys = [
#      "${var.ssh_fingerprint}"
#    ]
}

resource "cloudflare_record" "immutable-test-dns" {
    domain = "hivenet.xyz"
    name = "immutable-test"
    value = "${digitalocean_droplet.immutable-test-droplet.ipv4_address}"
    type = "A"
}
