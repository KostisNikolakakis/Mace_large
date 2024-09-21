python ./mace/scripts/preprocess_data.py \
    --train_file="./mptrj-gga-ggap" \
    --valid_fraction=0.05 \
    --test_file="./mptrj-gga-ggap" \
    --atomic_numbers="[1, 6, 7, 8, 9, 15, 16, 17, 35, 53]" \
    --r_max=4.5 \
    --h5_prefix="./processed_data" \
    --compute_statistics \
    --E0s="average" \
    --seed=123