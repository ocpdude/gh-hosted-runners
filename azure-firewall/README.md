# GitHub-Hosted Runners with Azure Firewall
See YouTube Video https://youtu.be/mg0pMXfDkPw


Included is the script I used for adding the networking services [gh-vnet.sh](https://github.com/ocpdude/gh-hosted-runners/blob/main/gh-vnet.sh), I've also now included a .bicep script for automating the GitHub Self-Hosted runners URL's in [actions-firewall-deployment.bicep](https://github.com/ocpdude/gh-hosted-runners/blob/main/actions-firewall-deployment.bicep).


Please note that this is for GitHub Enterprise Cloud only.

Additionally, I've had issues removing the configuration due to blockers of the SAI (Security Automated Investigation) feature, so please be aware of this. To resovled this, I have included in the .sh script the removal of the SAI feature tied to the $NETWORK_SETTINGS_RESOURCE_NAME.

Links
- [About GitHub-hosted runners in your Azure Virtual Network](https://docs.github.com/en/enterprise-cloud@latest/admin/configuration/configuring-private-networking-for-hosted-compute-products/about-using-github-hosted-runners-in-your-azure-virtual-network) 
- [Configure private networking for GitHub-hosted runners](https://docs.github.com/en/enterprise-cloud@latest/admin/configuration/configuring-private-networking-for-hosted-compute-products/configuring-private-networking-for-github-hosted-runners) 
- [Obtain the databaseId for your enterprise](https://docs.github.com/en/enterprise-cloud@latest/admin/configuration/configuring-private-networking-for-hosted-compute-products/configuring-private-networking-for-github-hosted-runners#1-obtain-the-databaseid-for-your-enterprise) 
- [Communication between self-hosted runners and GitHub Enterprise Cloud](https://docs.github.com/en/enterprise-cloud@latest/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners#communication-between-self-hosted-runners-and-github-enterprise-cloud)
<img width="530" alt="VNET Inection - via Azure Firewall" src="https://github.com/ocpdude/gh-hosted-runners/assets/73440142/5034e063-331f-4196-82b2-7d72113ef3e6">
