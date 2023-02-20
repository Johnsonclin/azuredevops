param storageAccountType string = 'Standard_LRS'
param location string = resourceGroup().location
var storageAccountName = 'storage-test'
resource storageAccount 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: storageAccountType
  }
  kind: 'StorageV2'
  properties: {}
}

output storageAccountNameOutput string = storageAccount.name
