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
        stage('Build ntsc-1.2, check disasm metadata') {
            steps {
                sh 'ln -s /usr/local/etc/roms/oot-ntsc-1.2-us.z64 baseroms/ntsc-1.2/baserom.z64'
                sh 'make -j$(nproc) setup VERSION=ntsc-1.2'
                sh 'make -j$(nproc) VERSION=ntsc-1.2'
                sh '.venv/bin/python3 tools/check_disasm_metadata_unksyms.py -v ntsc-1.2'
                sh 'make clean assetclean VERSION=ntsc-1.2'
            }
        }
        // The ROMs are built in an order that maximizes compiler flags coverage in a "fail fast" approach.
        // Specifically we start with a retail ROM for BSS ordering, and make sure we cover all of
        // NTSC/PAL/MQ/DEBUG as quickly as possible.
        stage('Build gc-jp') {
            steps {
                script {
                    build('gc-jp')
                }
           }
        }
        stage('Build gc-eu-mq') {
            steps {
                script {
                    build('gc-eu-mq')
                }
            }
        }
        stage('Build gc-eu-mq-dbg') {
            steps {
                script {
                    build('gc-eu-mq-dbg')
                }
            }
        }
        stage('Build gc-us') {
            steps {
                script {
                    build('gc-us')
                }
            }
        }
        stage('Build gc-jp-ce') {
            steps {
                script {
                    build('gc-jp-ce')
                }
            }
        }
        stage('Build gc-eu') {
            steps {
                script {
                    build('gc-eu')
                }
            }
        }
        stage('Build gc-jp-mq') {
            steps {
                script {
                    build('gc-jp-mq')
                }
            }
        }
        stage('Build gc-us-mq') {
            steps {
                script {
                    build('gc-us-mq')
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

def build(String version) {
    sh "ln -s /usr/local/etc/roms/oot-${version}.z64 baseroms/${version}/baserom.z64"
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
