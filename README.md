# 🚀 Redmine Hybrid DevOps Architecture (AWS + Terraform + Docker)
### ⚡ Production-Style Infrastructure Project

This project demonstrates a real-world DevOps hybrid system combining:

- Local containerized development (Docker Compose)
- Cloud infrastructure provisioning (Terraform on AWS)
- Secure deployment architecture using Nginx reverse proxy
- Automated EC2 bootstrap using user_data
- SSH-based secure access using key pairs
- Automated demo data generation using Ruby seed scripts

## 🧠 What Makes This Project Stand Out

✔ Full Infrastructure as Code (Terraform)
✔ Cloud + Local hybrid architecture
✔ Secure reverse proxy (Nginx hides backend IP)
✔ Automated server provisioning (user_data)
✔ Reproducible development environment
✔ Realistic enterprise-style workload simulation

## 🏗️ Architecture Overview
![AWS Hybrid Architecture](./docs/architecture.png)

### 📌 What this diagram shows

✔ Local vs Cloud separation
✔ Infrastructure as Code (Terraform)
✔ Automated EC2 bootstrap (user_data)
✔ Reverse proxy security (Nginx hides app IP)
✔ Multi-container architecture
✔ Persistent storage (MySQL volume)

## 🚀 Key DevOps Features

### 🐳 Containerization
- Multi-service Docker Compose setup
- Separation of app, web proxy, and database layers

### ☁️ Cloud Infrastructure (AWS + Terraform)
- EC2 provisioning
- Security groups configuration
- Fully automated cloud setup

### 🤖 EC2 Boot Automation
- Docker installed via user_data
- Docker Compose installed automatically
- Zero manual server setup required

### 🔐 Secure Access
- SSH key-based authentication (ssh-keygen)
- No password-based login

### 🌱 Automated Demo Data
Ruby seed script generates:
- HR system tickets
- IT support issues
- DevOps backlog tasks

### 🎯 Why This Project Matters

This project demonstrates:

- Real DevOps engineering workflow
- Infrastructure automation skills
- Cloud deployment experience (AWS EC2)
- Security best practices (reverse proxy + SSH)
- Production-ready thinking

## 📌 YouTube Demo

👉 https://www.youtube.com/watch?v=mLsIiDWyQfk
