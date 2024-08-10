pipeline {
    agent {
        label 'oot'
    }

    stages {
        stage('Check formatting (full)') {
            when {
                branch 'main'
            }
            steps {
                echo 'Checking formatting on all files...'
                sh 'python3 tools/check_format.py'
            }
        }
        stage('Check formatting (modified)') {
            when {
                not {
                    branch 'main'
                }
            }
            steps {
                echo 'Checking formatting on modified files...'
                sh 'python3 tools/check_format.py --verbose --compare-to origin/main'
            }
        }
        stage('Build gc-eu-mq-dbg') {
            steps {
                sh 'cp /usr/local/etc/roms/oot-gc-eu-mq-dbg.z64 baseroms/gc-eu-mq-dbg/baserom.z64'
                sh 'make -j setup'
                sh 'make -j RUN_CC_CHECK=0'
                sh 'make clean assetclean'
            }
        }
        stage('Build gc-jp') {
            steps {
                sh 'cp /usr/local/etc/roms/oot-gc-jp.z64 baseroms/gc-jp/baserom.z64'
                sh 'make -j setup VERSION=gc-jp'
                sh 'make -j RUN_CC_CHECK=0 VERSION=gc-jp'
                sh 'make clean assetclean VERSION=gc-jp'
            }
        }
        stage('Build gc-jp-mq') {
            steps {
                sh 'cp /usr/local/etc/roms/oot-gc-jp-mq.z64 baseroms/gc-jp-mq/baserom.z64'
                sh 'make -j setup VERSION=gc-jp-mq'
                sh 'make -j RUN_CC_CHECK=0 VERSION=gc-jp-mq'
                sh 'make clean assetclean VERSION=gc-jp-mq'
            }
        }
        stage('Build gc-jp-ce') {
            steps {
                sh 'cp /usr/local/etc/roms/oot-gc-jp-ce.z64 baseroms/gc-jp-ce/baserom.z64'
                sh 'make -j setup VERSION=gc-jp-ce'
                sh 'make -j RUN_CC_CHECK=0 VERSION=gc-jp-ce'
                sh 'make clean assetclean VERSION=gc-jp-ce'
            }
        }
        stage('Build gc-us') {
            steps {
                sh 'cp /usr/local/etc/roms/oot-gc-us.z64 baseroms/gc-us/baserom.z64'
                sh 'make -j setup VERSION=gc-us'
                sh 'make -j RUN_CC_CHECK=0 VERSION=gc-us'
                sh 'make clean assetclean VERSION=gc-us'
            }
        }
        stage('Build gc-us-mq') {
            steps {
                sh 'cp /usr/local/etc/roms/oot-gc-us-mq.z64 baseroms/gc-us-mq/baserom.z64'
                sh 'make -j setup VERSION=gc-us-mq'
                sh 'make -j RUN_CC_CHECK=0 VERSION=gc-us-mq'
                sh 'make clean assetclean VERSION=gc-us-mq'
            }
        }
        stage('Build gc-eu') {
            steps {
                sh 'cp /usr/local/etc/roms/oot-gc-eu.z64 baseroms/gc-eu/baserom.z64'
                sh 'make -j setup VERSION=gc-eu'
                sh 'make -j RUN_CC_CHECK=0 VERSION=gc-eu'
                sh 'make clean assetclean VERSION=gc-eu'
            }
        }
        stage('Build gc-eu-mq') {
            steps {
                sh 'cp /usr/local/etc/roms/oot-gc-eu-mq.z64 baseroms/gc-eu-mq/baserom.z64'
                sh 'make -j setup VERSION=gc-eu-mq'
                sh 'make -j RUN_CC_CHECK=0 VERSION=gc-eu-mq'
                sh 'make clean assetclean VERSION=gc-eu-mq'
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
