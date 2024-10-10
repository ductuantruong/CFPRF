# Coarse-to-Fine Proposal Refinement Framework for Audio Temporal Forgery Detection and Localization

**Authors**: [Junyan Wu](https://www.researchgate.net/profile/Wu-Junyan-5/research), [Wei Lu (Corresponding author)](https://cse.sysu.edu.cn/content/2461), [Xiangyang Luo](https://ieeexplore.ieee.org/author/37399489600), [Rui Yang](https://orcid.org/0009-0008-7446-7216), [Qian Wang](https://orcid.org/0000-0002-8967-8525), [Xiaochun Cao](https://scst.sysu.edu.cn/members/caoxiaochun.htm).

Coarse-to-Fine Proposal Refinement Framework (CFPRF) is designed to predict audio temporal forgery proposals. It contains a frame-level detection network (FDN) in the first stage to learn robust representations for better indicating rough forgery regions and employs a proposal refinement network (PRN) in the second stage to produce fine-grained proposals. [PaperLink](http://arxiv.org/abs/2407.16554).

![framework](./fig/framework.jpg)


## 1. Setup


It is recommended that you install Python 3.8 or higher. We followed the installation setup in this project [SSL_Anti-spoofing](https://github.com/TakHemlata/SSL_Anti-spoofing), which is presented as follows:


```bash
conda create -n SSL python=3.8.0 numpy=1.23.5
conda activate SSL
pip install pip==24.0
pip install torch==1.8.1+cu111 torchvision==0.9.1+cu111 torchaudio==0.8.1 -f https://download.pytorch.org/whl/torch_stable.html
pip install soundfile==0.11.0 librosa==0.9.1
pip install pandas scikit-learn
--------------install fairseq for XLSR--------------
git clone https://github.com/TakHemlata/SSL_Anti-spoofing.git
cd fairseq-a54021305d6b3c4c5959ac9395135f63202db8f1
pip install --editable ./
```


## 2. Change the data path of PartialSpoof (PS) corpus 
Change the PS corpus path in [this line](https://github.com/ductuantruong/CFPRF/blob/ac736a0d191d00afbec786daa402706363d7402a/libs/dataloader/data_io.py#L252) to the corresponding path on your local machine (e.g. /data/PartialSpoof/database). The PS corpus folder should have this items:
```
/data/PartialSpoof/database
├── train/
├── dev/
├── eval/
├── segment_labels/
├── protocols/
├── ...
```

### 3. Run 🚀
Training & evaluating checkpoints for PS the dataset:
```
bash run.sh
```

## Acknowledgements
This repository thanks several open-source projects: [PartialSpoof[1]](https://github.com/nii-yamagishilab/PartialSpoof), [TDL-ADD[2]](https://github.com/xieyuankun/TDL-ADD), [LAV-DF[3]](https://github.com/ControlNet/LAV-DF), [SSLAS[4]](https://github.com/TakHemlata/SSL_Anti-spoofing). 

```
@article{10003971,
  title={The PartialSpoof Database and Countermeasures for the Detection of Short Fake Speech Segments Embedded in an Utterance}, 
  author={Zhang, Lin and Wang, Xin and Cooper, Erica and Evans, Nicholas and Yamagishi, Junichi},
  journal={IEEE/ACM Transactions on Audio, Speech, and Language Processing}, 
  year={2023},
  volume={31},
  number={},
  pages={813-825},
  doi={10.1109/TASLP.2022.3233236}}
```

```
@inproceedings{xie2024efficient,
  title={An Efficient Temporary Deepfake Location Approach Based Embeddings for Partially Spoofed Audio Detection},
  author={Xie, Yuankun and Cheng, Haonan and Wang, Yutian and Ye, Long},
  booktitle={ICASSP 2024-2024 IEEE International Conference on Acoustics, Speech and Signal Processing (ICASSP)},
  pages={966--970},
  year={2024},
  organization={IEEE}
}
```

```
@inproceedings{cai2022you,
  title = {Do You Really Mean That? Content Driven Audio-Visual Deepfake Dataset and Multimodal Method for Temporal Forgery Localization},
  author = {Cai, Zhixi and Stefanov, Kalin and Dhall, Abhinav and Hayat, Munawar},
  booktitle = {2022 International Conference on Digital Image Computing: Techniques and Applications (DICTA)},
  year = {2022},
  doi = {10.1109/DICTA56598.2022.10034605},
  pages = {1--10},
  address = {Sydney, Australia},
}

@article{cai2023glitch,
  title = {Glitch in the Matrix: A Large Scale Benchmark for Content Driven Audio-Visual Forgery Detection and Localization},
  author = {Cai, Zhixi and Ghosh, Shreya and Dhall, Abhinav and Gedeon, Tom and Stefanov, Kalin and Hayat, Munawar},
  journal = {Computer Vision and Image Understanding},
  year = {2023},
  volume = {236},
  pages = {103818},
  issn = {1077-3142},
  doi = {10.1016/j.cviu.2023.103818},
}
```

```
@inproceedings{tak2022automatic,
  title={Automatic speaker verification spoofing and deepfake detection using wav2vec 2.0 and data augmentation},
  author={Tak, Hemlata and Todisco, Massimiliano and Wang, Xin and Jung, Jee-weon and Yamagishi, Junichi and Evans, Nicholas},
  booktitle={The Speaker and Language Recognition Workshop},
  year={2022}
}
```


## Citation
Kindly cite our work if you find it useful.


```
@article{wu2024cfprf,
  title={Coarse-to-Fine Proposal Refinement Framework for Audio Temporal Forgery Detection and Localization},
  author={Wu, Junyan and Lu, Wei and Luo, Xiangyang and Yang, Rui and Wang, Qian and Cao, Xiaochun},
  journal={arXiv preprint arXiv:2407.16554},
  year={2024},
  doi={10.1145/3664647.3680585},
}
```
