
# Sicherheitsgruppe erstellen
resource "aws_security_group" "docker_sg" {
  name        = "docker_security_group"
  description = "Security group for Docker on EC2" # Beschreibung angepasst
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # SSH-Zugriff erlauben, ggf. IP-Bereich anpassen
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # HTTP-Zugriff erlauben
  }

  # ingress {
  #   from_port   = 443
  #   to_port     = 443
  #   protocol    = "tcp"
  #   cidr_blocks = ["0.0.0.0/0"] # HTTPS-Zugriff erlauben
  # }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] # Ausgehender Verkehr erlauben
  }
}