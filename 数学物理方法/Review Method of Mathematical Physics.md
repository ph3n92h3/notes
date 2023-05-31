# Review: Method of Mathematical Physics

# 复变函数

## 复变函数

- 区分：$\arg(主值)\ 和\ \mathrm{Arg}$
- $\ln z=\ln|z|+\mathrm{i}\mathrm{Arg}\ z$
- C - R 条件：$\begin{cases}\frac{\partial u}{\partial x}=\frac{\partial v}{\partial y},& \frac{\partial u}{\partial y}=-\frac{\partial v}{\partial x}\\ \frac{\partial u}{\partial \rho}=\frac{1}{\rho}\frac{\partial v}{\partial \varphi},& \frac{1}{\rho}\frac{\partial u}{\partial\varphi}=-\frac{\partial v}{\partial \rho}\end{cases}$
- 给实部求虚部
- Cauchy 定理：$\oint_lf(z)\mathrm{d}z=0$
- 一个重要的积分：$\frac{1}{2\pi\mathrm{i}}\oint_l\frac{1}{z-\alpha}\mathrm{d}z\begin{cases}0, l不包围\alpha\\1, l包围\alpha\end{cases}; \frac{1}{2\pi\mathrm{i}}\oint_l(z-\alpha)^n\mathrm{d}z=0, n\neq-1$
- Cauchy 公式：$f(z)=\frac{1}{2\pi\mathrm{i}}\oint_l\frac{f(\zeta)}{\zeta-z}\mathrm{d}\zeta, f^{(n)}(z)=\frac{n!}{2\pi\mathrm{i}}\oint_l\frac{f(\zeta)}{(\zeta-z)^{n+1}}\mathrm{d}z$

## 幂级数展开

- 收敛半径：$R=\lim_{k\to\infty}\frac{|a_k|}{|a_{k+1}|}=\lim_{k\to\infty}\frac{1}{\sqrt[k]{|a_k|}}$
- Taylor series: $f(z)=\sum^\infty_{k=0}a_k(z-z_0)^k, a_k=\frac{f^{(k)}(z_0)}{k!}$
- 上手实操

## 留数定理

- 留数定理：$\oint_lf(z)\mathrm{d}z=2\pi\mathrm{i}\sum^n_{j=1}\mathrm{Res}f(b_j)$
- 求留数：$\begin{cases}单级点:&\mathrm{Res}f(z_0)=a_1=\lim_{z\to z_0}(z-z_0)f(z)\\m 阶极点:&\mathrm{Res}f(z_0)=a_1=\lim_{z\to z_0}\frac{1}{(m-1)!}\{\frac{\mathrm{d}^{m-1}}{\mathrm{d}z^{m-1}}[(z-z_0)^mf(z)]\}\end{cases}$
- 计算实变函数定积分：
    1. $\int^{\infty}_{-\infty}f(x)\mathrm{d}x=2\pi\mathrm{i}\{f(z)在上半平面所有奇点的留数之和\}$
    2. $\int^{2\pi}_0R(\cos\theta,\sin\theta)\mathrm{d}\theta=\oint_{|z|=1}R(\frac{z+z^{-1}}{2}, \frac{z-z^{-1}}{2\mathrm{i}})\frac{\mathrm{d}z}{\mathrm{i}z}$
    3. $\begin{cases}偶函数：\int^\infty_0F(x)\cos mx\mathrm{d}x=\pi\mathrm{i}&\{F(z)\mathrm{e}^{\mathrm{i}mz}在上半平面所有奇点的留数之和\}\\奇函数：\int^\infty_0G(x)\sin mx\mathrm{d}x=\pi&\{G(z)\mathrm{e}^{\mathrm{i}mz}在上半平面所有奇点的留数之和\}\end{cases}$
    4. 实轴上有单极点：$+\pi\mathrm{i}\cdot$实轴上奇点留数之和

## 积分变换

