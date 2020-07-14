FROM ubuntu:20.04
RUN apt-get update && apt-get install -y wget
RUN wget -O t_coffee_installer http://www.tcoffee.org/Packages/Beta/Latest/T-COFFEE_installer_Version_13.41.123.92238f3_linux_x64.bin
RUN chmod +x t_coffee_installer
RUN /t_coffee_installer  --mode unattended --user_email default@user.com --prefix /t_coffee
ENV PATH="/t_coffee/bin/linux:/t_coffee/plugins/linux:$PATH"
ENV PLUGINS_4_TCOFFEE="/t_coffee/plugins/linux"
ENV PERL5LIB="$PERL5LIB:$DIR_4_TCOFFEE/perl/lib/perl5"
CMD ["/t_coffee/bin/linux/t_coffee"] 
