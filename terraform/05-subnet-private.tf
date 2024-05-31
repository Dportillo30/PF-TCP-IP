resource "aws_subnet" "private-subnet-1" {
  vpc_id = "${aws_vpc.this.id}"
  cidr_block = local.vpc.cidr_subnet_private_1
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"

  tags = {
    Name        = "${local.prefix}-private-subnet-1"
    Environment = local.env
    Path        = "${basename(abspath(path.module))}/05-subnet-private.tf"
  }
  depends_on = [ aws_vpc.this ]
}