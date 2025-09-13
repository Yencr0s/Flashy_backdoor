Infrastructure
--------------
Primary execution environment: container on author machine. Colab is not suitable due to Python version restrictions.
- Colab runs Python 3.12 at the time of writing and our dependency chain requires Python < 3.11 because of external libraries (spikingyely).
- We will provide a Docker image with Python 3.10 inside a CUDA runtime image.

Hardware
--------
- GPU: NVIDIA RTX 5090
- CPU: AMD Ryzen 7 9700X
- RAM: 64 GB

Host OS
-------
- Ubuntu 22.04 LTS

Container details
-----------------
- Base: CUDA runtime image with Ubuntu 22.04
- Python: 3.10 inside the container
- PyTorch and other requirements from requirements.txt
- NVIDIA Container Toolkit required on the host

How to build and run (if not connected via ssh)
-----------------------------------------------
1) Install the NVIDIA Container Toolkit on the host.
2) From the repository root run:
   docker compose up -d --build
3) Attach an interactive shell:
   docker compose exec artifact bash

Then run the claims exactly as specified, for example:
   bash install.sh
   bash claims/claim1_flashy_dvs128/run.sh

Remote access for evaluators
----------------------------
- Reviewers can connect to our machine using SSH. See access/ssh.txt for the exact command and credentials.

Security note
-------------
- The SSH credentials are dedicated for artifact evaluation and they will be rotated after the evaluation period.
