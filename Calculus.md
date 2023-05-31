为快速准备高数比赛而作。

---

## 极限

### 小量展开公式

$$
\begin{align*}
    \sin x & = x - \frac{x^3}{6} + \frac{x^5}{120} \\
    \cos x & = 1 - \frac{x^2}{2} + \frac{x^4}{24} \\
    \tan x & = x + \frac{x^3}{3} + \frac{2 x^5}{15} \\
    \mathrm{e}^x & = 1 + x + \frac{x^2}{2} + \frac{x^3}{6} \\
    \ln (1 + x) & = x - \frac{x^2}{2} + \frac{x^3}{3} \\
    \frac{1}{1 - x} & = 1 + x + x^2 \\
    \frac{1}{1 + x} & = 1 - x + x^2
\end{align*}
$$

### Stirling 公式

$$ n! = \sqrt{2 \pi n} \left(\frac{n}{e}\right)^n + \frac{\theta_n}{12 n}, \theta \in (0, 1) $$

### Stolz 公式

$$ \lim_{n \to \infty} \frac{x_n}{y_n} = \lim_{n \to \infty} \frac{x_{n+1} - x_n}{y_{n+1} - y_n} $$

### 间断点

- 第一类间断点 = 可去间断点 + 跳跃间断点
- 第二类间断点 = 无穷间断点 + 震荡间断点

## 导数

### 定义

$$ f'(x) \equiv \lim_{\Delta x \to 0} \frac{f(x + \Delta x) - f(x)}{\Delta x} $$

### 高阶导数公式

$$
\begin{align*}
    \left[\frac{1}{x + a}\right]^{(n)} & = (-1)^n n! \frac{1}{(x + a)^{n+1}} \\
    \left[\begin{align*}
        \sin \\ \cos
    \end{align*} (a x + b)\right]^{(n)} & = a^n \begin{align*}
        \sin \\ \cos
    \end{align*} (a x + b + n \pi / 2)
\end{align*}
$$

> 找微分中值定理的本质方法是微分方程法

### 在不同的地方展开

## 不定积分

$$ \int \frac{1}{1 + x^2} \mathrm{d}x = \arctan x + C, \int \frac{1}{\sqrt{1 - x^2}} \mathrm{d}x = \arcsin x + C $$

- 分部积分
- 如果都堆在分母上用倒代换，如果是一个完整精致的根号把它整个代换
- 分段函数记得衔接好分段点
- 隐函数的积分：写成参数方程 $y = y(x) \Rightarrow x = x(t), y = y(t)$
- $$ \int \frac{a \sin x + b \cos x}{c \sin x + d \cos x} \mathrm{d}x = \int \frac{A (c \sin x + d \cos x) + B (c \sin x + d \cos x)'}{c \sin x + d \cos x} \mathrm{d}x = A x + B \ln |c \sin x + d \cos x| + C $$
- $$ \int \frac{1}{\sin^m x \cos^n x} \mathrm{d}x = \int \frac{\sin^2x + \cos^2 x}{\sin^m x \cos^n x} \mathrm{d}x = \int \left[\frac{1}{\sin^{m-2} x \cos^n x} + \frac{1}{\sin^m x \cos^{n-2} x}\right] \mathrm{d}x $$

## 定积分

- 奇偶性
- 区间再现
$$ \int_a^b f(x) \mathrm{d}x = \int_a^b f(a + b - x) \mathrm{d}x $$
- $$ \int g(x) f(x) \mathrm{d}x \xlongequal{F(x) \equiv \int f(x) \mathrm{d}x} \left.\int g \mathrm{d}F = g F\right| - \int F \mathrm{d}g $$

### Hölder / Cauchy-Schwartz 不等式

$$ \left| \int_a^b f(x) g(x) \mathrm{d} x \right| \leq \left( \int_a^b |f(x)|^p \mathrm{d} x \right)^{\frac{1}{p}} \cdot \left( \int_a^b |g(x)|^q \mathrm{d} x \right)^{\frac{1}{q}} \Rightarrow \left| \int_a^b f(x) g(x) \mathrm{d} x \right|^2 \leq \left( \int_a^b |f(x)|^2 \mathrm{d} x \right) \cdot \left( \int_a^b |g(x)|^2 \mathrm{d} x \right) $$

## 多元微分

## 解析几何

### 平面

平面方程

$$
\begin{align*}
    \text{一般式：} & A x + B y + C z + D = 0 \\
    \text{点法式：} & A (x - x_0) + B (y - y_0) + C (z - z_0) = 0 \\
    \text{截距式：} & \frac{x}{a} + \frac{y}{b} + \frac{z}{c} = 1
\end{align*}
$$

点到平面距离
$$ d = \frac{|A x_0 + B y_0 + C z_0 + D|}{\sqrt{A^2 + B^2 + C^2}} $$

### 直线

直线方程

$$
\begin{align*}
    \text{一般式：} & \begin{cases}
        A_1 x + B_1 y + C_1 z + D_1 = 0 \\
        A_2 x + B_2 y + C_2 z + D_2 = 0
    \end{cases} \\
    \text{对称式：} & \frac{x - x_0}{m} = \frac{y - y_0}{n} = \frac{z - z_0}{p} \\
    \text{参数式：} & \begin{cases}
        x = x_0 + m t \\
        y = y_0 + n t \\
        z = z_0 + p t
    \end{cases}
\end{align*}
$$

点到直线的距离
$$ d = \frac{\left|\overrightarrow{(x, y, z) - (x_0, y_0, z_0)} \times (m, n, p)\right|}{|(m, n, p)|} $$

直线到直线的距离
$$ d = \frac{\left|\left[(m_1, n_1, p_1) \times (m_2, n_2, p_2) \right] \cdot \overrightarrow{(x_1, y_1, z_1) - (x_2, y_2, z_2)}\right|}{\left|(m_1, n_1, p_1) \times (m_2, n_2, p_2)\right|} $$

## 重积分

- 直角坐标 / 极坐标转换
- 交换积分次序「空间直角坐标、平面极坐标」
- 关于 $x = y$ 对称
- 圆、椭圆、球、椭球等的形心
- $$ f''_{xy}(x, y) \mathrm{d} y = \mathrm{d} f'_x(x, y) $$

## 线面积分

### 人名公式

格林公式
$$ \int_\Omega \left(\frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y}\right) \mathrm{d}x \mathrm{d}y = \int_{\partial \Omega} P \mathrm{d}x + Q \mathrm{d}y $$
高斯公式
$$ \int_\Omega \left(\frac{\partial P}{\partial x} + \frac{\partial Q}{\partial y} + \frac{\partial R}{\partial z}\right) \mathrm{d}x \mathrm{d}y \mathrm{d}z = \int_{\partial \Omega} P \mathrm{d}y \mathrm{d}z + Q \mathrm{d}z \mathrm{d}x + R \mathrm{d}x \mathrm{d}y $$

