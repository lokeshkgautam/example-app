node {
        def app
      
        stage('Clone repositry') {
                checkout scm
        }

        stage('Build image') {
                 app = docker.build('lokeshkgautam/example-app')

        }

        stage('Push image') {
               docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
                       app.push('latest')
               }
         }
}
