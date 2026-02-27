# variable "instances" {
#     type = map
#     default = {
#         mongoDB = "t3.micro"
#         mysql = "t3.small"
#         user = "t3.micro"
#         shipping = "t3.small"
#     }
# }

variable "instances" {
    type = list
    default = ["mongoDB","RedisDB","mySQL","Catalogue","cart","user","rabbitMq","frontend","Shipping","payment"]
}

variable "zone_id" {
    default = "Z020536212D81DTB3JAXJ"
}

variable "domain_name"{
  default = "daws88straining.online"

}