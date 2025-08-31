This repository consists of Django code , buildspec.yaml, appspec.yaml, scripts to perform CI and CD using AWS services

Like any real-world setup, I faced a few challenges along the way — and here’s how I tackled them 👇
🔹 Challenge 1: CodeBuild failed due to AccessDenied for SSM Parameter Store.
 ✅ Fix: Added AmazonSSMFullAccess policy to the CodeBuild service role.
🔹 Challenge 2: CodeDeploy threw an error — port 5000 already in use.
 ✅ Fix: Created a container_stop.sh script to gracefully remove old containers before deploying new ones.
🔹 Challenge 3: CodePipeline failed due to missing S3 & CodeDeploy permissions.
 ✅ Fix: Attached the right IAM policies (AmazonS3FullAccess, CodeBuildFullAccess, CodeDeployFullAccess) to EC2 and pipeline roles.
🔹 Challenge 4: Application not accessible in the browser.
 ✅ Fix: Fixed a port mismatch between Dockerfile (8000) and app.py (5000) → updated container mapping to 5000:5000.
🔹 Challenge 4: Got error docker unknown in the EC2 machine.
 ✅ Fix: Installed docker on my EC2 server and made ubuntu user a member of docker group.
