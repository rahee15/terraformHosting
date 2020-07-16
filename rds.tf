resource "aws_db_instance" "groot" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "groot"
  username             = "groot"
  password             = "groot"
  parameter_group_name = "default.mysql5.7"
}