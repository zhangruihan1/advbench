python -m scripts.train_no_validation --dataset SVHN --algorithm CVaR_Exact --output_dir train-output-CVaR_Exact-SVHN --test_attacks PGD_Linf;
python -m scripts.collect_results --depth 0 --input_dir train-output-CVaR_Exact-SVHN >> results.txt;
