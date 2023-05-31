# Review Electrodynamics

這篇文章記錄一下我在電動力學課程進行的過程中做的事情，按道理講不算是一個 review，但是我尚無法想出一個更好的名字。

## 指标运算推导矢量微分学公式

由于电动力学一般都在三维欧氏空间讨论，故不区分上下指标，统一写成下指标。另外，我现在尚没有一个固定的习惯，有时我写具体指标，有时我写抽象指标。可以这么说，在这篇文章中，当我写的是具体指标时，我是抄的[知乎：東雲正樹](https://www.zhihu.com/people/Masaki.Ryuu)；当我写抽象指标时，我是自己推的。（仅仅是因为我记不住希腊字母在具体指标中的顺序 😶‍🌫️）

- 我现在还发现一个使用抽象指标的好处——在打字的时候我可以少打一些。

为了正确地渲染公式，花了些力气，现在处于一个妥协的状态：对于行内公式，`\$...\$` 不能出现在空格后，但是那正是我写 $\LaTeX$ 时所习惯的 🤷。等等，似乎可以？？？

### 基本公式

- $$(\vec{a}\times\vec{b})_{\rho}=\varepsilon_{\mu\nu\rho}a_{\mu}b_{\nu}$$
- $$\varepsilon_{\mu\nu\rho}\varepsilon_{\mu\sigma\tau}=\delta_{\nu\sigma}\delta_{\rho\tau}-\delta_{\nu\tau}\delta_{\rho\sigma}$$
- $$\varepsilon_{\mu\nu\rho}\varepsilon_{\sigma\nu\rho}=2\delta_{\mu\sigma}$$
- $$\varepsilon_{\mu\nu\rho}\varepsilon_{\mu\nu\rho}=6$$

这里本应该有更多的，但是那些在下面用不到，详见[知乎：東雲正樹的文章](https://zhuanlan.zhihu.com/p/331738362)。

提一句，我们学校使用的教材是郭硕鸿先生写的《电动力学》，很多时候我这里写的式子的形式都是按照他的书 📕，我看书比较杂，没有自己的特定习惯。

> 只要你自己足够强，就能用自己的符号！ ——温伯格

### 開始表述

#### 混合积

$$\vec{c}\cdot(\vec{a}\times\vec{b})=\varepsilon_{\mu\nu\rho}a_{\mu}b_{\nu}c_{\rho}$$

#### 三重积

$$\vec{c}\times(\vec{a}\times\vec{b})=(\vec{c}\cdot\vec{b})\vec{a}-(\vec{c}\cdot\vec{a})\vec{b}$$
   
$$\begin{aligned}
   \text{left: }[\vec{c}\times(\vec{a}\times\vec{b})]_e&=\varepsilon_{cde}c_{c}(\vec{a}\times\vec{b})_{d}=\varepsilon_{cde}c_{c}\varepsilon_{abd}a_{a}b_{b}\\
   &=\varepsilon_{dec}\varepsilon_{dab}a_{a}b_{b}c_{c}\\
   &=(\delta_{ae}\delta_{bc}-\delta_{ac}\delta_{be})a_{a}b_{b}c_{c}\\
   &=a_{e}b_{b}c_{b}-a_{a}b_{e}c_{a}\\
   \text{right: }[(\vec{c}\cdot\vec{b})\vec{a}-(\vec{c}\cdot\vec{a})\vec{b}]_e&=(\vec{c}\cdot\vec{b})a_{e}-(\vec{c}\cdot\vec{a})b_{e}\\
   &=b_{b}c_{b}a_{e}-c_{a}a_ab_e\qquad\square
   \end{aligned}$$

似乎这个字间距有些不够优雅了，先这样吧 :-)

- 推论：$\nabla\times(\nabla\times\vec{f})=\nabla(\nabla\cdot\vec{f})-\nabla^2\vec{f}$

#### 几个热身的例子
  
- $$\nabla(\varphi\psi)=\varphi\nabla\psi+\psi\nabla\varphi$$

这个我觉得显然吧？

$$[\nabla(\varphi\psi)]_{a}=\partial_{a}(\varphi\psi)=\varphi\partial_{a}(\psi)+\partial_{a}(\varphi)\psi=[\varphi\nabla\psi+\psi\nabla\varphi]_{a}\qquad\square$$

- $$\nabla\cdot(\varphi\vec{f})=(\nabla\varphi)\vec{f}+\varphi\nabla\cdot\vec{f}$$

这个说实话我也觉得有点显然……

$$\nabla\cdot(\varphi\vec{f})=\partial_{a}(\varphi f_{a})=\partial_{a}(\varphi)f_{a}+\varphi\partial_{a}(f_{a})=(\nabla\varphi)\vec{f}+\varphi\nabla\cdot\vec{f}\qquad\square$$

- $$\nabla\times(\varphi\vec{f})=(\nabla\varphi)\times\vec{f}+\varphi\nabla\times\vec{f}$$

说实话这个跟上面那个差不多……

$$\begin{aligned}
      [\nabla\times(\varphi\vec{f})]_{c} & =\varepsilon_{abc}\partial_{a}(\varphi f_{b})\\
      & =\varepsilon_{abc}\partial_{a}(\varphi)f_{b}+\varphi\varepsilon_{abc}\partial_{a}(f_{b})\\
      & =[(\nabla\varphi)\times\vec{f}+\varphi\nabla\times\vec{f}]_{c}\qquad\square
   \end{aligned}$$

#### 真刀真枪

- $$\nabla\cdot(\vec{f}\times\vec{g})=(\nabla\times\vec{f})\cdot\vec{g}-\vec{f}\cdot(\nabla\times\vec{g})$$

这个开始才有点用得上指标运算。

$$\begin{aligned}
          \nabla\cdot(\vec{f}\times\vec{g})&=\partial_{c}[\vec{f}\times\vec{g}]_{c}=\partial_{c}[\varepsilon_{abc}f_{a}g_{b}]\\
          &=(\varepsilon_{abc}\partial_{c}f_{a})g_{b}+f_{a}(\varepsilon_{abc}\partial_{c}g_{b})\\
          &=(\varepsilon_{cab}\partial_{c}f_{a})g_{b}-f_{a}(\varepsilon_{cba}\partial_{c}g_{b})\\
          &=[\nabla\times\vec{f}]_{b}g_{b}-f_{a}[\nabla\times\vec{g}]_{a}\\
          &=(\nabla\times\vec{f})\cdot\vec{g}-\vec{f}\cdot(\nabla\times\vec{g})\qquad\square
   \end{aligned}$$

- $$\nabla\times(\vec{f}\times\vec{g})=(\vec{g}\cdot\nabla)\vec{f}+(\nabla\cdot\vec{g})\vec{f}-(\vec{f}\cdot\nabla)\vec{g}-(\nabla\cdot\vec{f})\vec{g}$$

$$\begin{aligned}
      \text{left: }[\nabla\times(\vec{f}\times\vec{g})]_{e}&=\varepsilon_{cde}\partial_{c}[\vec{f}\times\vec{g}]_{d}=\varepsilon_{cde}\partial_{c}(\varepsilon_{abd}f_{a}g_{b})\\
      &=\varepsilon_{cde}\varepsilon_{abd}\partial_{c}(f_{a}g_{b})=\varepsilon_{dec}\varepsilon_{dab}\partial_{c}(f_{a}g_{b})\\
      &\xlongequal{2.}(\delta_{ea}\delta_{cb}-\delta_{eb}\delta_{ca})[(\partial_{c}f_{a})g_{b}+f_{a}(\partial_{c}g_{b})]\\
      &=(\partial_{b}f_{e})g_{b}+f_{e}(\partial_{b}g_{b})-(\partial_{a}f_{a})g_{e}-f_{a}(\partial_{a}g_{e})\\
      \text{right: }[(\vec{g}\cdot\nabla)\vec{f}+(\nabla\cdot\vec{g})\vec{f}-(\vec{f}\cdot\nabla)\vec{g}-(\nabla\cdot\vec{f})\vec{g}]_e&=(\vec{g}\cdot\nabla)f_{e}+(\nabla\cdot\vec{g})f_{e}-(\vec{f}\cdot\nabla)g_{e}-(\nabla\cdot\vec{f})g_{e}\\
      &=g_a(\partial_{a}f_{e})+f_{e}(\partial_{a}g_{a})-f_{a}(\partial_{a}g_{e})-(\partial_{a}f_{a})g_{e}
   \end{aligned}$$

- $$\nabla(\vec{f}\cdot\vec{g})=\vec{f}\times(\nabla\times\vec{g})+(\vec{f}\cdot\nabla)\vec{g}+g\times(\nabla\times\vec{f})+(\vec{g}\cdot\nabla)\vec{f}$$
   
$$\begin{aligned}
     \text{left: }[\nabla(\vec{f}\cdot\vec{g})]_{e}&=\partial_{e}(f_ag_a)\\
      &=(\partial_{e}f_{a})g_{a}+f_{a}(\partial_{e}g_{a})\\
      \text{right: }[\vec{f}\times(\nabla\times\vec{g})+(\vec{f}\cdot\nabla)\vec{g}+g\times(\nabla\times\vec{f})+(\vec{g}\cdot\nabla)\vec{f}]_{e}&=\varepsilon_{cde}f_{c}(\varepsilon_{abd}\partial_{a}g_{b})+(f_{a}\partial_{a})g_{e}+\varepsilon_{cde}g_{c}(\varepsilon_{abd}\partial_{a}f_{b})+(g_{a}\partial_{a})f_{e}\\
      &=(\varepsilon_{dec}\varepsilon_{dab})f_{c}\partial_{a}g_{b}+(f_{a}\partial_{a})g_{e}+(\varepsilon_{dec}\varepsilon_{dab})g_{c}\partial_{a}f_{b}+(g_{a}\partial_{a})f_{e}\\
      &=(\delta_{ea}\delta_{cb}-\delta_{eb}\delta_{ca})f_{c}\partial_{a}g_{b}+(f_{a}\partial_{a})g_{e}+(\delta_{ea}\delta_{cb}-\delta_{eb}\delta_{ca})g_{c}\partial_{a}f_{b}+(g_{a}\partial_{a})f_{e}\\
      &=f_{b}\partial_{e}g_{b}-\bcancel{f_{a}\partial_{a}g_{e}}+\bcancel{(f_{a}\partial_{a})g_{e}}+g_{b}\partial_{e}f_{b}-\bcancel{g_{a}\partial_{a}f_{e}}+\bcancel{(g_{a}\partial_{a})f_{e}}\\
      &=f_{b}\partial_{e}g_{b}+g_{b}\partial_{e}f_{b}\qquad\square
   \end{aligned}$$

- 多说一句，这个删除线的效果需要宏包 `cancel`

<p align="right">指标运算推导矢量微分学公式 - 完</p>

## 四維語言表述

from 《微分幾何入門與廣義相對論》 by 梁燦彬，使用几何高斯制。

### 电磁场张量 $F_{ab}$

1. 电场：$E_{a}=F_{ab}Z^b$，磁场：$B_a=-^*F_{ab}Z^b=-\frac{1}{2}\varepsilon_{abcd}F^{cd}Z^b$
      - $$\Rightarrow E_{i}=F_{i0},\ B_{1}=F_{23},\ B_{2}=F_{31},\ B_{3}=F_{12}$$
      - $$\begin{aligned}
      E_1'=E_1,\ &E_2'=\gamma(E_2-vB_3),\ &E_3'=\gamma(E_3+vB_2)\\
      B_1'=B_1,\ &B_2'=\gamma(B_2+vE_3),\ &E_3'=\gamma(B_3+vE_2)
      \end{aligned}$$
2. 4 电流密度：$J^a=\rho_0U^a$
      - $$J^a=\rho_0U^a=\rho_0\gamma(Z^a+u^a)=\rho Z^a+j^a$$
3. Maxwell Eqns.
      1. $$\partial^aF_{ab}=-4\pi J_b$$
      2. $$\partial_{[a}F_{bc]}=0$$
      - 从这里推回 3 维形式之后会补充（可能直接就鸽了 :）
4. 4 维洛伦兹力：$F^a=qF^a_{\ b}U^b$，电荷运动方程：$qF^a_{\ b}U^b=U^b\partial_b P^a$。
5. 能动张量：$T_{ab}=\frac{1}{4\pi}(F_{ac}F_{b}^{\ c}-\frac{1}{4}\eta_{ab}F_{cd}F^{cd})=\frac{1}{8\pi}(F_{ac}F_{b}^{\ c}+^*F_{ac}^*F_{b}^{\ c})$
6. 势
      - $\mathrm{d}\boldsymbol{F}=0\Rightarrow\boldsymbol{F}=\mathrm{d}\boldsymbol{A}\Rightarrow F_{ab}=\partial_aA_b-\partial_bA_a$
      - $A_a=-\phi(\mathrm{d}t)_a+a_a$
      - 规范变换：$\boldsymbol{F}=\mathrm{d}\boldsymbol{A}\Rightarrow\boldsymbol{F}=\mathrm{d}\tilde{\boldsymbol{A}}=\mathrm{d}(\boldsymbol{A}+\mathrm{d}\chi)$
      - Maxwell Eqns in one: $\partial^a\partial_aA_b=-4\pi J_b$

Loading...
