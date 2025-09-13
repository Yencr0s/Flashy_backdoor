HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/../.." && pwd)"

# Outputs go here
OUTDIR="$HERE/outputs"
mkdir -p "$OUTDIR"

# timing start
SECONDS=0
START_TS="$(date -u +%Y-%m-%dT%H:%M:%SZ)"

cd "$ROOT"/artifact
# to use pre-trained model on digital samples only and evaluate on physical samples
python3 "$ROOT/artifact/main.py" --dataset gesture --physical --polarity 3 --pos top-left --trigger_size 1.0 --epsilon 0.1 --type flash --seed 40 --epochs 40 --start 0 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 6 --save_path "$OUTDIR" --save_name "claim3" --model_path "$OUTDIR/modelphysicalbase.pth"

# to train a new model on digital samples and evaluate on physical samples
# python3 "$ROOT/artifact/main.py" --dataset gesture --physical --polarity 3 --pos top-left --trigger_size 1.0 --epsilon 0.1 --type flash --seed 40 --epochs 40 --start 0 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 6 --save_path "$OUTDIR" --save_name "claim3" --ms "$OUTDIR/modelphysical"


# timing end
ELAPSED="$SECONDS"
END_TS="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
printf "start=%s\nend=%s\nelapsed_sec=%d\nelapsed_hms=%02d:%02d:%02d\n" \
  "$START_TS" "$END_TS" "$ELAPSED" \
  "$((ELAPSED/3600))" "$((ELAPSED%3600/60))" "$((ELAPSED%60))" > "$OUTDIR/time.txt"

echo "[run] Done in $ELAPSED seconds. Outputs in $OUTDIR"
