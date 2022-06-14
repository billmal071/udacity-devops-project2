create-stack: 
	@read -p "what is the stack name: " stack_name; \
	read -p "what is the template body filename: " template_body; \
	read -p "what is the parameter filename: " parameters; \
	echo "stack_name: $$stack_name template_body: $$template_body parameters: $$parameters"; \
	aws cloudformation create-stack --stack-name $$stack_name --template-body file://$$template_body.yml --parameters file://$$parameters --region=us-east-1

update-stack:
	@read -p "what is the stack name: " stack_name; \
	read -p "what is the template body filename: " template_body; \
	read -p "what is the parameter filename: " parameters; \
	echo "stack_name: $$stack_name template_body: $$template_body parameters: $$parameters"; \
	aws cloudformation update-stack --stack-name $$stack_name --template-body file://$$ourinfra.yml --parameters file://$$parameters --region=us-east-1

describe-stack:
	aws cloudformation describe-stacks --stack-name ourdemoinfra --region=us-east-1

delete-stack:
	aws cloudformation delete-stack --stack-name ourdemoinfra --region=us-east-1