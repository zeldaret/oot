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
                sh 'make -j setup'
            }
        }
        stage('Build (qemu-irix)') {
            when {
                branch 'master'
            }
            steps {
                sh 'ORIG_COMPILER=1 make -j'
            }
        }
        stage('Build') {
            when {
                not {
                    branch 'master'
                }
            }
            steps {
                sh 'make -j'
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
