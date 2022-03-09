# CAP problem
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/idaks/cap_problem/HEAD)
## Introduction
In this repo, we are trying to show several demos to cover classic coloring problem (col) and container allocation problem (cap) where we will discuss:

- Given k colors, whether one graph is colorable and the minimum k to make it colorable
- With k boxes (containers), whether an instance is allocable and the minimum k to make it allocable

Besides this, we provide a demo to illustrate 
- how can we use Answer Set Programming (ASP) to verify that k-col can be reduced to k-cap

## Binder
we provide binder for easy use without installing any packages locally

## Conda Env
```
conda env create -f environment.yml
conda activate cap
jupyter notebook
```
