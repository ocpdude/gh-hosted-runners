# GitHub Hosted Runners - Private Networking through Azure Firewall and Network Security Group (NSG)

This repository contains the scripts and templates for configuring GitHub Hosted Runners with Azure Firewall and Network Security Group (NSG).

This documentataion should _always_ be referred to from the [official documentation](https://docs.github.com/en/enterprise-cloud@latest/admin/configuration/configuring-private-networking-for-hosted-compute-products/configuring-private-networking-for-github-hosted-runners) as the source of truth.

Please note that this is for GitHub Enterprise Cloud only.

Additionally, I've had issues removing the configuration due to blockers of the SAI (Security Automated Investigation) feature, so please be aware of this. To resovled it, I have included in the .sh script the removal of the SAI feature tied to the $NETWORK_SETTINGS_RESOURCE_NAME.

I hope you find these scripts and templates useful. 