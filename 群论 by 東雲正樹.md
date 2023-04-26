# my group theory

東雲正樹群论笔记精简化

## 群

1. 定义：群乘法的封闭性、结合律、存在单位元、存在逆元
2. 重排定理：群元作用在整个群上还是这个群

3. 子群
4. 陪集定理
   - 陪集：群的群元在群的子群上的左作用或右作用
   - 陪集定理：换不同群元进行左作用/右作用的结果，要么相等要么完全不相等
   - 可以用子群的陪集分割群
5. 共轭
   - 共轭：$g_{a} = g_{c} g_{b} g_{c}^{-1}$，则 $g_{a} \sim g_{b}$
   - 共轭类：一个群元被所有群元通过共轭作用之后可以得到的东西
   - 正规/不变子群：子群，而且它的元素的同类元素都在这个子群中（是共轭类的并）「子群，它的群元被原群的所有群元共轭作用之后还在该子群中」
   - 群中心：所有与所有群元对易的群元，是正规/不变子群
6. 商群
   - 用正规/不变子群的陪集分割群，每一个陪集作为元素，构成商群 $G/H = \qty{H, g_{a} H, g_{b} H, \dots}$
   - 确实构成了群，群乘法：$\qty(g_{a} H) \qty(g_{b} H) = \qty(g_{a} g_{b}) H$

## homo

1. 同态与同构
   - 同态：两个群 $G, H$ 之间的映射 $\varphi$，保群乘法
   - 同构 = 同态 + 一一到上
2. 同态核定理
   - 同态核：同态下映射到单位元的元素的集合 $\ker{\varphi}$
   - 同态核是正规子群「它的群元被共轭之后仍是群元，否则映射不满足同态」
   - $G / \ker{\varphi}$ 与 $H$ 同构 $\psi(g \ker{\varphi}) \equiv \varphi(g)$「害怕不是单射？考虑陪集定理」

## 变换群

