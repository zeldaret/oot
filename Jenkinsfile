pipeline {
    agent any

    stages {
        stage('Check for unused asm') {
            steps {
                sh './tools/find_unused_asm.sh'
            }
        }
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
                sh 'python3 progress.py -mc >> /var/www/html/reports/progress_matching.csv'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
