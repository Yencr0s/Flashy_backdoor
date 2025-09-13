HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/../.." && pwd)"

# Outputs go here
OUTDIR="$HERE/outputs"
mkdir -p "$OUTDIR"

# timing start
SECONDS=0
START_TS="$(date -u +%Y-%m-%dT%H:%M:%SZ)"

cd "$ROOT"/artifact

python3 "$ROOT/artifact/main.py" --dataset gesture --polarity 3 --trigger_label 0 --pos top-left --trigger_size 1.0 --epsilon 0.1 --type flash --cupy --seed  64 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5 --model_path "$OUTDIR/februus_model64_flash_length5_gap1_tl0_2base.pth" --save_name "februus_models" --save_path "$OUTDIR"
python3 "$ROOT/artifact/autoencoderUse.py" --dataset gesture --polarity 3 --trigger_label 0 --pos top-left --trigger_size 1.0 --epsilon 0.1 --threshold 0.9 --type flash --cupy --seed  64 --epochs 40 --start 0 --end 0 --strobe_gap 1 --strobe_on_duration 1 --trigger_length 5 --model_path "$OUTDIR/februus_model64_flash_length5_gap1_tl0_2base.pth" --save_name "claim7" --save_path "$OUTDIR"

# timing end
ELAPSED="$SECONDS"
END_TS="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
printf "start=%s\nend=%s\nelapsed_sec=%d\nelapsed_hms=%02d:%02d:%02d\n" \
  "$START_TS" "$END_TS" "$ELAPSED" \
  "$((ELAPSED/3600))" "$((ELAPSED%3600/60))" "$((ELAPSED%60))" > "$OUTDIR/time.txt"

echo "[run] Done in $ELAPSED seconds. Outputs in $OUTDIR"

