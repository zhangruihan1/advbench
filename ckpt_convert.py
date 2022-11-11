import argparse
import torch


def main(in_dir, out_dir):
    s1 = torch.load(in_dir)['model']
    s2 = {k.replace('classifier.',''):v for k, v in s1.items()}
    torch.save(s2, out_dir)


if __name__ == '__main__':

    parser = argparse.ArgumentParser(description='Adversarial robustness evaluation')
    parser.add_argument('--inp', type=str, default='./train_output/ckpt.pkl')
    parser.add_argument('--out', type=str)
    args = parser.parse_args()

    main(args.inp, args.out)