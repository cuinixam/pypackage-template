param (
    # Optional repository directory name
    [string]$repositoryName = "HelloPython",

    # Optional output path parameter, defaulting to the script's root directory
    [string]$outputPath = $PSScriptRoot
)

# Display the output path
Write-Host "The new Python Package will be generated under '$outputPath/$repositoryName'."

# Path to the virtual environment activation script
$venvActivatePath = "$PSScriptRoot\.venv\Scripts\Activate.ps1"

# Check if the virtual environment activation script exists
if (Test-Path $venvActivatePath) {
    # Activate the virtual environment
    . $venvActivatePath

    # Run the copier command
    copier copy --vcs-ref HEAD --trust . "$outputPath/$repositoryName"
} else {
    Write-Error "The virtual environment activation script was not found at '$venvActivatePath'. Please ensure the virtual environment is set up correctly."
}