1. 左作用、右作用、伴随作用
   - 左作用：$L_{g} : G \to G,\ L_{g} \qty(g') = g g'$
   - 右作用：$R_{g} : G \to G,\ R_{g} \qty(g') = g'g^{-1}$
   - 伴随作用：$\mathrm{Ad}_{g} : G \to G,\ \mathrm{Ad}_{g} \qty(g') = g g' g^{-1}$
2. 变换群（这是群第一次以一个“操作”的形式出现）
   - 完全变换群：所有群到自身的双射，它的一个子群和原群同构
   - 自同构映射群：所有群到自身的同构映射
   - 内自同构映射群：所有群元构成的伴随作用
3. 在变换群下
   - 变换群等价：一个元素可以被变换到另一个元素
   - 变换群轨道：一个元素可以被变换到的所有元素
   - 一个集合被它的变换群折磨，就像是一个群被它的内自同构映射群折磨

## 群表示

1. 群表示：从群 $G$ 到表示空间 $V$ 上的一般线性（可逆矩阵）群 $\mathrm{GL}(V)$ 的同态映射 $R$「不是同构，因为有的群做不到满射」
2. 忠实、幺正、正则
   - 忠实：一一映射 $g_{a} = g_{b} \Leftrightarrow R\qty(g_{a}) = R\qty(g_{b})$
   - 幺正：$R\qty(g)^{\dagger} = R\qty(g)^{-1}$
   - 正则：（有限群）找一个维数与群阶数一样的线性空间，并使它的基矢与群元一一对应「感觉没有说什么新东西」
3. 群代数
   - 正则表示下有了一个矢量空间，其中的矢量可以根据基底（群元）分解出对应基底的系数，可以认为矢量是一个群函数 $v : G \to \mathbb{C}$
   - 群代数：这个矢量空间构成一个代数，代数（矢量）乘法 $V \times V \to V$ 由群元的同态得到
4. 类函数
   - 共轭类集合：元素是共轭类，如果一堆群元可以通过某个共轭作用相互得到，那么他们属于一个共轭类，他们构成的集合组成了共轭类集合的一个元素
   - 类函数：一个群函数，把所有在一个共轭类的群元映射到同一个复数
   - 类函数空间：所有类函数构成的空间
5. 等价表示
   - 定义：群和表示空间相同，同态映射不同
   - 有限群的有限维表示存在等价的幺正表示
6. 不可约表示
   - 矢量和矢量空间的直和都写作 $\oplus$
7. Schur 引理一
   - 群的两个不等价不可约表示，若他们的表示空间之间有线性映射，使得 $L R_1\qty(g) = R_2\qty(g) L$，则这个线性映射为零映射
8. Schur 引理一的推论
   - 若这个线性映射非零，且 $L R_1\qty(g) = R_2\qty(g) L$，则两个表示空间维数相等
9. Schur 引理二
   - 如果一个矩阵和群的不可约复表示对易，则该矩阵为零矩阵或正比于单位矩阵
10. 群中心、$\ker{R}$、忠实
    - 由 Schur 引理二，群中心的表示正比于单位矩阵
    - 若存在非单位群元的表示正比于单位矩阵，则此群元属于群中心或表示不忠实
    - 若无非平凡正规子群，则非平凡表示忠实
    - 单群：没有非平凡正规子群的有限群

## 群表示论下的正交性与完备性

1. 特征标
   - 特征标 $\chi_{R} (g) = \tr R(g) = R(g)^{\mu}_{\ \ \mu}$
   - 群元在不同的等价表示下的特征标相等
   - 特征标是一个类函数「不同的共轭群元在相同表示下的特征标相等」
   - 正则表示下只有单位元的表示矩阵的特征标不为零
2. 表示矩阵元的正交性
   - $\sum_g R^{(i)}(g^{-1})^{\mu}_{\ \ \nu} R^{(j)}(g)^{\rho}_{\ \ \sigma} = \frac{\qty|G|}{\dim R^{(i)}} \delta^{\mu}_{\ \ \sigma} \delta^{\rho}_{\ \ \nu} \delta^{i}_{\ j}$
   - 表示矩阵元是一堆群函数：$R^{(i)}(\cdot)^{\mu}_{\ \ \nu} : G \to \mathbb{C}$
3. 特征标的正交性
   - $\sum_{g} \qty[\chi_{R^{(i)}}(g)]^{*} \chi_{R^{(j)}}(g) = \qty|G| \delta^{i}_{\ j}$
4. 可约表示的分解
   - $R = \bigoplus_{i} n_{i} R^{(i)},\ n_{i} = \frac{1}{\qty|G|} \sum_{g}\qty[\chi_{R^{(i)}} (g)]^{*} \chi_{R} (g)$
   - $R$ 不可约 $\Leftrightarrow$ $\frac{1}{\qty|G|} \sum_{g}\qty[\chi_{R} (g)]^{*} \chi_{R} (g) = \sum_{i} n_{i}^2 = 1$
5. 表示矩阵元的完备性
   - 任意一个群函数可以被表示矩阵元展开
   - $\sum_{i, \mu, \nu} \frac{\dim R^{(i)}}{\qty|G|} R^{(i)} \qty(g_{a})^{\mu}_{\ \ \nu}\qty[R^{(i)} \qty(g_{b})^{\dagger}]^{\mu}_{\ \ \nu} = \delta^{a}_{\ \ b}$
6. 从群函数构造一个类函数
   - $\phi : G \to \mathbb{C} \Rightarrow \phi^{\mathrm{Ad}} \equiv \frac{1}{\qty|G|}\sum_{g'} \phi(g' g g'^{-1})$
7. 特征标的完备性
   - 任何一个类函数可以被特征标展开
   - $\sum_{i} \frac{\qty|\qty[g_{a}]|}{\qty|G|} \chi^{\mathrm{cl}}_{R^{(i)}}\qty(\qty[g_{a}]) \qty[\chi^{\mathrm{cl}}_{R^{i}} \qty(\qty[g_b])]^{*} = \delta^{\qty[g_{a}]}_{\ \ \ \ \ \qty[g_{b}]}$

## 新表示的构成

1. 群的表示的张量积构成一个表示，称张量积表示
   - $\qty(R_{1} \otimes R_{2}) \qty(g) \equiv R_{1}\qty(g) \otimes R_{2}\qty(g)$
   - $R_{1} \otimes R_{2}$ 与 $R_{2} \otimes R_{1}$ 等价

## 谎言群

1. 定义：群 + 流形 with 群乘法和逆映射都光滑
   - 李群同态 = 群同态 + 同态映射光滑
   - 李群同构 = 群同构 + 同构映射光滑「流形微分同胚」
   - 李群的子群不一定是李群，还得是子流形才是李群
2. 常见李群
   - $\mathrm{GL}\qty(n, \mathbb{R / C})$ 所有 $n \times n$ 可逆实/复矩阵
     - $\mathscr{GL}\qty(n, \mathbb{R / C})$ 所有 $n \times n$ 实/复矩阵
   - $\mathrm{O}\qty(n)$ 所有 $n \times n$ 正交（$Q^{\mathrm{T}} Q = I$）可逆实矩阵，$\dim = n (n - 1) / 2$
     - $\mathscr{O}\qty(n)$ 所有 $n \times n$ 反衬（$Q^{\mathrm{T}} = - Q$）可逆实矩阵
   - $\mathrm{O} \qty(p, q)$ 所有 $(p + q) \times (p + q)$ 可逆实矩阵，$\eta_{\mu \nu} \Lambda^{\mu}_{\ \ \rho} \Lambda^{\nu}_{\ \ \sigma} = \eta_{\rho \sigma}$，$\eta_{\mu \nu}$ 是对角矩阵，前 $p$ 个 $-1$，后 $q$ 个 $1$
     - 洛伦兹群 $\mathrm{O}(1, 3)$，$\dim = 6$
     - $\mathscr{O}(1, 3)$ 所有 $A^{\mathrm{T}} = - g A g$ 的 $4 \times 4$ 矩阵
   - $\mathrm{U}(n)$ 所有 $n \times n$ 幺正（$U^{\dagger} U = I$）可逆复矩阵，$\dim = n^2$
     - $\mathscr{U}(n)$ 所有 $n \times n$ 厄米（$H^{\dagger} = H$）矩阵
   - 特殊群 = 一般群 + 行列式为 $1$
     - $\mathscr{SU}$ = $\mathscr{U}(n)$ （$H^{\dagger} = H$） + $\tr H = 0$
   - $\mathrm{SU}(2)$ 的流形是单位三维球面 $\mathrm{S}^3$，$\mathrm{SO}(3)$ 的流形是半径为 $\pi$ 的对径认同的三维实心球（连通，但不是单连通）
   - 这些定义实际上就是基本表示

## $\mathrm{SU}(2)$

1. 写下它
   - $2 \times 2$ 复矩阵，$U^{\dagger} U = I$，$\qty|U| = 1$
   - $U(\vec{n}, \omega) = \mathrm{e}^{\mathrm{i} \frac{\omega}{2} \vec{n}\cdot\vec{\sigma}},\ \omega \in \qty[0, \pi]$
   - $U(\vec{n}, \omega) = I \cos \frac{\omega}{2} + \mathrm{i} \qty(\vec{n} \cdot \vec{\sigma}) \sin \frac{\omega}{2}$
   - $U = x_4 I + \mathrm{i} x_1 \sigma_1 + \mathrm{i} x_2 \sigma_2 + \mathrm{i} x_3 \sigma_3,\ x_1^2 + x_2^2 + x_3^2 + x_4^2 = 1$
2. 共轭类
   - 群元的迹是一个类函数
   - $\tr U = 2 \cos \frac{\omega}{2}$，相同 $\omega$ 的点构成一个共轭类
3. 单参子群和生成元
   - 参数曲线 $g \qty(t) = \mathrm{e}^{\mathrm{i} t J}$ 的生成元 $J \equiv - \mathrm{i} \left.\pdv{t}\right|_{t = 0} g \qty(t)$
   - 指数映射 $\exp : \mathbb{R} \times \mathfrak{g} \to G$

## $\mathrm{SO}(3)$

1. 写下它
   - $3 \times 3$ 实矩阵，$\mathcal{R}^{\mathrm{T}} \mathcal{R} = I$，$\qty|\mathcal{R}| = 1$
   - 绕着哪个轴（两个参数）转多少角度（一个参数）
   - $\mathcal{R}(\vec{n}, \omega) = \mathrm{e}^{\mathrm{i} \omega n^{a} T_{a}},\ \qty(T_{a})^{i}_{\ j} = - \mathrm{i} \varepsilon_{a\ \ j}^{\ \ i}$
   - $\mathcal{R}(\vec{n}, \omega)^{a}_{\ \ b} = \delta^{a}_{\ \ b} \cos \omega + n^{a} n_{b} \qty(1 - \cos \omega) + \varepsilon^{a}_{\ \ bc} n^{c} \sin \omega$

2. 共轭类
   - 任何转动与关于 $e^{3}$ 的同角度转动差一个正交变换「即 $\mathcal{R}\qty(\vec{n}, \omega)$ 和$\mathcal{R}\qty(e^{3}, \omega)$ 共轭」

## $\mathrm{SU}(2)$ 与 $\mathrm{SO}(3)$

1.  $\mathrm{SU}(2)$ 群元诱导三维矢量的线性变换
   - $X = x^{a} \sigma_{a}, Y = y^{a} \sigma_{a}, Z = z^{a} \sigma_{a}$ 是三个二维矩阵
   - $x^{a} = \frac{1}{2} \tr \qty(X \sigma^{a}),\ \tr\qty(X Y) = 2 x^{a} y_{a},\ \tr\qty(XYZ) = 2 \mathrm{i} \varepsilon_{abc}x^{a}y^{b}z^{c},\ \qty(\sigma_{a})^{\mu}_{\ \ \nu}\qty(\sigma^{a})^{\rho}_{\ \ \sigma} = 2 \delta^{\mu}_{\ \ \sigma}\delta^{\rho}_{\ \ \nu}-\delta^{\mu}_{\ \ \nu}\delta^{\rho}_{\ \ \sigma}$
   - $\mathrm{ad}_{U} X \equiv U X U^{-1} \equiv X' = x'^{a} \sigma_{a} \Rightarrow x'^{a} = D(U) x^{a},\ D(U)^{a}_{\ \ b} \equiv \frac{1}{2} \tr\qty(\sigma^{a} U \sigma_{b} U^{-1})$，有 $D(U)^{\mathrm{T}} D(U) = I$
2. 二重覆盖
   - 用 Mathematica 可以证明，$D(U)$ 满足 $\mathrm{SO}(3)$ 的条件，故 $D : \mathrm{SU}(2) \to \mathrm{SO}(3)$
   - 二重覆盖：$D(- U)^{a}_{\ \ b} = D(U)^{a}_{\ \ b} \Rightarrow \mathrm{SO}(3) = \mathrm{SU}(2) / \mathbb{Z}_{2}$「真的是这样吗，还差一点，那就是这个商群的元素是一个个小集合（每个集合有两个元素），但是 $\mathrm{SO}(3)$ 的元素是一个个矩阵」
   - $D\qty[U\qty(\vec{n},\ \omega)] = \mathcal{R}\qty(\vec{n}, \omega)$

```mathematica
$Assumptions = Element[_Symbol, Reals] && x^2 + y^2 + z^2 == 1;

U = MatrixExp[I*\[Omega]/2*{x, y, z} . PauliMatrix /@ Range[3]] // FullSimplify;
% // MatrixForm
Inverse[U] // FullSimplify;
% // MatrixForm

DU[a_, b_] := Tr[PauliMatrix[a] . U . PauliMatrix[b] . Inverse[U]]/2 // FullSimplify

Table[DU[a, b], {a, 3}, {b, 3}];
Det@% // FullSimplify
Transpose[#] . # &@%% // FullSimplify // MatrixForm
```

3. 旋量群 $\mathrm{Spin}\qty(n)$ 是 $\mathrm{SO}(n)$ 的二重覆盖；$\mathrm{SL}\qty(2, \mathbb{C})$ 是 $\mathrm{SO}^{+}\qty(1, 3)$ 的二重覆盖（都是六维）

##  $\mathrm{SU}(2)$ 的不可约表示

1. $\mathrm{SU}(2)$ 的复线性表示
   - 表示空间 $P_{n} \equiv \qty{\psi\qty(z, w) \left| \psi\qty(z, w) = \sum_{k = 0}^{n} c_{k} z^{n - k} w^{k}\right.}$，基矢 $z^{n - k} w^{k}$，$\dim = n + 1$「注意这是表示空间的维数，表示矩阵也就是表示空间上的线性变换的维数是 $\qty(n + 1)^2$」
   - $R : \mathrm{SU}(2) \to \mathrm{GL}\qty(P_{n}) = \mathrm{GL}\qty(n + 1, \mathbb{C}) \Rightarrow R\qty(U)\psi\qty(\mqty[z \\ w]) \equiv \psi\qty(U^{-1} \mqty[z \\ w]) = \psi' \qty(z, w)$
   - 基矢是 $R\qty[U\qty(e^3,\ w)]$ 的本征矢
   - $R\qty(- U) = \qty(-1)^{n} R\qty(U)$，$n$ 为偶数时表示不忠实
   - 重新定义指标 $n \equiv 2 j$，$j$ 是整数/半整数，$m$ 从 $- j$ 到 $j$
   
2. 李群上的积分
   - 群函数 $f : G \to \mathbb{C}$
   - 群函数的积分：$\int_{G} \qty[\mathrm{d}g] f(g)$，但有两个条件
     - 归一化 $\int_{G}\qty[\mathrm{d}g] = 1$
     - 重排定理 $\int_{G} \qty[\mathrm{d}g] f(g) = \int_{G} \qty[\mathrm{d}\qty(g'g)] f(g), \forall g' \in G$
   
3. $\mathrm{SU}(2)$ 上的积分
   - 积分测度是三维球面的群元 $\qty[\mathrm{d}U] = \frac{1}{4 \pi^2} \sin \theta \sin^2 \frac{\omega}{2} \mathrm{d}\varphi \mathrm{d}\theta \mathrm{d}\omega$
   - 如果是对类函数积分，$f^{\mathrm{Ad}}\qty[U\qty(\vec{n},\ \omega)] = f^{\mathrm{Ad}}\qty[U\qty(e^3, \omega)]$，则只有 $\omega$ 是变量，其他的不用积分
   
4. 复线性表示特征标的正交归一性和完备性

   - 正交对应不等价，归一对应不可约，完备对应全体

   - 既然是类函数，利用 $\chi_{j} \qty(\omega) \equiv\chi_{R_j}\qty[U\qty(\vec{n},\omega)] = \chi_{R_{j}}\qty[U\qty(e^3,\omega)] = \tr R_j\qty[U\qty(e^3, \omega)]$，而最后面求迹的这个矩阵是对角的（所有基矢都是它的本征矢），$\chi_j\qty(\omega) = \sin\qty[\qty(j + \frac{1}{2})\omega]/\sin \frac{\omega}{2}$

   - 直接带入李群上类函数的积分公式（只对 $\omega$ 积分），算出来的确有 $\int_{\mathrm{SU}(2)}\qty[\dd{U}]\qty[\chi_{R_{j}}(U)]^{*}\chi_{R_{j'}}(U) = \delta^{j}_{\ j'}$

   - 完备性：$\int_{\mathrm{SU}(2)}\qty[\dd{U}]\qty{\frac{1}{\pi}\sum_{j}\chi_{j}\qty(\omega')\qty[\chi_{j}\qty(\omega)]^*} f^{\mathrm{Ad}}\qty(\omega) = f^{\mathrm{Ad}}\qty(\omega')$

5. $\mathrm{SU}(2)$ 常见表示
   - $j = 0$ 平凡表示/单重态表示
   - $j = 1 / 2$ 基本表示/二重态表示
   - $j = 1$ 伴随表示/三重态表示：不忠实，即为 $\mathrm{SO}(3)$ 的表示
   - $\mathrm{SU}(2)$ 的不可约表示与（表示空间的）维度一一对应

## $\mathrm{SO}(3)$ 的不可约表示

1. $\mathrm{SU}(2)$ 的全体不可约表示已经研究过，且有 $R_{j}\qty(-U) = \qty(-1)^{2 j}R_{j}\qty(U)$，但二重覆盖映射 $D\qty(-U) = D\qty(U)$，所以只取 $j$ 为整数的不可约表示。于是可以从 $\mathrm{SU}(2)$ 的不可约表示诱导出 $\mathrm{SO}(3)$ 的不可约表示
2. **球谐函数构成** $\mathrm{SO}(3)$ 的无穷维表示的基底

## 谎言代数

1. 李代数
   - 一个代数（矢量空间 + 矢量乘法），矢量乘法（李括号）满足反对称 + 雅可比恒等式
2. 结构常数
   - $\qty[J_{a}, J_{b}] = C^{c}_{\ \ a b} J_{c}$
3. 李群的李代数
   - 李群的李代数唯一，李代数的单连通李代数唯一
   - 李代数同态：和李群的同态差不多，但是这次是保李括号
   - $\mathscr{SU}\qty(2)$ 和 $\mathscr{SO}\qty(3)$ 李代数同构，李代数的二维表示生成了 $\mathrm{SU}\qty(2)$ 的基本表示，李代数的三维表示生成了 $\mathrm{SO}\qty(3)$ 的基本表示

## 伴随表示

1. 李代数的表示
   - 与李群的表示差不多，但是李代数到表示空间上的线性群的同态映射要求线性
   - 有了表示以后，李代数的元对应着矩阵，这些矩阵之间可以做通常的矩阵乘法，正树说这个矩阵乘法“纯粹是垃圾信息”，但实际上并不完全是，因为如果没有这个矩阵乘法就没有办法定义表示矩阵之间的李括号
2. 李群的伴随表示
   - 李群中的伴随：$\mathrm{Ad}_{g} : G \to G,\ \forall g \in G$；李代数中的伴随：$\mathrm{ad}_{g} : \mathscr{G} \to \mathscr{G},\ \forall g \in G$，我只敢说 $\exp\qty(t\  \mathrm{ad}_{g}\mathscr{g}) = g \exp\qty(t \mathscr{g}) g^{-1}$，至于正树写的 $\mathrm{ad}_{g}\mathscr{g} = g \mathscr{g} g^{-1}$，大概也只在有了矩阵表示之后才能说，因为谁也不知道李群群元和李代数代数元之间的运算是什么。
   - 此时 $\mathrm{ad} : G \to \mathrm{GL}(\mathscr{G})$，是一个表示该有的样子
   - 李群的伴随表示的维度 = 流形的维度 = 李代数的维度 = 独立生成元的个数
3. $\mathrm{SU}(2)$ 的伴随表示
   - $D(U)^{a}_{\ \ b} = \frac{1}{2} \tr\qty(\sigma^{a} U \sigma_{b} U^{-1})$
4. 李代数的伴随表示
   - $\mathscr{ad}_{\mathscr{g}} : \mathscr{G} \to \mathrm{End}\qty(\mathscr{G}),\ \mathscr{ad}_{\mathscr{g}}\qty(\mathscr{g'}) = \qty[\mathscr{g}, \mathscr{g'}]$

> 梁灿彬先生书上这部分内容更为严密。

## 洛伦兹群

- $4 \times 4$ 可逆实矩阵，满足保度规条件 $g_{\mu\nu}\Lambda^{\mu}_{\ \ \rho}\Lambda^{\nu}_{\ \ \sigma} = g_{\rho\sigma}$，$g = g^{-1} = g^{\mathrm{T}}$
- 保度规条件要求 $\qty(\Lambda^{0}_{\ \ 0})^2 \geq 1$ 和 $\det \Lambda = \pm 1$

## 洛伦兹代数

1. 定义
   - 所有 $4 \times 4$ 矩阵，满足 $\mathcal{X}^{\mathrm{T}} = - g \mathcal{X} g^{-1}$
   - $\mathscr{O}(1, 3) = \mathscr{SO}(1, 3) = \mathscr{SO}^{+}(1, 3)$
2. 基矢
   - $\qty(\mathcal{M^{\rho\sigma}})^{\mu}_{\ \ \nu} = \mathrm{i} \qty(g^{\rho \mu}\delta^{\sigma}_{\ \ \nu} - g^{\sigma\mu}\delta^{\rho}_{\ \ \nu})$

```mathematica
{LorentzJ, LorentzK} = {{SparseArray[{{3, 4} -> -I, {4, 3} -> I}, {4, 4}], SparseArray[{{2, 4} -> I, {4, 2} -> -I}, {4, 4}], SparseArray[{{2, 3} -> -I, {3, 2} -> I}, {4, 4}]}, {SparseArray[{{1, 2} -> I, {2, 1} -> I}, {4, 4}], SparseArray[{{1, 3} -> I, {3, 1} -> I}, {4, 4}], SparseArray[{{1, 4} -> I, {4, 1} -> I}, {4, 4}]}};

LorentzM = {{0, LorentzK[[1]], LorentzK[[2]], LorentzK[[3]]}, {-LorentzK[[1]], 0, LorentzJ[[3]], -LorentzJ[[2]]}, {-LorentzK[[2]], -LorentzJ[[3]], 0, LorentzJ[[1]]}, {-LorentzK[[3]], LorentzJ[[2]], -LorentzJ[[1]], 0}}
```

3. 直和分解
   - 其实就是定义出 $\mathcal{N}^{\pm}$，它的李括号是封闭的，所以可以进行直和分解成两个 $\mathscr{SU}(2)$

## 二重覆盖与旋量群

1. 二重覆盖
   - $\mathrm{SU}(2)$ 和 $\mathrm{SO}(3)$ 的李代数的结构相同，李代数同构
   - 多个李群可以共用一个李代数，但其中只有一个李群是单连通的，而这个单连通李群的表示能与其李代数的表示一一对应，且这个单连通李群将是其它几个李群的覆盖群
2. 旋量群
   - $\mathrm{Spin}(p, q)$ 是 $\mathrm{O}(p, q)$ 的连通李子群的二重覆盖群，$\mathrm{Spin}(n) \equiv \mathrm{Spin}(n, 0)$ 是 $\mathrm{SO}(n)$ 的二重覆盖群；他们的李代数相同
   - $\mathrm{Spin}(3) = \mathrm{SU}(2),\ \mathrm{Spin}(1, 3) = \mathrm{SL}(2, \mathbb{C})$

## 旋量群的李代数与克利福德代数

1. 克利福德代数
   - 不定正交群 $\mathrm{O}(p, q)$，$\qty{\gamma^{\mu}, \gamma^{\nu}} \equiv 2 \eta^{\mu\nu} I$，一共有 $p + q$ 个 $\gamma$
   - 克利福德代数 $\mathrm{Cl}(p, q)$ 内的元素：$p_{\mu}\gamma^{\mu} + p_{\mu\nu}\gamma^{\mu}\gamma^{\nu} + \dots + p_{\mu\nu\dots\rho}\gamma^{\mu}\gamma^{\nu}\dots\gamma^{\rho}$
   - 最多可以有 $p + q$ 个 $\gamma$ 矩阵相乘，再多必有重复，可以利用反对易关系消去，$\dim = \sum_{n = 0}^{p + q}\mathrm{C}_{p + q}^{n} = 2^{p + q}$
2. 克利福德代数与旋量群李代数的关系
   - $S^{\mu\nu} \equiv \qty[\gamma^{\mu},\gamma^{\nu}]$，也是克利福德代数的元素，但它实际上也是 $\mathscr{Spin}(p, 1)$ 的基矢
   - 对比一下克利福德代数和旋量群李代数：维数不同、元素之间的运算不同（$\gamma$ 之间的乘法/李括号）、约束条件（反对易关系/对易关系（结构常数））；只不过 $S^{\mu\nu}$ 恰好满足旋量群李代数的对易关系
   - 克利福德代数的表示（一堆 $S^{\mu\nu}$ 矩阵）在指数映射后得到 $\mathrm{O}(p, q)$ 的旋量表示矩阵群

## 旋量空间

1. 旋量表示
   - 旋量表示是一种多值表示（一个群元对应多个矩阵），因为 $\mathrm{Spin}(p, q)$ 的群元比 $\mathrm{O}(p, q)$ 连通李子群的群元多一倍「$\mathrm{Spin}(3) = \mathrm{SU}(2)$ 的基础表示是 $\mathrm{SO}(3)$ 的旋量表示」
