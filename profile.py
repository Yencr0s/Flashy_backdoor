# Single bare-metal node: Wisconsin d8545 (4x A100 40GB), Ubuntu 22.04
import geni.portal as portal
import geni.rspec.pg as rspec

request = portal.context.makeRequestRSpec()
node = request.RawPC("node0")

# Pin the A100 box type (Wisconsin)
node.hardware_type = "d8545"  # HGX A100 (4x40GB) at UW site

# Stock Ubuntu 22 image (fast boot)
node.disk_image = "urn:publicid:IDN+emulab.net+image+emulab-ops//UBUNTU22-64-STD"

portal.context.printRequestRSpec()