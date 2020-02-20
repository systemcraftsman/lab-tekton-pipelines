source ./exercise/env-vars.sh

export PREPROD_CLUSTER_TOKEN=$(oc whoami -t) &&

echo "Switching to PROD cluster"
oc login $PROD_CLUSTER_URL --token=$PROD_CLUSTER_TOKEN --insecure-skip-tls-verify &&
echo "Preparing..." &&
oc new-project $PROJECT_NAMESPACE &&
oc create secret docker-registry external-registry --docker-server=$EXTERNAL_IMAGE_REGISTRY_URI --docker-username=$EXTERNAL_IMAGE_REGISTRY_USER_NAME --docker-password=$EXTERNAL_IMAGE_REGISTRY_PASSWORD &&
oc secrets link default external-registry --for=pull &&
oc create -f ./sampleapp/sampleapp.yaml &&
oc new-app centos/mongodb-36-centos7 -e MONGODB_USER=admin MONGODB_DATABASE=mongodb MONGODB_PASSWORD=secret MONGODB_ADMIN_PASSWORD=super-secret &&
oc set env dc/nodejs-ex MONGO_URL="mongodb://admin:secret@mongodb-36-centos7:27017/mongodb" &&
echo "Prepared!" &&

echo "Switching back to PRE-PROD cluster" 
oc login $PREPROD_CLUSTER_URL --token=$PREPROD_CLUSTER_TOKEN --insecure-skip-tls-verify &&
oc project $PROJECT_NAMESPACE