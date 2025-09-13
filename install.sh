
echo "[install] Installing Python requirements ..."
pip3 install -r requirements.txt

echo "[install] Checking torch availability ..."
python3 - << 'PY'
try:
    import torch
    print(f"[install] torch {torch.__version__} cuda={torch.cuda.is_available()}")
except Exception as e:
    print("[install] torch not available or failed to import:", e)
PY

echo "[install] Done."
