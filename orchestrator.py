import subprocess
import os
import stat

os.chmod("./network_setup.sh", stat.S_IRWXO)
# set up network
subprocess.call("./network_setup.sh");