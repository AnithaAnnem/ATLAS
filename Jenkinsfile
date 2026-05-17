pipeline {
    agent any

    environment {
        // Change the ID here if you named your Jenkins credential differently
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
                // CHANGED: --env prod updated to --env local to match your atlas.hcl
                sh 'atlas schema apply --env local --auto-approve'
            }
        }
    }
}
