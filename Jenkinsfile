pipeline {
    agent any
parameters {
        string(name: 'Password', defaultValue: 'dckr_pat_O_Ys2Em8i4nutSnmbPeZTUWrHP4')
       
    }
    stages {
        stage ('changing the file permission') {
            steps {
                sh ' sudo chmod +x build.sh'
            }
        }

        stage ('executing the file') {
            steps {
                sh 'sudo ./build.sh'
                script {
                    def apiKey = params.Password
            }
        }
    }
}
