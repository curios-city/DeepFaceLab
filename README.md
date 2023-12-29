介绍：原作者是MachineEditor组织的Cioscos、seranus、Payuyi、AnkurSaini07
（顺便一提，keaidelaohu 并没有参加Me的开发，只是复制了源码，改作者名不注明出处、并且加密。
就是论坛里那个DeepfaceMe版）

ME版本功能：
新增参数（包括但不限于）

[n] Use fp16 ( y/n ?:help ) :这个直接不要开，模型可能会崩掉

[n] Eyes priority ( y/n ?:help ) :单独的眼睛训练

[n] Mouth priority ( y/n ?:help ) :单独的嘴巴训练

[SSIM] Loss function ( SSIM/MS-SSIM/MS-SSIM L1 ?:help ) :这个好像是通过人脸相似度算法来计算loss的，自己搜索术语吧，保持默认就好。

[5e-05] Learning rate ( 0.0 .. 1.0 ?:help ) :学习率一般不去动它，你也可以手动的控制学习率下降，比如我在loss到0.25的时候改为3e-05

[n] Enable random downsample of samples ( y/n ?:help ) :跟随机扭曲同理，增强泛化性：随机降低分辨率

[n] Enable random noise added to samples ( y/n ?:help ) :跟随机扭曲同理，增强泛化性：随机噪点图

[n] Enable random blur of samples ( y/n ?:help ) :跟随机扭曲同理，增强泛化性：随机模糊图

[n] Enable random jpeg compression of samples ( y/n ?:help ) :跟随机扭曲同理，增强泛化性：随机压缩图片质量

[none] Enable random shadows and highlights of samples  :比较高级的随机，增强泛化性：随机模拟光影训练

新增的光影色彩学习算法："fs-aug", "cc-aug"

本人的工作量：
1.汉化
2.升级python3.68至3.9.18
3.升级tensorflow-gpu2.6.0(或2.4.0)至tensorflow-gpu2.10.0
4.做了主目录下的动态bat交互脚本
