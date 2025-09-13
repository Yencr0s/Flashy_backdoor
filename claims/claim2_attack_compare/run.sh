HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/../.." && pwd)"

# Outputs go here
OUTDIR="$HERE/outputs"
mkdir -p "$OUTDIR"

# timing start
SECONDS=0
START_TS="$(date -u +%Y-%m-%dT%H:%M:%SZ)"

cd "$ROOT"/artifact
python3 "$ROOT/artifact/main.py" --dataset gesture --polarity 1 --trigger_label 0 --pos top-left --trigger_size 0.10 --epsilon 0.1 --type static --seed 42 --epochs 40 --start 0 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 12 --save_path "$OUTDIR" --save_name "claim2"
python3 "$ROOT/artifact/main.py" --dataset gesture --polarity 1 --trigger_label 0 --pos top-left --trigger_size 0.30 --epsilon 0.1 --type static --seed 42 --epochs 40 --start 0 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 12 --save_path "$OUTDIR" --save_name "claim2"
python3 "$ROOT/artifact/main.py" --dataset gesture --polarity 1 --trigger_label 0 --pos top-left --trigger_size 1.0 --epsilon 0.1 --type flash --seed 42 --epochs 40 --start 0 --end 0 --strobe_gap 1  --strobe_on_duration 1 --trigger_length 4 --save_path "$OUTDIR" --save_name "claim2"

# timing end
ELAPSED="$SECONDS"
END_TS="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
printf "start=%s\nend=%s\nelapsed_sec=%d\nelapsed_hms=%02d:%02d:%02d\n" \
  "$START_TS" "$END_TS" "$ELAPSED" \
  "$((ELAPSED/3600))" "$((ELAPSED%3600/60))" "$((ELAPSED%60))" > "$OUTDIR/time.txt"

echo "[run] Done in $ELAPSED seconds. Outputs in $OUTDIR"
