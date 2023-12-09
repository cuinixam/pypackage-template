# Define the project name
$projectName = "new_project"

# Notify the user about the action
Write-Host "The new project will be created in the current directory under the name '$projectName'."

# Run the command
.venv\Scripts\poetry run copier copy --trust . $projectName
