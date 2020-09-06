source ./setup/env-vars.sh

envsubst < resources/external-image-pipeline-resource.yaml.in > resources/external-image-pipeline-resource.yaml
envsubst < resources/prod-cluster-resource.yaml.in > resources/prod-cluster-resource.yaml
envsubst < pipeline/prod-deploy-pipeline.yaml.in > pipeline/prod-deploy-pipeline.yaml
envsubst < tektontasks/transfer-image-task.yaml.in > tektontasks/transfer-image-task.yaml
chmod a+x setup/prepare-prod.sh
