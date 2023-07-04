resource "aws_subnet" "private_us_east_1a" {
  vpc_id            = aws_vpc.istio.id
  cidr_block        = "10.11.0.0/24"
  availability_zone = "us-east-1a"


  tags = {
    "Name"                            = "private-us-east-1a"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/istio"      = "owned"
  }
}


resource "aws_subnet" "private_us_east_1b" {
  vpc_id            = aws_vpc.istio.id
  cidr_block        = "10.11.32.0/24"
  availability_zone = "us-east-1b"


  tags = {
    "Name"                            = "private-us-east-1b"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/istio"      = "owned"
  }
}


resource "aws_subnet" "public_us_east_1a" {
  vpc_id                  = aws_vpc.istio.id
  cidr_block              = "10.11.64.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true


  tags = {
    "Name"                       = "public-us-east-1a"
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/istio" = "owned"
  }
}


resource "aws_subnet" "public_us_east_1b" {
  vpc_id                  = aws_vpc.istio.id
  cidr_block              = "10.11.96.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true


  tags = {
    "Name"                       = "public-us-east-1b"
    "kubernetes.io/role/elb"     = "1"
    "kubernetes.io/cluster/istio" = "owned"
  }
}