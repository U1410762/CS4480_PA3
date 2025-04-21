Steps to use the orchestrator to move traffic:
1. Set up the docker network with OSPF routing using the '-setup' argument:
	"sudo python3 orchestrator.py -setup"
2. Docker attach to host a (container ha) and start a ping to 10.0.19.3 (host b's ip address)
3. Use the orchestrator to route either to r2 or r4 with the '-north' or '-south' argument:
	"sudo python3 orchestrator.py -north"
	"sudo python3 orchestrator.py -south"