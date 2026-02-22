pipeline {
    agent any
    stages {
        stage('Install dependencies') {
            steps {
                sh 'npm ci || npm install'
            }
        }
        stage('Install Playwright Browsers') {
            steps {
                sh 'npx playwright install --with-deps'
            }
        }
        stage('Run Playwright Test') {
            steps {
                sh 'npx playwright test example.spec.ts'
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: 'playwright-report/**', allowEmptyArchive: true
        }
    }
}
