provider "aws" {
  region = var.aws_region
}
resource "aws_instance" "app_server" {
  ami           = "ami-0bcf5425cdc1d8a85"
  instance_type = "t2.micro"
  key_name= "TestPair"
  subnet_id= "subnet-059515ea9d63c9af5"
  security_groups = ["sg-0f59b76e1aa6ce6f4"]
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
