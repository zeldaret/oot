pipeline {
    agent any

    stages {
        stage('Setup') {
            steps {
                echo 'Setting up...'
                sh 'cp /usr/local/etc/roms/baserom_oot.z64 baserom.z64'
                sh 'git submodule update --init --recursive'
                sh 'make -C tools'
                sh 'cp -r /usr/local/etc/ido/ido7.1_compiler tools/ido7.1_compiler'
                sh 'chmod +x -R tools/ido*'
                sh 'python3 extract_baserom.py'
                sh 'python3 extract_assets.py'
            }
        }
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'make'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
