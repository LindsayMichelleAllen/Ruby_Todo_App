# Ruby_Todo_App
Ruby on rails application developed using AWS Cloud9

## Deployment steps:

Establish connection with EC2 instance

build docker image:  
`sudo docker build -t rubytodoapp .`

run docker image:  
`sudo docker run -p 80:3000 rubytodoapp`

Access application using EC2 instance Public IPv4 DNS with http connection
