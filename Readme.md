# mdebian-base

Customize the Debian system :
- apt :
  - Do not install recommended packages
  - Sources in France (main, contrib, non-free, backports)
- banner :
  - Customize the system banners
  - Remove the message of the day
  - Display the IP addresses of the host
- bash :
  - Fancy prompt
  - Aliases
  - Options
  - Completion
  - Local bashrc configuration folder
  - Keep SSH_TTY environment variable in sudo (for the fancy prompt)
- minicom :
  - Default configuration (9600bps 8N1 on /dev/ttyS0)
- nano :
  - Conf file syntax highlighting
- ntp :
  - Synchronize the local machine with the french NTP servers (using systemd)
