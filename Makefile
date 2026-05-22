validate:
	terraform fmt -recursive
	terraform validate

#
# Development
#
auto-vars-dev:
	rm *.auto.tfvars || true
	ln -s dev.tfvars dev.auto.tfvars

init-dev:
	terraform workspace select dev
	make auto-vars-dev
	terraform init -upgrade

plan-dev:
	make validate
	terraform workspace select dev
	make auto-vars-dev
	terraform plan

apply-dev:
	make validate
	terraform workspace select dev
	make auto-vars-dev
	terraform apply

destroy-dev:
	make validate
	terraform workspace select dev
	make auto-vars-dev
	terraform destroy