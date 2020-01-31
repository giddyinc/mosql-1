#!groovy


@Library("boxed-kube-infrastructure") _

node {
    env.APPS = "postgres-mosql-dev"

    switch (env.BRANCH_NAME) {
        case "chen/dev":
            kubeContext = 'gke_boxed-api_us-east4_production'
            namespace = "airflow"
            environment = 'prod'
            break

    }
    setupFreighter()

    stage("Postgres Mosql Docker Build") {
        sh("freighter build-and-push deploy/config/postgres-mosql-dev.config.yml")
    }

    cleanWs() 
}
