node{
  def app
    
    stage('Clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("jy/nginx")
    }

    stage('Test image') {
        docker.image('jy/nginx').withRun('-p 8081:80') { c ->
        sh 'docker ps'
        sh 'curl localhost:8081'
	     }
    }
}

