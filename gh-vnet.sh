#!/bin/bash

# This script assums the following resources have been created:
# - Azure Firewall with policies for GitHub Self-Hosted Runners
# - Resource group
# - Virtual network (vnet) and subnet
# - Network Settings with specified subnet and GitHub Enterprise database ID
#
# It also registers the `GitHub.Network` resource provider with the subscription,
# delegates the subnet to the Actions service via the `GitHub.Network/NetworkSettings`
# resource type, and provides the GitHubId required for provisioning the 
# Hosted Compute Networking (Azure private network) network configuration.
# stop on failure

set -e

export AZURE_LOCATION=YOUR_AZURE_LOCATION
export RESOURCE_GROUP_NAME=YOUR_RESOURCE_GROUP_NAME
export VNET_NAME=YOUR_VNET_NAME
export SUBNET_NAME=YOUR_SUBNET_NAME
export NETWORK_SETTINGS_RESOURCE_NAME=YOUR_NETWORK_SETTINGS_RESOURCE_NAME
export DATABASE_ID=YOUR_DATABASE_ID
export SUBSCRIPTION_ID=YOUR_SUBSCRIPTION_ID

echo
echo login to Azure
. az login --output none

echo
echo set account context subscription 
. az account set --subscription $SUBSCRIPTION_ID

echo
echo Register resource provider GitHub.Network
. az provider register --namespace GitHub.Network

echo
echo Delegate subnet to GitHub.Network/networkSettings 
. az network vnet subnet update --resource-group $RESOURCE_GROUP_NAME --name $SUBNET_NAME --vnet-name $VNET_NAME --delegations GitHub.Network/networkSettings

echo
echo Create network settings resource $NETWORK_SETTINGS_RESOURCE_NAME
. az resource create --resource-group $RESOURCE_GROUP_NAME  --name $NETWORK_SETTINGS_RESOURCE_NAME --resource-type GitHub.Network/networkSettings --properties "{ \"location\": \"$AZURE_LOCATION\", \"properties\" : {  \"subnetId\": \"/subscriptions/$SUBSCRIPTION_ID/resourceGroups/$RESOURCE_GROUP_NAME/providers/Microsoft.Network/virtualNetworks/$VNET_NAME/subnets/$SUBNET_NAME\", \"organizationId\": \"$DATABASE_ID\" }}" --is-full-object --output table --query "{GitHubId:tags.GitHubId, name:name}" --api-version 2023-11-01-preview

# Safely remove your configuration
echo
echo Remove GitHub resources first
echo 1. Remove the GitHub runner
echo 2. Remove the GitHub runner group
echo 3. Remove the Hosted compute networking
echo Remove Azure resources by running the following commands
echo 4. Remove Azure network settings resource
echo az resource delete --ids /subscriptions/$SUBSCRIPTION_ID/resourceGroups/$RESOURCE_GROUP_NAME/providers/GitHub.Network/networkSettings/$NETWORK_SETTINGS_RESOURCE_NAME
echo 5. Remove the Azure resource group
echo az group delete --resource-group $RESOURCE_GROUP_NAME 
