resource "aws_instance" "web" {
  count = length(var.ec2_names)  
  ami = data.aws_ami.amazon_linux_2023_x86.id

  instance_type = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids = [var.sg_id]
  subnet_id = var.subnets[count.index]

  tags = {
    Name = var.ec2_names[count.index]
  }
}