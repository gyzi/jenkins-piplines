pipeline {
   agent any
   environment {
      version = 12.0
   }
   stages {
      stage('build') {
         environment {
            PHASE = 'buildspec'
         }
         steps {
            echo "hi build phase"
            echo PHASE
         }
      }

      stage('test') {
         steps {
            echo " show build_id: ${env.BUILD_ID} , show jenkins_url:  ${env.JENKINS_URL} "
         }
      }

      stage('deploy') {
         steps {
            echo "hi deploy odoo.${env.version}"
         }
      }

   }
}