1. 傅里叶级数（周期为$2l$）
    - $f(x)=a_0+\sum^\infty_{k=1}(a_k\cos \frac{k\pi x}{l}+b_k\sin\frac{k\pi x}{l}),a_0=\frac{1}{2l}\int^l_{-l}f(\xi)\mathrm{d}\xi,a_k=\frac{1}{l}\int^l_{-l}f(\xi)\cos\frac{k\pi x}{l}\mathrm{d}\xi,b_k=\frac{1}{l}\int^l_{-l}f(\xi)\sin\frac{k\pi x}{l}\mathrm{d}\xi$
    - 奇函数，偶函数
    - $f(x)=\sum^\infty_{k=-\infty}c_k\mathrm{e}^{\mathrm{i}\frac{k\pi x}{l}},c_k=\frac{1}{2l}\int^\infty_{-\infty}f(\xi)\mathrm{e}^{-\mathrm{i}\frac{k\pi x}{l}}\mathrm{d}\xi$
2. 傅里叶变换
    - $f(x)=\int^\infty_0A(\omega)\cos(\omega x)\mathrm{d}\omega+\int^\infty_0B(\omega)\sin(\omega x)\mathrm{d}\omega,A(\omega)=\frac{1}{\pi}\int^\infty_{-\infty}=f(\xi)\cos(\omega x)\mathrm{d}\xi,B(\omega)=\frac{1}{\pi}\int^\infty_{-\infty}=f(\xi)\sin(\omega x)\mathrm{d}\xi$
    - 奇函数，偶函数
    - $f(x)=\int^\infty_{-\infty}F(\omega)\mathrm{e}^{\mathrm{i}\omega x}\mathrm{d}\omega,F(\omega)=\frac{1}{2\pi}\int^\infty_{-\infty}f(x)\mathrm{e}^{-\mathrm{i}\omega x}\mathrm{d}x$
3. $\delta$ 函数：$\mathscr{F}[\delta(x)]=\frac{1}{2\pi},\mathscr{F}[\mathrm{H}(x)]=\frac{1}{2}\delta(\omega)-\frac{\mathrm{i}}{2\pi}\mathscr{P}\frac{1}{\omega}$
4. 拉普拉斯变换
    - $\bar f(p)=\int^\infty_0f(t)\mathrm{e}^{-pt}\mathrm{d}t$

最重要的公式：

$$
\mathscr{L}[\mathrm{e}^{-\lambda t}f(t)]=\bar f(p+\lambda), \mathscr{L}[f(t-t_0)]=\mathrm{e}^{-pt_0}\bar{f}(p)
$$

注意两种积分变换的卷积的不同：积分限、系数

# 数理方程

## 数理方程入门

### 三类数学物理方程

- 振动方程：$u_{tt}-a^2\nabla^2u=0$
- 扩散方程：$u_{t}-a^2\nabla^2u=0$
- Laplace equation: $\nabla^2u=0$

### 三类定解条件

一定要自己回推导定解条件！

### D 'Alembert formula

$$
u_{tt}-a^2u_{xx}=0, u(x, t)|_{t=0}=\varphi(x), u_t(x, t)|_{t=0}=\psi(x)\\u=\frac{1}{2}[\varphi(x+at)+\varphi(x-at)]+\frac{1}{2a}\int^{x+at}_{x-at}\psi(\xi)\mathrm{d}\xi
$$

类似问题的转化：

- 对于半无限长问题，对初始条件进行奇偶延拓
- 对微分算符进行因式分解
- 低阶问题转化成 D 'Alembert formula 问题形式

## 分离变数法

首先就是要注意 $n=0$ 可不可取吧……

- 两个初始条件都是0阶就不可取，其他好像都可取
- 柱坐标沿轴线不变的 Laplace equation 通解：$u(\rho, \varphi)=C_0+D_0\ln\rho+\sum^\infty_{m=1}\rho^m(A_m\cos m\varphi+B_m\sin m\varphi)+\sum^\infty_{m=1}\rho^{-m}(C_m\cos m\varphi+D_m\sin m\varphi)$

