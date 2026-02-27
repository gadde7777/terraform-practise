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

variable "fruit"{
   type = list(string)
   default= ["apple","banana","apple","orange"]
}

variable "fruit_set"{
   type = set(string)
   default= ["apple","banana","apple","orange"]
}
