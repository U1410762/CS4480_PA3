import subprocess
import os
import stat
import sys

args = sys.argv

if "help" in args:
    print("Help shown here.")

elif "setup" in args:
    print("Setting up network...")
    os.chmod("./network_setup.sh", stat.S_IRWXO)
    # set up network
    subprocess.call("./network_setup.sh");
    
elif "n" in args:
    print("Mod to r2")
    # mod to r2
    pass

elif "s" in args:
    print("Mod to r4")
    # mod to r4
    pass

