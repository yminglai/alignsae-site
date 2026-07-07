# AlignSAE — Project Page

Source for the project website of **[AlignSAE: Concept-Aligned Sparse Autoencoders](https://ymingl.com/alignsae-site/)** (TMLR 2026).

🌐 **Live site:** https://ymingl.com/alignsae-site/
📄 **Paper:** [OpenReview (TMLR)](https://openreview.net/forum?id=I9UjKxW4nq) · [arXiv:2512.02004](https://arxiv.org/abs/2512.02004)
💻 **Code & data:** https://github.com/yminglai/AlignSAE

## Local preview

The site is a static page — just open `index.html`, or serve the folder:

```bash
python -m http.server 8000   # then visit http://localhost:8000
```

## Deployment

Hosted on GitHub Pages from the repository root (`.nojekyll` disables Jekyll so the
`static/` and `figures/` assets are served as-is). Pushing to `main` publishes the site.

## Citation

```bibtex
@article{yang2026alignsae,
  title={AlignSAE: Concept-Aligned Sparse Autoencoders},
  author={Minglai Yang and Xinyu Guo and Zhengliang Shi and Jinhe Bi and Steven Bethard and Mihai Surdeanu and Liangming Pan},
  journal={Transactions on Machine Learning Research},
  issn={2835-8856},
  year={2026},
  url={https://openreview.net/forum?id=I9UjKxW4nq}
}
```

Built on the [Academic Project Page Template](https://github.com/eliahuhorwitz/Academic-project-page-template). Content licensed under CC BY-SA 4.0.
