**Delete Temp Files PowerShell Script**

**Description**

This PowerShell script is designed to open the Windows Temp folder and delete all temporary files and directories within it. It ensures that all items are deleted forcefully, including those that may otherwise be protected or difficult to remove.

**Script Details**

The script performs the following actions:
1. Opens the Temp folder using the `%temp%` environment variable.
2. Recursively retrieves all files and directories within the Temp folder.
3. Deletes each item forcefully, providing feedback on the deletion status.

**Prerequisites**

- PowerShell Execution Policy: The script requires the execution policy to be set to `RemoteSigned` or `Unrestricted`. This can be configured temporarily or permanently based on your preference.

**How to Run**

**Step 1:** Set Execution Policy (if not already set)

Open PowerShell as an administrator and run:

    Set-ExecutionPolicy RemoteSigned

**Step 2:** Save the Script
Save the attached script as delete_temp_files.ps1

**Step 3:** Execute the Script
- 1.Open PowerShell.
- 2.Navigate to the directory where the script is saved. 
     cd C:\path\to\your\file
- 3.Run the script using the following command:

     .\delete_temp_files.ps1

-Alternatively, you can bypass the execution policy temporarily with:
     powershell.exe -ExecutionPolicy Bypass -File "C:\path\to\delete_temp_files.ps1"


**Notes**
1.Ensure you have the necessary permissions to delete files in the Temp folder.
2.Use with caution as this script will permanent
