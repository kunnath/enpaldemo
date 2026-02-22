pipeline {
    agent any
    stages {
        stage('Install dependencies') {
            steps {
                sh 'npm ci || npm install'
            }
        }
        stage('Install Python Dependencies') {
            steps {
                sh '''
                    python3 -m venv venv
                    . venv/bin/activate
                    pip install -r requirements.txt
                '''
            }
        }
        stage('Install Playwright Browsers') {
            steps {
                sh 'npx playwright install'
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
