resource "aws_subnet" "public-subnet-1" {
  vpc_id = "${aws_vpc.this.id}"
  cidr_block = local.vpc.cidr_subnet_public_1
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"

  tags = {
    Name        = "${local.prefix}-public-subnet-1"
    Environment = local.env
    Path        = "${basename(abspath(path.module))}/04-subnet-public.tf"
  }
  depends_on = [ aws_vpc.this ]
}