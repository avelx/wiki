source: https://www.rootusers.com/how-to-open-a-port-in-centos-7-with-firewalld/

   firewall-cmd --list-ports
   
   firewall-cmd --permanent --add-port=200-300/tcp

   firewall-cmd --reload