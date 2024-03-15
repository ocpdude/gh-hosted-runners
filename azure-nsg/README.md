# GitHub-Hosted Runners with Azure Network Security Group (NSG)
See YouTube Video https://youtu.be/YV8rtLXVR10


Although this documentation should _always_ be referred to from the [official documentation](https://docs.github.com/en/enterprise-cloud@latest/admin/configuration/configuring-private-networking-for-hosted-compute-products/configuring-private-networking-for-github-hosted-runners), I've included the steps here for convenience.

Please note that this is for GitHub Enterprise Cloud only.

Additionally, I've had issues removing the configuration due to blockers of the SAI (Security Automated Investigation) feature, so please be aware of this. To resovled this, I have included in the .sh script the removal of the SAI feature tied to the $NETWORK_SETTINGS_RESOURCE_NAME.

Links
- [About GitHub-hosted runners in your Azure Virtual Network](https://docs.github.com/en/enterprise-cloud@latest/admin/configuration/configuring-private-networking-for-hosted-compute-products/about-using-github-hosted-runners-in-your-azure-virtual-network) 
- [Configure private networking for GitHub-hosted runners](https://docs.github.com/en/enterprise-cloud@latest/admin/configuration/configuring-private-networking-for-hosted-compute-products/configuring-private-networking-for-github-hosted-runners) 
- [Obtain the databaseId for your enterprise](https://docs.github.com/en/enterprise-cloud@latest/admin/configuration/configuring-private-networking-for-hosted-compute-products/configuring-private-networking-for-github-hosted-runners#1-obtain-the-databaseid-for-your-enterprise) 
- [Communication between self-hosted runners and GitHub Enterprise Cloud](https://docs.github.com/en/enterprise-cloud@latest/actions/hosting-your-own-runners/managing-self-hosted-runners/about-self-hosted-runners#communication-between-self-hosted-runners-and-github-enterprise-cloud)
<img width="686" alt="VNET Inection - via Azure NSG-3" src="https://github.com/ocpdude/gh-hosted-runners/assets/73440142/d10507d2-1594-41ab-b724-e5da9957e587">

