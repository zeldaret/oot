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
                catchError(buildResult: 'FAILURE', stageResult: 'FAILURE') {
                    echo 'Checking formatting on modified files...'
                    sh 'python3 tools/check_format.py --verbose --compare-to origin/main'
                }
            }
        }
        // The ROMs are built in an order that maximizes compiler flags coverage in a "fail fast" approach.
        // Specifically we start with a retail ROM for BSS ordering, and make sure we cover all of
        // N64/GC/NTSC/PAL/MQ/DEBUG as quickly as possible.
        stage('Build ntsc-1.0') {
            steps {
                script {
                    build('ntsc-1.0', 'oot-ntsc-1.0-us.z64')
                }
           }
        }
        stage('Build gc-jp') {
            steps {
                script {
                    build('gc-jp', 'oot-gc-jp.z64')
                }
           }
        }
        stage('Build gc-eu-mq') {
            steps {
                script {
                    build('gc-eu-mq', 'oot-gc-eu-mq.z64')
                }
            }
        }
        stage('Build gc-eu-mq-dbg') {
            steps {
                script {
                    build('gc-eu-mq-dbg', 'oot-gc-eu-mq-dbg.z64')
                }
            }
        }
        stage('Build pal-1.0') {
            steps {
                script {
                    build('pal-1.0', 'oot-pal-1.0.z64')
                }
           }
        }
        stage('Build ntsc-1.2') {
            steps {
                script {
                    build('ntsc-1.2', 'oot-ntsc-1.2-us.z64')
                }
           }
        }
        stage('Build gc-us') {
            steps {
                script {
                    build('gc-us', 'oot-gc-us.z64')
                }
            }
        }
        stage('Build gc-jp-ce') {
            steps {
                script {
                    build('gc-jp-ce', 'oot-gc-jp-ce.z64')
                }
            }
        }
        stage('Build gc-eu') {
            steps {
                script {
                    build('gc-eu', 'oot-gc-eu.z64')
                }
            }
        }
        stage('Build gc-jp-mq') {
            steps {
                script {
                    build('gc-jp-mq', 'oot-gc-jp-mq.z64')
                }
            }
        }
        stage('Build pal-1.1') {
            steps {
                script {
                    build('pal-1.1', 'oot-pal-1.1.z64')
                }
           }
        }
        stage('Build ntsc-1.1') {
            steps {
                script {
                    build('ntsc-1.1', 'oot-ntsc-1.1-us.z64')
                }
           }
        }
        stage('Build gc-us-mq') {
            steps {
                script {
                    build('gc-us-mq', 'oot-gc-us-mq.z64')
                }
            }
        }
        stage('Build ique-cn') {
            steps {
                script {
                    build('ique-cn', 'oot-ique-cn.z64')
                }
            }
        }
        stage('Generate patch') {
            when {
                not {
                    branch 'main'
                }
            }
            steps {
                sh 'git diff'
                echo 'Generating patch...'
                sh 'tools/generate_patch_from_jenkins.sh'
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

def build(String version, String rom) {
    sh "ln -s /usr/local/etc/roms/${rom} baseroms/${version}/baserom.z64"
    sh "make -j\$(nproc) setup VERSION=${version}"
    try {
        sh "make -j\$(nproc) VERSION=${version}"
    } catch (e) {
        echo "Build failed, attempting to fix BSS ordering..."
        sh ".venv/bin/python3 tools/fix_bss.py -v ${version}"
        // If fix_bss.py succeeds, continue the build, but ensure both the build and current stage are marked as failed
        catchError(buildResult: 'FAILURE', stageResult: 'FAILURE') {
            sh 'exit 1'
        }
    } finally {
        sh "make clean assetclean VERSION=${version}"
    }
}
