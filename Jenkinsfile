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

        def versions = ['gc-eu-mq-dbg', 'gc-eu-mq']
        for (int i = 0; i < versions.length; i++) {
            def version = versions[i]

            stage("Setup ${version}") {
                steps {
                    sh "cp /usr/local/etc/roms/oot-${version}.z64 baseroms/${version}/baserom.z64"
                    sh "make -j setup VERSION=${version}"
                }
            }
            stage("Build ${version} (qemu-irix)") {
                when {
                    branch 'main'
                }
                steps {
                    sh "make -j VERSION=${version} ORIG_COMPILER=1"
                }
            }
            stage("Build ${version}") {
                when {
                    not {
                        branch 'main'
                    }
                }
                steps {
                    sh "make -j VERSION=${version} RUN_CC_CHECK=0"
                }
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
