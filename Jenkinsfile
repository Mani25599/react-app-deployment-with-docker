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
         stage ('enetr password') {
            steps {
               read -s -p "Enter password: " dckr_pat_O_Ys2Em8i4nutSnmbPeZTUWrHP4
                   
        }
    }
}
}
