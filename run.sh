python -m scripts.train_no_validation --dataset CIFAR10 --algorithm CVaR_Exact --output_dir train-output-CVaR_Exact-CIFAR10 --test_attacks PGD_Linf;
python -m scripts.collect_results --depth 0 --input_dir train-output-CVaR_Exact-CIFAR10 >> results.txt;
python -m scripts.train_no_validation --dataset MNIST --algorithm CVaR_Exact --output_dir train-output-CVaR_Exact-MNIST --test_attacks PGD_Linf;
python -m scripts.collect_results --depth 0 --input_dir train-output-CVaR_Exact-MNIST >> results.txt;
python -m scripts.train_no_validation --dataset SVHN --algorithm CVaR_Exact --output_dir train-output-CVaR_Exact-SVHN --test_attacks PGD_Linf;
python -m scripts.collect_results --depth 0 --input_dir train-output-CVaR_Exact-SVHN >> results.txt;