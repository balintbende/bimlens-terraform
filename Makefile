validate:
	terraform fmt -recursive
	terraform validate

#
# Development
#
init-dev:
	terraform workspace select dev
	terraform init -upgrade

plan-dev:
	make validate
	terraform workspace select dev
	terraform plan

apply-dev:
	make validate
	terraform workspace select dev
	terraform apply

destroy-dev:
	make validate
	terraform workspace select dev
	terraform destroy