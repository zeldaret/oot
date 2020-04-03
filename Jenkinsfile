pipeline {
    agent any

    stages {
        stage('Setup') {
            steps {
                echo 'Setting up...'
                sh 'cp /usr/local/etc/roms/baserom_oot.z64 baserom_original.z64'
                sh 'git submodule update --init --recursive'
                sh 'cp -r /usr/local/etc/ido/ido7.1_compiler tools/ido7.1_compiler'
                sh 'chmod +x -R tools/ido*'
                sh 'make setup'
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
