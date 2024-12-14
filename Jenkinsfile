pipeline {
    agent any
    // Checks changes in repo each minute. 
    triggers {
        pollSCM('*/1 * * * *')
    }
    stages {
        stage('build-docker-image') {
            steps {
                buildDockerImage()
            }
        }
    }
}

def buildDockerImage(){
    echo "Building docker image..."
    sh "docker build -t kvinnika/api-tests:latest ."

    echo "Pushing image to docker registry.."
    sh "docker push kvinnika/api-tests:latest"
}
