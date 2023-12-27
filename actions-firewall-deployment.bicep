param subnet string
param name string
resource symbolicname 'Microsoft.Network/firewallPolicies/ruleCollectionGroups@2023-06-01' = {
  name: name
  properties: {
    priority: 242
    ruleCollections: [
      {
        ruleCollectionType: 'FirewallPolicyFilterRuleCollection'
        action: {
          type: 'Allow'
        }
        rules: [
          {
            ruleType: 'ApplicationRule'
            name: 'github.com'
            protocols: [
              {
                protocolType: 'Https'
                port: 443
              }
            ]
            fqdnTags: []
            webCategories: []
            targetFqdns: [
              'github.com'
            ]
            targetUrls: []
            terminateTLS: false
            sourceAddresses: [
              subnet
            ]
            destinationAddresses: []
            sourceIpGroups: []
            httpHeadersToInsert: []
          }
          {
            ruleType: 'ApplicationRule'
            name: 'api.github.com'
            protocols: [
              {
                protocolType: 'Https'
                port: 443
              }
            ]
            fqdnTags: []
            webCategories: []
            targetFqdns: [
              'api.github.com'
            ]
            targetUrls: []
            terminateTLS: false
            sourceAddresses: [
              subnet
            ]
            destinationAddresses: []
            sourceIpGroups: []
            httpHeadersToInsert: []
          }
          {
            ruleType: 'ApplicationRule'
            name: '*.actions.githubusercontent.com'
            protocols: [
              {
                protocolType: 'Https'
                port: 443
              }
            ]
            fqdnTags: []
            webCategories: []
            targetFqdns: [
              '*.actions.githubusercontent.com'
            ]
            targetUrls: []
            terminateTLS: false
            sourceAddresses: [
              subnet
            ]
            destinationAddresses: []
            sourceIpGroups: []
            httpHeadersToInsert: []
          }
          {
            ruleType: 'ApplicationRule'
            name: 'codeload.github.com'
            protocols: [
              {
                protocolType: 'Https'
                port: 443
              }
            ]
            fqdnTags: []
            webCategories: []
            targetFqdns: [
              'codeload.github.com'
            ]
            targetUrls: []
            terminateTLS: false
            sourceAddresses: [
              subnet
            ]
            destinationAddresses: []
            sourceIpGroups: []
            httpHeadersToInsert: []
          }
          {
            ruleType: 'ApplicationRule'
            name: 'results-receiver.actions.githubusercontent.com'
            protocols: [
              {
                protocolType: 'Https'
                port: 443
              }
            ]
            fqdnTags: []
            webCategories: []
            targetFqdns: [
              'results-receiver.actions.githubusercontent.com'
            ]
            targetUrls: []
            terminateTLS: false
            sourceAddresses: [
              subnet
            ]
            destinationAddresses: []
            sourceIpGroups: []
            httpHeadersToInsert: []
          }
          {
            ruleType: 'ApplicationRule'
            name: '*.blob.core.windows.net'
            protocols: [
              {
                protocolType: 'Https'
                port: 443
              }
            ]
            fqdnTags: []
            webCategories: []
            targetFqdns: [
              '*.blob.core.windows.net'
            ]
            targetUrls: []
            terminateTLS: false
            sourceAddresses: [
              subnet
            ]
            destinationAddresses: []
            sourceIpGroups: []
            httpHeadersToInsert: []
          }
          {
            ruleType: 'ApplicationRule'
            name: 'objects.githubusercontent.com'
            protocols: [
              {
                protocolType: 'Https'
                port: 443
              }
            ]
            fqdnTags: []
            webCategories: []
            targetFqdns: [
              'objects.githubusercontent.com'
            ]
            targetUrls: []
            terminateTLS: false
            sourceAddresses: [
              subnet
            ]
            destinationAddresses: []
            sourceIpGroups: []
            httpHeadersToInsert: []
          }
          {
            ruleType: 'ApplicationRule'
            name: 'objects-origin.githubusercontent.com'
            protocols: [
              {
                protocolType: 'Https'
                port: 443
              }
            ]
            fqdnTags: []
            webCategories: []
            targetFqdns: [
              'objects-origin.githubusercontent.com'
            ]
            targetUrls: []
            terminateTLS: false
            sourceAddresses: [
              subnet
            ]
            destinationAddresses: []
            sourceIpGroups: []
            httpHeadersToInsert: []
          }
          {
            ruleType: 'ApplicationRule'
            name: 'github-releases.githubusercontent.com'
            protocols: [
              {
                protocolType: 'Https'
                port: 443
              }
            ]
            fqdnTags: []
            webCategories: []
            targetFqdns: [
              'github-releases.githubusercontent.com'
            ]
            targetUrls: []
            terminateTLS: false
            sourceAddresses: [
              subnet
            ]
            destinationAddresses: []
            sourceIpGroups: []
            httpHeadersToInsert: []
          }
          {
            ruleType: 'ApplicationRule'
            name: 'github-registry-files.githubusercontent.com'
            protocols: [
              {
                protocolType: 'Https'
                port: 443
              }
            ]
            fqdnTags: []
            webCategories: []
            targetFqdns: [
              'github-registry-files.githubusercontent.com'
            ]
            targetUrls: []
            terminateTLS: false
            sourceAddresses: [
              subnet
            ]
            destinationAddresses: []
            sourceIpGroups: []
            httpHeadersToInsert: []
          }
          {
            ruleType: 'ApplicationRule'
            name: '*.pkg.github.com'
            protocols: [
              {
                protocolType: 'Https'
                port: 443
              }
            ]
            fqdnTags: []
            webCategories: []
            targetFqdns: [
              '*.pkg.github.com'
            ]
            targetUrls: []
            terminateTLS: false
            sourceAddresses: [
              subnet
            ]
            destinationAddresses: []
            sourceIpGroups: []
            httpHeadersToInsert: []
          }
          {
            ruleType: 'ApplicationRule'
            name: 'ghcr.io'
            protocols: [
              {
                protocolType: 'Https'
                port: 443
              }
            ]
            fqdnTags: []
            webCategories: []
            targetFqdns: [
              'ghcr.io'
            ]
            targetUrls: []
            terminateTLS: false
            sourceAddresses: [
              subnet
            ]
            destinationAddresses: []
            sourceIpGroups: []
            httpHeadersToInsert: []
          }
        ]
        name: 'githubRunners'
        priority: 100
      }
    ]
  }
}