### 特殊问题：

1. 方程非齐次、边界条件齐次
    - 模仿常数变易法
    - 这时候边界条件不为0时，可以分解方程为一个是方程非齐次、边界条件为0，一个是方程齐次、边界条件不为0
    - 冲量定理法
2. 方程齐次，边界条件非齐次
    - 先拆出来一个 $w(x, t)$ 把非齐次的边界条件顶住，得到一个关于 $v(x, t)$ 的边界条件其次的问题
    - 这个问题的方程可能就是非齐次的了，转化成了上面那种情况，可能需要再拆一次方程
3. 泊松方程
    - 先找一个特解把非齐次项顶住，得到一个 Laplace equation 问题
    - 再次转化为第一种情况的问题

## 二阶常微分方程级数解法

### 几个方程

- 球函数方程：$-{\frac {1}{\sin \theta }}{\frac {\partial }{\partial \theta }}\sin \theta {\frac {\partial Y}{\partial \theta }}-{\frac {1}{\sin ^{2}\theta }}{\frac {\partial ^{2}Y}{\partial \varphi ^{2}}}=l(l+1)Y$
- 连带勒让德方程：$\frac{\mathrm{d}}{\mathrm{d}x}[(1-x^2)\frac{\mathrm{d}\Theta}{\mathrm{d}x}]+[l(l+1)-\frac{m^2}{1-x^2}]\Theta=0$
- 勒让德方程：$\frac{\mathrm{d}}{\mathrm{d}x}[(1-x^2)\frac{\mathrm{d}\Theta}{\mathrm{d}x}]+l(l+1)\Theta=0$
- 贝塞尔方程：$x^2\frac{\mathrm{d}^2R}{\mathrm{d}x^2}+x\frac{\mathrm{d}R}{\mathrm{d}x}+(x^2-m^2)R=0$，虚宗量贝塞尔方程：$x^2\frac{\mathrm{d}^2R}{\mathrm{d}x^2}+x\frac{\mathrm{d}R}{\mathrm{d}x}-(x^2+m^2)R=0$
- 球贝塞尔方程：$r^2\frac{\mathrm{d}^2R}{\mathrm{d}r^2}+2r\frac{\mathrm{d}R}{\mathrm{d}r}+[k^2r^2-l(l+1)]R=0$，$l$ 阶球贝塞尔方程化为 $l+1/2$ 阶贝塞尔方程

关系：

- 球坐标 Laplace 方程 = 欧拉型方程 + 球函数方程 = 欧拉型方程 + （连带勒让德方程 + 谐振方程）
- 柱坐标 Laplace 方程 = 谐振方程 +超谐振方程+ 贝塞尔方程/虚宗量贝塞尔方程
- 波动方程 = 超谐振方程 + 亥姆霍兹方程
- 输运方程 = 指数衰减方程 + 亥姆霍兹方程
- 球坐标亥姆霍兹方程 = $l$ 阶球贝塞尔方程 + 连带勒让德方程 + 谐振方程
- 柱坐标亥姆霍兹方程 = $m$ 阶贝塞尔方程 + 谐振方程 + 超谐振方程

复变函数的常微分方程：$\frac{\mathrm{d}^2w}{\mathrm{d}z^2}+p(z)\frac{\mathrm{d}w}{\mathrm{d}z}+q(z)w=0, w(z_0)=C_0, w'(z_0)=C_1$

### 常点邻域

- 常点：$p(z)$ 和 $q(z)$ 在 $z_0$ 的邻域内解析
- 设 $y(x)=\sum^\infty_{k=0}a_kx^k$

### 正则奇点邻域

