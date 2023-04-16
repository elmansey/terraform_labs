# inputs 

variable vpc_cider { 
    type = string  
    default = "10.0.0.0/16"
    description = "vpc cider block"
}
variable prefix {
    type=string
    default = ""
    description = "configuration prefix"    
}
variable public_subnet_1_cider {
    type=string
    default = ""
    description = "public subnet 1 cider block"    
}
variable public_subnet_2_cider {
    type=string
    default = ""
    description = "public subnet 2 cider block"    
}
variable private_subnet_1_cider {
    type=string
    default = ""
    description = "private subnet 1 cider block"    
}
variable private_subnet_2_cider {
    type=string
    default = ""
    description = "private subnet 2 cider block"    
}
variable availability_zone_1 {
    type=string
    default = ""
    description = "availability zone 1"    
}
variable availability_zone_2 {
    type=string
    default = ""
    description = "availability zone 2"    
}
