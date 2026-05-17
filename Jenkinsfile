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
                script {
                    // Check if Atlas is already installed on the system to avoid long downloads
                    def atlasExists = sh(script: 'command -v atlas', returnStatus: true) == 0
                    if (atlasExists) {
                        echo "Atlas CLI is already installed, skipping download."
                    } else {
                        echo "Installing Atlas CLI..."
                        sh 'curl -sSf https://atlasgo.sh | sh'
                    }
                }
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
