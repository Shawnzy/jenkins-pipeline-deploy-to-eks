#!/usr/bin/env groovy

pipeline {
    agent any
    environment {
        AWS_DEFAULT_REGION = "us-east-1"
        AWS_ACCESS_KEY_ID = credentials("AWS_ACESS_KEY_ID")
        AWS_SECRET_ACCESS_KEY = credentials("AWS_SECRET_ACCESS_KEY")
    }

    stages {
        stage("Create EKS Cluster") {
            steps{
                script {
                dir("terraform") {
                    sh "terraform init"
                    sh "terraform apply -auto-approve"
                }
            }
            }
        }
        stage("Deploy to EKS") {
            steps{
                script {
                    dir("kubernetes") {
                        sh "aws eks update-kubeconfig --name myapp-eks-cluster"
                        sh "kubectl apply -f nginx-deployment.yaml"
                        sh "kubectl apply -f nginx-service.yaml"
                    }
                }
            }
        }
    }
}