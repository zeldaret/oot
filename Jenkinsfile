pipeline {
    agent {
        label 'oot'
    }

    stages {
        stage('Install Python dependencies') {
            steps {
                echo 'Installing Python dependencies'
                sh 'python3 -m venv .venv'
                sh '''. .venv/bin/activate
                python3 -m pip install -U -r requirements.txt
                '''
            }
        }
        stage('Setup') {
            steps {
                sh 'cp /usr/local/etc/roms/baserom_oot.z64 baseroms/gc-eu-mq-dbg/baserom.z64'
                sh '''. .venv/bin/activate
                make -j setup
                '''
            }
        }
        stage('Build (qemu-irix)') {
            when {
                branch 'main'
            }
            steps {
                sh '''. .venv/bin/activate
                make -j ORIG_COMPILER=1
                '''
            }
        }
        stage('Build') {
            when {
                not {
                    branch 'main'
                }
            }
            steps {
                sh '''. .venv/bin/activate
                make -j
                '''
            }
        }
        stage('Report Progress') {
            when {
                branch 'main'
            }
            steps {
                sh 'mkdir reports'
                sh 'python3 progress.py csv >> reports/progress-oot-nonmatching.csv'
                sh 'python3 progress.py csv -m >> reports/progress-oot-matching.csv'
                sh 'python3 progress.py shield-json > reports/progress-oot-shield.json'
                stash includes: 'reports/*', name: 'reports'
            }
        }
        stage('Update Progress') {
            when {
                branch 'main'
            }
            agent {
                label 'zeldaret_website'
            }
            steps {
                unstash 'reports'
                sh 'cat reports/progress-oot-nonmatching.csv >> /var/www/zelda64.dev/assets/csv/progress-oot-nonmatching.csv'
                sh 'cat reports/progress-oot-matching.csv >> /var/www/zelda64.dev/assets/csv/progress-oot-matching.csv'
                sh 'cat reports/progress-oot-shield.json > /var/www/zelda64.dev/assets/csv/progress-oot-shield.json'
            }
        }
    }
    post {
        always {
            echo "Finished, deleting directory."
            deleteDir()
        }
        cleanup {
            echo "Clean up in post."
            cleanWs(cleanWhenNotBuilt: false,
                    deleteDirs: true,
                    disableDeferredWipeout: true,
                    notFailBuild: true)
        }
    }
}
