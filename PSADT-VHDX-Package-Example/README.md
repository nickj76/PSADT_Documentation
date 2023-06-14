# VHDX App Package Template

App package template using VHDX file archive to speed up download and install times.

This is packaged with PS APP DEPLOY toolkit. 
Ideal for easy silent installation (Direct Run, SCCM/MECM Task Sequence, Software Center, Application Deployment, and Package Deployment.)

## Some use cases:
Historically larger appliations had issues being deployed over SCCM / MECM do to overall file number and total size.
* This method utilizes all files being packed in a single VHDX archive.
* Unlike Zip archives, a VHDX archive can be mounted and directly installed from without decompressing.  
* Greatly speeds up download times, reduces file footprint while installing ,and faster install times.

### Dependencies
* PS APP Deploy Toolkit (PSADT) (Built using version 3.8.4)
* Windows 10, Windows Server 2012 (and newer)
* Windows PowerShell 5.0+
* SCCM/MECM (I.e. For user self-service application install or application/package deployment)

### Setup Steps

* Create and pack all installer files into a VHDX file archive.


### How to use this code

* Run Directly "  Deploy-Application.exe  " (This will install application)

* Create SCCM Application or Package (Use the following for Install and Uninstall under SCCM/MECM application types)
    * Deploy-Application.exe Install
        * Installs application
    * Deploy-Application.exe Uninstall
        * Removes application and all leftover files.

## Help

* NOTE: Make sure you set your FlexLM information for your MATLAB license server " $appLicenseInfo = 'port@license.server' ".
* Also verify fileInstallationKey and activationKey are set in the activate.ini / installer_input.txt files.

