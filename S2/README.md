This folder contains a shell script which retreives metadata of a gcp compute instance

Steps:

1. Create a Service account and copy its Json key on machine.
2. This key should be place in "account.json" file and below line in getMetaDataKeyComputeEngine.sh need to updated with account.json path
      gcloud auth activate-service-account --key-file=<path>/account.json
      export GOOGLE_APPLICATION_CREDENTIALS=<path>/account.json
4. getMetaDataKeyComputeEngine.sh requires 3 mandatory parameters and one optional parameter. This optional parameter will used when you want to fetch the value for particular key from compute's metdata

    instance-name  - Name of the instance for which metadata is required for
    project-name   - name of the project where the instance exists
    zone           - zone where the instance exits
    key (optional) - the metadata key for which the value need to be fetched
    
Testing Logs:
    
1. Passing 3 mandatory parameters
      
      
    :~#./getMetaDataKeyComputeEngine.sh kpmg-test-question-2 kpmg-test-10102201 asia-south2-a
      
      
      **Activated service account credentials for: [terraform-integration@kpmg-test-10102201.iam.gserviceaccount.com]
      
      
      {'key': 'kpmg', 'value': 'question2'};{'key': 'gcp-compute', 'value': 'testing'}**
      
      
    
2. Passing 3 mandatory and optional parameter
      
      
    :~#./getMetaDataKeyComputeEngine.sh kpmg-test-question-2 kpmg-test-10102201 asia-south2-a kpmg
      
      
      **Activated service account credentials for: [terraform-integration@kpmg-test-10102201.iam.gserviceaccount.com]
      
      
      {"kpmg":"question2"}**
      
      
    
3. Passing 2 mandatory parameters (Failure scenario)
      
      
    :~#./getMetaDataKeyComputeEngine.sh kpmg-test-question-2 kpmg-test-10102201
      
      
      **o Usage: ./getMetaDataKeyComputeEngine.sh Instance-name Project Zone should be passed**
