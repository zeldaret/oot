pipeline {
    agent any

    stages {
        stage('Build ZAPD') {
            steps {
                sh 'make -j'
            }
        }
        stage('Checkout oot') {
            steps {
                dir('oot') {
                    git url: 'https://github.com/zeldaret/oot.git'
                }
            }
        }
        stage('Set up oot') {
            steps {
                dir('oot') {
                    sh 'cp /usr/local/etc/roms/baserom_oot.z64 baserom_original.z64'

                    // Identical to `make setup` except for copying our newer ZAPD.out into oot
                    sh 'git submodule update --init --recursive'
                    sh 'make -C tools'
                    sh 'cp ../ZAPD.out tools/ZAPD/'
                    sh 'python3 fixbaserom.py'
                    sh 'python3 extract_baserom.py'
                    sh 'python3 extract_assets.py'
                }
            }
        }
        stage('Build oot') {
            steps {
                dir('oot') {
                    sh 'make -j'
                }
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
