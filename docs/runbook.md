[Disclaimer] 
Make sure you have edited out all the variables of the scripts before running
There is always a message and a wait time for you to cancel if you havent done so
Run all codes from the scripts directory

[Installation]
a)Optional if you have not configured aws iam account for full kOps initialisation
Edit the scripts/bash-iam-kops.sh file
Replace the <your-username> with your iam username configured on your cli
Run scripts/iam-kops.sh

[Start]
Run scripts/terraform-setup.sh

Copy the vpc ID from the terraform output and edit the VPC-ID variable in the scripts/bash-kops-setup.sh file
Copy the private subnets and paste them individually in the --subnet flag, seperating each with a comma and do the same for the public subnets in the --utility-subnet flag(also in the bash-kops-setup.sh

Run scripts/kops-setup.sh

Bonus: edit the cluster-config.yaml 

Run the scripts/kops-start.sh

Run the scripts/database.sh

Run scripts/kubernetes.sh

Run scripts/routing.sh

[Destruction]

Follow the prompts

Run scripts/cleanup.sh



