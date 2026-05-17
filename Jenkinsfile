pipeline {
    agent any

    environment {
        // This pulls your database login string securely from Jenkins
        PROD_DATABASE_URL = credentials('prod-db-url') 
    }

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Install Atlas CLI') {
            steps {
                sh 'curl -sSf https://atlasgo.sh | sh'
            }
        }

        stage('Auto-Apply Changes') {
            steps {
                // Jenkins compares schema.hcl against production and updates it
                sh 'atlas schema apply --env prod --auto-approve'
            }
        }
    }
}
