# nginx-jenkins-ansible-terraform

this project deploys a nginx web server with a static website on an aws ec2 instance, using terraform, ansible and jenkins.

# set up

1- copy your ~/.aws/credentials and ~/.aws/config files to /var/lib/jenkins/.aws/ folder and execute sudo chown jenkins:jenkins /var/lib/jenkins/.aws/*

2- create an ec2 key pair and store it in /var/lib/jenkins/.ssh and execute:
- sudo chmod 400 /var/lib/jenkins/.ssh/< YOUR KEY NAME >.pem
- sudo chown jenkins:jenkins /var/lib/jenkins/.ssh/< YOUR KEY NAME >.pem

3- generate and configure an SSH key for github.

4- now navigate back to 'Manage Jenkins' > 'Manage Credentials'. click on Add Credential and select SSH Username with Private Key and store your github keys. the id must equals the credentialsId on the jenkinsfile.

5- in the jenkinsfile change the profile var(it is your aws username profile) in the terraform commands.

6- copy ansible\config content inside /etc/ansible/ folder

7- create a jenkins pipeline job and paste the jenkinsfile at the end int he "Pipeline" section. apply an save.

8- execute the job.
