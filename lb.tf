resource "aws_lb" "groot_lb" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  
  enable_deletion_protection = true

}