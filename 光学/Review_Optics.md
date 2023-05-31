# Review Optics

## 几何光学

- 符号法则中，球反射的像距是特例

### 球面折射

$$
\frac{n'}{s'}+\frac{n}{s}=\frac{n'-n}{r},\ V=-\frac{ns'}{n's}
$$

### 球面反射

$$
\frac{1}{s'}+\frac{1}{s}=-\frac{2}{r},\ V=-\frac{s'}{s}
$$

### 薄透镜

$$
f=\frac{n}{\frac{n_L-n}{r_1}+\frac{n'-n_L}{r_2}},\ f'=\frac{n'}{\frac{n_L-n}{r_1}+\frac{n'-n_L}{r_2}}
$$

$$
n=n'\Rightarrow f=f'=\frac{1}{\left(\frac{n_L}{n}-1\right)\left(\frac{1}{r_1}-\frac{1}{r_2}\right)}
$$

$$
V=-\frac{ns'}{n's}
$$

### 其他放大率

#### 纵向放大率

$$
\alpha\equiv\frac{\mathrm{d}x'}{\mathrm{d}x}=\frac{n'}{n}\beta^2
$$

#### 角放大率

$$
\beta\gamma=\frac{n}{n'}
$$

- 几何光学作图法

## 光的干涉

### 基础

$$
I=I_1+I_2+2\sqrt{I_1I_2}\cos(\Delta\varphi)
$$

$$
\Delta\varphi=\frac{2\pi}{\lambda}\delta
$$

- 相长：$\Delta\varphi=2k\pi,\ \delta=k\lambda$
- 相消：$\Delta\varphi=(2k+1)\pi,\ \delta=(k+\frac{1}{2})\lambda$

### 杨氏双缝

#### 基础

$$
\delta=d\cdot\sin\theta=d\cdot y/D,\ \Delta y=\frac{\lambda D}{d}
$$

注意，这里说的是一条亮线到相邻亮线的间距，是周期

- 光源上下移动：直接相似三角形
- 空气入射到水的反射光，有半波损失

#### 空间相干性

- 光源的极限宽度——用光源上下移动的方法算出来的，移动距离使得条纹移动距离等于条纹间距

### 薄膜干涉

#### 等倾

$$
\delta=2nh\cos\gamma=2h\sqrt{n^2-n_1^2\sin^2i}
$$

这里 $\gamma$ 是折射角，暂时没有计入半波损失，考虑时，需要考虑两个界面上的~

- 干涉圆环级次内大外小，厚度增大，中心处有圆环冒出
- 透射光干涉的光程差，也是上面那个东西，不过 $n_1\to n_2$

#### 等厚

- 光程差，还是上面那个，垂直入射时（暂时没有考虑半波损失）：

$$
\delta=2nh
$$

- 牛顿环

$$
\delta=2\times h+\frac{\lambda}{2}=2\times \frac{r^2}{2R}+\frac{\lambda}{2}=\frac{r^2}{R}+\frac{\lambda}{2}
$$

暗环：$\delta=(k+1/2)\lambda$，包括 $r=0$

### 迈克尔逊干涉仪

$$
\delta=2d
$$

注意这个 $2$，以及薄膜干涉中的 $2$

### 干涉条纹可见度、时间相关性

- 光源非单色：$k_{max}=\lambda/\Delta\lambda, \delta_{max}=\lambda^2/\Delta\lambda$
- 相干时间：$\Delta\tau_0=\delta_{max}/c$

## 光的衍射

### 菲涅尔衍射

#### 半波带法

- $a_i\approx\frac{a_{i-1}}{2}+\frac{a_{i+1}}{2}$
- $A(P)=\frac{a_1}{2}\pm\frac{a_n}{2}$，奇、偶
- 振幅矢量法：将一个半波带细分（半圆）

#### 圆孔

计算露出的半波带数

$$
r_k=r_0+\frac{k\lambda}{2},\ r_k^2=\rho_k^2+(r_0+h)^2,\ R^2=\rho_k^2+(R-h)^2\\\Rightarrow k_{max}=\frac{\rho^2}{\lambda}\left(\frac{1}{r_0}+\frac{1}{R}\right)
$$

### 夫琅禾费衍射

#### 单缝

$$
A_p=A_0\frac{\sin u}{u},\ u=\frac{\pi b}{\lambda}\sin\theta
$$

其中 $b$ 缝宽，$\theta$ 观察角度

- 极值
    - 极值条件：$\sin u=0,\ u=\tan u$
    - 主极大：$u=0$
    - 次极大：$u=\tan u,\ u\neq 0,\ \sin\theta\approx(k+1/2)\lambda/b$
    - 极小：$\sin u=0,\ u\neq 0,\ \sin\theta=k\lambda/b$
- 亮纹
    - 中央极大，第一级暗纹：$b\sin\theta_1=\lambda$，**半**角宽度：$\Delta\theta_0=\arcsin(\lambda/b)$，线宽度：$2f\lambda/b$
    - 其他亮纹：$\Delta\theta_k=\lambda/b,\ \Delta x_k=f\lambda/b$

#### 圆孔

- 艾里斑半角宽/一级暗环衍射角：$\sin\theta_1=0.61\times\lambda/r=1.22\times \lambda/d$
- 光学仪器最小分辨角 $\theta_R=1.22\lambda/d$，分辨本领 $R=1/\theta_R$

### 光栅

$$
A_p=A_0\frac{\sin u}{u}\times\frac{\sin N\nu}{\sin \nu},\ u=\frac{\pi b\sin\theta}{\lambda},\ \nu=\frac{\pi d\sin\theta}{\lambda}
$$

其中，$b$ 透光缝宽，$d$ 光栅常数

- 单缝衍射因子：$\sin u/u$，决定主极大强度
- 缝间干涉因子：$\sin N\nu/\sin \nu$，决定主极大位置
- 相邻主极大之间有 $N-1$ 个极小和 $N-2$ 个次极大

#### 条纹

- 亮条纹：$d\sin\theta=k\lambda$
    - 最大级次：$\theta=\pm\pi/2$
    - （各个）主极大（半？）角宽度：$\Delta\theta=\lambda/Nd\cos\theta$
- 暗条纹：$d\sin\theta=\lambda\cdot m/N,\ m=1,2,\dots,N-1,N+1\dots,\ m\neq kN$
- 缺级：$\sin u=0,\ \sin\nu =0$
    - 如果 $(a+b)/b=3/1=k/n$，则 $k=3,6,9,\dots$ 缺级
    - 如果 $(a+b)/b=3/2=k/n$，则 $k=3,6,9,\dots$ 缺级

#### 分辨本领

- 角色散率：$\mathrm{d}\theta/\mathrm{d}\lambda=k/d\cos\theta$
- 线色散率：$\mathrm{d}l/\mathrm{d}\lambda=f\mathrm{d}\theta/\mathrm{d}\lambda=kf/d\cos\theta$
- 光栅的分辨本领：$R=\lambda/\Delta\lambda=kN$

### X 射线衍射

- 布拉格方程：$\delta=2d\sin\theta=k\lambda$

## 光的偏振

- 五种偏振态：自然光、线偏振光、部分偏振光、椭圆偏振光、圆偏振光
    - 迎着光的传播方向观察（同一场点），电矢量沿顺（逆）时针转，右（左）旋光
    - 区分五种偏振态：先用偏振片，再用四分之一波片
- 马吕斯定律：$I=I_0\sin^2\alpha$

### 反射和折射光

- 菲涅尔公式

#### 反射光

$$
\frac{A_{s1}'}{A_{s1}}=-\frac{\sin(i_1-i_2)}{\sin(i_1+i_2)},\ \frac{A_{p1}'}{A_{p1}}=\frac{\tan(i_1-i_2)}{\tan(i_1+i_2)},\ n_1\sin i_1=n_2\sin i_2
$$

- 垂直入射或掠入射时，……
- 垂直振动多于平行振动
- 布儒斯特定律：$i_1+i_2=\pi/2(\text{i.e. }\tan i_1=n_2/n_1)\Rightarrow A_{p1}'/A_{p1}=0$，线偏振

#### 折射光

$$
\frac{A_{s2}}{A_{s1}}=\frac{2\sin i_2\cos i_1}{\sin(i_1+i_2)},\ \frac{A_{p2}}{A_{p1}}=\frac{2\sin i_2\cos i_1}{\sin(i_1+i_2)\cos(i_1-i_2)},\ n_2\sin i_2=n_1\sin i_1
$$

- 平行振动多于垂直振动
- 自然光以布儒斯特角入射时，折射光仍是部分偏振光:

$$
A_{s2}=A_{s1}\cdot 2\sin^2i_2,\ A_{p2}=A_{p1}\cdot\tan i_2
$$

- 玻璃片堆

$$
A_{s}^{(2n)}=A_s\cdot\sin^n(2i_2)\to 0,\ A_{p}^{(2n)}=A_p
$$

### 双折射

- o 光 e 光都是线偏振光
- 光轴：一个特殊方向，光线延此方向传播不发生双折射
- 主截面：晶体的光轴与表面法线组成的平面
- 主平面：晶体光轴与光纤组成的平面
- 垂直入射线偏振光，振动平面与主截面夹角为 $\theta$，o 光振动垂直于主截面：$A_0=A\sin\theta,\ A_e=A\cos\theta,\ I_o=n_oA_o^2=n_oA^2\sin^2\theta,\ I_e=n_eA_e^2=n_e(\alpha)A^2\cos^2\theta$，出射之后仍有：$I_o/I_e=\tan^2\theta$
- 对于光轴，负晶体（方解石） $v_{\perp}>v_{\parallel}$，正晶体（石英）相反
- 作图法：惠更斯原理，波前

### 晶体偏振器件

- 尼科尔棱镜是一个偏振片
- 四分之一波片、二分之一波片：使得 o 超前 e 这么多个波长（相位超前这么多个 $2\pi$）

### 旋光效应

- $\theta=\alpha d$
- 迎着光线观察，顺（逆）时针旋转，右（左）旋物质