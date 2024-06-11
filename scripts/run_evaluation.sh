#!/bin/bash

# if [ "$#" -lt 2 ]; then
#     echo "Usage: $0 <directory> <swe_bench_tasks>"
#     exit 1
# fi

# directory=$1
# swe_bench_tasks=$2

directory="/home/lanbo/swe_bench_docker/eval/e_true"
swe_bench_tasks="/home/lanbo/swe_bench_docker/data/swe-bench.json"

echo "$directory"

python run_evaluation.py \
 --predictions_path ${directory}/predictions_for_swebench.jsonl \
 --log_dir ${directory}/logs \
 --swe_bench_tasks ${swe_bench_tasks} \
 --num_processes 6 \
 --skip_existing

python generate_report.py \
 --predictions_path ${directory}/predictions_for_swebench.jsonl \
 --log_dir ${directory}/logs \
 --output_dir ${directory} \
 --swe_bench_tasks ${swe_bench_tasks}