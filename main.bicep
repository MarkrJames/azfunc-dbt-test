// Sample will not work if deployed

// App Service Plan
// "sku": {
//   "name": "EP1",
//   "tier": "ElasticPremium",
//   "size": "EP1",
//   "family": "EP",
//   "capacity": 1
// }
// 

vnet.res-resource azureFunction 'Microsoft.Web/sites@2020-12-01' = {
  name: 'biceptest'
  location: location
  kind: 'functionapp'
  properties: {
    serverFarmId: 'serverfarms.id'
    siteConfig: {
      appSettings: [
        {
          name: 'APPINSIGHTS_INSTRUMENTATIONKEY'
          value: ''
        }
        {
          name: 'APPLICATIONINSIGHTS_CONNECTION_STRING'
          value: ''
        }
        {
          name: 'AzureWebJobsStorage'
          value: ''
        }
        {
          name: 'BUILD_FLAGS'
          value: 'UseExpressBuild'
        }
        {
          name: 'ENABLE_ORYX_BUILD'
          value: 'true'
        }
        {
          name: 'FUNCTIONS_EXTENSION_VERSION'
          value: '~4'
        }
        {
          name: 'FUNCTIONS_WORKER_RUNTIME'
          value: 'python'
        }
        {
          name: 'SCM_DO_BUILD_DURING_DEPLOYMENT'
          value: '1'
        }
        {
          name: 'WEBSITE_CONTENTAZUREFILECONNECTIONSTRING'
          value: ''
        }
        {
          name: 'WEBSITE_CONTENTSHARE'
          value: toLower('')
        }
        {
          name: 'XDG_CACHE_HOME'
          value: '/tmp/.cache'
        }
      ]
    }
  }
}
