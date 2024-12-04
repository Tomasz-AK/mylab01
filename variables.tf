variable "do_token" {
    description = "Digital Ocean token"
    sensitive = true
}

variable "workspace_prefix" {
    type        = string
    description = "Workspace prefix"
}

variable "workspace_ip_prefix" {
    type        = string
    description = "Workspace IP prefix"
}

variable "vm_size" {
    type        = string
    description = "VM size"
}