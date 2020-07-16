resource "aws_elastic_beanstalk_application" "app"{
  name        = "groot"
  description = "groot springboot application"
}

resource "aws_elastic_beanstalk_environment" "env"{
  name                = "groot-env"
  application         = "${aws_elastic_beanstalk_application.app.name}"
  solution_stack_name = "Corretto 11 running on 64bit Amazon Linux 2/3.0.2"
}