- 奇点： $z_0$ 是 $p(z)$ 和 $q(z)$ 的奇点
- 两个线性独立解：$w_1(z)=\sum^\infty_{k=-\infty}a_k(z-z_0)^{s_1+k}, w_2(z)=\sum^\infty_{k=-\infty}b_k(z-z_0)^{s_2+k}\text{ or }w_2(z)=Aw_1(z)\ln(z-z_0)+\sum^\infty_{k=-\infty}b_k(z-z_0)^{s_2+k}$
- 正则奇点：$p(z)=\sum^\infty_{k=-1}p_k(z-z_0)^{k}, p(z)=\sum^\infty_{k=-2}q_k(z-z_0)^k$
- 正则奇点的两个线性独立解：$w_1(z)=\sum^\infty_{k=0}a_k(z-z_0)^{s_1+k}, w_2(z)=\sum^\infty_{k=0}b_k(z-z_0)^{s_2+k}\text{ or }w_2(z)=Aw_1(z)\ln(z-z_0)+\sum^\infty_{k=0}b_k(z-z_0)^{s_2+k}$

$$
s(s-1)+sp_{-1}+q_{-2}=0, s_1>s_2
$$

若 $s_1-s_2\neq$ 整数则取第一个 $w_2(z)$，否则取第二个

### 贝塞尔函数

1. $\nu$ 阶贝塞尔方程，$\nu$ 非整数
- $\nu$ 阶贝塞尔函数：$J_\nu(x)=\sum^\infty_{k=0}(-1)^k\frac{1}{k!\Gamma(\nu+k+1)}(\frac{x}{2})^{2k+\nu}$
- $\nu$ 阶诺伊曼函数：$N_\nu(x)=\frac{J_\nu(x)\cos(\nu\pi)-J_{-\nu}(x)}{\sin(\nu \pi)}$
- 通解：$y(x)=C_1J_\nu(x)+C_2J_{-\nu}(x)$ 或 $y(x)=C_1J_\nu(x)+C_2N_\nu(x)$
1. 整数 $m$ 阶贝塞尔方程
- $m$ 阶诺伊曼函数：$N_m(x)=\lim_{\nu\to m}N_\nu(x)=\lim_{\nu\to m}\frac{J_\nu(x)\cos(\nu\pi)-J_{-\nu}(x)}{\sin(\nu \pi)}$
- 通解：$y(x)=C_1J_m(x)+C_2N_m(x)$
1. $l+1/2$ 阶贝塞尔方程
- 通解：$y(x)=C_1J_{l+1/2}(x)+C_2J_{-(l+1/2)}(x)$
- $J_{1/2}(x)=\sqrt{\frac{2}{\pi x}}\sin x, J_{-(1/2)}(x)=\sqrt{\frac{2}{\pi x}}\cos x$
1. $x=0$ 处的自然边界条件

去掉 $N_0(x), N_m(x), N_\nu(x), J_{-\nu}(x)$，留下 $J_0(x), J_m(x), J_\nu(x)$

1. $\nu$ 阶虚宗量贝塞尔方程

做变换：$x=-i\xi$

### 广义傅里叶级数

- $\int^b_ay_m(x)y_n(x)\rho(x)\mathrm{d}x=N_m^2\delta_{mn}$
- $f(x)=\sum^\infty_{n=1}f_ny_n(x)$
- $f_m=\frac{1}{N_m^2}\int^b_a\rho(\xi)y_m(\xi)f(\xi)\mathrm{d}\xi$

## 球函数

### 勒让德多项式

1. 表达式
    - $P_l(x)=\sum^{[l/2]}_{k=0}(-1)^k\frac{(2l-2k)!}{k!2^l(l-k)!(l-2k)!}x^{l-2k}={\frac {1}{2^{l}}}\sum _{k=0}^{[l/2]}(-1)^{k}{\binom {l}{k}}{\binom {2l-2k}{l}}x^{l-2k}$
    - $P_{2n+1}(0)=0, P_{2n}(0)=(-1)^n\frac{(2n)!}{(2^nn!)^2}$
    - $P_l(1)=1, P_l(-1)=(-1)^l$
    - $P_{2n}(-x)=P_{2n}(x), P_{2n+1}(-x)=-P_{2n+1}(x)$
    - $P_0(x)=1, P_1(x)=x, P_2(x)=\frac{1}{2}(3x^2-1)$
