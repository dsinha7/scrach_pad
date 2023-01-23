#create a simple cluster
export MY_PROJECT=playground-s-11-84a301df
export MY_REGION=us-central1
export MY_ZONE=us-central1-c

gcloud config set compute/region us-central1
gcloud config set compute/zone us-central1-c

export my_cluster=hands-on-cluster-1
source <(kubectl completion bash)
gcloud container clusters get-credentials $my_cluster — zone $my_zone

gcloud container --project $MY_PROJECT clusters create $my_cluster \
--zone $MY_ZONE \
--machine-type "e2-micro" \
--disk-size "100"