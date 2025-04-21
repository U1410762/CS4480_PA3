import subprocess
import os
import stat
import sys

args = sys.argv

if "-h" in args:
    print("Use 'setup' argument to set up the network.\nUse 'north' to switch traffic to the north interface (route through r2).\nUse 'south' to switch traffic to the south interface (route through r4)")

elif "-setup" in args:
    print("Setting up network...")
    os.chmod("./network_setup.sh", stat.S_IRWXO)
    # set up network
    subprocess.call("./network_setup.sh")

elif "-north" in args:
    print("Routing north...")
    os.chmod("./route_through_r2.sh", stat.S_IRWXO)
    subprocess.call("./route_through_r2.sh")

elif "-south" in args:
    print("Routing south...")
    os.chmod("./route_through_r4.sh", stat.S_IRWXO)
    subprocess.call("./route_through_r4.sh")