2. 微分式
    - $P_l(x)=\frac{1}{2^ll!}\frac{\mathrm{d}^l}{\mathrm{d}x^l}(x^2-1)^l$
3. 积分式
    - $P_l(x)=\frac{1}{2\pi\mathrm{i}}\frac{1}{2^l}\oint\frac{(z^2-1)^l}{(z-x)^{l+1}}\mathrm{d}z$
4. 正交归一
    - $\int^1_{-1}P_k(\xi)P_l(\xi)\mathrm{d}\xi=\frac{2}{2l+1}\delta_{kl}$
5. generalized Fourier series
    - $f(x)=\sum^\infty_{l=0}f_lP_l(x)$
    - $f_l=\frac{2l+1}{2}\int^1_{-1}P_l(x)f(x)\mathrm{d}x$
6. 母函数
    - $r<R,\frac{1}{\sqrt{R^2-2rR\cos\theta+r^2}}=\sum^\infty_{l=0}\frac{r^l}{R^{l+1}}P_l(\cos\theta)$
    - $r>R,\frac{1}{\sqrt{R^2-2rR\cos\theta+r^2}}=\sum^\infty_{l=0}\frac{R^l}{r^{l+1}}P_l(\cos\theta)$
7. 递推关系
    - $(l+1)P_{l+1}(x)-(2l+1)xP_l(x)+lP_{l-1}(x)=0$
    - $\int^1_{-1}xP_l(x)P_k(x)\mathrm{d}x=\begin{cases}&\frac{2(k+1)}{[2(k+1)+1](2k+1)}, &l=k+1\\&\frac{2k}{4k^2-1}, &l=k-1\end{cases}$

### 轴对称球坐标 Laplace equation

- 特解：$u(r, \theta)=\sum^\infty_{l=0}[A_lr^l+B_lr^{-(l+1)}]P_l(\cos\theta)$
- 两个衔接条件：电势连续，无面电荷密度时电位移矢量法向分量连续
- 电像法

$\int^1_{-1}P_l(x)\mathrm{d}x=\int^1_{-1}P_0(x)P_l(x)\mathrm{d}x$

### 连带勒让德方程

连带勒让德方程做代换：$\Theta(x)=(1-x^2)^{m/2}y(x)$，则 $y(x)$ 满足逐项微分 $m$ 次的勒让德方程

### 连带勒让德函数

1. 表达式
    - $P^m_l(x)=(1-x^2)^{m/2}P^{[m]}_l(x), l=0, 1, 2, \dots, m=0, 1, 2, \dots,l$
2. 微分式
    - $P^m_l(x)=(1-x^2)^{m/2}P^{[m]}_l(x)=(1-x^2)^{m/2}\frac{1}{2^ll!}\frac{\mathrm{d}^{l+m}}{\mathrm{d}x^{l-m}}(x^2-1)^l$
3. 积分式
4. 正交归一
    - $\int^1_{-1}P^m_l(\xi)P^m_k(x)\mathrm{d}x=\frac{(l+m)!}{(l-m)!}\frac{2}{2l+1}\delta_{lk}$
5. generalized Fourier series
    - $f(x)=\sum^\infty_{l=m}f_lP^m_l(x)$
    - $f_l=\frac{2l+1}{2}\frac{(l-m)!}{(l+m)!}\int^1_{-1}P^m_l(x)f(x)\mathrm{d}x$

### 一般球坐标 Laplace equation

- 特解：$u(r, \theta, \varphi)=\sum^\infty_{l=0}\sum^l_{m=0}r^l[A^m_l\cos m\varphi+B^m_l\sin m\varphi]P^m_l(\cos\theta)+\sum^\infty_{l=0}\sum^l_{m=0}r^{-(l+1)}[C^m_l\cos m\varphi+D^m_l\sin m\varphi]P^m_l(\cos\theta)$

