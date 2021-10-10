This folder contains a shell script which retreives metadata of a gcp compute instance

Steps:

1. Create a Service account and copy its Json key on machine.
2. This key should be place in "account.json" file and this file should be in the same location where the "metadata.sh" is kept
3. getMetadata.sh requires 3 mandatory parameters and one optional parameter. This optional parameter will used when you want to fetch the value for particular key from compute's metdata

    instance-name  - Name of the instance for which metadata is required for
    project-name   - name of the project where the instance exists
    zone           - zone where the instance exits
    key (optional) - the metadata key for which the value need to be fetched