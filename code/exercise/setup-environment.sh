source ./exercise/env-vars.sh

envsubst < exercise/external-image-pipeline-resource.yaml.in > exercise/external-image-pipeline-resource.yaml
envsubst < exercise/prod-cluster-resource.yaml.in > exercise/prod-cluster-resource.yaml
envsubst < exercise/prod-deploy-pipeline.yaml.in > exercise/prod-deploy-pipeline.yaml
envsubst < tektontasks/transfer-image-task.yaml.in > tektontasks/transfer-image-task.yaml
chmod a+x exercise/prepare-prod.sh
