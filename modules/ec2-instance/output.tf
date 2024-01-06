output "region"{
value = var.region
}

output "project_name"{
value = var.project_name
}

output "vpc_name"{
value = var.vpc_name
}

output "ami_id"{
value =aws.ami.id 
}

output "instance_type_id"{
value = aws.instance_type.id
}

output "key_pair_id"{
value = var.key_pair.id
}

output "security_group_id"{
value = aws_security_group.security_group.id
}

output "security_group_description"{
value = var.security_group_description
}

output "internet_gateway"{
value = aws_internet_gateway.internet_gateway.id
}