### 一般球函数

1. 表达式
    - $Y(\theta, \varphi)=P^m_l(\cos\theta)(A\cos m\varphi+B\sin m\varphi), l=0, 1, 2, \dots, m=0, 1, 2, \dots,l$，$2l+1$ 个
    - 复数形式：$Y(\theta, \varphi)=P^{|m|}_l(\cos\theta)\mathrm{e}^{\mathrm{i}m\varphi}, l=0, 1, 2, \dots, m=0, 1, 2, \dots,l$
2. 正交归一
    - 这里说的实数形式的模说的是 $Y^m_l(\theta, \varphi)=P^m_l(\cos\theta)\cos(m\varphi)$
    - $\iint_sY^m_l(\theta, \varphi)Y^{n^*}_l(\theta, \varphi)\sin\theta\mathrm{d}\theta\mathrm{d}\varphi=\begin{cases}&\frac{(l+m)!}{(l-m)!}\frac{2\pi(1+\delta_{m0})}{2l+1}, &实数形式\\&\frac{(l+|m|)!}{(l-|m|)!}\frac{4\pi}{2l+1},&复数形式\end{cases}$
3. generalized Fourier series
    - 实数形式
    - 复数形式
4. 正交归一化球函数

## 柱函数

### 三类柱函数

1. 表达式
- $\nu$ 阶贝塞尔函数：$J_\nu(x)=\sum^\infty_{k=0}(-1)^k\frac{1}{k!\Gamma(\nu+k+1)}(\frac{x}{2})^{2k+\nu}$
- $\nu$ 阶诺伊曼函数：$N_\nu(x)=\frac{J_\nu(x)\cos(\nu\pi)-J_{-\nu}(x)}{\sin(\nu \pi)}$
- 两种汉克尔函数：$H^{(1, 2)}(x)=J_\nu(x)(+, -)\mathrm{i}N_\nu(x)$
1. 自然边界条件
    - $x=0$（柱内）：去掉 $N_0(x), N_m(x), N_\nu(x), J_{-\nu}(x)$，留下 $J_0(x), J_m(x), J_\nu(x)$
    - $x=\infty$（柱外）：保留 $J_\nu(x)和N_\nu(x)$ 或 $H^{(1)}(x)和H^{(2)}(x)$
2. 递推关系
    - $Z_{\nu-1}(x)-Z_{\nu+1}(x)=2Z'_\nu(x)$
    - $Z_{\nu-1}(x)+Z_{\nu+1}(x)=2\nu\frac{Z_\nu(x)}{x}$
    
    计算积分：
    
    - $\frac{\mathrm{d}}{\mathrm{d}x}[x^\nu J_\nu(x)]=x^\nu J_{\nu-1}(x)$
    - $\frac{\mathrm{d}}{\mathrm{d}x}[x^{-\nu}J_\nu(x)]=-x^{-\nu}J_{\nu+1}(x)$

### 贝塞尔方程

关于通解类型的选择：

- 柱侧的齐次边界条件：$\mu\geq 0$
- 上下底面的齐次边界条件：$\mu\leq 0$
- 原因：$\mu<0$ 时 $R(\rho)$ 恒不为 0

