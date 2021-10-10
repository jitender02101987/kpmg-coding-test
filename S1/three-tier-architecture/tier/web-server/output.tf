output "o" {
  value = {
    lb = module.lb.o
    web_s_address = module.lb.ip_address
  }
}

output "web_s_address" { 
 value = module.lb.ip_address 
}