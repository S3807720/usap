## S3807720, Luke Smith


## UNIX A2 - Installation Instructions


### Extracting the tar file

You have downloaded my kernel, good job!

To begin you must extract the .tar.gz file.
First make a new directory with '`mkdir install`'. And '`ls`' to confirm it's created.


Now to extract the files to make it usable enter `tar -xvzf kernel.tar.gz -C install/`
Please note this can take upwards of 10 minutes.


![Extracting the tar file](/gnu/1.png)

### Preparing the extracted files

After this has been completed, navigate yourself to the directory you have extracted the tar.gz file to with:

`cd install/linux3`.

Now to prepare the files for installation, enter:

`sudo make modules_install`


![Preparing files to install](/gnu/2.png)


Before continuing further, it's recommended to backup your kernel image.
Use '`sudo cp -r /boot/ backup/`' to achieve this.


![Image of backup instructions](/gnu/4.png)


### Copying the Kernel files


Please note that the below will not give any feedback during the commands.


After this is done, enter:

1. To copy over the drivers and other necessary files: 
'`sudo cp arch/arm/boot/dts/*.dtb /boot/`'


2. Now you need to copy the overlay files, these allow the system to access files from all storage devices on the system: 
'`sudo cp arch/arm/boot/dts/overlays/*.dtb* /boot/overlays/`'


3. Finally the readme file: 
'`sudo cp arch/arm/boot/dts/overlays/README /boot/overlays/`'

Now we need to move the kernel image over, use the below command to copy the kernel image to your folder, this will transfer over all the settings.
sudo cp arch/arm/boot/zImage /boot/kernel7l.img

Finally reboot your pi with sudo reboot now, or manually through the graphical window.


![Copying files to the system](/gnu/3.png)


You can check if it's installed properly by entering '`uname -r`'.
If the installation was successful, it'll display "5.10.76-s3807720+"


![New kernel name](/gnu/5.png)
