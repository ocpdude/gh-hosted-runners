# GitHub Hosted Runners - Private Networking through Azure Firewall and Network Security Group (NSG)

This repository contains the scripts and templates for configuring GitHub Hosted Runners with Azure Firewall and Network Security Group (NSG).

This documentation should _always_ be referred to from the [official documentation](https://docs.github.com/en/enterprise-cloud@latest/admin/configuration/configuring-private-networking-for-hosted-compute-products/configuring-private-networking-for-github-hosted-runners) as the source of truth.

Please note that this is for GitHub Enterprise Cloud only.

Additionally, I've had issues removing the configuration due to blockers of the SAI (Security Automated Investigation) feature, so please be aware of this. To resovled it, I have included in the .sh script the removal of the SAI feature tied to the $NETWORK_SETTINGS_RESOURCE_NAME.

## NOW updated for GA 4/2/2024
  _Edits included in gh-vnet.sh_
- The api-version property should be updated to: 2024-04-02   
  The previous version (2023-11-01-preview) will not work post 4/2.
- The network settings payload no longer supports the organizationId property. \
  User will need to replace it with the businessId property post 4/2.


I hope you find these scripts and templates useful. 