# Exercise B - Install and configure a web server

You are supposed to write a script in bash to install the a web server and then configure it to run a static web site.

## Requirements
1. Script should support installing either apache web server or nginx
2. script should take 3 arguments - name of the webserver (apache/nginx), the version, welcome message
3. Install the web server rpms - Manually using rpm command or using yum/dnf
4. Start and enable the service
5. change the default index.html page to display the welcome message
6. Suitable messages should be displayed in the console after each step is completed