1. 三类齐次边界条件：$[\alpha\frac{\mathrm{d}R(\rho)}{\mathrm{d}\rho}+\beta R(\rho)]|_{\rho=a}=0$
- $R(\rho)|_{\rho=a}=J_m(\sqrt{\mu}\rho)|_{\rho=a}=0: \sqrt{\mu^{(m)}_n}a=x^{(m)}_n,\mu^{(m)}_n=(\frac{x^{(m)}_n}{a})^2, R(\rho)=J_m(\frac{x^{(m)}_n}{a}\rho)$
- $R'(\rho)|_{\rho=a}=J_m'(\sqrt{\mu}\rho)|_{\rho=a}=0: \sqrt{\mu^{(m)}_n}a=\tilde x^{(m)}_n,\mu^{(m)}_n=(\frac{\tilde x^{(m)}_n}{a})^2, R(\rho)=J_m(\frac{\tilde x^{(m)}_n}{a}\rho)$
- $[R(\rho)+HR'(\rho)]|_{\rho=a}=[J_m(\sqrt{\mu}\rho)+H\sqrt{\mu}J_m'(\sqrt{\mu}\rho)]|_{\rho=a}=0$：利用递推关系导出 $J_m'(x)=m\frac{J_m(x)}{x}-J_{m+1}(x)$，进而有 $J_m(\sqrt\mu a)=\frac{H\sqrt\mu J_{m+1}(\sqrt\mu a)}{1+Hm/a}$，根为 $\hat x^{(m)}_n$，则 $\mu^{(m)}_n=(\frac{\hat x^{(m)}}{a})^2$
2. 正交
    
    $\int^a_0J_m(\sqrt{\mu_n}\rho)J_m(\sqrt{\mu_l}\rho)\rho\mathrm{d}\rho=0, n\neq l$
    
3. 三类边界条件下的模
    
    $\int^a_0[J_m(\sqrt{\mu^{(m)}_n}\rho)]^2\rho\mathrm{d}\rho=[N^{(m)}_n]^2=\frac{1}{2}(a^2-\frac{m^2}{\mu^{(m)}_n})[J_m(\sqrt{\mu^{(m)}_n}a)]^2+\frac{1}{2}a^2[J'_m(\sqrt{\mu^{(m)}_n}a)]^2$
    
    - 第一类边界条件下的：$[N^{(m)}_n]^2=\frac{1}{2}a^2[J_{m+1}(\sqrt{\mu^{(m)}_n}a)]^2$
    - 第二类边界条件下的：$[N^{(m)}_n]^2=\frac 1 2(a^2-\frac{m^2}{\mu^{(m)}_n})[J_m(\sqrt{\mu^{(m)}_n}a)]^2$
    - 第三类边界条件下的：$[N^{(m)}_n]^2=\frac 1 2(a^2-\frac{m^2}{\mu^{(m)}_n}+\frac{a^2}{\mu^{(m)}_nH})[J_m(\sqrt{\mu^{(m)}_n}a)]^2$
4. generalized Fourier series
    - $f(x)=\sum^\infty_{n=1}f_nJ_m(\sqrt{\mu^{(m)}_n}\rho)$
    - $f_n=\frac{1}{[N^{(m)}_n]^2}\int^a_0f(\rho)J_m(\sqrt{\mu^{(m)}_n}\rho)\rho\mathrm{d}\rho$
5. 母函数
    - $\mathrm{e}^{\frac{1}{2}x(z-\frac{1}{z})}=\sum^\infty_{m=-\infty}J_m(x)z^m$
6. 加法公式
    - $J_m(a+b)=\sum^\infty_{k=-\infty}J_k(a)J_{m-k}(b)$

讲义上求解了一个问题，我觉得这部分还是要再看看书

### 虚宗量贝塞尔方程

### 球贝塞尔方程

$x=kr, R=\sqrt{\frac{\pi}{2x}}y(x)$:

$$
x^2\frac{\mathrm{d}^2y}{\mathrm{d}x^2}+2x\frac{\mathrm{d}y}{\mathrm{d}x}+[x^2-(l+\frac{1}{2})^2]y=0
$$

1. 通解表达式
    - $y(x)=A_lj_l(x)+B_ln_l(x), j_l(x)=\sqrt{\frac{\pi}{2x}}J_{l+1/2}(x), n_l(x)=\sqrt{\frac{\pi}{2x}}N_{l+1/2}(x)$
2. 递推关系
3. 初等函数表示
4. $x\to0,x\to\infty$ 的行为：$x\to 0, j_0(0)=1, j_l(0)=0(l为自然数), n_l(0)\to\infty$
5. 本征值问题与 generalized Fourier series：模可以直接转化成 贝塞尔函数 的模