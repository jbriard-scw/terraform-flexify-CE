# terraform-flexify-CE

Deploy Flexify Community Edition on Scaleway
  

## Whats is it? 

This is some simple Terraform files that deploy Flexify (An object Storage Gateway) on Scaleway.
 

## Features
### Instance

This will deploy an Rocky Linux instance (you chose the type) with Flexify.
Flexify CE is working on Docker.
The database is stored in a persistent volume (/var/opt/flexify/)


### Security Group

A security group is added.

This allow only ingress on port:

- 22 (filtred)
- 80
- 443

  
## Deploy

- You need [Terraform](https://www.terraform.io/downloads.html)
- You also need a [Scaleway account](https://console.scaleway.com/)
- And an [API key](https://www.scaleway.com/en/docs/console/my-project/quickstart/#how-to-generate-an-api-key)


Rename the terraform.tfvars.template file in terraform.tfvars and set the variable to yours.


Export the Scaleway env:

- *export SCW_ACCESS_KEY="SCW6SQSD5547J8YP88PO"*
- *export SCW_SECRET_KEY="348c0736-c673-4cd8-b517-f62c57f9a707"*

terraform plan
terraform apply

enjoye

## TODO

- Add personalized DNS name
- Add TLS certificat
