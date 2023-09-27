import os

TestFolder = os.path.dirname(os.path.realpath(__file__))

# list all folders in the test folder
for root, folders, files in os.walk(TestFolder):
    for folder in folders:
        if folder != ".backup" and folder != "webpatch":
            for root, folders, files in os.walk(os.path.join(TestFolder, folder)):
                for file in files:
                    if file.endswith(".pd") and file == f"{folder}.pd":        
                        testFile = os.path.join(TestFolder, folder, f"{folder}.pd")        
                        # run pd2wasm --patch {testFile} and check if it returns 0
                        returnCode = os.system(f"pd2wasm --patch {testFile}")                
                        if returnCode != 0:
                            print(f"Error: {testFile} failed")
                            exit(1)







