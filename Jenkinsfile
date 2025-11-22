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
        stage('build container') {
            steps {
                sh 'docker rm -rf myappcontainer || true'
                sh 'docker run -d myappcontainer -p 80:80 myapp'
            }
        }
    }
}
