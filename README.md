# advbench

From work of Alexander Robey et al.
At present, it supports the following baseline algorithms:

* Empirical risk minimization (ERM, [Vapnik, 1998](https://www.wiley.com/en-fr/Statistical+Learning+Theory-p-9780471030034))
* Projected gradient ascent (PGD, [Madry et al., 2017](https://arxiv.org/abs/1706.06083))
* Fast gradient sign method (FGSM, [Goodfellow et al., 2014](https://arxiv.org/abs/1412.6572))
* Clean logit pairing (CLP, [Kannan et al., 2018](https://arxiv.org/abs/1803.06373))
* Adversarial logit pairing (ALP, [Kannan et al., 2018](https://arxiv.org/abs/1803.06373))
* Theoretically principled trade-off between robustness and accuracy (TRADES, [Zhang et al., 2019](https://arxiv.org/abs/1901.08573))
* Misclassification-aware adversarial training (MART, [Wang et al., 2020](https://openreview.net/forum?id=rklOg6EFwS))
* Dual Adversarial Learning with Gaussian prior (Gaussian_DALE)
* Dual Adversarial Learning with Laplacian prior (Laplacian_DALE)
* Dual Adversarial Learning with KL-divergence loss (KL_DALE)

---

### Quick start

Train a model:

```
python -m scripts.train_no_validation --dataset MNIST --algorithm RandSmoothing --output_dir train-output --test_attacks PGD_Linf
```

Tally the results:

```
python -m advbench.scripts.collect_results --depth 0 --input_dir train-output
```

Plot the primal-dual results

```
python -m advbench.plotting.primal_dual --input_dir train-output
```
