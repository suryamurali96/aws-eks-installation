#1. Setup kubectl   
  # a. Download kubectl version 1.20  
   #b. Grant execution permissions to kubectl executable   
   #c. Move kubectl onto /usr/local/bin   
   #d. Test that your kubectl installation was successful    
   #```sh 
   curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/kubectl
   chmod +x ./kubectl
   mv ./kubectl /usr/local/bin 
   kubectl version --short --client
   #```
#2. Setup eksctl   
 #  a. Download and extract the latest release   
  # b. Move the extracted binary to /usr/local/bin   
 #  c. Test that your eksclt installation was successful   
   #```sh
   curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
   sudo mv /tmp/eksctl /usr/local/bin
   eksctl version
  # ```
  
#3. Create an IAM Role and attache it to EC2 instance    
#   `Note: create IAM user with programmatic access if your bootstrap system is outside of AWS`   
 #  IAM user should have access to   
#   IAM   
 #  EC2   
#   VPC    
#   CloudFormation
  eksctl create cluster --name surya \
      --region ap-south-1 \
   --node-type t2.small \

aws eks update-kubeconfig --region ap-south-2 --name surya

   kubectl get svc 
   kubectl describe nodes 
   kubectl get nodes -o wide
   kubectl get nodes
  

