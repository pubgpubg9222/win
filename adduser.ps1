# Define the username and password
$username = "username"  # Change to your desired username
$password = "P@sAZDsw0rd!"      # Change to a secure password

# Create the user
try {
    $securePassword = ConvertTo-SecureString $password -AsPlainText -Force
    New-LocalUser -Name $username -Password $securePassword -FullName "New Admin User" -Description "This is a new admin user."
    Write-Host "User $username created successfully." -ForegroundColor Green
} catch {
    Write-Host "Failed to create user: $_" -ForegroundColor Red
    exit
}

# Add the user to the Administrators group
try {
    Add-LocalGroupMember -Group "Administrators" -Member $username
    Write-Host "User $username added to Administrators group successfully." -ForegroundColor Green
} catch {
    Write-Host "Failed to add user to Administrators group: $_" -ForegroundColor Red
}
