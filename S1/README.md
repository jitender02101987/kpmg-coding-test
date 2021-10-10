This folder contains solution for creation of 3 tier application in GCP via terraform

Pre-requisities:

1. Project i.e. "kpmg-test-10102201" in GCP.
2. Enable Compute Engine API.
3. Create a service account e.g. terraform-integration@kpmg-test-10102201.iam.gserviceaccount.com and provide owner role. Also download its key file in json format and place it on machine.
4. Set environment variable GCLOUD_KEYFILE_JSON and value as path of json file.
5. Terraform state will be created in S1/three-tier-architecture/terraform as we will run terraform init in terraform folder

Execution steps:-

1. Go to S1/three-tier-architecture/terraform folder.
2. Run "terraform init" to initialize.
3. Run "terraform plan -lock=false -out three-tier-achitecture-plan.out" (attaching the same in repo)

Infrastructure created via IAC:-

1. Web application as managed instance group(MIG) for high availablity(HA).
2. Webapp is attached to a external LB.
3. Application server as MIG for high availablity.
4. ILB between Web Application to Application Server, Application Server to Postgres SQL.
5. Cloud Postgres SQL.


Architecture Flow:

Under VPC, HTTP/HTTPS Load balancer <==> Web Tier <==> TCP Load Balancer <==> Application Tier <==> TCP Load Balancer <==> Data Tier