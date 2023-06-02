pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'flutter build apk'
      }
    }

    stage('notify') {
      steps {
        googlechatnotification(url: 'https://chat.googleapis.com/v1/spaces/AAAAumwAp9k/messages?key=AIzaSyDdI0hCZtE6vySjMm-WEfRq3CPzqKqqsHI&token=oACR2eSYICvrXsBBizuEbqVHIXghSG5aCPprvdLp7rI', message: 'build succeeded', notifyAborted: true, notifyBackToNormal: true, notifyFailure: true, notifyNotBuilt: true, notifySuccess: true, notifyUnstable: true, sameThreadNotification: true, suppressInfoLoggers: true)
      }
    }

  }
}