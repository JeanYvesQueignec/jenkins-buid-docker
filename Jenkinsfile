node{
  def app
    
    stage('Clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("jy/nginx")
    }

    stage('Test image') {
        docker.image('jy/nginx').withRun('-p 80:80') { c ->
        sh 'docker ps'
        sleep(time:30,unit:"SECONDS")
        sh 'curl localhost:80'
	     }
    }
}

