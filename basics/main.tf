resource "docker_image" "image_id" {
  name = "ghost:latest"
}

# start container
resource "docker_container" "container_id"{
  name = "ghose_blog"
  image = "${docker_image.image_id.latest}"
  ports {
    internal = "2368"
    external = "80"
  }
}
