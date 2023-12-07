#!/bin/zsh
set -e

AWSDEV() {
  asp Development
}

AWSLOGIN() {
  aws sso login --profile Development; asp Development
}

AWSPROD() {
  asp Production
}

AWSSHARED() {
  asp Shared-Services
}

AWSSAND() {
  asp SandBox
}

AWSMGMT() {
  asp BasisTheory-Management
}


AWSAUDIT() {
  asp Audit
}

AWSLOG() {
  asp Log_Archive
}

K8S_CONTEXT_DEV_US_EAST() {
  aws eks update-kubeconfig --name basis-theory-dev --region us-east-2
}

K8S_CONTEXT_DEV_US_WEST() {
  aws eks update-kubeconfig --name basis-theory-dev --region us-west-2
}

K8S_CONTEXT_PROD_US_EAST() {
  aws eks update-kubeconfig --name basis-theory-prod --region us-east-2
}

K8S_CONTEXT_PROD_US_WEST() {
  aws eks update-kubeconfig --name basis-theory-prod --region us-west-2
}

K8S_CONTEXT_DEV_EU_WEST() {
  aws eks update-kubeconfig --name basis-theory-dev --region eu-west-1
}

K8S_CONTEXT_DEV_EU_CENTRAL() {
  aws eks update-kubeconfig --name basis-theory-dev --region eu-central-1
}

K8S_CONTEXT_PROD_EU_WEST() {
  aws eks update-kubeconfig --name basis-theory-prod --region us-west-1
}

K8S_CONTEXT_PROD_EU_CENTRAL() {
  aws eks update-kubeconfig --name basis-theory-prod --region us-central-1
}

#List in bash
# shellcheck disable=SC2034
#SELECTIONS=("aws-login" "aws-dev" "aws-prod" "aws-audit" "aws-management" "aws-logging" "k8s-ctx-dev-us-east" "k8s-ctx-dev-us-west" "k8s-ctx-prod-us-east" "k8s-ctx-prod-us-west" "k8s-ctx-dev-eu-west" "k8s-ctx-dev-eu-central" "k8s-ctx-prod-eu-west" "k8s-ctx-prod-eu-central" "aws-shared" "aws-sandbox")
#echo $SELECTIONS
#DIR=$(gum choose "aws-login" "aws-dev" "aws-prod" "aws-audit" "aws-management" "aws-logging" "k8s-ctx-dev-us-east" "k8s-ctx-dev-us-west" "k8s-ctx-prod-us-east" "k8s-ctx-prod-us-west" "k8s-ctx-dev-eu-west" "k8s-ctx-dev-eu-central" "k8s-ctx-prod-eu-west" "k8s-ctx-prod-eu-central" "aws-shared" "aws-sandbox" | gum filter --placeholder "Make selection...")
SELECTIONS=$(cat selections.txt | gum filter --placeholder "Make selection...")

if [[ "$SELECTIONS" == "aws-login" ]]; then
    AWSLOGIN
elif [[ "$SELECTIONS" == "aws-prod" ]]; then
    AWSPROD
elif [[ "$SELECTIONS" == "aws-dev" ]]; then
    AWSDEV
elif [[ "$SELECTIONS" == "aws-audit" ]]; then
    AWSAUDIT
elif [[ "$SELECTIONS" == "aws-management" ]]; then
    AWSMGMT
elif [[ "$SELECTIONS" == "aws-logging" ]]; then
    AWSLOG
elif [[ "$SELECTIONS" == "k8s-ctx-dev-us-east" ]]; then
    K8S_CONTEXT_DEV_US_EAST
elif [[ "$SELECTIONS" == "k8s-ctx-dev-us-west" ]]; then
    K8S_CONTEXT_DEV_US_WEST
fi
