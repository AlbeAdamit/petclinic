node {
  stage('SCM') {
    checkout scm
  }
  stage('SonarQube Analysis') {
    def mvn = tool 'mvn_tool';
    withSonarQubeEnv() {
      sh "${mvn}/bin/mvn clean verify sonar:sonar -Dsonar.projectKey=AlbeAdamit_jgsu-spring-petclinic_AX7E0NxrqzaQGJYvdfSg"
    }
  }
}
