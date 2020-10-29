Configuration files for creating enviroment with two instance (puma on 9292 port and mongodb) and firewall rules for it.

Port 22 is open for external network. Change default value of variable source_ranges from ["0.0.0.0/0"] to your external IP at ./modules/vpc/variables.tf to close it.

File terraform.tfvars.example contain example of variables. Put the actual value in a strings and rename file to terraform.tfvars.