### 二重积分的分部积分

$$
\begin{align*}
    \iint_D u \frac{\partial v}{\partial x} \mathrm{d} x \mathrm{d} y = & \oint_{\partial D} u v \mathrm{d} y - \iint_D v \frac{\partial u}{\partial x} \mathrm{d} x \mathrm{d} y \\
    \iint_D u \frac{\partial v}{\partial y} \mathrm{d} x \mathrm{d} y = & - \oint_{\partial D} u v \mathrm{d} x - \iint_D v \frac{\partial u}{\partial y} \mathrm{d} x \mathrm{d} y \\
    \Rightarrow \iint_D \left(x \frac{\partial f}{\partial x} + y \frac{\partial f}{\partial y}\right) \mathrm{d}x \mathrm{d}y = & \frac{1}{2} \iint_D \left[f'_x \frac{\partial (x^2 + y^2)}{\partial x} + f'_y \frac{\partial (x^2 + y^2)}{\partial y} \mathrm{d}x \mathrm{d}y\right] \\
    \xlongequal{分部积分} & \frac{1}{2} \oint_{\partial D} (x^2 + y^2) f'_x \mathrm{d}y - (x^2 + y^2) f'_y \mathrm{d}x - \frac{1}{2} \iint_D (x^2 + y^2) (f''_{xx} + f''_{yy}) \mathrm{d}x \mathrm{d}y \\
    \xlongequal{x^2 + y^2 = a^2} & \frac{a^2}{2} \oint_{\partial D} f'_x \mathrm{d}y - f'_y \mathrm{d}x - \frac{1}{2} \iint_D (x^2 + y^2) (f''_{xx} + f''_{yy}) \mathrm{d}x \mathrm{d}y \\
    = & \frac{a^2}{2} \iint_D (f''_{xx} + f''_{yy}) \mathrm{d}x \mathrm{d}y - \frac{1}{2} \iint_D (x^2 + y^2) (f''_{xx} + f''_{yy}) \mathrm{d}x \mathrm{d}y \\
    \xlongequal{f''_{xx} + f''_{yy} = \cdots} & \cdots \textcolor{gray}{「最开始可以从极坐标开始做」}
\end{align*}
$$

## 级数

### Leibniz 判别法

$a_n$ 单调递减趋于零，则 $\sum_{n = 0}^{\infty} (-1)^n a_n$ 收敛

### 幂级数收敛半径

$$ \sum_{n = 0}^{\infty} a_n x^n \Rightarrow r = \lim_{n \to \infty} \frac{1}{\sqrt[n]{|a_n|}} = \lim_{n \to \infty} \frac{a_n}{a_{n+1}} $$

-  和函数求导凑微分方程
