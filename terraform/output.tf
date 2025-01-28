
# Ausgabe der öffentlichen IP-Adresse der EC2-Instanz
output "instance_public_ip" {
  value = aws_instance.docker_instance.public_ip
}