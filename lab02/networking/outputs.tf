# outputs 

output vpc_id {value=aws_vpc.iti_vpc.id}
output vpc_cider {value=aws_vpc.iti_vpc.cidr_block}
output public_subnet_1 {value=aws_subnet.public_subnet_1.id}
output public_subnet_2 {value=aws_subnet.public_subnet_2.id}
output private_subnet_1 {value=aws_subnet.private_subnet_1.id}
output private_subnet_2 {value=aws_subnet.private_subnet_2.id}


