
# EC2-Instanz erstellen und Docker installieren
resource "aws_instance" "docker_instance" {
  ami           = "ami-07eef52105e8a2059" # Amazon Linux 2 AMI ID (Region anpassen)
  instance_type = "t2.micro"             # Instanztyp anpassen
  
  vpc_security_group_ids = [aws_security_group.docker_sg.id]

  tags = {
    Name = "Docker-EC2-Instance"
  }
  
  user_data = base64encode(file("${path.module}/userdata.tpl"))

  key_name = "ec22" # SSH-Schlüssel anpassen (optional)
}
