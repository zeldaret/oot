pipeline {
    agent any

    stages {
        stage('Setup') {
            steps {
                echo 'Setting up...'
                sh 'cp /usr/local/etc/roms/baserom_oot.z64 baserom_original.z64'
                sh 'make -j`nproc` setup'
            }
        }
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'make -j`nproc`'
            }
        }
        stage('Report Progress') {
            when {
                branch 'master'
            }
            steps {
                sh 'python3 progress.py -c >> /var/www/html/reports/progress.csv'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
