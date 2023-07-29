# Review: Electromagnetism

## 电偶极子

- 势：$V({\mathbf  {r}})={\frac  {1}{4\pi \epsilon _{0}}}{\frac  {{\mathbf  {p}}\cdot {\hat  {{\mathbf  {r}}}}}{r^{2}}}$
- 场：${\mathbf  {E}}=-\nabla V ={\frac  {1}{4\pi \epsilon _{0}r^{3}}}\left(3({\mathbf  {p}}\cdot {\hat  {{\mathbf  {r}}}}){\hat  {{\mathbf  {r}}}}-{\mathbf  {p}}\right)-{\frac  {{\mathbf  {p}}}{3\epsilon _{0}}}\delta ^{3}({\mathbf  {r}})={\frac  {p}{4\pi \epsilon _{0}r^{3}}}(2\cos \theta {\hat  {{\mathbf  {r}}}}+\sin \theta {\hat  {{\boldsymbol  {\theta }}}})-{\frac  {{\mathbf  {p}}}{3\epsilon _{0}}}\delta ^{3}({\mathbf  {r}})$
- 受力：$\mathbf{F}=(\mathbf{p}\cdot\nabla)\mathbf{E}$
- 受力矩：$\mathbf{L}=\bf{p}\times\bf{E}$

## 几个磁场公式

1. 载流直导线
    - 有限长：$B=\frac{\mu_0I}{4\pi a}(\cos\alpha_1-\cos\alpha_2)$
    - 半无限长，端点处：$B=\frac{\mu_0I}{4\pi a}$
    - 无限长：$B=\frac{\mu_0I}{2\pi a}$
2. 圆环
    - 轴线上：$B=\frac{\mu_0I}{2}\frac{R^2}{(R^2+x^2)^{3/2}}$
    - 圆心处：$B=\frac{\mu_0I}{2R}$
    - 一段圆电流：$B=\frac{\mu_0I}{2R}\cdot\frac{\theta}{2\pi}$
3. 螺线管
    - 有限长：$B=\frac{1}{2}\mu_0nI(\cos\beta_2-\cos\beta_1)$
    - 半无限长：$B=\frac{1}{2}\mu_0nI$
    - 无限长：$B=\mu_0nI$

## vector analysis formula

- Cartesian coordinates $(x, y, z)$
    - $\nabla f={\partial f \over \partial x}\hat{\mathbf x} + {\partial f \over \partial y}\hat{\mathbf y} + {\partial f \over \partial z}\hat{\mathbf z}$
    - $\nabla\cdot\bold{A}={\partial A_x \over \partial x} + {\partial A_y \over \partial y} + {\partial A_z \over \partial z}$
    - $\nabla\times\bold{A}=\left(\frac{\partial A_z}{\partial y} - \frac{\partial A_y}{\partial z}\right) \hat{\mathbf x}+ \left(\frac{\partial A_x}{\partial z} - \frac{\partial A_z}{\partial x}\right) \hat{\mathbf y}+ \left(\frac{\partial A_y}{\partial x} - \frac{\partial A_x}{\partial y}\right) \hat{\mathbf z}={\begin{vmatrix}\mathbf {i} &\mathbf {j} &\mathbf {k} \\{\frac {\partial }{\partial x}}&{\frac {\partial }{\partial y}}&{\frac {\partial }{\partial z}}\\A_{x}&A_{y}&A_{z}\end{vmatrix}}$
    - $\nabla^2 f={\frac {\partial ^{2}f}{\partial x^{2}}}+{\frac {\partial ^{2}f}{\partial y^{2}}}+{\frac {\partial ^{2}f}{\partial z^{2}}}$
