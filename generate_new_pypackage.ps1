param (
    # Optional repository directory name
    [string]$repositoryName = "HelloPython",

    # Optional output path parameter, defaulting to the script's root directory
    [string]$outputPath = $PSScriptRoot
)
Write-Host "The new Python Package will be generated under '$outputPath/$repositoryName'."
& .venv\Scripts\poetry run copier copy --vcs-ref HEAD --trust . $outputPath/$repositoryName
