import os
import shutil

def delete_git_related(directory):
    # Iterate over all the files and directories in the specified directory
    for root, dirs, files in os.walk(directory):
        for file in files:
            # Check if the file name is ".gitignore" or ".gitattributes"
            if file == ".gitignore" or file == ".gitattributes" or file == '.gitmodules':
                # Construct the absolute path of the file
                file_path = os.path.join(root, file)
                
                # Delete the file
                os.remove(file_path)
                print(f"Deleted file: {file_path}")

        for dir in dirs:
            # Check if the directory name is ".git"
            if dir == ".git" or dir == '.github':
                # Construct the absolute path of the directory
                dir_path = os.path.join(root, dir)
                
                # Delete the directory and all its contents
                shutil.rmtree(dir_path)
                print(f"Deleted directory: {dir_path}")

# Get the current directory
current_dir = os.getcwd()

# Call the function to delete Git-related files and directories
delete_git_related(current_dir)