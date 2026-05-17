pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Install Atlas CLI') {
            steps {
                // Downloads and installs the Atlas CLI onto your Jenkins runner
                sh 'curl -sSf https://atlasgo.sh | sh'
            }
        }

        stage('Auto-Apply Changes') {
            steps {
                // Executes Atlas using your local database settings from atlas.hcl
                sh 'atlas schema apply --env local --auto-approve'
            }
        }
    }
}
