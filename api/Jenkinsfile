pipeline {
  agent any
  
  environment {
    API_URL = "https://vagas.builders/api/builders/" // substitua pelo URL da sua API
  }
  
  stages {
    stage('Build') {
      steps {
        sh 'bundle install'
      }
    }
    
    stage('Test') {
      steps {
        sh 'bundle exec rspec --format RspecJunitFormatter --out results/rspec.xml'
        junit 'results/rspec.xml'
      }
    }
    
    stage('Deploy to Staging') {
      when {
        branch 'develop'
      }
      
      steps {
        sh 'deploy-to-staging.sh'
      }
    }
    
    stage('Deploy to Production') {
      when {
        branch 'main'
      }
      
      steps {
        sh 'deploy-to-production.sh'
      }
    }
  }
}
