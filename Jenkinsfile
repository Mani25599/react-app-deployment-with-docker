pipeline {
    agent any

    stages {
        stage ('changing the file permission') {
            steps {
                sh ' sudo chmod +x build.sh'
            }
        }

        stage ('executing the file') {
            steps {
                sh 'sudo ./build.sh'
              
                    
            
        }
    }
}
