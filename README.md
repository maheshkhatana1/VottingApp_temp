🗳️ Voting App – Cloud-Native Full Stack Project

A production-ready Voting Application built with a React (Vite) frontend, Node.js backend, and deployed using Docker, Kubernetes (EKS), Terraform, and GitHub Actions CI/CD on AWS.

This project demonstrates end-to-end DevOps + Cloud Engineering skills, including containerization, infrastructure as code, and automated deployments.

🚀 Tech Stack
Frontend

⚛️ React (Vite)

JavaScript (ES6+)

Docker

Backend

🟢 Node.js

Express.js

REST APIs

Docker

DevOps & Cloud

🐳 Docker & Docker Compose

☸️ Kubernetes (Amazon EKS)

🏗 Terraform (IaC)

🔐 AWS IAM, VPC, ECR

🔄 GitHub Actions (CI/CD)

🌐 NGINX Ingress Controller

📂 Project Structure
votingApp/
├── frontend/                 # React (Vite) frontend
│   ├── Dockerfile
│   ├── vite.config.js
│   └── src/
│
├── backend/                  # Node.js backend
│   ├── Dockerfile
│   └── src/
│       ├── server.js
│       └── routes.js
│
├── terraform/                # Infrastructure as Code
│   ├── envs/dev/
│   └── modules/
│       ├── vpc/
│       ├── eks/
│       ├── ecr/
│       └── iam/
│
├── k8s/                      # Kubernetes manifests
│   ├── backend-deployment.yaml
│   ├── frontend-deployment.yaml
│   └── ingress.yaml
│
├── .github/workflows/        # GitHub Actions CI/CD
│   └── deploy.yml
│
└── README.md

⚙️ Application Flow

User votes from React frontend

Request is sent to Node.js backend

Backend processes and stores vote data

Results are reflected back in frontend

App runs inside Docker containers

Containers deployed to EKS

Infrastructure provisioned using Terraform

CI/CD handled via GitHub Actions

🐳 Docker Build (Local)
Backend
cd backend
docker build -t voting-backend .
docker run -p 5000:5000 voting-backend

Frontend
cd frontend
docker build -t voting-frontend .
docker run -p 5173:80 voting-frontend

☸️ Kubernetes Deployment
kubectl apply -f k8s/


Check status:

kubectl get pods
kubectl get svc
kubectl get ingress

🏗 Terraform Deployment (AWS)
cd terraform/envs/dev
terraform init
terraform plan
terraform apply


This provisions:

VPC

EKS cluster

ECR repositories

IAM roles (including GitHub Actions)

🔄 CI/CD Pipeline

GitHub Actions workflow:

Builds Docker images

Pushes images to Amazon ECR

Deploys updated images to EKS

Trigger:

Push to main branch

🔐 Environment Variables
Backend
PORT=5000
NODE_ENV=production


(Secrets managed via GitHub Actions & Kubernetes)

🛡️ Best Practices Used

Infrastructure as Code (Terraform)

Containerization (Docker)

Immutable deployments

Secure IAM roles

CI/CD automation

Separation of environments

📌 Future Enhancements

Add database (RDS / DynamoDB)

Authentication (JWT / Cognito)

Horizontal Pod Autoscaling

Monitoring (Prometheus + Grafana)

Logging (CloudWatch / ELK)

👨‍💻 Author

Mahesh Khatana
Senior Software / DevOps Engineer
AWS | Docker | Kubernetes | Terraform | CI/CD

⭐ Support

If you like this project, give it a ⭐ on GitHub!
# Votting_App
