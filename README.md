# FinalProject_2025_Charles-Antoine_Leger

Project Assignment: Short Video Recommender System (KuaiRec)

Student: Charles-Antoine LEGER - Major SCIA - Promotion 2026

### About this Repository

This final class project repository implements 3 models of recommendations.
We recommends videos based on the [KuaiRec Dataset](https://doi.org/10.1145/3511808.3557220).

Content-Based Recommender Systems: - Basic: based on cosine similarities videos (tags categories) and user profile. - Learning-to-Rank: more advanced system based on lecture model.

Collaborative-Based (ALS), based on lecture model.

### Notebooks

We present notebooks in order of reading:

1. `data_preprocessing.ipynb`: Inspection of the dataset
2. `feature_engineering.ipynb`: Principal Component Analysis to extract meaningful features
3. `content_based_basic.ipynb`: Basic Content-Based (cosine similarity) recommender system
4. `content_based_ltr.ipynb`: Learning-to-Rank recommender system
5. `collaborative_als.ipynb`: Collaborative-Based (ALS) recommender system
