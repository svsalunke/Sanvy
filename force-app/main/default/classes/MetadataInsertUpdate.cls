public class MetadataInsertUpdate implements Metadata.DeployCallback {

public void handleResult(Metadata.DeployResult result,
Metadata.DeployCallbackContext context) {
if (result.status == Metadata.DeployStatus.Succeeded) {
// Deployment was successful, take appropriate action.
System.debug('Deployment Succeeded!');
} else {
// Deployment wasn’t successful, take appropriate action.
System.debug('Deployment Failed!');
}
}

public static void handleInsertAndUpdate (String fullName, String label, Map<String, Object> fieldWithValuesMap){

Metadata.CustomMetadata customMetadata = new Metadata.CustomMetadata();
customMetadata.fullName = fullName;
customMetadata.label = label;

for (String key: fieldWithValuesMap.keySet()) {
Metadata.CustomMetadataValue customField = new Metadata.CustomMetadataValue();
customField.field = key;
customField.value = fieldWithValuesMap.get(key);
customMetadata.values.add(customField);

}

Metadata.DeployContainer mdContainer = new Metadata.DeployContainer();
mdContainer.addMetadata(customMetadata);
metadataInsertUpdate callback = new metadataInsertUpdate();
Id jobId = Metadata.Operations.enqueueDeployment(mdContainer, callback);

}

}