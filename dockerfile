FROM ubuntu:20.04
RUN apt-get update && apt-get install -y wget
RUN wget -O t_coffee_installer http://www.tcoffee.org/Packages/Beta/Latest/T-COFFEE_installer_Version_13.41.123.92238f3_linux_x64.bin
RUN chmod +x t_coffee_installer
RUN /t_coffee_installer  --mode unattended --user_email default@user.com
ENV PATH="/root/.t_coffee/bin:$PATH"
CMD ["/root/.t_coffee/bin/linux/t_coffee"] 
