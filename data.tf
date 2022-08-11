data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["AMI-BUILD-Green-*"]
  }


  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["398649119307"] # Canonical
}

data "aws_vpc" "blue-green-deploy" {
  filter {
    name = "tag:Name"
    values = ["blue-green-deploy"]
  }
}


data "aws_subnet" "private" {
  filter {
    
      name = "tag:Name"
      values = ["private"]
    }
  }
  
  





