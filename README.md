# blog-juniper-jtaf-example
Files associated to blog entry ... https://nifry.com/2022/02/18/junipers-terraform-automation-framework-jtaf/

# contents
This rep contains files to 

* generate TF providers for vQFX/vMX with the associated xpath
* deploy a simple 'customer' (1 physical access port + irb) in a vxlan environment, via JSON customer data and J2 generating the HCL

This repo contains an example of the RIGHT way to use HCL resource names (the MX) and the WRONG way (the QFX).

# usage

* follow the blog
* cd workspace; python3 data_to_tf.py
* terraform init
* terraform plan
* terraform apply

Refer to the blog for more info!
