node {
    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
    
        git url: "https://github.com/maheshmadmax/java-max.git", credentialsId: 'github'
    
        sh "git rev-parse HEAD > .git/commit-id"
        def commit_id = readFile('.git/commit-id').trim()
        println commit_id
    
        stage "build"
        def app = docker.build "java-max"
    
        stage "publish"
        app.push 'master'
        app.push "${commit_id}"
    }
}
