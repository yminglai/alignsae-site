# AlignSAE: Concept-Aligned Sparse Autoencoders

Official project page for the paper "AlignSAE: Concept-Aligned Sparse Autoencoders" (TMLR 2026) by Minglai Yang, Xinyu Guo, Zhengliang Shi, Jinhe Bi, Steven Bethard, Mihai Surdeanu, and Liangming Pan.

## 🌐 Live Website

Visit the project page at: [https://yminglai.github.io/alignsae-site](https://yminglai.github.io/alignsae-site)

## 📄 Paper

- **arXiv**: [https://arxiv.org/abs/2512.02004](https://arxiv.org/abs/2512.02004)
- **PDF**: [https://arxiv.org/pdf/2512.02004.pdf](https://arxiv.org/pdf/2512.02004.pdf)

## 💻 Code & Data

- **GitHub Repository**: [https://github.com/yminglai/AlignSAE](https://github.com/yminglai/AlignSAE)

## 📊 Slides

- **Presentation Slides**: [https://ymingl.com/assets/pdf/AlignSAEslides.pdf](https://ymingl.com/assets/pdf/AlignSAEslides.pdf)

## 📝 Abstract

Large Language Models (LLMs) encode factual knowledge within hidden parametric spaces that are difficult to inspect or control. While Sparse Autoencoders (SAEs) can decompose hidden activations into more fine-grained, interpretable features, they often struggle to reliably align these features with human-defined concepts, resulting in entangled and distributed feature representations.

To address this, we introduce **ALIGNSAE**, a method that aligns SAE features with a predefined ontology through a "pre-train, then post-train" curriculum. After an initial unsupervised training phase, we apply supervised post-training to bind specific concepts to dedicated latent slots while preserving the remaining capacity for general reconstruction.

## 🎯 Key Features

- **Concept-Aligned Features**: Post-training supervision binds each ontology concept to a dedicated SAE slot
- **Causal Interventions**: Enables precise "concept swaps" by targeting single slots (85% success at α≈2)
- **Multi-Hop Reasoning**: 4× higher swap success than traditional SAEs in 2-hop tasks
- **Grokking Analysis**: Reveals mechanistic insights into how concept representations emerge during training

## 🏗️ Website Structure

```
alignsae-site/
├── index.html              # Main website page
├── README.md              # Template README
├── README_PROJECT.md      # This project README
├── plots/                 # Result visualizations
│   ├── logo.png          # Project logo
│   ├── bind&control.png  # Binding and control results
│   ├── heatmap_0_6.png   # Layer comparison heatmaps
│   └── ...
├── figures/              # Paper figures
│   ├── fig1_pipeline_final.pdf
│   ├── fig2_2_hop_final.pdf
│   └── ...
└── static/               # CSS, JS, and other assets
    ├── css/
    ├── js/
    └── images/
```

## 📖 Citation

If you use AlignSAE in your research, please cite:

```bibtex
@article{yang2026alignsae,
  title={AlignSAE: Concept-Aligned Sparse Autoencoders},
  author={Minglai Yang and Xinyu Guo and Zhengliang Shi and Jinhe Bi and Steven Bethard and Mihai Surdeanu and Liangming Pan},
  journal={Transactions on Machine Learning Research},
  year={2026},
  url={https://openreview.net/forum?id=I9UjKxW4nq}
}
```

## 👥 Authors

- **Minglai Yang** - University of Arizona ([website](https://ymingl.com))
- **Xinyu Guo** - University of Arizona ([website](https://xinnyuguo.github.io/))
- **Zhengliang Shi** - Shandong University ([website](https://shizhl.github.io/))
- **Jinhe Bi** - Ludwig Maximilian University of Munich
- **Steven Bethard** - University of Arizona ([website](https://bethard.faculty.arizona.edu/))
- **Mihai Surdeanu** - University of Arizona ([website](http://surdeanu.cs.arizona.edu/mihai/))
- **Liangming Pan** - Peking University ([website](https://liangmingpan.bio/))

*Corresponding authors

## 📧 Contact

For questions or feedback, please contact:
- Minglai Yang: mingly@arizona.edu
- Mihai Surdeanu: msurdeanu@arizona.edu
- Liangming Pan: liangmingpan@pku.edu.cn

## 📜 License

This website is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).

The website template is based on the [Academic Project Page Template](https://github.com/eliahuhorwitz/Academic-project-page-template).

---

**Last Updated**: January 2026
