# SparkCameraPlus LTS

## 页面

1.  [中文（简体）](https://github.com/dreamcmi/SparkCameraPlus/blob/master/README.md)
2.  [English](https://github.com/dreamcmi/SparkCameraPlus/blob/master/README.en.md)
3.  [日本語](https://github.com/dreamcmi/SparkCameraPlus/blob/master/README.ja.md)

## 介绍

SparkCameraPlus LTS（SEA 车牌【数字】识别） 是 2020 年 SEU-Xilinx 国际暑期学校团队项目设计作品之一

> 其中，LTS 是 Long Term Support 的意思，意味着我们这个项目将长期进（鸽）行（咕）
>
> 当前开源版本为 SparkCameraPlus LTS Beta

```
Version

SparkCameraPlus
|
|__LTS__
|       |
|       |__Alpha(Close Source)
|       |
|       |__Beta(Open Source)
|
|__RTL(X)

```

![](https://gitee.com/dreamcmi/SparkCameraPlus/raw/master/pictures/0.jpg)

## 架构

#### 图像灰度化

1.  遵循图像灰度化核心思想是 R = G = B ，这个值也叫灰度值。
2.  加权平均值法：按照一定权值，对 R，G，B 的值加权平均，即：![](https://gitee.com/dreamcmi/SparkCameraPlus/raw/master/pictures/RGB.png) 这里写图片描述分别为 R，G，B 的权值，取不同的值形成不同的灰度图像。由于人眼对绿色最为敏感，红色次之，对蓝色的敏感性最低，因此使将得到较易识别的灰度图像。一般时，得到的灰度图像效果最好。
3.  学习 OpenCV 中图像灰度化原理，图像相似度的算法对 FPGA 板卡进行迁移。

#### 图像降噪算法-图像处理逆问题（inverse problem）

1.  滤波法：相对比较传统的一类算法，通过设计滤波器对图像进行处理。特点是速度往往比较快，很多卷积滤波可以借助快速傅里叶变化来加速。
2.  聚类低秩（Low-Rankness）：除了可稀疏性，低秩性也是自然图片常见的一个特性。数学上，可稀疏表达的数据可以被认为是在 Union of low-dimensional subspaces；而低秩数据则是直接存在于一个 Low-dimensional subspace。

#### Arduino & ESP32

1.  Arduino Uno

![](https://gitee.com/dreamcmi/SparkCameraPlus/raw/master/pictures/Uno.jpg)

2.  ESP32

![](https://gitee.com/dreamcmi/SparkCameraPlus/raw/master/pictures/ESP32.jpg)

## 实验结果

1.  上位机

![](https://gitee.com/dreamcmi/SparkCameraPlus/raw/master/pictures/fpga.jpg)

2.  下位机

![](https://gitee.com/dreamcmi/SparkCameraPlus/raw/master/pictures/slave32.jpg)

## 参与贡献

#### 组长：程张凯

![](https://gitee.com/dreamcmi/SparkCameraPlus/raw/master/pictures/dreamc.jpg)

[Gitee](https://gitee.com/dreamcmi) | [GitHub](https://github.com/dreamcmi) | [HomePage](https://www.dreamcstudio.cn/)

#### 组员：潘知非

![](https://gitee.com/dreamcmi/SparkCameraPlus/raw/master/pictures/pangchicken.jpg)

[Gitee](https://gitee.com/peter-zhifei) | [GitHub](https://github.com/peter-zhifei) | [HomePage](https://panzhifei.xyz/)

![](https://gitee.com/dreamcmi/SparkCameraPlus/raw/master/pictures/5.jpg)

## License

[GPL-2.0](https://gitee.com/dreamcmi/SparkCameraPlus/blob/master/LICENSE)
