Before you start deploying Controller and Copilot
Subcribe to:

https://aws.amazon.com/marketplace/server/procurement?productId=28c70cf4-6f44-46eb-a823-d88629a699ae

Make sure that there is no existing AWS Console > IAM aviatrix-role-ec2 / aviatrix-role-app / aviatrix-assume-role-policy / aviatrix-app-policy

Terraform will create:

VPC + 2 public subnets in two seperate AZ

Controller and Copilot Security Group

IAM Roles/Policies

Aviatrix Controller

Aviatrix Copilot (CPLT BYOL ami in eu-central-1)
