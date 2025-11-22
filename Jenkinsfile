pipeline {
    agent any

    stages {
        stage('git config') {
            steps {
                git url:'https://github.com/sandippatil17/LastOne.git', branch:'main'
            }
        }
        stage('Docker image') {
            steps {
                sh 'docker build -t myapp .'
            }
        }
        stage('Trivy Scan') {
            steps {
            sh '''
            trivy image --exit-code 1 --severity HIGH,CRITICAL myapp || true
            '''
        }
    }
        stage('build container') {
            steps {
                sh 'docker rm -f myappcontainer || true'
                sh 'docker run -d --name myappcontainer -p 80:80 myapp'
            }
        }
    }
}