- Cylindrical coordinates $(\rho, \varphi, z)$
    - $\nabla f={\partial f \over \partial \rho}\hat{\boldsymbol \rho} + {1 \over \rho}{\partial f \over \partial \varphi}\hat{\boldsymbol \varphi} + {\partial f \over \partial z}\hat{\mathbf z}$
    - $\nabla\cdot\bold{A}={1 \over \rho}{\partial \left( \rho A_\rho  \right) \over \partial \rho} + {1 \over \rho}{\partial A_\varphi \over \partial \varphi} + {\partial A_z \over \partial z}$
    - $\nabla\times\bold{A}={\left({\frac {1}{\rho }}{\frac {\partial A_{z}}{\partial \varphi }}-{\frac {\partial A_{\varphi }}{\partial z}}\right){\hat {\boldsymbol {\rho }}}+\left({\frac {\partial A_{\rho }}{\partial z}}-{\frac {\partial A_{z}}{\partial \rho }}\right){\hat {\boldsymbol {\varphi }}}+{\frac {1}{\rho }}\left({\frac {\partial \left(\rho A_{\varphi }\right)}{\partial \rho }}-{\frac {\partial A_{\rho }}{\partial \varphi }}\right){\hat {\mathbf {z}}}}=\begin{vmatrix}{\frac {1}{\rho }}\mathbf {e} _{\rho }&\mathbf {e} _{\varphi }&{\frac {1}{\rho }}\mathbf {e} _{z}\\{\frac {\partial }{\partial \rho }}&{\frac {\partial }{\partial \varphi }}&{\frac {\partial }{\partial z}}\\A_{\rho }&\rho A_{\varphi }&A_{z}\end{vmatrix}$
    - $\nabla^2 f={\frac {1}{\rho }}{\frac {\partial }{\partial \rho }}\left(\rho {\frac {\partial f}{\partial \rho }}\right)+{\frac {1}{\rho ^{2}}}{\frac {\partial ^{2}f}{\partial \varphi ^{2}}}+{\frac {\partial ^{2}f}{\partial z^{2}}}$
- Spherical coordiantes $(r, \theta, \varphi)$
    - $\nabla f=\frac{\partial f}{\partial r}\hat r+\frac{1}{r}\frac{\partial f}{\partial \theta}\hat \theta +\frac{1}{r\sin\theta}\frac{\partial f}{\partial \varphi}\hat\varphi$
    - $\nabla\cdot\bold{A}={1 \over r^2}{\partial \left( r^2 A_r \right) \over \partial r} + {1 \over r\sin\theta}{\partial \over \partial \theta} \left(  A_\theta\sin\theta \right) + {1 \over r\sin\theta}{\partial A_\varphi \over \partial \varphi}$
    - $\nabla\times\bold{A}={\frac {1}{r\sin \theta }}\left({\frac {\partial }{\partial \theta }}\left(A_{\varphi }\sin \theta \right)-{\frac {\partial A_{\theta }}{\partial \varphi }}\right){\hat {\mathbf {r} }}{}+{\frac {1}{r}}\left({\frac {1}{\sin \theta }}{\frac {\partial A_{r}}{\partial \varphi }}-{\frac {\partial }{\partial r}}\left(rA_{\varphi }\right)\right){\hat {\boldsymbol {\theta }}}{}+{\frac {1}{r}}\left({\frac {\partial }{\partial r}}\left(rA_{\theta }\right)-{\frac {\partial A_{r}}{\partial \theta }}\right){\hat {\boldsymbol {\varphi }}}=\frac{1}{r^2 \sin\theta}\begin{vmatrix} \mathbf{e}_{r} & r\mathbf{e}_{\theta} & r\sin\theta \mathbf{e}_{\varphi} \\ \frac{\partial}{\partial r} & \frac{\partial}{\partial \theta} & \frac {\partial}{\partial \varphi} \\ A_r & r A_{\theta} & r\sin\theta A_{\varphi} \end{vmatrix}$
    - $\nabla^2 f={\frac {1}{r^{2}}}{\frac {\partial }{\partial r}}\left(r^{2}{\frac {\partial f}{\partial r}}\right)+{\frac {1}{r^{2}\sin \theta }}{\frac {\partial }{\partial \theta }}\left(\sin \theta {\frac {\partial f}{\partial \theta }}\right)+{\frac {1}{r^{2}\sin ^{2}\theta }}{\frac {\partial ^{2}f}{\partial \varphi ^{2}}}$
